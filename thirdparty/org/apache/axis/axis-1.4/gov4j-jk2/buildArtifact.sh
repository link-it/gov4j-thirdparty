# axis
mkdir -p axis
unzip -q axis-1_4/build/lib/axis.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../axis-1_4/src/org/apache/axis/transport/http/AxisServlet.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/message/CommentImpl.java org/apache/axis/message/
cp ../axis-1_4/src/org/apache/axis/message/SOAPFault.java org/apache/axis/message/
cp ../axis-1_4/src/org/apache/axis/message/NodeImpl.java org/apache/axis/message/
cp ../axis-1_4/src/org/apache/axis/message/MessageElement.java org/apache/axis/message/
cp ../axis-1_4/src/org/apache/axis/message/SOAPDocumentImpl.java org/apache/axis/message/
cp ../axis-1_4/src/org/apache/axis/Message.java org/apache/axis/
cp ../axis-1_4/src/org/apache/axis/SOAPPart.java org/apache/axis/
cp ../axis-1_4/src/org/apache/axis/attachments/AttachmentsImpl.java org/apache/axis/attachments/
cp ../axis-1_4/src/org/apache/axis/attachments/MimeUtils.java org/apache/axis/attachments/
cp ../axis-1_4/src/org/apache/axis/i18n/ProjectResourceBundle.java org/apache/axis/i18n/
cp ../axis-1_4/src/org/apache/axis/server/JNDIAxisServerFactory.java org/apache/axis/server/
cp ../axis-1_4/src/org/apache/axis/transport/http/AbstractQueryStringHandler.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/AxisHttpSession.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/AxisServletBase.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/QSMethodHandler.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/AxisHTTPSessionListener.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/AutoRegisterServlet.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/FilterPrintWriter.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/ServletEndpointContextImpl.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/AdminServlet.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/QSListHandler.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/transport/http/QSWSDLHandler.java org/apache/axis/transport/http/
cp ../axis-1_4/src/org/apache/axis/configuration/ServletEngineConfigurationFactory.java org/apache/axis/configuration/
cp ../axis-1_4/src/org/apache/axis/configuration/EngineConfigurationFactoryServlet.java org/apache/axis/configuration/
cp ../axis-1_4/src/org/apache/axis/security/servlet/ServletAuthenticatedUser.java org/apache/axis/security/servlet/
cp ../axis-1_4/src/org/apache/axis/security/servlet/ServletSecurityProvider.java org/apache/axis/security/servlet/
cp ../axis-1_4/src/org/apache/axis/monitor/SOAPMonitorService.java org/apache/axis/monitor/
cp ../axis-1_4/src/org/apache/axis/types/UnsignedInt.java org/apache/axis/types/
cp ../axis-1_4/src/org/apache/axis/types/UnsignedLong.java org/apache/axis/types/
cp ../axis-1_4/src/org/apache/axis/components/image/JDK13IO.java org/apache/axis/components/image/
jar -cfM ../axis/axis-1.4-gov4j-jk2.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh axis
