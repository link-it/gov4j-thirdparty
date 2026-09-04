ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../
./${BASE_DIR}/buildRepackageJarEnv.sh com.sun.xml.parsers jaxp-ri ${ARTIFACT_ID} 1.4.5 1 "COMMON DEVELOPMENT AND DISTRIBUTION LICENSE (CDDL), Version 1.1" "https://spdx.org/licenses/CDDL-1.1.html"  ${BASE_DIR}
unzip -q ${ARTIFACT_ID}-1.4.5-gov4j-1.jar -d classes/
cd ..
