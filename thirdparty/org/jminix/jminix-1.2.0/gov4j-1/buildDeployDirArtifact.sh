ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

LICENSE_NAME=$2
if [ -z "${LICENSE_NAME}" ]
then
	echo "License name non fornito"
	exit 1
fi

LICENSE_URL=$3
if [ -z "${LICENSE_URL}" ]
then
	echo "License url non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../
./${BASE_DIR}/buildRepackageJarEnv.sh org.jminix jminix ${ARTIFACT_ID} 1.2.0 1 "${LICENSE_NAME}" "${LICENSE_URL}"  ${BASE_DIR}
unzip -q ${ARTIFACT_ID}-1.2.0-gov4j-1.jar -d classes/
cd ..
