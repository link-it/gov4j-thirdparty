# cxf-core
mkdir -p cxf-core
unzip -q apache-cxf-4.1.0-src/core/target/cxf-core-4.1.0.jar -d JAR
cd JAR
cp ../patch_src/sorgenti.patch .
cp ../patch_src/sorgenti.patch.README .
cp ../patch_src/README.compile .
cp ../apache-cxf-4.1.0-src/core/src/main/java/org/apache/cxf/common/jaxb/JAXBUtils.java org/apache/cxf/common/jaxb/
jar -cfM ../cxf-core/cxf-core-4.1.0-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh cxf-core core

# cxf-rt-rs-security-jose
mkdir -p cxf-rt-rs-security-jose
unzip -q apache-cxf-4.1.0-src/rt/rs/security/jose-parent/jose/target/cxf-rt-rs-security-jose-4.1.0.jar -d JAR
cd JAR
cp ../patch_src/sorgenti_jose.patch .
cp ../patch_src/sorgenti_jose.patch.README .
cp ../patch_src/README.compile .
cp ../apache-cxf-4.1.0-src/rt/rs/security/jose-parent/jose/src/main/java/org/apache/cxf/rs/security/jose/jwe/AbstractJweEncryption.java org/apache/cxf/rs/security/jose/jwe/
cp ../apache-cxf-4.1.0-src/rt/rs/security/jose-parent/jose/src/main/java/org/apache/cxf/rs/security/jose/jwe/JweCompactConsumer.java org/apache/cxf/rs/security/jose/jwe/
cp ../apache-cxf-4.1.0-src/rt/rs/security/jose-parent/jose/src/main/java/org/apache/cxf/rs/security/jose/jwe/JweUtils.java org/apache/cxf/rs/security/jose/jwe/
cp ../apache-cxf-4.1.0-src/rt/rs/security/jose-parent/jose/src/main/java/org/apache/cxf/rs/security/jose/jws/JwsUtils.java org/apache/cxf/rs/security/jose/jws/
jar -cfM ../cxf-rt-rs-security-jose/cxf-rt-rs-security-jose-4.1.0-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh cxf-rt-rs-security-jose rt/rs/security/jose-parent/jose
