ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.springframework springframework ${ARTIFACT_ID} 5.3.39 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../spring-framework/${ARTIFACT_ID}/src/main/java/* src/
cp -rp ../spring-framework/${ARTIFACT_ID}/build/docs/javadoc/* javadoc/
unzip -q ${ARTIFACT_ID}-5.3.39-gov4j-1.jar -d classes/
cd ..
