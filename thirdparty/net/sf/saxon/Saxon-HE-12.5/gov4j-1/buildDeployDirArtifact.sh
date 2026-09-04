ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRepackageJarEnv.sh net.sf.saxon saxon ${ARTIFACT_ID} 12.5 1 "Mozilla Public License, Version 2.0" "https://www.mozilla.org/en-US/MPL/2.0/"  ${BASE_DIR}
unzip -q ${ARTIFACT_ID}-12.5-gov4j-1.jar -d classes/
cd ..
