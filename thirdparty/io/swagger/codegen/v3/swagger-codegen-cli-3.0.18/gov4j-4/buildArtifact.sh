# swagger-codegen-cli
mkdir -p swagger-codegen-cli
unzip -q swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar -d JAR
cd JAR
cp ../patch_src/* .
jar -cfM ../swagger-codegen-cli/swagger-codegen-cli-3.0.18-gov4j-4.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh swagger-codegen-cli
