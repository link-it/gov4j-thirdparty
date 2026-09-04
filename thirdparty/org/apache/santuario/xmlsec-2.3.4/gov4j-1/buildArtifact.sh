# xmlsec
mkdir -p xmlsec
unzip -q xmlsec-2.3.4/target/xmlsec-2.3.4.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../xmlsec-2.3.4/src/main/java/org/apache/xml/security/algorithms/implementations/SignatureBaseRSA.java org/apache/xml/security/algorithms/implementations/
jar -cfM ../xmlsec/xmlsec-2.3.4-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh xmlsec
