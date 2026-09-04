# saaj-impl
mkdir -p saaj-impl
unzip -q src_originali/metro-saaj-1.5.3/saaj-ri/target/saaj-impl-1.5.3.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../src_originali/metro-saaj-1.5.3/saaj-ri/src/main/java/com/sun/xml/messaging/saaj/soap/impl/TextImpl.java com/sun/xml/messaging/saaj/soap/impl/;
cp ../src_originali/metro-saaj-1.5.3/saaj-ri/src/main/java/com/sun/xml/messaging/saaj/soap/impl/ElementImpl.java com/sun/xml/messaging/saaj/soap/impl/;
cp ../src_originali/metro-saaj-1.5.3/saaj-ri/src/main/java/com/sun/xml/messaging/saaj/soap/impl/BodyImpl.java com/sun/xml/messaging/saaj/soap/impl/;
cp ../src_originali/metro-saaj-1.5.3/saaj-ri/src/main/java/com/sun/xml/messaging/saaj/soap/SOAPDocumentImpl.java com/sun/xml/messaging/saaj/soap/;
cp ../src_originali/metro-saaj-1.5.3/saaj-ri/src/main/java/com/sun/xml/messaging/saaj/util/ParserPool.java com/sun/xml/messaging/saaj/util/;
cp ../src_originali/metro-saaj-1.5.3/saaj-ri/src/main/java/com/sun/xml/messaging/saaj/soap/MessageImpl.java com/sun/xml/messaging/saaj/soap/;
jar -cfM ../saaj-impl/saaj-impl-1.5.3-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh saaj-impl
