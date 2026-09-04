ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

ARTIFACT_DIR=$2
if [ -z "${ARTIFACT_DIR}" ]
then
	echo "ArtifactDir non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.apache.wss4j wss4j ${ARTIFACT_ID} 2.4.1 3 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../wss4j-2.4.1/${ARTIFACT_DIR}/src/main/java/* src/
cp -rp ../wss4j-2.4.1/${ARTIFACT_DIR}/target/site/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-2.4.1-gov4j-3.jar -d classes/
cd ..
