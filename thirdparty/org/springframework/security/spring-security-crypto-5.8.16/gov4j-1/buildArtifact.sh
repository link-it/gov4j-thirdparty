# spring-security-crypto
mkdir -p spring-security-crypto
unzip -q spring-security/crypto/build/libs/spring-security-crypto-5.8.16.jar -d JAR
cd JAR
cp ../spring-security/crypto/src/main/java/org/springframework/security/crypto/bcrypt/BCrypt.java org/springframework/security/crypto/bcrypt/
cp ../patch_src/* .
jar -cfM ../spring-security-crypto/spring-security-crypto-5.8.16-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-security-crypto crypto
