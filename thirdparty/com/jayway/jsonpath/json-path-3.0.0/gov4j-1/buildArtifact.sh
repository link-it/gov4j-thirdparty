# json-path
mkdir -p json-path
unzip -q JsonPath/json-path/build/libs/json-path-3.0.0.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../JsonPath/json-path/src/main/java/com/jayway/jsonpath/internal/function/text/Concatenate.java com/jayway/jsonpath/internal/function/text/
jar -cfM ../json-path/json-path-3.0.0-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh json-path
