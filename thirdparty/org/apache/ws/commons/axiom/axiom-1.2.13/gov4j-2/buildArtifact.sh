# axiom-api
mkdir -p axiom-api
unzip -q axiom-1.2.13/modules/axiom-api/target/axiom-api-1.2.13.jar -d JAR
cd JAR
cp ../patch_src/NamespaceDilect_api.patch.README .
cp ../patch_src/NamespaceDilect_api.patch .
cp ../axiom-1.2.13/modules/axiom-api/src/main/java/org/apache/axiom/om/impl/builder/StAXOMBuilder.java org/apache/axiom/om/impl/builder/
cp ../axiom-1.2.13/modules/axiom-api/src/main/java/org/apache/axiom/util/stax/dialect/StAXDialectDetector.java org/apache/axiom/util/stax/dialect/
cp ../axiom-1.2.13/modules/axiom-api/src/main/java/org/apache/axiom/util/stax/dialect/JBossFactoryUnwrapper.java org/apache/axiom/util/stax/dialect/
cp ../axiom-1.2.13/modules/axiom-api/src/main/java/org/apache/axiom/om/util/StAXUtils.java org/apache/axiom/om/util/
cp ../patch_src/MimeConfigInitNotFound.patch.README .
cp ../patch_src/MimeConfigInitNotFound.patch .
cp ../axiom-1.2.13/modules/axiom-api/src/main/java/org/apache/axiom/attachments/MIMEMessage.java org/apache/axiom/attachments/
cp ../patch_src/README.compile .
jar -cfM ../axiom-api/axiom-api-1.2.13-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh axiom-api

# axiom-dom
mkdir -p axiom-dom
unzip -q axiom-1.2.13/modules/axiom-dom/target/axiom-dom-1.2.13.jar -d JAR
cd JAR
cp ../patch_src/LocalName_Namespace_Invertito.patch .
cp ../patch_src/LocalName_Namespace_Invertito.patch.README .
cp ../patch_src/OPPT-602.patch .
cp ../patch_src/OPPT-602.patch.README .
cp ../axiom-1.2.13/modules/axiom-dom/src/main/java/org/apache/axiom/om/impl/dom/ElementImpl.java org/apache/axiom/om/impl/dom/
cp ../axiom-1.2.13/modules/axiom-dom/src/main/java/org/apache/axiom/om/impl/dom/ChildNode.java org/apache/axiom/om/impl/dom/
cp ../patch_src/README.compile .
jar -cfM ../axiom-dom/axiom-dom-1.2.13-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh axiom-dom

# axiom-impl
mkdir -p axiom-impl
unzip -q axiom-1.2.13/modules/axiom-impl/target/axiom-impl-1.2.13.jar -d JAR
cd JAR
cp ../patch_src/OPPT-602.patch .
cp ../patch_src/OPPT-602.patch.README .
cp ../axiom-1.2.13/modules/axiom-impl/src/main/java/org/apache/axiom/om/impl/llom/OMSerializableImpl.java org/apache/axiom/om/impl/llom/
cp ../patch_src/README.compile .
jar -cfM ../axiom-impl/axiom-impl-1.2.13-gov4j-2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh axiom-impl
