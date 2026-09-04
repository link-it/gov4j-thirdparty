# slf4j-api
mkdir -p slf4j-api
unzip -q slf4j-v_2.0.16/slf4j-api/target/slf4j-api-2.0.16.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../slf4j-v_2.0.16/slf4j-api/src/main/java/org/slf4j/helpers/Util.java org/slf4j/helpers/
jar -cfM ../slf4j-api/slf4j-api-2.0.16-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh slf4j-api
