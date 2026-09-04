ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh io.swagger.parser.v3 swagger ${ARTIFACT_ID} 2.1.29 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../swagger-parser-2.1.29/modules/swagger-parser-v3/src/main/java/* src/
cp -rp ../swagger-parser-2.1.29/modules/swagger-parser-v3/target/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-2.1.29-gov4j-1.jar -d classes/
cd ..
