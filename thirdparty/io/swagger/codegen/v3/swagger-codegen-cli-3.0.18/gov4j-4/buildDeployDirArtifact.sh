ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh io.swagger.codegen.v3 swagger-codegen ${ARTIFACT_ID} 3.0.18 4 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../swagger-codegen/modules/swagger-codegen-cli/src/main/java/* src/
cp -rp ../swagger-codegen/modules/swagger-codegen-cli/target/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-3.0.18-gov4j-4.jar -d classes/
cd ..
