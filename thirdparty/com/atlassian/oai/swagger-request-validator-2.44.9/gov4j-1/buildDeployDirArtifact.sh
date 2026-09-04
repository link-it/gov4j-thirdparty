ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh com.atlassian.oai swagger-request-validator ${ARTIFACT_ID} 2.44.9 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../swagger-request-validator/swagger-request-validator-core/src/main/java/* src/
cp -rp ../swagger-request-validator/swagger-request-validator-core/target/site/apidocs//* javadoc/
unzip -q ${ARTIFACT_ID}-2.44.9-gov4j-1.jar -d classes/
cd ..
