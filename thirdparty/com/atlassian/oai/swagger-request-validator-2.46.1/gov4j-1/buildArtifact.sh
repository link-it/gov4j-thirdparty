# swagger-request-validator-core
mkdir -p swagger-request-validator-core
unzip -q swagger-request-validator/swagger-request-validator-core/target/swagger-request-validator-core-2.46.1.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../swagger-request-validator/swagger-request-validator-core/src/main/java/com/atlassian/oai/validator/schema/SchemaValidator.java com/atlassian/oai/validator/schema/
jar -cfM ../swagger-request-validator-core/swagger-request-validator-core-2.46.1-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh swagger-request-validator-core
