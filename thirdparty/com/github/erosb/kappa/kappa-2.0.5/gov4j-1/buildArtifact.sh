# kappa
mkdir -p kappa
unzip -q kappa-2.0.5/build/libs/kappa-2.0.5.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/exception/ResolutionException.java com/github/erosb/kappa/core/exception/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/model/OAIContext.java com/github/erosb/kappa/core/model/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/model/reference/AbstractReferenceResolver.java com/github/erosb/kappa/core/model/reference/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/model/reference/ReferenceResolver.java com/github/erosb/kappa/core/model/reference/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/model/v3/MappingReferenceResolver.java com/github/erosb/kappa/core/model/v3/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/model/v3/OAI3Context.java com/github/erosb/kappa/core/model/v3/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/model/v3/OAI3SchemaKeywords.java com/github/erosb/kappa/core/model/v3/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/core/validation/OpenApiValidationFailure.java com/github/erosb/kappa/core/validation/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/model/impl/Body.java com/github/erosb/kappa/operation/validator/model/impl/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/model/impl/DefaultRequest.java com/github/erosb/kappa/operation/validator/model/impl/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/util/convert/MultipartConverter.java com/github/erosb/kappa/operation/validator/util/convert/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/util/convert/ParameterConverter.java com/github/erosb/kappa/operation/validator/util/convert/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/util/convert/XmlConverter.java com/github/erosb/kappa/operation/validator/util/convert/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/util/convert/style/FormStyleConverter.java com/github/erosb/kappa/operation/validator/util/convert/style/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/util/convert/style/StyleConverter.java com/github/erosb/kappa/operation/validator/util/convert/style/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/validation/BodyValidator.java com/github/erosb/kappa/operation/validator/validation/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/validation/OperationValidator.java com/github/erosb/kappa/operation/validator/validation/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/operation/validator/validation/RequestValidator.java com/github/erosb/kappa/operation/validator/validation/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/parser/OpenApi3Parser.java com/github/erosb/kappa/parser/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/parser/OpenApiParser.java com/github/erosb/kappa/parser/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/parser/model/v3/Schema.java com/github/erosb/kappa/parser/model/v3/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/schema/validator/SKemaBackedJsonValidator.java com/github/erosb/kappa/schema/validator/
cp ../kappa-2.0.5/src/main/java/com/github/erosb/kappa/schema/validator/v3/ValidationOptions.java com/github/erosb/kappa/schema/validator/v3/
jar -cfM ../kappa/kappa-2.0.5-gov4j-1.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh kappa
