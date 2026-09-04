ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh com.jayway.jsonpath jsonpath ${ARTIFACT_ID} 2.9.0 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../JsonPath/json-path/src/main/java/* src/
cp -rp ../JsonPath/json-path/build/docs/javadoc/* javadoc/
unzip -q ${ARTIFACT_ID}-2.9.0-gov4j-1.jar -d classes/
cd ..
