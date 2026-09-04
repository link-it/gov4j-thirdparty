ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

ARTIFACT_DIR_ID=$2
if [ -z "${ARTIFACT_DIR_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.springframework.security springframework-security ${ARTIFACT_ID} 5.8.16 1 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../spring-security/${ARTIFACT_DIR_ID}/src/main/java/* src/
cp -rp ../spring-security/${ARTIFACT_DIR_ID}/build/docs/javadoc/* javadoc/
unzip -q ${ARTIFACT_ID}-5.8.16-gov4j-1.jar -d classes/
cd ..
