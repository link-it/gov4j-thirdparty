ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.apache.httpcomponents httpcomponents ${ARTIFACT_ID} 4.4.15 2 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../httpcomponents-core-4.4.15-src/${ARTIFACT_ID}/src/main/java/* src/
cp -rp ../httpcomponents-core-4.4.15-src/${ARTIFACT_ID}/target/site/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-4.4.15-gov4j-2.jar -d classes/
cd ..
