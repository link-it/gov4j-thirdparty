ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRepackageJarEnv.sh org.apache.axis axis ${ARTIFACT_ID} 1.4 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
unzip -q ${ARTIFACT_ID}-1.4-gov4j-1.jar -d classes/
cd ..
