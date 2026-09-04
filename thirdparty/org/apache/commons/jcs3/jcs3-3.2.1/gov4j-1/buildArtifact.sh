# commons-jcs3-core
mkdir -p commons-jcs3-core
unzip -q commons-jcs3-3.2.1-src/commons-jcs-core/target/commons-jcs3-core-3.2.1.jar -d JAR
cd JAR
cp ../commons-jcs3-3.2.1-src/commons-jcs-core/src/main/java/org/apache/commons/jcs3/JCS.java org/apache/commons/jcs3/JCS.java
cp ../commons-jcs3-3.2.1-src/commons-jcs-core/src/main/java/org/apache/commons/jcs3/admin/JCSAdminBean.java org/apache/commons/jcs3/admin/JCSAdminBean.java
cp ../rebuild_jar/patch/* .
cp ../rebuild_jar/README.compile .
jar -cfM ../commons-jcs3-core/commons-jcs3-core-3.2.1-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh commons-jcs3-core commons-jcs-core
