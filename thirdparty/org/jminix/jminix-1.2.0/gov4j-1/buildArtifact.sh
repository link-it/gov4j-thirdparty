# jminix
mkdir -p jminix
unzip -q jminix-1.2.0-gov4j-1.jar -d JAR
cd JAR
cp -rp ../patch_src/README_core README
cp -rp ../patch_src/README_core.repackage README.repackage
jar -cfM ../jminix/jminix-1.2.0-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh jminix "Apache License, Version 2.0" "http://www.apache.org/licenses/LICENSE-2.0"

# jminix-standalone
mkdir -p jminix-standalone
unzip -q jminix-standalone-1.2.0-gov4j-1.jar -d JAR
cd JAR
cp -rp ../patch_src/README_standalone README
cp -rp ../patch_src/README_standalone.repackage README.repackage
jar -cfM ../jminix-standalone/jminix-standalone-1.2.0-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh jminix-standalone "GNU LESSER GENERAL PUBLIC LICENSE, Version 2.1" "https://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt"
