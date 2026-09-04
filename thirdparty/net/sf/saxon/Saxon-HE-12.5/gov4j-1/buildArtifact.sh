# Saxon-HE
mkdir -p Saxon-HE
unzip -q Saxon-HE-12.5-gov4j-1.jar -d JAR
cd JAR
cp -rp ../patch_src/* .
jar -cfM ../Saxon-HE/Saxon-HE-12.5-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh Saxon-HE
