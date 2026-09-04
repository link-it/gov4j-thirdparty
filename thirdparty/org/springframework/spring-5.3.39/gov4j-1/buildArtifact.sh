# spring-beans
mkdir -p spring-beans
unzip -q spring-framework/spring-beans/build/libs/spring-beans-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-beans/src/main/java/org/springframework/beans/support/PropertyComparator.java org/springframework/beans/support/
cp ../patch_src/* .
jar -cfM ../spring-beans/spring-beans-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-beans

# spring-context-support
mkdir -p spring-context-support
unzip -q spring-framework/spring-context-support/build/libs/spring-context-support-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-context-support/src/main/java/org/springframework/scheduling/quartz/LocalDataSourceJobStore.java org/springframework/scheduling/quartz/
cp ../patch_src/* .
jar -cfM ../spring-context-support/spring-context-support-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-context-support

# spring-context
mkdir -p spring-context
unzip -q spring-framework/spring-context/build/libs/spring-context-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-context/src/main/java/org/springframework/format/datetime/standard/MonthFormatter.java org/springframework/format/datetime/standard/
cp ../spring-framework/spring-context/src/main/java/org/springframework/scheduling/support/CronField.java org/springframework/scheduling/support/
cp ../spring-framework/spring-context/src/main/java/org/springframework/scheduling/support/CronSequenceGenerator.java org/springframework/scheduling/support/
cp ../spring-framework/spring-context/src/main/java/org/springframework/validation/DataBinder.java org/springframework/validation/
cp ../patch_src/* .
jar -cfM ../spring-context/spring-context-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-context

# spring-core
mkdir -p spring-core
unzip -q spring-framework/spring-core/build/libs/spring-core-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-core/src/main/java/org/springframework/core/CoroutinesUtils.java org/springframework/core/
cp ../spring-framework/spring-core/src/main/java/org/springframework/core/convert/support/StringToBooleanConverter.java org/springframework/core/convert/support/
cp ../spring-framework/spring-core/src/main/java/org/springframework/core/env/SystemEnvironmentPropertySource.java org/springframework/core/env/
cp ../spring-framework/spring-core/src/main/java/org/springframework/util/MimeType.java org/springframework/util/
cp ../spring-framework/spring-core/src/main/java/org/springframework/util/ResourceUtils.java org/springframework/util/
cp ../patch_src/* .
jar -cfM ../spring-core/spring-core-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-core

# spring-expression
mkdir -p spring-expression
unzip -q spring-framework/spring-expression/build/libs/spring-expression-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-expression/src/main/java/org/springframework/expression/spel/SpelParserConfiguration.java org/springframework/expression/spel/
cp ../spring-framework/spring-expression/src/main/java/org/springframework/expression/spel/ast/TypeReference.java org/springframework/expression/spel/ast/
cp ../spring-framework/spring-expression/src/main/java/org/springframework/expression/spel/standard/InternalSpelExpressionParser.java org/springframework/expression/spel/standard/
cp ../spring-framework/spring-expression/src/main/java/org/springframework/expression/spel/standard/Tokenizer.java org/springframework/expression/spel/standard/
cp ../patch_src/* .
jar -cfM ../spring-expression/spring-expression-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-expression

# spring-jdbc
mkdir -p spring-jdbc
unzip -q spring-framework/spring-jdbc/build/libs/spring-jdbc-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/metadata/CallMetaDataContext.java org/springframework/jdbc/core/metadata/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/metadata/Db2CallMetaDataProvider.java org/springframework/jdbc/core/metadata/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/metadata/DerbyCallMetaDataProvider.java org/springframework/jdbc/core/metadata/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/metadata/GenericCallMetaDataProvider.java org/springframework/jdbc/core/metadata/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/metadata/GenericTableMetaDataProvider.java org/springframework/jdbc/core/metadata/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/metadata/TableMetaDataContext.java org/springframework/jdbc/core/metadata/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/namedparam/SqlParameterSourceUtils.java org/springframework/jdbc/core/namedparam/
cp ../spring-framework/spring-jdbc/src/main/java/org/springframework/jdbc/core/simple/AbstractJdbcInsert.java org/springframework/jdbc/core/simple/
cp ../patch_src/* .
jar -cfM ../spring-jdbc/spring-jdbc-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-jdbc

# spring-jms
mkdir -p spring-jms
unzip -q spring-framework/spring-jms/build/libs/spring-jms-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-jms/src/main/java/org/springframework/jms/config/JmsListenerContainerParser.java org/springframework/jms/config/
cp ../patch_src/* .
jar -cfM ../spring-jms/spring-jms-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-jms

# spring-test
mkdir -p spring-test
unzip -q spring-framework/spring-test/build/libs/spring-test-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-test/src/main/java/org/springframework/mock/web/MockHttpServletRequest.java org/springframework/mock/web/
cp ../spring-framework/spring-test/src/main/java/org/springframework/mock/web/MockHttpServletResponse.java org/springframework/mock/web/
cp ../spring-framework/spring-test/src/main/java/org/springframework/test/context/NestedTestConfiguration.java org/springframework/test/context/
cp ../spring-framework/spring-test/src/main/java/org/springframework/test/context/TestConstructor.java org/springframework/test/context/
cp ../spring-framework/spring-test/src/main/java/org/springframework/test/context/junit/jupiter/AbstractExpressionEvaluatingCondition.java org/springframework/test/context/junit/jupiter/
cp ../patch_src/* .
jar -cfM ../spring-test/spring-test-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-test

# spring-web
mkdir -p spring-web
unzip -q spring-framework/spring-web/build/libs/spring-web-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-web/src/main/java/org/springframework/http/HttpHeaders.java org/springframework/http/
cp ../spring-framework/spring-web/src/main/java/org/springframework/http/MediaTypeFactory.java org/springframework/http/
cp ../spring-framework/spring-web/src/main/java/org/springframework/http/server/reactive/ServletServerHttpRequest.java org/springframework/http/server/reactive/
cp ../spring-framework/spring-web/src/main/java/org/springframework/remoting/httpinvoker/HttpComponentsHttpInvokerRequestExecutor.java org/springframework/remoting/httpinvoker/
cp ../spring-framework/spring-web/src/main/java/org/springframework/remoting/httpinvoker/SimpleHttpInvokerRequestExecutor.java org/springframework/remoting/httpinvoker/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/accept/ContentNegotiationManagerFactoryBean.java org/springframework/web/accept/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/accept/MappingMediaTypeFileExtensionResolver.java org/springframework/web/accept/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/accept/PathExtensionContentNegotiationStrategy.java org/springframework/web/accept/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/filter/ForwardedHeaderFilter.java org/springframework/web/filter/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/filter/HiddenHttpMethodFilter.java org/springframework/web/filter/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/filter/reactive/HiddenHttpMethodFilter.java org/springframework/web/filter/reactive/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/multipart/support/MultipartResolutionDelegate.java org/springframework/web/multipart/support/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/multipart/support/StandardMultipartHttpServletRequest.java org/springframework/web/multipart/support/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/server/adapter/ForwardedHeaderTransformer.java org/springframework/web/server/adapter/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/server/adapter/HttpWebHandlerAdapter.java org/springframework/web/server/adapter/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/util/UriComponentsBuilder.java org/springframework/web/util/
cp ../spring-framework/spring-web/src/main/java/org/springframework/web/util/UrlPathHelper.java org/springframework/web/util/
cp ../spring-framework/spring-web/src/test/java/org/springframework/http/client/AbstractHttpRequestFactoryTests.java org/springframework/http/client/
cp ../patch_src/* .
jar -cfM ../spring-web/spring-web-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-web

# spring-webflux
mkdir -p spring-webflux
unzip -q spring-framework/spring-webflux/build/libs/spring-webflux-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-webflux/src/main/java/org/springframework/web/reactive/accept/ParameterContentTypeResolver.java org/springframework/web/reactive/accept/
cp ../spring-framework/spring-webflux/src/main/java/org/springframework/web/reactive/resource/CachingResourceResolver.java org/springframework/web/reactive/resource/
cp ../spring-framework/spring-webflux/src/main/java/org/springframework/web/reactive/resource/EncodedResourceResolver.java org/springframework/web/reactive/resource/
cp ../spring-framework/spring-webflux/src/main/java/org/springframework/web/reactive/resource/GzipResourceResolver.java org/springframework/web/reactive/resource/
cp ../spring-framework/spring-webflux/src/main/java/org/springframework/web/reactive/resource/ResourceWebHandler.java org/springframework/web/reactive/resource/
cp ../spring-framework/spring-webflux/src/main/java/org/springframework/web/reactive/result/condition/AbstractNameValueExpression.java org/springframework/web/reactive/result/condition/
cp ../patch_src/* .
jar -cfM ../spring-webflux/spring-webflux-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-webflux

# spring-webmvc
mkdir -p spring-webmvc
unzip -q spring-framework/spring-webmvc/build/libs/spring-webmvc-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/mvc/condition/AbstractNameValueExpression.java org/springframework/web/servlet/mvc/condition/
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/mvc/method/annotation/AbstractMessageConverterMethodProcessor.java org/springframework/web/servlet/mvc/method/annotation/
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/resource/CachingResourceResolver.java org/springframework/web/servlet/resource/
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/resource/EncodedResourceResolver.java org/springframework/web/servlet/resource/
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/resource/GzipResourceResolver.java org/springframework/web/servlet/resource/
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/resource/ResourceHttpRequestHandler.java org/springframework/web/servlet/resource/
cp ../spring-framework/spring-webmvc/src/main/java/org/springframework/web/servlet/view/xslt/XsltView.java org/springframework/web/servlet/view/xslt/
cp ../patch_src/* .
jar -cfM ../spring-webmvc/spring-webmvc-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-webmvc

# spring-websocket
mkdir -p spring-websocket
unzip -q spring-framework/spring-websocket/build/libs/spring-websocket-5.3.39.jar -d JAR
cd JAR
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/WebSocketExtension.java org/springframework/web/socket/
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/adapter/standard/StandardToWebSocketExtensionAdapter.java org/springframework/web/socket/adapter/standard/
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/client/AbstractWebSocketClient.java org/springframework/web/socket/client/
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/client/standard/StandardWebSocketClient.java org/springframework/web/socket/client/standard/
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/server/support/AbstractHandshakeHandler.java org/springframework/web/socket/server/support/
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec.java org/springframework/web/socket/sockjs/frame/
cp ../spring-framework/spring-websocket/src/main/java/org/springframework/web/socket/sockjs/transport/session/AbstractSockJsSession.java org/springframework/web/socket/sockjs/transport/session/
cp ../patch_src/* .
jar -cfM ../spring-websocket/spring-websocket-5.3.39-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh spring-websocket
