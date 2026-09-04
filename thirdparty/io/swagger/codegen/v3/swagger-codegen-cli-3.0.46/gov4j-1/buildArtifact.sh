# swagger-codegen-cli
mkdir -p swagger-codegen-cli
unzip -q swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar -d JAR
cd JAR
cp ../patch_src/* .
/opt/local/programmi/openjdk-21.0.4+7/bin/jar -cfM ../swagger-codegen-cli/swagger-codegen-cli-3.0.46-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh swagger-codegen-cli
