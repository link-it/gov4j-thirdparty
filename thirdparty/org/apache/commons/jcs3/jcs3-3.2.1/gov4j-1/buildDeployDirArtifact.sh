ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

ARTIFACT_ID_DIR=$2
if [ -z "${ARTIFACT_ID_DIR}" ]
then
	echo "ArtifactId dir non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.apache.commons commons/jcs ${ARTIFACT_ID} 3.2.1 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../commons-jcs3-3.2.1-src/${ARTIFACT_ID_DIR}/src/main/java/* src/
cp -rp ../commons-jcs3-3.2.1-src/${ARTIFACT_ID_DIR}/target/site/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-3.2.1-gov4j-1.jar -d classes/
cd ..
