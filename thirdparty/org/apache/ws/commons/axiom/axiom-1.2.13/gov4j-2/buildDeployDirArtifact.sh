ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.apache.ws.commons.axiom axiom ${ARTIFACT_ID} 1.2.13 2 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../axiom-1.2.13/modules/${ARTIFACT_ID}/src/main/java/* src/
cp -rp ../axiom-1.2.13/modules/${ARTIFACT_ID}/target/site/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-1.2.13-gov4j-2.jar -d classes/
cd ..
