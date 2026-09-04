ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../..
./${BASE_DIR}/buildRecompiledJarEnv.sh com.github.erosb kappa ${ARTIFACT_ID} 2.0.5 2 "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"  ${BASE_DIR}
cp -rp ../kappa-2.0.5/src/main/java/* src/
mkdir -p javadoc
cp -rp ../kappa-2.0.5/build/docs/javadoc/* javadoc/
unzip -q ${ARTIFACT_ID}-2.0.5-gov4j-2.jar -d classes/
cd ..
