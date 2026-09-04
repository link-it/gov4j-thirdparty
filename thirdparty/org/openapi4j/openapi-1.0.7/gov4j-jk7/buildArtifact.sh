# openapi-core
mkdir -p openapi-core
unzip -q openapi4j/openapi-core/build/libs/openapi-core-1.0.7-SNAPSHOT.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../openapi4j/openapi-core/src/main/java/org/openapi4j/core/model/reference/AbstractReferenceResolver.java org/openapi4j/core/model/reference/
cp ../openapi4j/openapi-core/src/main/java/org/openapi4j/core/model/reference/ReferenceResolver.java org/openapi4j/core/model/reference/
cp ../openapi4j/openapi-core/src/main/java/org/openapi4j/core/model/OAIContext.java org/openapi4j/core/model/
cp ../openapi4j/openapi-core/src/main/java/org/openapi4j/core/model/v3/OAI3Context.java org/openapi4j/core/model/v3/
cp ../openapi4j/openapi-core/src/main/java/org/openapi4j/core/model/v3/OAI3SchemaKeywords.java org/openapi4j/core/model/v3/
jar -cfM ../openapi-core/openapi-core-1.0.7-gov4j-jk7.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh openapi-core

# openapi-parser
mkdir -p openapi-parser
unzip -q openapi4j/openapi-parser/build/libs/openapi-parser-1.0.7-SNAPSHOT.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/ValidatorBase.java org/openapi4j/parser/validation/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/SecurityRequirementValidator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/ParameterValidator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/SchemaValidator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/ValidationContext.java org/openapi4j/parser/validation/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/OpenApi3Validator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/ContactValidator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/LicenseValidator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/InfoValidator.java org/openapi4j/parser/validation/v3/
cp ../openapi4j/openapi-parser/src/main/java/org/openapi4j/parser/validation/v3/ExternalDocsValidator.java org/openapi4j/parser/validation/v3/
jar -cfM ../openapi-parser/openapi-parser-1.0.7-gov4j-jk7.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh openapi-parser

# openapi-schema-validator
mkdir -p openapi-schema-validator
unzip -q openapi4j/openapi-schema-validator/build/libs/openapi-schema-validator-1.0.7-SNAPSHOT.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../openapi4j/openapi-schema-validator/src/main/java/org/openapi4j/schema/validator/v3/FormatValidator.java org/openapi4j/schema/validator/v3/
cp ../openapi4j/openapi-schema-validator/src/main/java/org/openapi4j/schema/validator/v3/TypeValidator.java org/openapi4j/schema/validator/v3/
cp ../openapi4j/openapi-schema-validator/src/main/java/org/openapi4j/schema/validator/v3/PatternValidator.java org/openapi4j/schema/validator/v3/
cp ../openapi4j/openapi-schema-validator/src/main/java/org/openapi4j/schema/validator/v3/RequiredValidator.java org/openapi4j/schema/validator/v3/
cp ../openapi4j/openapi-schema-validator/src/main/java/org/openapi4j/schema/validator/v3/ValidationOptions.java org/openapi4j/schema/validator/v3/
jar -cfM ../openapi-schema-validator/openapi-schema-validator-1.0.7-gov4j-jk7.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh openapi-schema-validator

# openapi-operation-validator
mkdir -p openapi-operation-validator
unzip -q openapi4j/openapi-operation-validator/build/libs/openapi-operation-validator-1.0.7-SNAPSHOT.jar -d JAR
cd JAR
cp ../patch_src/* .
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/util/convert/XmlConverter.java org/openapi4j/operation/validator/util/convert/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/validation/OperationValidator.java org/openapi4j/operation/validator/validation/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/model/impl/MediaTypeContainer.java org/openapi4j/operation/validator/model/impl/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/util/convert/MultipartConverter.java org/openapi4j/operation/validator/util/convert/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/util/convert/style/FormStyleConverter.java org/openapi4j/operation/validator/util/convert/style/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/util/convert/style/StyleConverter.java org/openapi4j/operation/validator/util/convert/style/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/model/impl/DefaultRequest.java org/openapi4j/operation/validator/model/impl/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/util/convert/ParameterConverter.java org/openapi4j/operation/validator/util/convert/
cp ../openapi4j/openapi-operation-validator/src/main/java/org/openapi4j/operation/validator/validation/OperationValidator.java org/openapi4j/operation/validator/validation/
jar -cfM ../openapi-operation-validator/openapi-operation-validator-1.0.7-gov4j-jk7.jar *
cd ..
rm -rf JAR
bash buildDeployDirArtifact.sh openapi-operation-validator
