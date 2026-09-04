# json-schema-validator
mkdir -p json-schema-validator
unzip -q json-schema-validator-repo/build/libs/json-schema-validator-2.2.14.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../json-schema-validator-repo/src/main/java/com/github/fge/jsonschema/format/common/EmailAttribute.java com/github/fge/jsonschema/format/common/
jar -cfM ../json-schema-validator/json-schema-validator-2.2.14-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh json-schema-validator
