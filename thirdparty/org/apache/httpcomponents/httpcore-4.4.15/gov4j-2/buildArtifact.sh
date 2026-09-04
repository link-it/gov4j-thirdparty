# httpcore-ab
mkdir -p httpcore-ab
unzip -q httpcomponents-core-4.4.15-src/httpcore-ab/target/httpcore-ab-4.4.15.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/BenchmarkWorker.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/BustaContentProducer.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/CommandLineUtils.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/Config.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/HttpBenchmark.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/ResultProcessor.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/Results.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/Stats.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/TemplateUtils.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/XMLEntityTemplate.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/benchmark/XmlTemplateContentProducer.java org/apache/http/benchmark/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/entity/mime/content/FileBodyTemplate.java org/apache/http/entity/mime/content/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/entity/mime/HttpMultipartRelated.java org/apache/http/entity/mime/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/entity/mime/MimeTypes.java org/apache/http/entity/mime/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/entity/mime/MultipartRelatedEntity.java org/apache/http/entity/mime/
cp ../httpcomponents-core-4.4.15-src/httpcore-ab/src/main/java/org/apache/http/entity/mime/RelatedBodyPart.java org/apache/http/entity/mime/
jar -cfM ../httpcore-ab/httpcore-ab-4.4.15-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh httpcore-ab
