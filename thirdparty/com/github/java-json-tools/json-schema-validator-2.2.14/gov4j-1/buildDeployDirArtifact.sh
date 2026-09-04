ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh com.github.java-json-tools java-json-tools ${ARTIFACT_ID} 2.2.14 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../json-schema-validator-repo/src/main/java/* src/
cp -rp ../json-schema-validator-repo/build/docs/javadoc/* javadoc/
unzip -q ${ARTIFACT_ID}-2.2.14-gov4j-1.jar -d classes/
cd ..
