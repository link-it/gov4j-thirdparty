# axis
mkdir -p axis
unzip -q axis-1_4/build/lib/axis.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../axis-1_4/src/org/apache/axis/transport/http/AxisServlet.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/Message.java org/apache/axis/
cp ../axis-1_4/src/org/apache/axis/attachments/AttachmentsImpl.java org/apache/axis/attachments/
cp ../axis-1_4/src/org/apache/axis/attachments/MimeUtils.java org/apache/axis/attachments/
jar -cfM ../axis/axis-1.4-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh axis
