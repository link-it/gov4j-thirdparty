ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.openapi4j openapi4j ${ARTIFACT_ID} 1.0.7 7 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../openapi4j/${ARTIFACT_ID}/src/main/java/* src/
cp -rp ../openapi4j/${ARTIFACT_ID}/build/docs/javadoc/* javadoc/
unzip -q ${ARTIFACT_ID}-1.0.7-gov4j-7.jar -d classes/
cd ..
