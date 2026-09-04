ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.slf4j slf4j ${ARTIFACT_ID} 2.0.3 1 "MIT License" "https://opensource.org/license/mit"  ${BASE_DIR}
cp -rp ../slf4j-v_2.0.3/slf4j-api/src/main/java/* src/
cp -rp ../slf4j-v_2.0.3/slf4j-api/target/reports/apidocs/* javadoc/
unzip -q ${ARTIFACT_ID}-2.0.3-gov4j-1.jar -d classes/
cd ..
