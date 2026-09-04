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
./${BASE_DIR}/buildRecompiledJarEnv.sh org.apache.cxf cxf ${ARTIFACT_ID} 4.1.2 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../apache-cxf-4.1.2-src/${ARTIFACT_DIR}/src/main/java/* src/
cp -rp ../apache-cxf-4.1.2-src/${ARTIFACT_DIR}/target/reports/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-4.1.2-gov4j-1.jar -d classes/
cd ..
