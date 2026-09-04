# jaxp-ri
mkdir -p jaxp-ri
unzip -q jaxp-ri-1.4.5-gov4j-1.jar -d JAR
cd JAR
cp -rp ../patch_src/* .
jar -cfM ../jaxp-ri/jaxp-ri-1.4.5-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh jaxp-ri
