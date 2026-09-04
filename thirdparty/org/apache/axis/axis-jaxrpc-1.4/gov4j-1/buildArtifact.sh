# axis-jaxrpc
mkdir -p axis-jaxrpc
unzip -q axis-jaxrpc-1.4-gov4j-1.jar -d JAR
cd JAR
cp -rp ../patch_src/* .
jar -cfM ../axis-jaxrpc/axis-jaxrpc-1.4-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh axis-jaxrpc
