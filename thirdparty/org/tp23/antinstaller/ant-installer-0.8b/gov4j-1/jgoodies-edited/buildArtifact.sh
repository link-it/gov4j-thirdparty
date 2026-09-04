rm -f jgoodies-edited-1.2.2-gov4j-1.jar
unzip -q ../../jgoodies-edited/jgoodies-edited-1.2.2.jar -d JAR
cd JAR
cp ../patch_src/org/tp23/jgoodies/plaf/plastic/common/ShadowPopupMenuUtils.java org/tp23/jgoodies/plaf/plastic/common/
cp ../patch_src/README .
rm -f org/tp23/jgoodies/plaf/plastic/common/ShadowPopupMenuUtils.class
javac -classpath . org/tp23/jgoodies/plaf/plastic/common/ShadowPopupMenuUtils.java 
jar -cfM ../jgoodies-edited-1.2.2-gov4j-1.jar *
cd ..
rm -rf JAR

BASE_DIR=../../../../../../../
./${BASE_DIR}/buildRecompiledJarEnv.sh org.tp23.antinstaller antinstaller jgoodies-edited 1.2.2 1 "BSD 3-Clause License" "https://antinstaller.sourceforge.net/licenses/LICENSE-jgoodies.txt" ${BASE_DIR}
cp patch_src/README src/
cp patch_src/README javadoc/
unzip -q jgoodies-edited-1.2.2-gov4j-1.jar -d classes/
