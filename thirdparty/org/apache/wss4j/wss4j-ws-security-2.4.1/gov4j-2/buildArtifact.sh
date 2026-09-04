# wss4j-ws-security-common
mkdir -p wss4j-ws-security-common
unzip -q wss4j-2.4.1/ws-security-common/target/wss4j-ws-security-common-2.4.1.jar -d JAR
cd JAR
cp ../patch_src/sorgenti_common.patch .
cp ../patch_src/*README* .
cp ../wss4j-2.4.1/ws-security-common/src/main/java/org/apache/wss4j/common/ConfigurationConstants.java org/apache/wss4j/common/
cp ../wss4j-2.4.1/ws-security-common/src/main/java/org/apache/wss4j/common/crypto/Crypto.java org/apache/wss4j/common/crypto/
cp ../wss4j-2.4.1/ws-security-common/src/main/java/org/apache/wss4j/common/crypto/Merlin.java org/apache/wss4j/common/crypto/
jar -cfM ../wss4j-ws-security-common/wss4j-ws-security-common-2.4.1-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh wss4j-ws-security-common ws-security-common

# wss4j-ws-security-dom
mkdir -p wss4j-ws-security-dom
unzip -q wss4j-2.4.1/ws-security-dom/target/wss4j-ws-security-dom-2.4.1.jar -d JAR
cd JAR
cp ../patch_src/sorgenti_dom.patch .
cp ../patch_src/*README* .
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/action/EncryptionAction.java  org/apache/wss4j/dom/action/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/action/SignatureAction.java  org/apache/wss4j/dom/action/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/handler/RequestData.java  org/apache/wss4j/dom/handler/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/handler/WSHandler.java  org/apache/wss4j/dom/handler/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/message/Encryptor.java  org/apache/wss4j/dom/message/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/message/WSSecEncryptedKey.java  org/apache/wss4j/dom/message/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/message/WSSecEncrypt.java  org/apache/wss4j/dom/message/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/message/WSSecSignatureBase.java  org/apache/wss4j/dom/message/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/message/WSSecSignature.java  org/apache/wss4j/dom/message/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/processor/EncryptedKeyProcessor.java  org/apache/wss4j/dom/processor/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/transform/AttachmentContentSignatureTransform.java  org/apache/wss4j/dom/transform/
cp ../wss4j-2.4.1/ws-security-dom/src/main/java/org/apache/wss4j/dom/transform/AttachmentTransformParameterSpec.java  org/apache/wss4j/dom/transform/
jar -cfM ../wss4j-ws-security-dom/wss4j-ws-security-dom-2.4.1-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh wss4j-ws-security-dom ws-security-dom
