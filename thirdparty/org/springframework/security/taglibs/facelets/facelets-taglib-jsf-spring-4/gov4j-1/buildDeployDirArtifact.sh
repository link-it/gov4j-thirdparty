GROUP_ID=org.springframework.security.taglibs.facelets

ARTIFACT_ID=$1
if [ -z "${ARTIFACT_ID}" ]
then
	echo "ArtifactId non fornito"
	exit 1
fi

LIB_VERSION=spring-4

cd ${ARTIFACT_ID}
BASE_DIR=../../../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh ${GROUP_ID} springframework-facelets-taglib ${ARTIFACT_ID} ${LIB_VERSION} 1 "No License" "No License"  ${BASE_DIR}
cp -rp ../README src/
sed -i -e "s#GROUP_ID#${GROUP_ID}#g" src/README
sed -i -e "s#ARTIFACT_ID#${ARTIFACT_ID}#g" src/README
sed -i -e "s#LIB_VERSION#${LIB_VERSION}#g" src/README
cp -rp ../README javadoc/
sed -i -e "s#GROUP_ID#${GROUP_ID}#g" javadoc/README
sed -i -e "s#ARTIFACT_ID#${ARTIFACT_ID}#g" javadoc/README
sed -i -e "s#LIB_VERSION#${LIB_VERSION}#g" javadoc/README
unzip -q ${ARTIFACT_ID}-spring-4-gov4j-1.jar -d classes/
cd ..
