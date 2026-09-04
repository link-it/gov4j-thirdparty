# Check maven version
# Per il deploy serve maven, versione 2, altrimenti non sono riuscito a farlo funzionare
MVN_VERSION=$(mvn -v | grep "Apache Maven" | cut -d ' ' -f 3)
MVN_MAJOR_VERSION=$(echo "${MVN_VERSION}" | cut -d '.' -f 1)
if [ ! "${MVN_MAJOR_VERSION}" == "3" ]
then
	echo "Versione di Maven non supporta, utilizzare la versione 3 per il deploy! (versione '${MVN_MAJOR_VERSION}' trovata: ${MVN_VERSION})"
        echo "NOTA: in caso di errore durante l'upload 'Cannot access scpexe.....WagonTransporterFactory....' aggiungere in $M2_HOME/lib/ext i jar wagon-ssh-common-3.3.4.jar e wagon-ssh-external-3.3.4.jar"
	exit 1
fi

# USAGE:
# ./deploy.sh group-id group-name artifact-id lib-version gov4j-int-version license-name license-url base-dir [project-name]
# example
# ./deploy.sh org.springframework springframework spring-beans 5.3.39 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0" AbsoluteBaseDir

GROUP_ID=$1
if [ -z "${GROUP_ID}" ]
then
	echo "GroupId non fornito"
	exit 1
fi

GROUP_NAME=$2
if [ -z "${GROUP_NAME}" ]
then
	echo "GroupName non fornito"
	exit 1
fi

ARTIFACT_ID=$3
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

LIB_VERSION=$4
if [ -z "${LIB_VERSION}" ]
then
	echo "LibVersion non fornito"
	exit 1
fi

GOV4J_VERSION=$5
if [ -z "${GOV4J_VERSION}" ]
then
	echo "Gov4jVersion non fornito"
	exit 1
fi

LICENSE_NAME=$6
if [ -z "${LICENSE_NAME}" ]
then
	echo "LicenseName non fornito"
	exit 1
fi

LICENSE_URL=$7
if [ -z "${LICENSE_URL}" ]
then
	echo "LicenseUrl non fornito"
	exit 1
fi

BASE_DIR=$8
if [ -z "${BASE_DIR}" ]
then
	echo "BaseDir non fornito"
	exit 1
fi

ACTUAL_DIR=${PWD}
#echo "attuale directory [${ACTUAL_DIR}]"

# Nome del progetto da riportare nell'elemento <name> del pom.
# Se non fornito viene usato l'artifactId; in precedenza veniva valorizzato con il nome
# del file jar, che non e' un nome di progetto.
PROJECT_NAME=$9
if [ -z "${PROJECT_NAME}" ]
then
	PROJECT_NAME="${ARTIFACT_ID}"
fi

# Path della directory del mirror all'interno del repository pubblico dei mirror, da
# riportare nell'elemento <scm> del pom. Il path contiene libreria, versione e revisione
# gov4j, quindi identifica un rilascio in modo stabile senza bisogno di un tag.
BASE_DIR_ABS=$(cd "${BASE_DIR}" && pwd)
MIRROR_DIR_ABS=$(cd "${ACTUAL_DIR}/.." && pwd)
SCM_PATH=$(realpath --relative-to="${BASE_DIR_ABS}" "${MIRROR_DIR_ABS}")
case "${SCM_PATH}" in
	..*|/*)
		echo "Impossibile determinare il path del mirror relativo a BaseDir (trovato: ${SCM_PATH})"
		exit 1
		;;
esac

cp ${BASE_DIR}/template/repackage/pom.xml ${ACTUAL_DIR}
sed -i -e "s#GROUP_ID#${GROUP_ID}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#GROUP_NAME#${GROUP_NAME}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#ARTIFACT_ID#${ARTIFACT_ID}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#LIB_VERSION#${LIB_VERSION}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#GOV4J_VERSION#${GOV4J_VERSION}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#LICENSE_NAME#${LICENSE_NAME}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#LICENSE_URL#${LICENSE_URL}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#PROJECT_NAME#${PROJECT_NAME}#g" ${ACTUAL_DIR}/pom.xml
sed -i -e "s#SCM_PATH#${SCM_PATH}#g" ${ACTUAL_DIR}/pom.xml

cp -r ${BASE_DIR}/template/repackage/src ${ACTUAL_DIR}/
sed -i -e "s#GROUP_ID#${GROUP_ID}#g" ${ACTUAL_DIR}/src/README
sed -i -e "s#ARTIFACT_ID#${ARTIFACT_ID}#g" ${ACTUAL_DIR}/src/README
sed -i -e "s#LIB_VERSION#${LIB_VERSION}#g" ${ACTUAL_DIR}/src/README

cp -r ${ACTUAL_DIR}/src ${ACTUAL_DIR}/javadoc 

mkdir -p ${ACTUAL_DIR}/classes
