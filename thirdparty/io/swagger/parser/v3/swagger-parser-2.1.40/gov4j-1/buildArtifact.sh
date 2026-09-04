# swagger-parser-v3
mkdir -p swagger-parser-v3
unzip -q swagger-parser-2.1.40/modules/swagger-parser-v3/target/swagger-parser-v3-2.1.40.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../swagger-parser-2.1.40/modules/swagger-parser-v3/src/main/java/io/swagger/v3/parser/OpenAPIResolver.java io/swagger/v3/parser/
cp ../swagger-parser-2.1.40/modules/swagger-parser-v3/src/main/java/io/swagger/v3/parser/ResolverCache.java io/swagger/v3/parser/
jar -cfM ../swagger-parser-v3/swagger-parser-v3-2.1.40-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh swagger-parser-v3
