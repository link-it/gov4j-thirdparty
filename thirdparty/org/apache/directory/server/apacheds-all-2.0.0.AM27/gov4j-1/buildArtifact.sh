# apacheds-all
mkdir -p apacheds-all
unzip -q apacheds-all-2.0.0.AM27-gov4j-1.jar -d JAR
cd JAR
cp -rp ../patch_src/* .
jar -cfM ../apacheds-all/apacheds-all-2.0.0.AM27-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh apacheds-all
