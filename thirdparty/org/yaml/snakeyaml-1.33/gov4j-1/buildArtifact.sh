# snakeyaml
mkdir -p snakeyaml
unzip -q snakeyaml_gitrepo/target/snakeyaml-1.33.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../snakeyaml_gitrepo/src/main/java/org/yaml/snakeyaml/LoaderOptions.java org/yaml/snakeyaml
jar -cfM ../snakeyaml/snakeyaml-1.33-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh snakeyaml
