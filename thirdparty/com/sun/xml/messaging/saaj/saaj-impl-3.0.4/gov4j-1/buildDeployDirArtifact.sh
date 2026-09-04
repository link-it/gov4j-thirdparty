ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh com.sun.xml.messaging.saaj saaj ${ARTIFACT_ID} 3.0.4 1 "Eclipse Distribution License, Version 1.0" "https://www.eclipse.org/org/documents/edl-v10.php"  ${BASE_DIR}
cp -rp ../metro-saaj-3.0.4/saaj-ri/src/main/java/* src/
cp -rp ../metro-saaj-3.0.4/saaj-ri/target/site/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-3.0.4-gov4j-1.jar -d classes/
cd ..
