GROUP_ID=$1
if [ -z "${GROUP_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

ARTIFACT_ID=$2
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

LIB_VERSION=3.3.4.Final

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh ${GROUP_ID} richfaces ${ARTIFACT_ID} ${LIB_VERSION} 2 "GNU LESSER GENERAL PUBLIC LICENSE, Version 2.1" "https://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt"  ${BASE_DIR}
cp -rp ../README src/
sed -i -e "s#GROUP_ID#${GROUP_ID}#g" src/README
sed -i -e "s#ARTIFACT_ID#${ARTIFACT_ID}#g" src/README
sed -i -e "s#LIB_VERSION#${LIB_VERSION}#g" src/README
cp -rp ../README javadoc/
sed -i -e "s#GROUP_ID#${GROUP_ID}#g" javadoc/README
sed -i -e "s#ARTIFACT_ID#${ARTIFACT_ID}#g" javadoc/README
sed -i -e "s#LIB_VERSION#${LIB_VERSION}#g" javadoc/README
unzip -q ${ARTIFACT_ID}-3.3.4.Final-gov4j-2.jar -d classes/
cd ..
