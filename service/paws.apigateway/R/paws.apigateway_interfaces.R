create_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Enabled = structure(logical(0), shape = "Boolean", type = "boolean", 
            locationName = "enabled"), GenerateDistinctId = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "generateDistinctId"), 
        Value = structure(logical(0), shape = "String", type = "string", 
            locationName = "value"), StageKeys = structure(list(structure(list(RestApiId = structure(logical(0), 
            shape = "String", type = "string", locationName = "restApiId"), 
            StageName = structure(logical(0), shape = "String", 
                type = "string", locationName = "stageName")), 
            shape = "StageKey", type = "structure")), shape = "ListOfStageKeys", 
            type = "list", locationName = "stageKeys"), CustomerId = structure(logical(0), 
            shape = "String", type = "string", locationName = "customerId")), 
        shape = "CreateApiKeyRequest", type = "structure")
    return(populate(args, shape))
}

create_api_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Value = structure(logical(0), 
        shape = "String", type = "string", locationName = "value"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            locationName = "name"), CustomerId = structure(logical(0), 
            shape = "String", type = "string", locationName = "customerId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        StageKeys = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", type = "list", 
            locationName = "stageKeys")), shape = "ApiKey", type = "structure")
    return(populate(args, shape))
}

create_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Type = structure(logical(0), 
        shape = "AuthorizerType", type = "string", locationName = "type"), 
        ProviderARNs = structure(list(structure(logical(0), shape = "ProviderARN", 
            type = "string")), shape = "ListOfARNs", type = "list", 
            locationName = "providerARNs"), AuthType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authType"), 
        AuthorizerUri = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerUri"), 
        AuthorizerCredentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerCredentials"), 
        IdentitySource = structure(logical(0), shape = "String", 
            type = "string", locationName = "identitySource"), 
        IdentityValidationExpression = structure(logical(0), 
            shape = "String", type = "string", locationName = "identityValidationExpression"), 
        AuthorizerResultTtlInSeconds = structure(logical(0), 
            shape = "NullableInteger", type = "integer", locationName = "authorizerResultTtlInSeconds")), 
        shape = "CreateAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

create_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Type = structure(logical(0), shape = "AuthorizerType", 
            type = "string", locationName = "type"), ProviderARNs = structure(list(structure(logical(0), 
            shape = "ProviderARN", type = "string")), shape = "ListOfARNs", 
            type = "list", locationName = "providerARNs"), AuthType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authType"), 
        AuthorizerUri = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerUri"), 
        AuthorizerCredentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerCredentials"), 
        IdentitySource = structure(logical(0), shape = "String", 
            type = "string", locationName = "identitySource"), 
        IdentityValidationExpression = structure(logical(0), 
            shape = "String", type = "string", locationName = "identityValidationExpression"), 
        AuthorizerResultTtlInSeconds = structure(logical(0), 
            shape = "NullableInteger", type = "integer", locationName = "authorizerResultTtlInSeconds")), 
        shape = "Authorizer", type = "structure")
    return(populate(args, shape))
}

create_base_path_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string"), BasePath = structure(logical(0), shape = "String", 
        type = "string", locationName = "basePath"), RestApiId = structure(logical(0), 
        shape = "String", type = "string", locationName = "restApiId"), 
        Stage = structure(logical(0), shape = "String", type = "string", 
            locationName = "stage")), shape = "CreateBasePathMappingRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_base_path_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BasePath = structure(logical(0), 
        shape = "String", type = "string", locationName = "basePath"), 
        RestApiId = structure(logical(0), shape = "String", type = "string", 
            locationName = "restApiId"), Stage = structure(logical(0), 
            shape = "String", type = "string", locationName = "stage")), 
        shape = "BasePathMapping", type = "structure")
    return(populate(args, shape))
}

create_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        type = "string", locationName = "stageName"), StageDescription = structure(logical(0), 
        shape = "String", type = "string", locationName = "stageDescription"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CacheClusterEnabled = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean", locationName = "cacheClusterEnabled"), 
        CacheClusterSize = structure(logical(0), shape = "CacheClusterSize", 
            type = "string", locationName = "cacheClusterSize"), 
        Variables = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "variables"), CanarySettings = structure(list(PercentTraffic = structure(logical(0), 
            shape = "Double", type = "double", locationName = "percentTraffic"), 
            StageVariableOverrides = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "stageVariableOverrides"), 
            UseStageCache = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useStageCache")), 
            shape = "DeploymentCanarySettings", type = "structure", 
            locationName = "canarySettings"), TracingEnabled = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean", locationName = "tracingEnabled")), 
        shape = "CreateDeploymentRequest", type = "structure")
    return(populate(args, shape))
}

create_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        ApiSummary = structure(list(structure(list(structure(list(AuthorizationType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authorizationType"), 
            ApiKeyRequired = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "apiKeyRequired")), 
            shape = "MethodSnapshot", type = "structure")), shape = "MapOfMethodSnapshot", 
            type = "map")), shape = "PathToMapOfMethodSnapshot", 
            type = "map", locationName = "apiSummary")), shape = "Deployment", 
        type = "structure")
    return(populate(args, shape))
}

create_documentation_part_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Location = structure(list(Type = structure(logical(0), 
        shape = "DocumentationPartType", type = "string", locationName = "type"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Method = structure(logical(0), 
            shape = "String", type = "string", locationName = "method"), 
        StatusCode = structure(logical(0), shape = "DocumentationPartLocationStatusCode", 
            type = "string", pattern = "^([1-5]\\d\\d|\\*|\\s*)$", 
            locationName = "statusCode"), Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
        shape = "DocumentationPartLocation", type = "structure", 
        locationName = "location"), Properties = structure(logical(0), 
        shape = "String", type = "string", locationName = "properties")), 
        shape = "CreateDocumentationPartRequest", type = "structure")
    return(populate(args, shape))
}

create_documentation_part_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Location = structure(list(Type = structure(logical(0), 
        shape = "DocumentationPartType", type = "string", locationName = "type"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Method = structure(logical(0), 
            shape = "String", type = "string", locationName = "method"), 
        StatusCode = structure(logical(0), shape = "DocumentationPartLocationStatusCode", 
            type = "string", pattern = "^([1-5]\\d\\d|\\*|\\s*)$", 
            locationName = "statusCode"), Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
        shape = "DocumentationPartLocation", type = "structure", 
        locationName = "location"), Properties = structure(logical(0), 
        shape = "String", type = "string", locationName = "properties")), 
        shape = "DocumentationPart", type = "structure")
    return(populate(args, shape))
}

create_documentation_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationVersion = structure(logical(0), 
        shape = "String", type = "string", locationName = "documentationVersion"), 
        StageName = structure(logical(0), shape = "String", type = "string", 
            locationName = "stageName"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description")), 
        shape = "CreateDocumentationVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_documentation_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Version = structure(logical(0), shape = "String", 
        type = "string", locationName = "version"), CreatedDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description")), 
        shape = "DocumentationVersion", type = "structure")
    return(populate(args, shape))
}

create_domain_name_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string", locationName = "domainName"), 
        CertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateName"), 
        CertificateBody = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateBody"), 
        CertificatePrivateKey = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificatePrivateKey"), 
        CertificateChain = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateChain"), 
        CertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateArn"), 
        RegionalCertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateName"), 
        RegionalCertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateArn"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration")), 
        shape = "CreateDomainNameRequest", type = "structure")
    return(populate(args, shape))
}

create_domain_name_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string", locationName = "domainName"), 
        CertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateName"), 
        CertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateArn"), 
        CertificateUploadDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "certificateUploadDate"), 
        RegionalDomainName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalDomainName"), 
        RegionalHostedZoneId = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalHostedZoneId"), 
        RegionalCertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateName"), 
        RegionalCertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateArn"), 
        DistributionDomainName = structure(logical(0), shape = "String", 
            type = "string", locationName = "distributionDomainName"), 
        DistributionHostedZoneId = structure(logical(0), shape = "String", 
            type = "string", locationName = "distributionHostedZoneId"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration")), 
        shape = "DomainName", type = "structure")
    return(populate(args, shape))
}

create_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Schema = structure(logical(0), shape = "String", type = "string", 
            locationName = "schema"), ContentType = structure(logical(0), 
            shape = "String", type = "string", locationName = "contentType")), 
        shape = "CreateModelRequest", type = "structure")
    return(populate(args, shape))
}

create_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Schema = structure(logical(0), 
            shape = "String", type = "string", locationName = "schema"), 
        ContentType = structure(logical(0), shape = "String", 
            type = "string", locationName = "contentType")), 
        shape = "Model", type = "structure")
    return(populate(args, shape))
}

create_request_validator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), ValidateRequestBody = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "validateRequestBody"), 
        ValidateRequestParameters = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestParameters")), 
        shape = "CreateRequestValidatorRequest", type = "structure")
    return(populate(args, shape))
}

create_request_validator_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        ValidateRequestBody = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestBody"), 
        ValidateRequestParameters = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestParameters")), 
        shape = "RequestValidator", type = "structure")
    return(populate(args, shape))
}

create_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ParentId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "parentId", type = "string"), 
        PathPart = structure(logical(0), shape = "String", type = "string", 
            locationName = "pathPart")), shape = "CreateResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), ParentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "parentId"), 
        PathPart = structure(logical(0), shape = "String", type = "string", 
            locationName = "pathPart"), Path = structure(logical(0), 
            shape = "String", type = "string", locationName = "path"), 
        ResourceMethods = structure(list(structure(list(HttpMethod = structure(logical(0), 
            shape = "String", type = "string", locationName = "httpMethod"), 
            AuthorizationType = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizationType"), 
            AuthorizerId = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizerId"), 
            ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
                type = "boolean", locationName = "apiKeyRequired"), 
            RequestValidatorId = structure(logical(0), shape = "String", 
                type = "string", locationName = "requestValidatorId"), 
            OperationName = structure(logical(0), shape = "String", 
                type = "string", locationName = "operationName"), 
            RequestParameters = structure(list(structure(logical(0), 
                shape = "NullableBoolean", type = "boolean")), 
                shape = "MapOfStringToBoolean", type = "map", 
                locationName = "requestParameters"), RequestModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestModels"), 
            MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
                shape = "NullableBoolean", type = "boolean")), 
                shape = "MapOfStringToBoolean", type = "map", 
                locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseModels")), 
                shape = "MethodResponse", type = "structure")), 
                shape = "MapOfMethodResponse", type = "map", 
                locationName = "methodResponses"), MethodIntegration = structure(list(Type = structure(logical(0), 
                shape = "IntegrationType", type = "string", locationName = "type"), 
                HttpMethod = structure(logical(0), shape = "String", 
                  type = "string", locationName = "httpMethod"), 
                Uri = structure(logical(0), shape = "String", 
                  type = "string", locationName = "uri"), ConnectionType = structure(logical(0), 
                  shape = "ConnectionType", type = "string", 
                  locationName = "connectionType"), ConnectionId = structure(logical(0), 
                  shape = "String", type = "string", locationName = "connectionId"), 
                Credentials = structure(logical(0), shape = "String", 
                  type = "string", locationName = "credentials"), 
                RequestParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestParameters"), 
                RequestTemplates = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestTemplates"), 
                PassthroughBehavior = structure(logical(0), shape = "String", 
                  type = "string", locationName = "passthroughBehavior"), 
                ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                  type = "string", locationName = "contentHandling"), 
                TimeoutInMillis = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "timeoutInMillis"), 
                CacheNamespace = structure(logical(0), shape = "String", 
                  type = "string", locationName = "cacheNamespace"), 
                CacheKeyParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "ListOfString", 
                  type = "list", locationName = "cacheKeyParameters"), 
                IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                  shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                  locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                  shape = "String", type = "string", locationName = "selectionPattern"), 
                  ResponseParameters = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "responseParameters"), 
                  ResponseTemplates = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "responseTemplates"), 
                  ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                    type = "string", locationName = "contentHandling")), 
                  shape = "IntegrationResponse", type = "structure")), 
                  shape = "MapOfIntegrationResponse", type = "map", 
                  locationName = "integrationResponses")), shape = "Integration", 
                type = "structure", locationName = "methodIntegration"), 
            AuthorizationScopes = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "authorizationScopes")), 
            shape = "Method", type = "structure")), shape = "MapOfMethod", 
            type = "map", locationName = "resourceMethods")), 
        shape = "Resource", type = "structure")
    return(populate(args, shape))
}

create_rest_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), CloneFrom = structure(logical(0), 
            shape = "String", type = "string", locationName = "cloneFrom"), 
        BinaryMediaTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "binaryMediaTypes"), 
        MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "minimumCompressionSize"), 
        ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
            type = "string", locationName = "apiKeySource"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration"), 
        Policy = structure(logical(0), shape = "String", type = "string", 
            locationName = "policy")), shape = "CreateRestApiRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_rest_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Warnings = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "warnings"), BinaryMediaTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "binaryMediaTypes"), 
        MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "minimumCompressionSize"), 
        ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
            type = "string", locationName = "apiKeySource"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration"), 
        Policy = structure(logical(0), shape = "String", type = "string", 
            locationName = "policy")), shape = "RestApi", type = "structure")
    return(populate(args, shape))
}

create_stage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        type = "string", locationName = "stageName"), DeploymentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "deploymentId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CacheClusterEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "cacheClusterEnabled"), 
        CacheClusterSize = structure(logical(0), shape = "CacheClusterSize", 
            type = "string", locationName = "cacheClusterSize"), 
        Variables = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "variables"), DocumentationVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "documentationVersion"), 
        CanarySettings = structure(list(PercentTraffic = structure(logical(0), 
            shape = "Double", type = "double", locationName = "percentTraffic"), 
            DeploymentId = structure(logical(0), shape = "String", 
                type = "string", locationName = "deploymentId"), 
            StageVariableOverrides = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "stageVariableOverrides"), 
            UseStageCache = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useStageCache")), 
            shape = "CanarySettings", type = "structure", locationName = "canarySettings"), 
        TracingEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "tracingEnabled"), 
        Tags = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "tags")), shape = "CreateStageRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_stage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "deploymentId"), 
        ClientCertificateId = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientCertificateId"), 
        StageName = structure(logical(0), shape = "String", type = "string", 
            locationName = "stageName"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        CacheClusterEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "cacheClusterEnabled"), 
        CacheClusterSize = structure(logical(0), shape = "CacheClusterSize", 
            type = "string", locationName = "cacheClusterSize"), 
        CacheClusterStatus = structure(logical(0), shape = "CacheClusterStatus", 
            type = "string", locationName = "cacheClusterStatus"), 
        MethodSettings = structure(list(structure(list(MetricsEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "metricsEnabled"), 
            LoggingLevel = structure(logical(0), shape = "String", 
                type = "string", locationName = "loggingLevel"), 
            DataTraceEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "dataTraceEnabled"), 
            ThrottlingBurstLimit = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "throttlingBurstLimit"), 
            ThrottlingRateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "throttlingRateLimit"), 
            CachingEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cachingEnabled"), 
            CacheTtlInSeconds = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "cacheTtlInSeconds"), 
            CacheDataEncrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cacheDataEncrypted"), 
            RequireAuthorizationForCacheControl = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "requireAuthorizationForCacheControl"), 
            UnauthorizedCacheControlHeaderStrategy = structure(logical(0), 
                shape = "UnauthorizedCacheControlHeaderStrategy", 
                type = "string", locationName = "unauthorizedCacheControlHeaderStrategy")), 
            shape = "MethodSetting", type = "structure")), shape = "MapOfMethodSettings", 
            type = "map", locationName = "methodSettings"), Variables = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "variables"), DocumentationVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "documentationVersion"), 
        AccessLogSettings = structure(list(Format = structure(logical(0), 
            shape = "String", type = "string", locationName = "format"), 
            DestinationArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "destinationArn")), 
            shape = "AccessLogSettings", type = "structure", 
            locationName = "accessLogSettings"), CanarySettings = structure(list(PercentTraffic = structure(logical(0), 
            shape = "Double", type = "double", locationName = "percentTraffic"), 
            DeploymentId = structure(logical(0), shape = "String", 
                type = "string", locationName = "deploymentId"), 
            StageVariableOverrides = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "stageVariableOverrides"), 
            UseStageCache = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useStageCache")), 
            shape = "CanarySettings", type = "structure", locationName = "canarySettings"), 
        TracingEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "tracingEnabled"), 
        Tags = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "tags"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate")), 
        shape = "Stage", type = "structure")
    return(populate(args, shape))
}

create_usage_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        ApiStages = structure(list(structure(list(ApiId = structure(logical(0), 
            shape = "String", type = "string", locationName = "apiId"), 
            Stage = structure(logical(0), shape = "String", type = "string", 
                locationName = "stage"), Throttle = structure(list(structure(list(BurstLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "burstLimit"), 
                RateLimit = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "rateLimit")), 
                shape = "ThrottleSettings", type = "structure")), 
                shape = "MapOfApiStageThrottleSettings", type = "map", 
                locationName = "throttle")), shape = "ApiStage", 
            type = "structure")), shape = "ListOfApiStage", type = "list", 
            locationName = "apiStages"), Throttle = structure(list(BurstLimit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "burstLimit"), 
            RateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "rateLimit")), 
            shape = "ThrottleSettings", type = "structure", locationName = "throttle"), 
        Quota = structure(list(Limit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "limit"), 
            Offset = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "offset"), Period = structure(logical(0), 
                shape = "QuotaPeriodType", type = "string", locationName = "period")), 
            shape = "QuotaSettings", type = "structure", locationName = "quota")), 
        shape = "CreateUsagePlanRequest", type = "structure")
    return(populate(args, shape))
}

create_usage_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), ApiStages = structure(list(structure(list(ApiId = structure(logical(0), 
            shape = "String", type = "string", locationName = "apiId"), 
            Stage = structure(logical(0), shape = "String", type = "string", 
                locationName = "stage"), Throttle = structure(list(structure(list(BurstLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "burstLimit"), 
                RateLimit = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "rateLimit")), 
                shape = "ThrottleSettings", type = "structure")), 
                shape = "MapOfApiStageThrottleSettings", type = "map", 
                locationName = "throttle")), shape = "ApiStage", 
            type = "structure")), shape = "ListOfApiStage", type = "list", 
            locationName = "apiStages"), Throttle = structure(list(BurstLimit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "burstLimit"), 
            RateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "rateLimit")), 
            shape = "ThrottleSettings", type = "structure", locationName = "throttle"), 
        Quota = structure(list(Limit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "limit"), 
            Offset = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "offset"), Period = structure(logical(0), 
                shape = "QuotaPeriodType", type = "string", locationName = "period")), 
            shape = "QuotaSettings", type = "structure", locationName = "quota"), 
        ProductCode = structure(logical(0), shape = "String", 
            type = "string", locationName = "productCode")), 
        shape = "UsagePlan", type = "structure")
    return(populate(args, shape))
}

create_usage_plan_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), KeyId = structure(logical(0), shape = "String", 
        type = "string", locationName = "keyId"), KeyType = structure(logical(0), 
        shape = "String", type = "string", locationName = "keyType")), 
        shape = "CreateUsagePlanKeyRequest", type = "structure")
    return(populate(args, shape))
}

create_usage_plan_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Type = structure(logical(0), 
        shape = "String", type = "string", locationName = "type"), 
        Value = structure(logical(0), shape = "String", type = "string", 
            locationName = "value"), Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
        shape = "UsagePlanKey", type = "structure")
    return(populate(args, shape))
}

create_vpc_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        TargetArns = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", type = "list", 
            locationName = "targetArns")), shape = "CreateVpcLinkRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), TargetArns = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "targetArns"), Status = structure(logical(0), 
            shape = "VpcLinkStatus", type = "string", locationName = "status"), 
        StatusMessage = structure(logical(0), shape = "String", 
            type = "string", locationName = "statusMessage")), 
        shape = "VpcLink", type = "structure")
    return(populate(args, shape))
}

delete_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiKey = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiKey", type = "string")), 
        shape = "DeleteApiKeyRequest", type = "structure")
    return(populate(args, shape))
}

delete_api_key_output <- function () 
{
    return(list())
}

delete_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), AuthorizerId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "authorizerId", 
        type = "string")), shape = "DeleteAuthorizerRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_authorizer_output <- function () 
{
    return(list())
}

delete_base_path_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string"), BasePath = structure(logical(0), shape = "String", 
        location = "uri", locationName = "basePath", type = "string")), 
        shape = "DeleteBasePathMappingRequest", type = "structure")
    return(populate(args, shape))
}

delete_base_path_mapping_output <- function () 
{
    return(list())
}

delete_client_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientCertificateId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "clientCertificateId", 
        type = "string")), shape = "DeleteClientCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_client_certificate_output <- function () 
{
    return(list())
}

delete_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DeploymentId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "deploymentId", 
        type = "string")), shape = "DeleteDeploymentRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_deployment_output <- function () 
{
    return(list())
}

delete_documentation_part_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationPartId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "documentationPartId", 
        type = "string")), shape = "DeleteDocumentationPartRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_documentation_part_output <- function () 
{
    return(list())
}

delete_documentation_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationVersion = structure(logical(0), 
        shape = "String", location = "uri", locationName = "documentationVersion", 
        type = "string")), shape = "DeleteDocumentationVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_documentation_version_output <- function () 
{
    return(list())
}

delete_domain_name_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string")), shape = "DeleteDomainNameRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_domain_name_output <- function () 
{
    return(list())
}

delete_gateway_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", location = "uri", locationName = "responseType", 
        type = "string")), shape = "DeleteGatewayResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_gateway_response_output <- function () 
{
    return(list())
}

delete_integration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string")), shape = "DeleteIntegrationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_integration_output <- function () 
{
    return(list())
}

delete_integration_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d")), shape = "DeleteIntegrationResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_integration_response_output <- function () 
{
    return(list())
}

delete_method_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string")), shape = "DeleteMethodRequest", type = "structure")
    return(populate(args, shape))
}

delete_method_output <- function () 
{
    return(list())
}

delete_method_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d")), shape = "DeleteMethodResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_method_response_output <- function () 
{
    return(list())
}

delete_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ModelName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "modelName", type = "string")), 
        shape = "DeleteModelRequest", type = "structure")
    return(populate(args, shape))
}

delete_model_output <- function () 
{
    return(list())
}

delete_request_validator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), RequestValidatorId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "requestValidatorId", 
        type = "string")), shape = "DeleteRequestValidatorRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_request_validator_output <- function () 
{
    return(list())
}

delete_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string")), shape = "DeleteResourceRequest", type = "structure")
    return(populate(args, shape))
}

delete_resource_output <- function () 
{
    return(list())
}

delete_rest_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string")), shape = "DeleteRestApiRequest", type = "structure")
    return(populate(args, shape))
}

delete_rest_api_output <- function () 
{
    return(list())
}

delete_stage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string")), 
        shape = "DeleteStageRequest", type = "structure")
    return(populate(args, shape))
}

delete_stage_output <- function () 
{
    return(list())
}

delete_usage_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string")), shape = "DeleteUsagePlanRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_usage_plan_output <- function () 
{
    return(list())
}

delete_usage_plan_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), KeyId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "keyId", type = "string")), 
        shape = "DeleteUsagePlanKeyRequest", type = "structure")
    return(populate(args, shape))
}

delete_usage_plan_key_output <- function () 
{
    return(list())
}

delete_vpc_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcLinkId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "vpcLinkId", 
        type = "string")), shape = "DeleteVpcLinkRequest", type = "structure")
    return(populate(args, shape))
}

delete_vpc_link_output <- function () 
{
    return(list())
}

flush_stage_authorizers_cache_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string")), 
        shape = "FlushStageAuthorizersCacheRequest", type = "structure")
    return(populate(args, shape))
}

flush_stage_authorizers_cache_output <- function () 
{
    return(list())
}

flush_stage_cache_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string")), 
        shape = "FlushStageCacheRequest", type = "structure")
    return(populate(args, shape))
}

flush_stage_cache_output <- function () 
{
    return(list())
}

generate_client_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description")), 
        shape = "GenerateClientCertificateRequest", type = "structure")
    return(populate(args, shape))
}

generate_client_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientCertificateId = structure(logical(0), 
        shape = "String", type = "string", locationName = "clientCertificateId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), PemEncodedCertificate = structure(logical(0), 
            shape = "String", type = "string", locationName = "pemEncodedCertificate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        ExpirationDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "expirationDate")), 
        shape = "ClientCertificate", type = "structure")
    return(populate(args, shape))
}

get_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetAccountRequest", type = "structure")
    return(populate(args, shape))
}

get_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CloudwatchRoleArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "cloudwatchRoleArn"), 
        ThrottleSettings = structure(list(BurstLimit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "burstLimit"), 
            RateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "rateLimit")), 
            shape = "ThrottleSettings", type = "structure", locationName = "throttleSettings"), 
        Features = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", type = "list", 
            locationName = "features"), ApiKeyVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "apiKeyVersion")), 
        shape = "Account", type = "structure")
    return(populate(args, shape))
}

get_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiKey = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiKey", type = "string"), 
        IncludeValue = structure(logical(0), shape = "NullableBoolean", 
            location = "querystring", locationName = "includeValue", 
            type = "boolean")), shape = "GetApiKeyRequest", type = "structure")
    return(populate(args, shape))
}

get_api_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Value = structure(logical(0), 
        shape = "String", type = "string", locationName = "value"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            locationName = "name"), CustomerId = structure(logical(0), 
            shape = "String", type = "string", locationName = "customerId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        StageKeys = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", type = "list", 
            locationName = "stageKeys")), shape = "ApiKey", type = "structure")
    return(populate(args, shape))
}

get_api_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer"), 
        NameQuery = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "nameQuery", type = "string"), CustomerId = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "customerId", 
            type = "string"), IncludeValues = structure(logical(0), 
            shape = "NullableBoolean", location = "querystring", 
            locationName = "includeValues", type = "boolean")), 
        shape = "GetApiKeysRequest", type = "structure")
    return(populate(args, shape))
}

get_api_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Warnings = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        type = "list", locationName = "warnings"), Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Value = structure(logical(0), shape = "String", type = "string", 
                locationName = "value"), Name = structure(logical(0), 
                shape = "String", type = "string", locationName = "name"), 
            CustomerId = structure(logical(0), shape = "String", 
                type = "string", locationName = "customerId"), 
            Description = structure(logical(0), shape = "String", 
                type = "string", locationName = "description"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "enabled"), 
            CreatedDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createdDate"), 
            LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "lastUpdatedDate"), 
            StageKeys = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "stageKeys")), 
            shape = "ApiKey", type = "structure")), shape = "ListOfApiKey", 
            locationName = "items", type = "list")), shape = "ApiKeys", 
        type = "structure")
    return(populate(args, shape))
}

get_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), AuthorizerId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "authorizerId", 
        type = "string")), shape = "GetAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

get_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Type = structure(logical(0), shape = "AuthorizerType", 
            type = "string", locationName = "type"), ProviderARNs = structure(list(structure(logical(0), 
            shape = "ProviderARN", type = "string")), shape = "ListOfARNs", 
            type = "list", locationName = "providerARNs"), AuthType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authType"), 
        AuthorizerUri = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerUri"), 
        AuthorizerCredentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerCredentials"), 
        IdentitySource = structure(logical(0), shape = "String", 
            type = "string", locationName = "identitySource"), 
        IdentityValidationExpression = structure(logical(0), 
            shape = "String", type = "string", locationName = "identityValidationExpression"), 
        AuthorizerResultTtlInSeconds = structure(logical(0), 
            shape = "NullableInteger", type = "integer", locationName = "authorizerResultTtlInSeconds")), 
        shape = "Authorizer", type = "structure")
    return(populate(args, shape))
}

get_authorizers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetAuthorizersRequest", type = "structure")
    return(populate(args, shape))
}

get_authorizers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name"), Type = structure(logical(0), 
                shape = "AuthorizerType", type = "string", locationName = "type"), 
            ProviderARNs = structure(list(structure(logical(0), 
                shape = "ProviderARN", type = "string")), shape = "ListOfARNs", 
                type = "list", locationName = "providerARNs"), 
            AuthType = structure(logical(0), shape = "String", 
                type = "string", locationName = "authType"), 
            AuthorizerUri = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizerUri"), 
            AuthorizerCredentials = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizerCredentials"), 
            IdentitySource = structure(logical(0), shape = "String", 
                type = "string", locationName = "identitySource"), 
            IdentityValidationExpression = structure(logical(0), 
                shape = "String", type = "string", locationName = "identityValidationExpression"), 
            AuthorizerResultTtlInSeconds = structure(logical(0), 
                shape = "NullableInteger", type = "integer", 
                locationName = "authorizerResultTtlInSeconds")), 
            shape = "Authorizer", type = "structure")), shape = "ListOfAuthorizer", 
            locationName = "items", type = "list")), shape = "Authorizers", 
        type = "structure")
    return(populate(args, shape))
}

get_base_path_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string"), BasePath = structure(logical(0), shape = "String", 
        location = "uri", locationName = "basePath", type = "string")), 
        shape = "GetBasePathMappingRequest", type = "structure")
    return(populate(args, shape))
}

get_base_path_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BasePath = structure(logical(0), 
        shape = "String", type = "string", locationName = "basePath"), 
        RestApiId = structure(logical(0), shape = "String", type = "string", 
            locationName = "restApiId"), Stage = structure(logical(0), 
            shape = "String", type = "string", locationName = "stage")), 
        shape = "BasePathMapping", type = "structure")
    return(populate(args, shape))
}

get_base_path_mappings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetBasePathMappingsRequest", type = "structure")
    return(populate(args, shape))
}

get_base_path_mappings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(BasePath = structure(logical(0), 
            shape = "String", type = "string", locationName = "basePath"), 
            RestApiId = structure(logical(0), shape = "String", 
                type = "string", locationName = "restApiId"), 
            Stage = structure(logical(0), shape = "String", type = "string", 
                locationName = "stage")), shape = "BasePathMapping", 
            type = "structure")), shape = "ListOfBasePathMapping", 
            locationName = "items", type = "list")), shape = "BasePathMappings", 
        type = "structure")
    return(populate(args, shape))
}

get_client_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientCertificateId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "clientCertificateId", 
        type = "string")), shape = "GetClientCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_client_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientCertificateId = structure(logical(0), 
        shape = "String", type = "string", locationName = "clientCertificateId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), PemEncodedCertificate = structure(logical(0), 
            shape = "String", type = "string", locationName = "pemEncodedCertificate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        ExpirationDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "expirationDate")), 
        shape = "ClientCertificate", type = "structure")
    return(populate(args, shape))
}

get_client_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetClientCertificatesRequest", type = "structure")
    return(populate(args, shape))
}

get_client_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(ClientCertificateId = structure(logical(0), 
            shape = "String", type = "string", locationName = "clientCertificateId"), 
            Description = structure(logical(0), shape = "String", 
                type = "string", locationName = "description"), 
            PemEncodedCertificate = structure(logical(0), shape = "String", 
                type = "string", locationName = "pemEncodedCertificate"), 
            CreatedDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createdDate"), 
            ExpirationDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "expirationDate")), 
            shape = "ClientCertificate", type = "structure")), 
            shape = "ListOfClientCertificate", locationName = "items", 
            type = "list")), shape = "ClientCertificates", type = "structure")
    return(populate(args, shape))
}

get_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DeploymentId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "deploymentId", 
        type = "string"), Embed = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        location = "querystring", locationName = "embed", type = "list")), 
        shape = "GetDeploymentRequest", type = "structure")
    return(populate(args, shape))
}

get_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        ApiSummary = structure(list(structure(list(structure(list(AuthorizationType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authorizationType"), 
            ApiKeyRequired = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "apiKeyRequired")), 
            shape = "MethodSnapshot", type = "structure")), shape = "MapOfMethodSnapshot", 
            type = "map")), shape = "PathToMapOfMethodSnapshot", 
            type = "map", locationName = "apiSummary")), shape = "Deployment", 
        type = "structure")
    return(populate(args, shape))
}

get_deployments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetDeploymentsRequest", type = "structure")
    return(populate(args, shape))
}

get_deployments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Description = structure(logical(0), shape = "String", 
                type = "string", locationName = "description"), 
            CreatedDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createdDate"), 
            ApiSummary = structure(list(structure(list(structure(list(AuthorizationType = structure(logical(0), 
                shape = "String", type = "string", locationName = "authorizationType"), 
                ApiKeyRequired = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "apiKeyRequired")), 
                shape = "MethodSnapshot", type = "structure")), 
                shape = "MapOfMethodSnapshot", type = "map")), 
                shape = "PathToMapOfMethodSnapshot", type = "map", 
                locationName = "apiSummary")), shape = "Deployment", 
            type = "structure")), shape = "ListOfDeployment", 
            locationName = "items", type = "list")), shape = "Deployments", 
        type = "structure")
    return(populate(args, shape))
}

get_documentation_part_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationPartId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "documentationPartId", 
        type = "string")), shape = "GetDocumentationPartRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_documentation_part_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Location = structure(list(Type = structure(logical(0), 
        shape = "DocumentationPartType", type = "string", locationName = "type"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Method = structure(logical(0), 
            shape = "String", type = "string", locationName = "method"), 
        StatusCode = structure(logical(0), shape = "DocumentationPartLocationStatusCode", 
            type = "string", pattern = "^([1-5]\\d\\d|\\*|\\s*)$", 
            locationName = "statusCode"), Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
        shape = "DocumentationPartLocation", type = "structure", 
        locationName = "location"), Properties = structure(logical(0), 
        shape = "String", type = "string", locationName = "properties")), 
        shape = "DocumentationPart", type = "structure")
    return(populate(args, shape))
}

get_documentation_parts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Type = structure(logical(0), shape = "DocumentationPartType", 
        location = "querystring", locationName = "type", type = "string"), 
        NameQuery = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "nameQuery", type = "string"), Path = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "path", 
            type = "string"), Position = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "position", 
            type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
            location = "querystring", locationName = "limit", 
            type = "integer"), LocationStatus = structure(logical(0), 
            shape = "LocationStatusType", location = "querystring", 
            locationName = "locationStatus", type = "string")), 
        shape = "GetDocumentationPartsRequest", type = "structure")
    return(populate(args, shape))
}

get_documentation_parts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Location = structure(list(Type = structure(logical(0), 
                shape = "DocumentationPartType", type = "string", 
                locationName = "type"), Path = structure(logical(0), 
                shape = "String", type = "string", locationName = "path"), 
                Method = structure(logical(0), shape = "String", 
                  type = "string", locationName = "method"), 
                StatusCode = structure(logical(0), shape = "DocumentationPartLocationStatusCode", 
                  type = "string", pattern = "^([1-5]\\d\\d|\\*|\\s*)$", 
                  locationName = "statusCode"), Name = structure(logical(0), 
                  shape = "String", type = "string", locationName = "name")), 
                shape = "DocumentationPartLocation", type = "structure", 
                locationName = "location"), Properties = structure(logical(0), 
                shape = "String", type = "string", locationName = "properties")), 
            shape = "DocumentationPart", type = "structure")), 
            shape = "ListOfDocumentationPart", locationName = "items", 
            type = "list")), shape = "DocumentationParts", type = "structure")
    return(populate(args, shape))
}

get_documentation_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationVersion = structure(logical(0), 
        shape = "String", location = "uri", locationName = "documentationVersion", 
        type = "string")), shape = "GetDocumentationVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_documentation_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Version = structure(logical(0), shape = "String", 
        type = "string", locationName = "version"), CreatedDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description")), 
        shape = "DocumentationVersion", type = "structure")
    return(populate(args, shape))
}

get_documentation_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetDocumentationVersionsRequest", type = "structure")
    return(populate(args, shape))
}

get_documentation_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Version = structure(logical(0), 
            shape = "String", type = "string", locationName = "version"), 
            CreatedDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createdDate"), 
            Description = structure(logical(0), shape = "String", 
                type = "string", locationName = "description")), 
            shape = "DocumentationVersion", type = "structure")), 
            shape = "ListOfDocumentationVersion", locationName = "items", 
            type = "list")), shape = "DocumentationVersions", 
        type = "structure")
    return(populate(args, shape))
}

get_domain_name_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string")), shape = "GetDomainNameRequest", type = "structure")
    return(populate(args, shape))
}

get_domain_name_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string", locationName = "domainName"), 
        CertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateName"), 
        CertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateArn"), 
        CertificateUploadDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "certificateUploadDate"), 
        RegionalDomainName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalDomainName"), 
        RegionalHostedZoneId = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalHostedZoneId"), 
        RegionalCertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateName"), 
        RegionalCertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateArn"), 
        DistributionDomainName = structure(logical(0), shape = "String", 
            type = "string", locationName = "distributionDomainName"), 
        DistributionHostedZoneId = structure(logical(0), shape = "String", 
            type = "string", locationName = "distributionHostedZoneId"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration")), 
        shape = "DomainName", type = "structure")
    return(populate(args, shape))
}

get_domain_names_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetDomainNamesRequest", type = "structure")
    return(populate(args, shape))
}

get_domain_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(DomainName = structure(logical(0), 
            shape = "String", type = "string", locationName = "domainName"), 
            CertificateName = structure(logical(0), shape = "String", 
                type = "string", locationName = "certificateName"), 
            CertificateArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "certificateArn"), 
            CertificateUploadDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "certificateUploadDate"), 
            RegionalDomainName = structure(logical(0), shape = "String", 
                type = "string", locationName = "regionalDomainName"), 
            RegionalHostedZoneId = structure(logical(0), shape = "String", 
                type = "string", locationName = "regionalHostedZoneId"), 
            RegionalCertificateName = structure(logical(0), shape = "String", 
                type = "string", locationName = "regionalCertificateName"), 
            RegionalCertificateArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "regionalCertificateArn"), 
            DistributionDomainName = structure(logical(0), shape = "String", 
                type = "string", locationName = "distributionDomainName"), 
            DistributionHostedZoneId = structure(logical(0), 
                shape = "String", type = "string", locationName = "distributionHostedZoneId"), 
            EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
                shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
                type = "list", locationName = "types")), shape = "EndpointConfiguration", 
                type = "structure", locationName = "endpointConfiguration")), 
            shape = "DomainName", type = "structure")), shape = "ListOfDomainName", 
            locationName = "items", type = "list")), shape = "DomainNames", 
        type = "structure")
    return(populate(args, shape))
}

get_export_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string"), 
        ExportType = structure(logical(0), shape = "String", 
            location = "uri", locationName = "exportType", type = "string"), 
        Parameters = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            location = "querystring", type = "map", locationName = "parameters"), 
        Accepts = structure(logical(0), shape = "String", location = "header", 
            locationName = "accepts", type = "string")), shape = "GetExportRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_export_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContentType = structure(logical(0), 
        shape = "String", location = "header", locationName = "contentType", 
        type = "string"), ContentDisposition = structure(logical(0), 
        shape = "String", location = "header", locationName = "contentDisposition", 
        type = "string"), Body = structure(logical(0), shape = "Blob", 
        type = "blob", locationName = "body")), shape = "ExportResponse", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

get_gateway_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", location = "uri", locationName = "responseType", 
        type = "string")), shape = "GetGatewayResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_gateway_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", type = "string", locationName = "responseType"), 
        StatusCode = structure(logical(0), shape = "StatusCode", 
            type = "string", pattern = "[1-5]\\d\\d", locationName = "statusCode"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        DefaultResponse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "defaultResponse")), 
        shape = "GatewayResponse", type = "structure")
    return(populate(args, shape))
}

get_gateway_responses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetGatewayResponsesRequest", type = "structure")
    return(populate(args, shape))
}

get_gateway_responses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(ResponseType = structure(logical(0), 
            shape = "GatewayResponseType", type = "string", locationName = "responseType"), 
            StatusCode = structure(logical(0), shape = "StatusCode", 
                type = "string", pattern = "[1-5]\\d\\d", locationName = "statusCode"), 
            ResponseParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseParameters"), 
            ResponseTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseTemplates"), 
            DefaultResponse = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "defaultResponse")), 
            shape = "GatewayResponse", type = "structure")), 
            shape = "ListOfGatewayResponse", locationName = "items", 
            type = "list")), shape = "GatewayResponses", type = "structure")
    return(populate(args, shape))
}

get_integration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string")), shape = "GetIntegrationRequest", type = "structure")
    return(populate(args, shape))
}

get_integration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Type = structure(logical(0), shape = "IntegrationType", 
        type = "string", locationName = "type"), HttpMethod = structure(logical(0), 
        shape = "String", type = "string", locationName = "httpMethod"), 
        Uri = structure(logical(0), shape = "String", type = "string", 
            locationName = "uri"), ConnectionType = structure(logical(0), 
            shape = "ConnectionType", type = "string", locationName = "connectionType"), 
        ConnectionId = structure(logical(0), shape = "String", 
            type = "string", locationName = "connectionId"), 
        Credentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "credentials"), RequestParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestParameters"), 
        RequestTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestTemplates"), 
        PassthroughBehavior = structure(logical(0), shape = "String", 
            type = "string", locationName = "passthroughBehavior"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling"), 
        TimeoutInMillis = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "timeoutInMillis"), 
        CacheNamespace = structure(logical(0), shape = "String", 
            type = "string", locationName = "cacheNamespace"), 
        CacheKeyParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "cacheKeyParameters"), 
        IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
            locationName = "statusCode"), SelectionPattern = structure(logical(0), 
            shape = "String", type = "string", locationName = "selectionPattern"), 
            ResponseParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseParameters"), 
            ResponseTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseTemplates"), 
            ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                type = "string", locationName = "contentHandling")), 
            shape = "IntegrationResponse", type = "structure")), 
            shape = "MapOfIntegrationResponse", type = "map", 
            locationName = "integrationResponses")), shape = "Integration", 
        type = "structure")
    return(populate(args, shape))
}

get_integration_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d")), shape = "GetIntegrationResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_integration_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), SelectionPattern = structure(logical(0), 
        shape = "String", type = "string", locationName = "selectionPattern"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling")), 
        shape = "IntegrationResponse", type = "structure")
    return(populate(args, shape))
}

get_method_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string")), shape = "GetMethodRequest", type = "structure")
    return(populate(args, shape))
}

get_method_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HttpMethod = structure(logical(0), 
        shape = "String", type = "string", locationName = "httpMethod"), 
        AuthorizationType = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizationType"), 
        AuthorizerId = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerId"), 
        ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
            type = "boolean", locationName = "apiKeyRequired"), 
        RequestValidatorId = structure(logical(0), shape = "String", 
            type = "string", locationName = "requestValidatorId"), 
        OperationName = structure(logical(0), shape = "String", 
            type = "string", locationName = "operationName"), 
        RequestParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "requestParameters"), 
        RequestModels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestModels"), MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
            locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "responseParameters"), 
            ResponseModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseModels")), 
            shape = "MethodResponse", type = "structure")), shape = "MapOfMethodResponse", 
            type = "map", locationName = "methodResponses"), 
        MethodIntegration = structure(list(Type = structure(logical(0), 
            shape = "IntegrationType", type = "string", locationName = "type"), 
            HttpMethod = structure(logical(0), shape = "String", 
                type = "string", locationName = "httpMethod"), 
            Uri = structure(logical(0), shape = "String", type = "string", 
                locationName = "uri"), ConnectionType = structure(logical(0), 
                shape = "ConnectionType", type = "string", locationName = "connectionType"), 
            ConnectionId = structure(logical(0), shape = "String", 
                type = "string", locationName = "connectionId"), 
            Credentials = structure(logical(0), shape = "String", 
                type = "string", locationName = "credentials"), 
            RequestParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestParameters"), 
            RequestTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestTemplates"), 
            PassthroughBehavior = structure(logical(0), shape = "String", 
                type = "string", locationName = "passthroughBehavior"), 
            ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                type = "string", locationName = "contentHandling"), 
            TimeoutInMillis = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "timeoutInMillis"), 
            CacheNamespace = structure(logical(0), shape = "String", 
                type = "string", locationName = "cacheNamespace"), 
            CacheKeyParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "cacheKeyParameters"), 
            IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                shape = "String", type = "string", locationName = "selectionPattern"), 
                ResponseParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseParameters"), 
                ResponseTemplates = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseTemplates"), 
                ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                  type = "string", locationName = "contentHandling")), 
                shape = "IntegrationResponse", type = "structure")), 
                shape = "MapOfIntegrationResponse", type = "map", 
                locationName = "integrationResponses")), shape = "Integration", 
            type = "structure", locationName = "methodIntegration"), 
        AuthorizationScopes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "authorizationScopes")), 
        shape = "Method", type = "structure")
    return(populate(args, shape))
}

get_method_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d")), shape = "GetMethodResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_method_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
        shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
        type = "map", locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "responseModels")), shape = "MethodResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ModelName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "modelName", type = "string"), 
        Flatten = structure(logical(0), shape = "Boolean", location = "querystring", 
            locationName = "flatten", type = "boolean")), shape = "GetModelRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Schema = structure(logical(0), 
            shape = "String", type = "string", locationName = "schema"), 
        ContentType = structure(logical(0), shape = "String", 
            type = "string", locationName = "contentType")), 
        shape = "Model", type = "structure")
    return(populate(args, shape))
}

get_model_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ModelName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "modelName", type = "string")), 
        shape = "GetModelTemplateRequest", type = "structure")
    return(populate(args, shape))
}

get_model_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Value = structure(logical(0), shape = "String", 
        type = "string", locationName = "value")), shape = "Template", 
        type = "structure")
    return(populate(args, shape))
}

get_models_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetModelsRequest", type = "structure")
    return(populate(args, shape))
}

get_models_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name"), Description = structure(logical(0), 
                shape = "String", type = "string", locationName = "description"), 
            Schema = structure(logical(0), shape = "String", 
                type = "string", locationName = "schema"), ContentType = structure(logical(0), 
                shape = "String", type = "string", locationName = "contentType")), 
            shape = "Model", type = "structure")), shape = "ListOfModel", 
            locationName = "items", type = "list")), shape = "Models", 
        type = "structure")
    return(populate(args, shape))
}

get_request_validator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), RequestValidatorId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "requestValidatorId", 
        type = "string")), shape = "GetRequestValidatorRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_request_validator_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        ValidateRequestBody = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestBody"), 
        ValidateRequestParameters = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestParameters")), 
        shape = "RequestValidator", type = "structure")
    return(populate(args, shape))
}

get_request_validators_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetRequestValidatorsRequest", type = "structure")
    return(populate(args, shape))
}

get_request_validators_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name"), ValidateRequestBody = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "validateRequestBody"), 
            ValidateRequestParameters = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "validateRequestParameters")), 
            shape = "RequestValidator", type = "structure")), 
            shape = "ListOfRequestValidator", locationName = "items", 
            type = "list")), shape = "RequestValidators", type = "structure")
    return(populate(args, shape))
}

get_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), Embed = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        location = "querystring", locationName = "embed", type = "list")), 
        shape = "GetResourceRequest", type = "structure")
    return(populate(args, shape))
}

get_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), ParentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "parentId"), 
        PathPart = structure(logical(0), shape = "String", type = "string", 
            locationName = "pathPart"), Path = structure(logical(0), 
            shape = "String", type = "string", locationName = "path"), 
        ResourceMethods = structure(list(structure(list(HttpMethod = structure(logical(0), 
            shape = "String", type = "string", locationName = "httpMethod"), 
            AuthorizationType = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizationType"), 
            AuthorizerId = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizerId"), 
            ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
                type = "boolean", locationName = "apiKeyRequired"), 
            RequestValidatorId = structure(logical(0), shape = "String", 
                type = "string", locationName = "requestValidatorId"), 
            OperationName = structure(logical(0), shape = "String", 
                type = "string", locationName = "operationName"), 
            RequestParameters = structure(list(structure(logical(0), 
                shape = "NullableBoolean", type = "boolean")), 
                shape = "MapOfStringToBoolean", type = "map", 
                locationName = "requestParameters"), RequestModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestModels"), 
            MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
                shape = "NullableBoolean", type = "boolean")), 
                shape = "MapOfStringToBoolean", type = "map", 
                locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseModels")), 
                shape = "MethodResponse", type = "structure")), 
                shape = "MapOfMethodResponse", type = "map", 
                locationName = "methodResponses"), MethodIntegration = structure(list(Type = structure(logical(0), 
                shape = "IntegrationType", type = "string", locationName = "type"), 
                HttpMethod = structure(logical(0), shape = "String", 
                  type = "string", locationName = "httpMethod"), 
                Uri = structure(logical(0), shape = "String", 
                  type = "string", locationName = "uri"), ConnectionType = structure(logical(0), 
                  shape = "ConnectionType", type = "string", 
                  locationName = "connectionType"), ConnectionId = structure(logical(0), 
                  shape = "String", type = "string", locationName = "connectionId"), 
                Credentials = structure(logical(0), shape = "String", 
                  type = "string", locationName = "credentials"), 
                RequestParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestParameters"), 
                RequestTemplates = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestTemplates"), 
                PassthroughBehavior = structure(logical(0), shape = "String", 
                  type = "string", locationName = "passthroughBehavior"), 
                ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                  type = "string", locationName = "contentHandling"), 
                TimeoutInMillis = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "timeoutInMillis"), 
                CacheNamespace = structure(logical(0), shape = "String", 
                  type = "string", locationName = "cacheNamespace"), 
                CacheKeyParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "ListOfString", 
                  type = "list", locationName = "cacheKeyParameters"), 
                IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                  shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                  locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                  shape = "String", type = "string", locationName = "selectionPattern"), 
                  ResponseParameters = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "responseParameters"), 
                  ResponseTemplates = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "responseTemplates"), 
                  ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                    type = "string", locationName = "contentHandling")), 
                  shape = "IntegrationResponse", type = "structure")), 
                  shape = "MapOfIntegrationResponse", type = "map", 
                  locationName = "integrationResponses")), shape = "Integration", 
                type = "structure", locationName = "methodIntegration"), 
            AuthorizationScopes = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "authorizationScopes")), 
            shape = "Method", type = "structure")), shape = "MapOfMethod", 
            type = "map", locationName = "resourceMethods")), 
        shape = "Resource", type = "structure")
    return(populate(args, shape))
}

get_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer"), 
        Embed = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", location = "querystring", 
            locationName = "embed", type = "list")), shape = "GetResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            ParentId = structure(logical(0), shape = "String", 
                type = "string", locationName = "parentId"), 
            PathPart = structure(logical(0), shape = "String", 
                type = "string", locationName = "pathPart"), 
            Path = structure(logical(0), shape = "String", type = "string", 
                locationName = "path"), ResourceMethods = structure(list(structure(list(HttpMethod = structure(logical(0), 
                shape = "String", type = "string", locationName = "httpMethod"), 
                AuthorizationType = structure(logical(0), shape = "String", 
                  type = "string", locationName = "authorizationType"), 
                AuthorizerId = structure(logical(0), shape = "String", 
                  type = "string", locationName = "authorizerId"), 
                ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
                  type = "boolean", locationName = "apiKeyRequired"), 
                RequestValidatorId = structure(logical(0), shape = "String", 
                  type = "string", locationName = "requestValidatorId"), 
                OperationName = structure(logical(0), shape = "String", 
                  type = "string", locationName = "operationName"), 
                RequestParameters = structure(list(structure(logical(0), 
                  shape = "NullableBoolean", type = "boolean")), 
                  shape = "MapOfStringToBoolean", type = "map", 
                  locationName = "requestParameters"), RequestModels = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestModels"), 
                MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                  shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                  locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
                  shape = "NullableBoolean", type = "boolean")), 
                  shape = "MapOfStringToBoolean", type = "map", 
                  locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseModels")), 
                  shape = "MethodResponse", type = "structure")), 
                  shape = "MapOfMethodResponse", type = "map", 
                  locationName = "methodResponses"), MethodIntegration = structure(list(Type = structure(logical(0), 
                  shape = "IntegrationType", type = "string", 
                  locationName = "type"), HttpMethod = structure(logical(0), 
                  shape = "String", type = "string", locationName = "httpMethod"), 
                  Uri = structure(logical(0), shape = "String", 
                    type = "string", locationName = "uri"), ConnectionType = structure(logical(0), 
                    shape = "ConnectionType", type = "string", 
                    locationName = "connectionType"), ConnectionId = structure(logical(0), 
                    shape = "String", type = "string", locationName = "connectionId"), 
                  Credentials = structure(logical(0), shape = "String", 
                    type = "string", locationName = "credentials"), 
                  RequestParameters = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "requestParameters"), 
                  RequestTemplates = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "requestTemplates"), 
                  PassthroughBehavior = structure(logical(0), 
                    shape = "String", type = "string", locationName = "passthroughBehavior"), 
                  ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                    type = "string", locationName = "contentHandling"), 
                  TimeoutInMillis = structure(logical(0), shape = "Integer", 
                    type = "integer", locationName = "timeoutInMillis"), 
                  CacheNamespace = structure(logical(0), shape = "String", 
                    type = "string", locationName = "cacheNamespace"), 
                  CacheKeyParameters = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "ListOfString", 
                    type = "list", locationName = "cacheKeyParameters"), 
                  IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                    shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                    locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                    shape = "String", type = "string", locationName = "selectionPattern"), 
                    ResponseParameters = structure(list(structure(logical(0), 
                      shape = "String", type = "string")), shape = "MapOfStringToString", 
                      type = "map", locationName = "responseParameters"), 
                    ResponseTemplates = structure(list(structure(logical(0), 
                      shape = "String", type = "string")), shape = "MapOfStringToString", 
                      type = "map", locationName = "responseTemplates"), 
                    ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                      type = "string", locationName = "contentHandling")), 
                    shape = "IntegrationResponse", type = "structure")), 
                    shape = "MapOfIntegrationResponse", type = "map", 
                    locationName = "integrationResponses")), 
                  shape = "Integration", type = "structure", 
                  locationName = "methodIntegration"), AuthorizationScopes = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "ListOfString", 
                  type = "list", locationName = "authorizationScopes")), 
                shape = "Method", type = "structure")), shape = "MapOfMethod", 
                type = "map", locationName = "resourceMethods")), 
            shape = "Resource", type = "structure")), shape = "ListOfResource", 
            locationName = "items", type = "list")), shape = "Resources", 
        type = "structure")
    return(populate(args, shape))
}

get_rest_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string")), shape = "GetRestApiRequest", type = "structure")
    return(populate(args, shape))
}

get_rest_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Warnings = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "warnings"), BinaryMediaTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "binaryMediaTypes"), 
        MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "minimumCompressionSize"), 
        ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
            type = "string", locationName = "apiKeySource"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration"), 
        Policy = structure(logical(0), shape = "String", type = "string", 
            locationName = "policy")), shape = "RestApi", type = "structure")
    return(populate(args, shape))
}

get_rest_apis_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetRestApisRequest", type = "structure")
    return(populate(args, shape))
}

get_rest_apis_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name"), Description = structure(logical(0), 
                shape = "String", type = "string", locationName = "description"), 
            CreatedDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createdDate"), 
            Version = structure(logical(0), shape = "String", 
                type = "string", locationName = "version"), Warnings = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "warnings"), BinaryMediaTypes = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "binaryMediaTypes"), 
            MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
                type = "integer", locationName = "minimumCompressionSize"), 
            ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
                type = "string", locationName = "apiKeySource"), 
            EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
                shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
                type = "list", locationName = "types")), shape = "EndpointConfiguration", 
                type = "structure", locationName = "endpointConfiguration"), 
            Policy = structure(logical(0), shape = "String", 
                type = "string", locationName = "policy")), shape = "RestApi", 
            type = "structure")), shape = "ListOfRestApi", locationName = "items", 
            type = "list")), shape = "RestApis", type = "structure")
    return(populate(args, shape))
}

get_sdk_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string"), 
        SdkType = structure(logical(0), shape = "String", location = "uri", 
            locationName = "sdkType", type = "string"), Parameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            location = "querystring", type = "map", locationName = "parameters")), 
        shape = "GetSdkRequest", type = "structure")
    return(populate(args, shape))
}

get_sdk_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContentType = structure(logical(0), 
        shape = "String", location = "header", locationName = "contentType", 
        type = "string"), ContentDisposition = structure(logical(0), 
        shape = "String", location = "header", locationName = "contentDisposition", 
        type = "string"), Body = structure(logical(0), shape = "Blob", 
        type = "blob", locationName = "body")), shape = "SdkResponse", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

get_sdk_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        location = "uri", locationName = "id", type = "string")), 
        shape = "GetSdkTypeRequest", type = "structure")
    return(populate(args, shape))
}

get_sdk_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), FriendlyName = structure(logical(0), 
        shape = "String", type = "string", locationName = "friendlyName"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), ConfigurationProperties = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name"), 
            FriendlyName = structure(logical(0), shape = "String", 
                type = "string", locationName = "friendlyName"), 
            Description = structure(logical(0), shape = "String", 
                type = "string", locationName = "description"), 
            Required = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "required"), 
            DefaultValue = structure(logical(0), shape = "String", 
                type = "string", locationName = "defaultValue")), 
            shape = "SdkConfigurationProperty", type = "structure")), 
            shape = "ListOfSdkConfigurationProperty", type = "list", 
            locationName = "configurationProperties")), shape = "SdkType", 
        type = "structure")
    return(populate(args, shape))
}

get_sdk_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetSdkTypesRequest", type = "structure")
    return(populate(args, shape))
}

get_sdk_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            FriendlyName = structure(logical(0), shape = "String", 
                type = "string", locationName = "friendlyName"), 
            Description = structure(logical(0), shape = "String", 
                type = "string", locationName = "description"), 
            ConfigurationProperties = structure(list(structure(list(Name = structure(logical(0), 
                shape = "String", type = "string", locationName = "name"), 
                FriendlyName = structure(logical(0), shape = "String", 
                  type = "string", locationName = "friendlyName"), 
                Description = structure(logical(0), shape = "String", 
                  type = "string", locationName = "description"), 
                Required = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "required"), 
                DefaultValue = structure(logical(0), shape = "String", 
                  type = "string", locationName = "defaultValue")), 
                shape = "SdkConfigurationProperty", type = "structure")), 
                shape = "ListOfSdkConfigurationProperty", type = "list", 
                locationName = "configurationProperties")), shape = "SdkType", 
            type = "structure")), shape = "ListOfSdkType", locationName = "items", 
            type = "list")), shape = "SdkTypes", type = "structure")
    return(populate(args, shape))
}

get_stage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string")), 
        shape = "GetStageRequest", type = "structure")
    return(populate(args, shape))
}

get_stage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "deploymentId"), 
        ClientCertificateId = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientCertificateId"), 
        StageName = structure(logical(0), shape = "String", type = "string", 
            locationName = "stageName"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        CacheClusterEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "cacheClusterEnabled"), 
        CacheClusterSize = structure(logical(0), shape = "CacheClusterSize", 
            type = "string", locationName = "cacheClusterSize"), 
        CacheClusterStatus = structure(logical(0), shape = "CacheClusterStatus", 
            type = "string", locationName = "cacheClusterStatus"), 
        MethodSettings = structure(list(structure(list(MetricsEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "metricsEnabled"), 
            LoggingLevel = structure(logical(0), shape = "String", 
                type = "string", locationName = "loggingLevel"), 
            DataTraceEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "dataTraceEnabled"), 
            ThrottlingBurstLimit = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "throttlingBurstLimit"), 
            ThrottlingRateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "throttlingRateLimit"), 
            CachingEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cachingEnabled"), 
            CacheTtlInSeconds = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "cacheTtlInSeconds"), 
            CacheDataEncrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cacheDataEncrypted"), 
            RequireAuthorizationForCacheControl = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "requireAuthorizationForCacheControl"), 
            UnauthorizedCacheControlHeaderStrategy = structure(logical(0), 
                shape = "UnauthorizedCacheControlHeaderStrategy", 
                type = "string", locationName = "unauthorizedCacheControlHeaderStrategy")), 
            shape = "MethodSetting", type = "structure")), shape = "MapOfMethodSettings", 
            type = "map", locationName = "methodSettings"), Variables = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "variables"), DocumentationVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "documentationVersion"), 
        AccessLogSettings = structure(list(Format = structure(logical(0), 
            shape = "String", type = "string", locationName = "format"), 
            DestinationArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "destinationArn")), 
            shape = "AccessLogSettings", type = "structure", 
            locationName = "accessLogSettings"), CanarySettings = structure(list(PercentTraffic = structure(logical(0), 
            shape = "Double", type = "double", locationName = "percentTraffic"), 
            DeploymentId = structure(logical(0), shape = "String", 
                type = "string", locationName = "deploymentId"), 
            StageVariableOverrides = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "stageVariableOverrides"), 
            UseStageCache = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useStageCache")), 
            shape = "CanarySettings", type = "structure", locationName = "canarySettings"), 
        TracingEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "tracingEnabled"), 
        Tags = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "tags"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate")), 
        shape = "Stage", type = "structure")
    return(populate(args, shape))
}

get_stages_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DeploymentId = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "deploymentId", 
        type = "string")), shape = "GetStagesRequest", type = "structure")
    return(populate(args, shape))
}

get_stages_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Item = structure(list(structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "deploymentId"), 
        ClientCertificateId = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientCertificateId"), 
        StageName = structure(logical(0), shape = "String", type = "string", 
            locationName = "stageName"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        CacheClusterEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "cacheClusterEnabled"), 
        CacheClusterSize = structure(logical(0), shape = "CacheClusterSize", 
            type = "string", locationName = "cacheClusterSize"), 
        CacheClusterStatus = structure(logical(0), shape = "CacheClusterStatus", 
            type = "string", locationName = "cacheClusterStatus"), 
        MethodSettings = structure(list(structure(list(MetricsEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "metricsEnabled"), 
            LoggingLevel = structure(logical(0), shape = "String", 
                type = "string", locationName = "loggingLevel"), 
            DataTraceEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "dataTraceEnabled"), 
            ThrottlingBurstLimit = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "throttlingBurstLimit"), 
            ThrottlingRateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "throttlingRateLimit"), 
            CachingEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cachingEnabled"), 
            CacheTtlInSeconds = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "cacheTtlInSeconds"), 
            CacheDataEncrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cacheDataEncrypted"), 
            RequireAuthorizationForCacheControl = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "requireAuthorizationForCacheControl"), 
            UnauthorizedCacheControlHeaderStrategy = structure(logical(0), 
                shape = "UnauthorizedCacheControlHeaderStrategy", 
                type = "string", locationName = "unauthorizedCacheControlHeaderStrategy")), 
            shape = "MethodSetting", type = "structure")), shape = "MapOfMethodSettings", 
            type = "map", locationName = "methodSettings"), Variables = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "variables"), DocumentationVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "documentationVersion"), 
        AccessLogSettings = structure(list(Format = structure(logical(0), 
            shape = "String", type = "string", locationName = "format"), 
            DestinationArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "destinationArn")), 
            shape = "AccessLogSettings", type = "structure", 
            locationName = "accessLogSettings"), CanarySettings = structure(list(PercentTraffic = structure(logical(0), 
            shape = "Double", type = "double", locationName = "percentTraffic"), 
            DeploymentId = structure(logical(0), shape = "String", 
                type = "string", locationName = "deploymentId"), 
            StageVariableOverrides = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "stageVariableOverrides"), 
            UseStageCache = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useStageCache")), 
            shape = "CanarySettings", type = "structure", locationName = "canarySettings"), 
        TracingEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "tracingEnabled"), 
        Tags = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "tags"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate")), 
        shape = "Stage", type = "structure")), shape = "ListOfStage", 
        type = "list", locationName = "item")), shape = "Stages", 
        type = "structure")
    return(populate(args, shape))
}

get_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceArn", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetTagsRequest", type = "structure")
    return(populate(args, shape))
}

get_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "tags")), shape = "Tags", 
        type = "structure")
    return(populate(args, shape))
}

get_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), KeyId = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "keyId", type = "string"), 
        StartDate = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "startDate", type = "string"), EndDate = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "endDate", 
            type = "string"), Position = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "position", 
            type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
            location = "querystring", locationName = "limit", 
            type = "integer")), shape = "GetUsageRequest", type = "structure")
    return(populate(args, shape))
}

get_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", type = "string", locationName = "usagePlanId"), 
        StartDate = structure(logical(0), shape = "String", type = "string", 
            locationName = "startDate"), EndDate = structure(logical(0), 
            shape = "String", type = "string", locationName = "endDate"), 
        Position = structure(logical(0), shape = "String", type = "string", 
            locationName = "position"), Items = structure(list(structure(list(structure(list(structure(logical(0), 
            shape = "Long", type = "long")), shape = "ListOfLong", 
            type = "list")), shape = "ListOfUsage", type = "list")), 
            shape = "MapOfKeyUsages", locationName = "items", 
            type = "map")), shape = "Usage", type = "structure")
    return(populate(args, shape))
}

get_usage_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string")), shape = "GetUsagePlanRequest", type = "structure")
    return(populate(args, shape))
}

get_usage_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), ApiStages = structure(list(structure(list(ApiId = structure(logical(0), 
            shape = "String", type = "string", locationName = "apiId"), 
            Stage = structure(logical(0), shape = "String", type = "string", 
                locationName = "stage"), Throttle = structure(list(structure(list(BurstLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "burstLimit"), 
                RateLimit = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "rateLimit")), 
                shape = "ThrottleSettings", type = "structure")), 
                shape = "MapOfApiStageThrottleSettings", type = "map", 
                locationName = "throttle")), shape = "ApiStage", 
            type = "structure")), shape = "ListOfApiStage", type = "list", 
            locationName = "apiStages"), Throttle = structure(list(BurstLimit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "burstLimit"), 
            RateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "rateLimit")), 
            shape = "ThrottleSettings", type = "structure", locationName = "throttle"), 
        Quota = structure(list(Limit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "limit"), 
            Offset = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "offset"), Period = structure(logical(0), 
                shape = "QuotaPeriodType", type = "string", locationName = "period")), 
            shape = "QuotaSettings", type = "structure", locationName = "quota"), 
        ProductCode = structure(logical(0), shape = "String", 
            type = "string", locationName = "productCode")), 
        shape = "UsagePlan", type = "structure")
    return(populate(args, shape))
}

get_usage_plan_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), KeyId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "keyId", type = "string")), 
        shape = "GetUsagePlanKeyRequest", type = "structure")
    return(populate(args, shape))
}

get_usage_plan_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Type = structure(logical(0), 
        shape = "String", type = "string", locationName = "type"), 
        Value = structure(logical(0), shape = "String", type = "string", 
            locationName = "value"), Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
        shape = "UsagePlanKey", type = "structure")
    return(populate(args, shape))
}

get_usage_plan_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), Position = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer"), 
        NameQuery = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "nameQuery", type = "string")), shape = "GetUsagePlanKeysRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_usage_plan_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Type = structure(logical(0), shape = "String", type = "string", 
                locationName = "type"), Value = structure(logical(0), 
                shape = "String", type = "string", locationName = "value"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name")), shape = "UsagePlanKey", 
            type = "structure")), shape = "ListOfUsagePlanKey", 
            locationName = "items", type = "list")), shape = "UsagePlanKeys", 
        type = "structure")
    return(populate(args, shape))
}

get_usage_plans_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), KeyId = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "keyId", type = "string"), 
        Limit = structure(logical(0), shape = "NullableInteger", 
            location = "querystring", locationName = "limit", 
            type = "integer")), shape = "GetUsagePlansRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_usage_plans_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name"), Description = structure(logical(0), 
                shape = "String", type = "string", locationName = "description"), 
            ApiStages = structure(list(structure(list(ApiId = structure(logical(0), 
                shape = "String", type = "string", locationName = "apiId"), 
                Stage = structure(logical(0), shape = "String", 
                  type = "string", locationName = "stage"), Throttle = structure(list(structure(list(BurstLimit = structure(logical(0), 
                  shape = "Integer", type = "integer", locationName = "burstLimit"), 
                  RateLimit = structure(logical(0), shape = "Double", 
                    type = "double", locationName = "rateLimit")), 
                  shape = "ThrottleSettings", type = "structure")), 
                  shape = "MapOfApiStageThrottleSettings", type = "map", 
                  locationName = "throttle")), shape = "ApiStage", 
                type = "structure")), shape = "ListOfApiStage", 
                type = "list", locationName = "apiStages"), Throttle = structure(list(BurstLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "burstLimit"), 
                RateLimit = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "rateLimit")), 
                shape = "ThrottleSettings", type = "structure", 
                locationName = "throttle"), Quota = structure(list(Limit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "limit"), 
                Offset = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "offset"), 
                Period = structure(logical(0), shape = "QuotaPeriodType", 
                  type = "string", locationName = "period")), 
                shape = "QuotaSettings", type = "structure", 
                locationName = "quota"), ProductCode = structure(logical(0), 
                shape = "String", type = "string", locationName = "productCode")), 
            shape = "UsagePlan", type = "structure")), shape = "ListOfUsagePlan", 
            locationName = "items", type = "list")), shape = "UsagePlans", 
        type = "structure")
    return(populate(args, shape))
}

get_vpc_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcLinkId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "vpcLinkId", 
        type = "string")), shape = "GetVpcLinkRequest", type = "structure")
    return(populate(args, shape))
}

get_vpc_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), TargetArns = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "targetArns"), Status = structure(logical(0), 
            shape = "VpcLinkStatus", type = "string", locationName = "status"), 
        StatusMessage = structure(logical(0), shape = "String", 
            type = "string", locationName = "statusMessage")), 
        shape = "VpcLink", type = "structure")
    return(populate(args, shape))
}

get_vpc_links_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "position", 
        type = "string"), Limit = structure(logical(0), shape = "NullableInteger", 
        location = "querystring", locationName = "limit", type = "integer")), 
        shape = "GetVpcLinksRequest", type = "structure")
    return(populate(args, shape))
}

get_vpc_links_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Position = structure(logical(0), 
        shape = "String", type = "string", locationName = "position"), 
        Items = structure(list(structure(list(Id = structure(logical(0), 
            shape = "String", type = "string", locationName = "id"), 
            Name = structure(logical(0), shape = "String", type = "string", 
                locationName = "name"), Description = structure(logical(0), 
                shape = "String", type = "string", locationName = "description"), 
            TargetArns = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "targetArns"), 
            Status = structure(logical(0), shape = "VpcLinkStatus", 
                type = "string", locationName = "status"), StatusMessage = structure(logical(0), 
                shape = "String", type = "string", locationName = "statusMessage")), 
            shape = "VpcLink", type = "structure")), shape = "ListOfVpcLink", 
            locationName = "items", type = "list")), shape = "VpcLinks", 
        type = "structure")
    return(populate(args, shape))
}

import_api_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Body = structure(logical(0), shape = "Blob", 
        type = "blob", locationName = "body"), Format = structure(logical(0), 
        shape = "ApiKeysFormat", location = "querystring", locationName = "format", 
        type = "string"), FailOnWarnings = structure(logical(0), 
        shape = "Boolean", location = "querystring", locationName = "failOnWarnings", 
        type = "boolean")), shape = "ImportApiKeysRequest", type = "structure", 
        payload = "body")
    return(populate(args, shape))
}

import_api_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ids = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        type = "list", locationName = "ids"), Warnings = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        type = "list", locationName = "warnings")), shape = "ApiKeyIds", 
        type = "structure")
    return(populate(args, shape))
}

import_documentation_parts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Mode = structure(logical(0), shape = "PutMode", 
        location = "querystring", locationName = "mode", type = "string"), 
        FailOnWarnings = structure(logical(0), shape = "Boolean", 
            location = "querystring", locationName = "failOnWarnings", 
            type = "boolean"), Body = structure(logical(0), shape = "Blob", 
            type = "blob", locationName = "body")), shape = "ImportDocumentationPartsRequest", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

import_documentation_parts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ids = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        type = "list", locationName = "ids"), Warnings = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        type = "list", locationName = "warnings")), shape = "DocumentationPartIds", 
        type = "structure")
    return(populate(args, shape))
}

import_rest_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailOnWarnings = structure(logical(0), 
        shape = "Boolean", location = "querystring", locationName = "failOnWarnings", 
        type = "boolean"), Parameters = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        location = "querystring", type = "map", locationName = "parameters"), 
        Body = structure(logical(0), shape = "Blob", type = "blob", 
            locationName = "body")), shape = "ImportRestApiRequest", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

import_rest_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Warnings = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "warnings"), BinaryMediaTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "binaryMediaTypes"), 
        MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "minimumCompressionSize"), 
        ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
            type = "string", locationName = "apiKeySource"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration"), 
        Policy = structure(logical(0), shape = "String", type = "string", 
            locationName = "policy")), shape = "RestApi", type = "structure")
    return(populate(args, shape))
}

put_gateway_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", location = "uri", locationName = "responseType", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "responseParameters"), ResponseTemplates = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "responseTemplates")), shape = "PutGatewayResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_gateway_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", type = "string", locationName = "responseType"), 
        StatusCode = structure(logical(0), shape = "StatusCode", 
            type = "string", pattern = "[1-5]\\d\\d", locationName = "statusCode"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        DefaultResponse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "defaultResponse")), 
        shape = "GatewayResponse", type = "structure")
    return(populate(args, shape))
}

put_integration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), Type = structure(logical(0), shape = "IntegrationType", 
        type = "string", locationName = "type"), IntegrationHttpMethod = structure(logical(0), 
        shape = "String", locationName = "integrationHttpMethod", 
        type = "string"), Uri = structure(logical(0), shape = "String", 
        type = "string", locationName = "uri"), ConnectionType = structure(logical(0), 
        shape = "ConnectionType", type = "string", locationName = "connectionType"), 
        ConnectionId = structure(logical(0), shape = "String", 
            type = "string", locationName = "connectionId"), 
        Credentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "credentials"), RequestParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestParameters"), 
        RequestTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestTemplates"), 
        PassthroughBehavior = structure(logical(0), shape = "String", 
            type = "string", locationName = "passthroughBehavior"), 
        CacheNamespace = structure(logical(0), shape = "String", 
            type = "string", locationName = "cacheNamespace"), 
        CacheKeyParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "cacheKeyParameters"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling"), 
        TimeoutInMillis = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "timeoutInMillis")), 
        shape = "PutIntegrationRequest", type = "structure")
    return(populate(args, shape))
}

put_integration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Type = structure(logical(0), shape = "IntegrationType", 
        type = "string", locationName = "type"), HttpMethod = structure(logical(0), 
        shape = "String", type = "string", locationName = "httpMethod"), 
        Uri = structure(logical(0), shape = "String", type = "string", 
            locationName = "uri"), ConnectionType = structure(logical(0), 
            shape = "ConnectionType", type = "string", locationName = "connectionType"), 
        ConnectionId = structure(logical(0), shape = "String", 
            type = "string", locationName = "connectionId"), 
        Credentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "credentials"), RequestParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestParameters"), 
        RequestTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestTemplates"), 
        PassthroughBehavior = structure(logical(0), shape = "String", 
            type = "string", locationName = "passthroughBehavior"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling"), 
        TimeoutInMillis = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "timeoutInMillis"), 
        CacheNamespace = structure(logical(0), shape = "String", 
            type = "string", locationName = "cacheNamespace"), 
        CacheKeyParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "cacheKeyParameters"), 
        IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
            locationName = "statusCode"), SelectionPattern = structure(logical(0), 
            shape = "String", type = "string", locationName = "selectionPattern"), 
            ResponseParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseParameters"), 
            ResponseTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseTemplates"), 
            ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                type = "string", locationName = "contentHandling")), 
            shape = "IntegrationResponse", type = "structure")), 
            shape = "MapOfIntegrationResponse", type = "map", 
            locationName = "integrationResponses")), shape = "Integration", 
        type = "structure")
    return(populate(args, shape))
}

put_integration_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d"), SelectionPattern = structure(logical(0), 
        shape = "String", type = "string", locationName = "selectionPattern"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling")), 
        shape = "PutIntegrationResponseRequest", type = "structure")
    return(populate(args, shape))
}

put_integration_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), SelectionPattern = structure(logical(0), 
        shape = "String", type = "string", locationName = "selectionPattern"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling")), 
        shape = "IntegrationResponse", type = "structure")
    return(populate(args, shape))
}

put_method_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), AuthorizationType = structure(logical(0), 
        shape = "String", type = "string", locationName = "authorizationType"), 
        AuthorizerId = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerId"), 
        ApiKeyRequired = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "apiKeyRequired"), 
        OperationName = structure(logical(0), shape = "String", 
            type = "string", locationName = "operationName"), 
        RequestParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "requestParameters"), 
        RequestModels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestModels"), RequestValidatorId = structure(logical(0), 
            shape = "String", type = "string", locationName = "requestValidatorId"), 
        AuthorizationScopes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "authorizationScopes")), 
        shape = "PutMethodRequest", type = "structure")
    return(populate(args, shape))
}

put_method_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HttpMethod = structure(logical(0), 
        shape = "String", type = "string", locationName = "httpMethod"), 
        AuthorizationType = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizationType"), 
        AuthorizerId = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerId"), 
        ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
            type = "boolean", locationName = "apiKeyRequired"), 
        RequestValidatorId = structure(logical(0), shape = "String", 
            type = "string", locationName = "requestValidatorId"), 
        OperationName = structure(logical(0), shape = "String", 
            type = "string", locationName = "operationName"), 
        RequestParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "requestParameters"), 
        RequestModels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestModels"), MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
            locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "responseParameters"), 
            ResponseModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseModels")), 
            shape = "MethodResponse", type = "structure")), shape = "MapOfMethodResponse", 
            type = "map", locationName = "methodResponses"), 
        MethodIntegration = structure(list(Type = structure(logical(0), 
            shape = "IntegrationType", type = "string", locationName = "type"), 
            HttpMethod = structure(logical(0), shape = "String", 
                type = "string", locationName = "httpMethod"), 
            Uri = structure(logical(0), shape = "String", type = "string", 
                locationName = "uri"), ConnectionType = structure(logical(0), 
                shape = "ConnectionType", type = "string", locationName = "connectionType"), 
            ConnectionId = structure(logical(0), shape = "String", 
                type = "string", locationName = "connectionId"), 
            Credentials = structure(logical(0), shape = "String", 
                type = "string", locationName = "credentials"), 
            RequestParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestParameters"), 
            RequestTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestTemplates"), 
            PassthroughBehavior = structure(logical(0), shape = "String", 
                type = "string", locationName = "passthroughBehavior"), 
            ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                type = "string", locationName = "contentHandling"), 
            TimeoutInMillis = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "timeoutInMillis"), 
            CacheNamespace = structure(logical(0), shape = "String", 
                type = "string", locationName = "cacheNamespace"), 
            CacheKeyParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "cacheKeyParameters"), 
            IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                shape = "String", type = "string", locationName = "selectionPattern"), 
                ResponseParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseParameters"), 
                ResponseTemplates = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseTemplates"), 
                ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                  type = "string", locationName = "contentHandling")), 
                shape = "IntegrationResponse", type = "structure")), 
                shape = "MapOfIntegrationResponse", type = "map", 
                locationName = "integrationResponses")), shape = "Integration", 
            type = "structure", locationName = "methodIntegration"), 
        AuthorizationScopes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "authorizationScopes")), 
        shape = "Method", type = "structure")
    return(populate(args, shape))
}

put_method_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d"), ResponseParameters = structure(list(structure(logical(0), 
        shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
        type = "map", locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "responseModels")), shape = "PutMethodResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_method_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
        shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
        type = "map", locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "responseModels")), shape = "MethodResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_rest_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), Mode = structure(logical(0), shape = "PutMode", 
        location = "querystring", locationName = "mode", type = "string"), 
        FailOnWarnings = structure(logical(0), shape = "Boolean", 
            location = "querystring", locationName = "failOnWarnings", 
            type = "boolean"), Parameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            location = "querystring", type = "map", locationName = "parameters"), 
        Body = structure(logical(0), shape = "Blob", type = "blob", 
            locationName = "body")), shape = "PutRestApiRequest", 
        type = "structure", payload = "body")
    return(populate(args, shape))
}

put_rest_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Warnings = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "warnings"), BinaryMediaTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "binaryMediaTypes"), 
        MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "minimumCompressionSize"), 
        ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
            type = "string", locationName = "apiKeySource"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration"), 
        Policy = structure(logical(0), shape = "String", type = "string", 
            locationName = "policy")), shape = "RestApi", type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceArn", 
        type = "string"), Tags = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "tags")), shape = "TagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function () 
{
    return(list())
}

test_invoke_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), AuthorizerId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "authorizerId", 
        type = "string"), Headers = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "headers"), MultiValueHeaders = structure(list(structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        type = "list")), shape = "MapOfStringToList", type = "map", 
        locationName = "multiValueHeaders"), PathWithQueryString = structure(logical(0), 
        shape = "String", type = "string", locationName = "pathWithQueryString"), 
        Body = structure(logical(0), shape = "String", type = "string", 
            locationName = "body"), StageVariables = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "stageVariables"), AdditionalContext = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "additionalContext")), 
        shape = "TestInvokeAuthorizerRequest", type = "structure")
    return(populate(args, shape))
}

test_invoke_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientStatus = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "clientStatus"), 
        Log = structure(logical(0), shape = "String", type = "string", 
            locationName = "log"), Latency = structure(logical(0), 
            shape = "Long", type = "long", locationName = "latency"), 
        PrincipalId = structure(logical(0), shape = "String", 
            type = "string", locationName = "principalId"), Policy = structure(logical(0), 
            shape = "String", type = "string", locationName = "policy"), 
        Authorization = structure(list(structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list")), shape = "MapOfStringToList", type = "map", 
            locationName = "authorization"), Claims = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "claims")), shape = "TestInvokeAuthorizerResponse", 
        type = "structure")
    return(populate(args, shape))
}

test_invoke_method_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), PathWithQueryString = structure(logical(0), 
        shape = "String", type = "string", locationName = "pathWithQueryString"), 
        Body = structure(logical(0), shape = "String", type = "string", 
            locationName = "body"), Headers = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "headers"), MultiValueHeaders = structure(list(structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list")), shape = "MapOfStringToList", type = "map", 
            locationName = "multiValueHeaders"), ClientCertificateId = structure(logical(0), 
            shape = "String", type = "string", locationName = "clientCertificateId"), 
        StageVariables = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "stageVariables")), 
        shape = "TestInvokeMethodRequest", type = "structure")
    return(populate(args, shape))
}

test_invoke_method_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "Integer", 
        type = "integer", locationName = "status"), Body = structure(logical(0), 
        shape = "String", type = "string", locationName = "body"), 
        Headers = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "headers"), MultiValueHeaders = structure(list(structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list")), shape = "MapOfStringToList", type = "map", 
            locationName = "multiValueHeaders"), Log = structure(logical(0), 
            shape = "String", type = "string", locationName = "log"), 
        Latency = structure(logical(0), shape = "Long", type = "long", 
            locationName = "latency")), shape = "TestInvokeMethodResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceArn", 
        type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListOfString", 
        location = "querystring", locationName = "tagKeys", type = "list")), 
        shape = "UntagResourceRequest", type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function () 
{
    return(list())
}

update_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CloudwatchRoleArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "cloudwatchRoleArn"), 
        ThrottleSettings = structure(list(BurstLimit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "burstLimit"), 
            RateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "rateLimit")), 
            shape = "ThrottleSettings", type = "structure", locationName = "throttleSettings"), 
        Features = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", type = "list", 
            locationName = "features"), ApiKeyVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "apiKeyVersion")), 
        shape = "Account", type = "structure")
    return(populate(args, shape))
}

update_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiKey = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiKey", type = "string"), 
        PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
            shape = "Op", type = "string", locationName = "op"), 
            Path = structure(logical(0), shape = "String", type = "string", 
                locationName = "path"), Value = structure(logical(0), 
                shape = "String", type = "string", locationName = "value"), 
            From = structure(logical(0), shape = "String", type = "string", 
                locationName = "from")), shape = "PatchOperation", 
            type = "structure")), shape = "ListOfPatchOperation", 
            type = "list", locationName = "patchOperations")), 
        shape = "UpdateApiKeyRequest", type = "structure")
    return(populate(args, shape))
}

update_api_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Value = structure(logical(0), 
        shape = "String", type = "string", locationName = "value"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            locationName = "name"), CustomerId = structure(logical(0), 
            shape = "String", type = "string", locationName = "customerId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        StageKeys = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ListOfString", type = "list", 
            locationName = "stageKeys")), shape = "ApiKey", type = "structure")
    return(populate(args, shape))
}

update_authorizer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), AuthorizerId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "authorizerId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateAuthorizerRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_authorizer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Type = structure(logical(0), shape = "AuthorizerType", 
            type = "string", locationName = "type"), ProviderARNs = structure(list(structure(logical(0), 
            shape = "ProviderARN", type = "string")), shape = "ListOfARNs", 
            type = "list", locationName = "providerARNs"), AuthType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authType"), 
        AuthorizerUri = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerUri"), 
        AuthorizerCredentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerCredentials"), 
        IdentitySource = structure(logical(0), shape = "String", 
            type = "string", locationName = "identitySource"), 
        IdentityValidationExpression = structure(logical(0), 
            shape = "String", type = "string", locationName = "identityValidationExpression"), 
        AuthorizerResultTtlInSeconds = structure(logical(0), 
            shape = "NullableInteger", type = "integer", locationName = "authorizerResultTtlInSeconds")), 
        shape = "Authorizer", type = "structure")
    return(populate(args, shape))
}

update_base_path_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string"), BasePath = structure(logical(0), shape = "String", 
        location = "uri", locationName = "basePath", type = "string"), 
        PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
            shape = "Op", type = "string", locationName = "op"), 
            Path = structure(logical(0), shape = "String", type = "string", 
                locationName = "path"), Value = structure(logical(0), 
                shape = "String", type = "string", locationName = "value"), 
            From = structure(logical(0), shape = "String", type = "string", 
                locationName = "from")), shape = "PatchOperation", 
            type = "structure")), shape = "ListOfPatchOperation", 
            type = "list", locationName = "patchOperations")), 
        shape = "UpdateBasePathMappingRequest", type = "structure")
    return(populate(args, shape))
}

update_base_path_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BasePath = structure(logical(0), 
        shape = "String", type = "string", locationName = "basePath"), 
        RestApiId = structure(logical(0), shape = "String", type = "string", 
            locationName = "restApiId"), Stage = structure(logical(0), 
            shape = "String", type = "string", locationName = "stage")), 
        shape = "BasePathMapping", type = "structure")
    return(populate(args, shape))
}

update_client_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientCertificateId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "clientCertificateId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateClientCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_client_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientCertificateId = structure(logical(0), 
        shape = "String", type = "string", locationName = "clientCertificateId"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), PemEncodedCertificate = structure(logical(0), 
            shape = "String", type = "string", locationName = "pemEncodedCertificate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        ExpirationDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "expirationDate")), 
        shape = "ClientCertificate", type = "structure")
    return(populate(args, shape))
}

update_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DeploymentId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "deploymentId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateDeploymentRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        ApiSummary = structure(list(structure(list(structure(list(AuthorizationType = structure(logical(0), 
            shape = "String", type = "string", locationName = "authorizationType"), 
            ApiKeyRequired = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "apiKeyRequired")), 
            shape = "MethodSnapshot", type = "structure")), shape = "MapOfMethodSnapshot", 
            type = "map")), shape = "PathToMapOfMethodSnapshot", 
            type = "map", locationName = "apiSummary")), shape = "Deployment", 
        type = "structure")
    return(populate(args, shape))
}

update_documentation_part_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationPartId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "documentationPartId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateDocumentationPartRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_documentation_part_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Location = structure(list(Type = structure(logical(0), 
        shape = "DocumentationPartType", type = "string", locationName = "type"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Method = structure(logical(0), 
            shape = "String", type = "string", locationName = "method"), 
        StatusCode = structure(logical(0), shape = "DocumentationPartLocationStatusCode", 
            type = "string", pattern = "^([1-5]\\d\\d|\\*|\\s*)$", 
            locationName = "statusCode"), Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
        shape = "DocumentationPartLocation", type = "structure", 
        locationName = "location"), Properties = structure(logical(0), 
        shape = "String", type = "string", locationName = "properties")), 
        shape = "DocumentationPart", type = "structure")
    return(populate(args, shape))
}

update_documentation_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), DocumentationVersion = structure(logical(0), 
        shape = "String", location = "uri", locationName = "documentationVersion", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateDocumentationVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_documentation_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Version = structure(logical(0), shape = "String", 
        type = "string", locationName = "version"), CreatedDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description")), 
        shape = "DocumentationVersion", type = "structure")
    return(populate(args, shape))
}

update_domain_name_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", location = "uri", locationName = "domainName", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateDomainNameRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_domain_name_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string", locationName = "domainName"), 
        CertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateName"), 
        CertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "certificateArn"), 
        CertificateUploadDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "certificateUploadDate"), 
        RegionalDomainName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalDomainName"), 
        RegionalHostedZoneId = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalHostedZoneId"), 
        RegionalCertificateName = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateName"), 
        RegionalCertificateArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "regionalCertificateArn"), 
        DistributionDomainName = structure(logical(0), shape = "String", 
            type = "string", locationName = "distributionDomainName"), 
        DistributionHostedZoneId = structure(logical(0), shape = "String", 
            type = "string", locationName = "distributionHostedZoneId"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration")), 
        shape = "DomainName", type = "structure")
    return(populate(args, shape))
}

update_gateway_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", location = "uri", locationName = "responseType", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateGatewayResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_gateway_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResponseType = structure(logical(0), 
        shape = "GatewayResponseType", type = "string", locationName = "responseType"), 
        StatusCode = structure(logical(0), shape = "StatusCode", 
            type = "string", pattern = "[1-5]\\d\\d", locationName = "statusCode"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        DefaultResponse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "defaultResponse")), 
        shape = "GatewayResponse", type = "structure")
    return(populate(args, shape))
}

update_integration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateIntegrationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_integration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Type = structure(logical(0), shape = "IntegrationType", 
        type = "string", locationName = "type"), HttpMethod = structure(logical(0), 
        shape = "String", type = "string", locationName = "httpMethod"), 
        Uri = structure(logical(0), shape = "String", type = "string", 
            locationName = "uri"), ConnectionType = structure(logical(0), 
            shape = "ConnectionType", type = "string", locationName = "connectionType"), 
        ConnectionId = structure(logical(0), shape = "String", 
            type = "string", locationName = "connectionId"), 
        Credentials = structure(logical(0), shape = "String", 
            type = "string", locationName = "credentials"), RequestParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestParameters"), 
        RequestTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestTemplates"), 
        PassthroughBehavior = structure(logical(0), shape = "String", 
            type = "string", locationName = "passthroughBehavior"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling"), 
        TimeoutInMillis = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "timeoutInMillis"), 
        CacheNamespace = structure(logical(0), shape = "String", 
            type = "string", locationName = "cacheNamespace"), 
        CacheKeyParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "cacheKeyParameters"), 
        IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
            locationName = "statusCode"), SelectionPattern = structure(logical(0), 
            shape = "String", type = "string", locationName = "selectionPattern"), 
            ResponseParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseParameters"), 
            ResponseTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseTemplates"), 
            ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                type = "string", locationName = "contentHandling")), 
            shape = "IntegrationResponse", type = "structure")), 
            shape = "MapOfIntegrationResponse", type = "map", 
            locationName = "integrationResponses")), shape = "Integration", 
        type = "structure")
    return(populate(args, shape))
}

update_integration_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateIntegrationResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_integration_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), SelectionPattern = structure(logical(0), 
        shape = "String", type = "string", locationName = "selectionPattern"), 
        ResponseParameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseParameters"), 
        ResponseTemplates = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "responseTemplates"), 
        ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
            type = "string", locationName = "contentHandling")), 
        shape = "IntegrationResponse", type = "structure")
    return(populate(args, shape))
}

update_method_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateMethodRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_method_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HttpMethod = structure(logical(0), 
        shape = "String", type = "string", locationName = "httpMethod"), 
        AuthorizationType = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizationType"), 
        AuthorizerId = structure(logical(0), shape = "String", 
            type = "string", locationName = "authorizerId"), 
        ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
            type = "boolean", locationName = "apiKeyRequired"), 
        RequestValidatorId = structure(logical(0), shape = "String", 
            type = "string", locationName = "requestValidatorId"), 
        OperationName = structure(logical(0), shape = "String", 
            type = "string", locationName = "operationName"), 
        RequestParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "requestParameters"), 
        RequestModels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "requestModels"), MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
            locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
            shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
            type = "map", locationName = "responseParameters"), 
            ResponseModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseModels")), 
            shape = "MethodResponse", type = "structure")), shape = "MapOfMethodResponse", 
            type = "map", locationName = "methodResponses"), 
        MethodIntegration = structure(list(Type = structure(logical(0), 
            shape = "IntegrationType", type = "string", locationName = "type"), 
            HttpMethod = structure(logical(0), shape = "String", 
                type = "string", locationName = "httpMethod"), 
            Uri = structure(logical(0), shape = "String", type = "string", 
                locationName = "uri"), ConnectionType = structure(logical(0), 
                shape = "ConnectionType", type = "string", locationName = "connectionType"), 
            ConnectionId = structure(logical(0), shape = "String", 
                type = "string", locationName = "connectionId"), 
            Credentials = structure(logical(0), shape = "String", 
                type = "string", locationName = "credentials"), 
            RequestParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestParameters"), 
            RequestTemplates = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestTemplates"), 
            PassthroughBehavior = structure(logical(0), shape = "String", 
                type = "string", locationName = "passthroughBehavior"), 
            ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                type = "string", locationName = "contentHandling"), 
            TimeoutInMillis = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "timeoutInMillis"), 
            CacheNamespace = structure(logical(0), shape = "String", 
                type = "string", locationName = "cacheNamespace"), 
            CacheKeyParameters = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "cacheKeyParameters"), 
            IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                shape = "String", type = "string", locationName = "selectionPattern"), 
                ResponseParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseParameters"), 
                ResponseTemplates = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "responseTemplates"), 
                ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                  type = "string", locationName = "contentHandling")), 
                shape = "IntegrationResponse", type = "structure")), 
                shape = "MapOfIntegrationResponse", type = "map", 
                locationName = "integrationResponses")), shape = "Integration", 
            type = "structure", locationName = "methodIntegration"), 
        AuthorizationScopes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "authorizationScopes")), 
        shape = "Method", type = "structure")
    return(populate(args, shape))
}

update_method_response_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), HttpMethod = structure(logical(0), 
        shape = "String", location = "uri", locationName = "httpMethod", 
        type = "string"), StatusCode = structure(logical(0), 
        shape = "StatusCode", location = "uri", locationName = "statusCode", 
        type = "string", pattern = "[1-5]\\d\\d"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateMethodResponseRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_method_response_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
        locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
        shape = "NullableBoolean", type = "boolean")), shape = "MapOfStringToBoolean", 
        type = "map", locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapOfStringToString", 
        type = "map", locationName = "responseModels")), shape = "MethodResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ModelName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "modelName", type = "string"), 
        PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
            shape = "Op", type = "string", locationName = "op"), 
            Path = structure(logical(0), shape = "String", type = "string", 
                locationName = "path"), Value = structure(logical(0), 
                shape = "String", type = "string", locationName = "value"), 
            From = structure(logical(0), shape = "String", type = "string", 
                locationName = "from")), shape = "PatchOperation", 
            type = "structure")), shape = "ListOfPatchOperation", 
            type = "list", locationName = "patchOperations")), 
        shape = "UpdateModelRequest", type = "structure")
    return(populate(args, shape))
}

update_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Schema = structure(logical(0), 
            shape = "String", type = "string", locationName = "schema"), 
        ContentType = structure(logical(0), shape = "String", 
            type = "string", locationName = "contentType")), 
        shape = "Model", type = "structure")
    return(populate(args, shape))
}

update_request_validator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), RequestValidatorId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "requestValidatorId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateRequestValidatorRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_request_validator_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        ValidateRequestBody = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestBody"), 
        ValidateRequestParameters = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "validateRequestParameters")), 
        shape = "RequestValidator", type = "structure")
    return(populate(args, shape))
}

update_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), ResourceId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "resourceId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), ParentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "parentId"), 
        PathPart = structure(logical(0), shape = "String", type = "string", 
            locationName = "pathPart"), Path = structure(logical(0), 
            shape = "String", type = "string", locationName = "path"), 
        ResourceMethods = structure(list(structure(list(HttpMethod = structure(logical(0), 
            shape = "String", type = "string", locationName = "httpMethod"), 
            AuthorizationType = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizationType"), 
            AuthorizerId = structure(logical(0), shape = "String", 
                type = "string", locationName = "authorizerId"), 
            ApiKeyRequired = structure(logical(0), shape = "NullableBoolean", 
                type = "boolean", locationName = "apiKeyRequired"), 
            RequestValidatorId = structure(logical(0), shape = "String", 
                type = "string", locationName = "requestValidatorId"), 
            OperationName = structure(logical(0), shape = "String", 
                type = "string", locationName = "operationName"), 
            RequestParameters = structure(list(structure(logical(0), 
                shape = "NullableBoolean", type = "boolean")), 
                shape = "MapOfStringToBoolean", type = "map", 
                locationName = "requestParameters"), RequestModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "requestModels"), 
            MethodResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                locationName = "statusCode"), ResponseParameters = structure(list(structure(logical(0), 
                shape = "NullableBoolean", type = "boolean")), 
                shape = "MapOfStringToBoolean", type = "map", 
                locationName = "responseParameters"), ResponseModels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "responseModels")), 
                shape = "MethodResponse", type = "structure")), 
                shape = "MapOfMethodResponse", type = "map", 
                locationName = "methodResponses"), MethodIntegration = structure(list(Type = structure(logical(0), 
                shape = "IntegrationType", type = "string", locationName = "type"), 
                HttpMethod = structure(logical(0), shape = "String", 
                  type = "string", locationName = "httpMethod"), 
                Uri = structure(logical(0), shape = "String", 
                  type = "string", locationName = "uri"), ConnectionType = structure(logical(0), 
                  shape = "ConnectionType", type = "string", 
                  locationName = "connectionType"), ConnectionId = structure(logical(0), 
                  shape = "String", type = "string", locationName = "connectionId"), 
                Credentials = structure(logical(0), shape = "String", 
                  type = "string", locationName = "credentials"), 
                RequestParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestParameters"), 
                RequestTemplates = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "MapOfStringToString", 
                  type = "map", locationName = "requestTemplates"), 
                PassthroughBehavior = structure(logical(0), shape = "String", 
                  type = "string", locationName = "passthroughBehavior"), 
                ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                  type = "string", locationName = "contentHandling"), 
                TimeoutInMillis = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "timeoutInMillis"), 
                CacheNamespace = structure(logical(0), shape = "String", 
                  type = "string", locationName = "cacheNamespace"), 
                CacheKeyParameters = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "ListOfString", 
                  type = "list", locationName = "cacheKeyParameters"), 
                IntegrationResponses = structure(list(structure(list(StatusCode = structure(logical(0), 
                  shape = "StatusCode", type = "string", pattern = "[1-5]\\d\\d", 
                  locationName = "statusCode"), SelectionPattern = structure(logical(0), 
                  shape = "String", type = "string", locationName = "selectionPattern"), 
                  ResponseParameters = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "responseParameters"), 
                  ResponseTemplates = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "MapOfStringToString", 
                    type = "map", locationName = "responseTemplates"), 
                  ContentHandling = structure(logical(0), shape = "ContentHandlingStrategy", 
                    type = "string", locationName = "contentHandling")), 
                  shape = "IntegrationResponse", type = "structure")), 
                  shape = "MapOfIntegrationResponse", type = "map", 
                  locationName = "integrationResponses")), shape = "Integration", 
                type = "structure", locationName = "methodIntegration"), 
            AuthorizationScopes = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "ListOfString", 
                type = "list", locationName = "authorizationScopes")), 
            shape = "Method", type = "structure")), shape = "MapOfMethod", 
            type = "map", locationName = "resourceMethods")), 
        shape = "Resource", type = "structure")
    return(populate(args, shape))
}

update_rest_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateRestApiRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_rest_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "String", type = "string", 
            locationName = "version"), Warnings = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "warnings"), BinaryMediaTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "binaryMediaTypes"), 
        MinimumCompressionSize = structure(logical(0), shape = "NullableInteger", 
            type = "integer", locationName = "minimumCompressionSize"), 
        ApiKeySource = structure(logical(0), shape = "ApiKeySourceType", 
            type = "string", locationName = "apiKeySource"), 
        EndpointConfiguration = structure(list(Types = structure(list(structure(logical(0), 
            shape = "EndpointType", type = "string")), shape = "ListOfEndpointType", 
            type = "list", locationName = "types")), shape = "EndpointConfiguration", 
            type = "structure", locationName = "endpointConfiguration"), 
        Policy = structure(logical(0), shape = "String", type = "string", 
            locationName = "policy")), shape = "RestApi", type = "structure")
    return(populate(args, shape))
}

update_stage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RestApiId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "restApiId", 
        type = "string"), StageName = structure(logical(0), shape = "String", 
        location = "uri", locationName = "stageName", type = "string"), 
        PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
            shape = "Op", type = "string", locationName = "op"), 
            Path = structure(logical(0), shape = "String", type = "string", 
                locationName = "path"), Value = structure(logical(0), 
                shape = "String", type = "string", locationName = "value"), 
            From = structure(logical(0), shape = "String", type = "string", 
                locationName = "from")), shape = "PatchOperation", 
            type = "structure")), shape = "ListOfPatchOperation", 
            type = "list", locationName = "patchOperations")), 
        shape = "UpdateStageRequest", type = "structure")
    return(populate(args, shape))
}

update_stage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string", locationName = "deploymentId"), 
        ClientCertificateId = structure(logical(0), shape = "String", 
            type = "string", locationName = "clientCertificateId"), 
        StageName = structure(logical(0), shape = "String", type = "string", 
            locationName = "stageName"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        CacheClusterEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "cacheClusterEnabled"), 
        CacheClusterSize = structure(logical(0), shape = "CacheClusterSize", 
            type = "string", locationName = "cacheClusterSize"), 
        CacheClusterStatus = structure(logical(0), shape = "CacheClusterStatus", 
            type = "string", locationName = "cacheClusterStatus"), 
        MethodSettings = structure(list(structure(list(MetricsEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "metricsEnabled"), 
            LoggingLevel = structure(logical(0), shape = "String", 
                type = "string", locationName = "loggingLevel"), 
            DataTraceEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "dataTraceEnabled"), 
            ThrottlingBurstLimit = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "throttlingBurstLimit"), 
            ThrottlingRateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "throttlingRateLimit"), 
            CachingEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cachingEnabled"), 
            CacheTtlInSeconds = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "cacheTtlInSeconds"), 
            CacheDataEncrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "cacheDataEncrypted"), 
            RequireAuthorizationForCacheControl = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "requireAuthorizationForCacheControl"), 
            UnauthorizedCacheControlHeaderStrategy = structure(logical(0), 
                shape = "UnauthorizedCacheControlHeaderStrategy", 
                type = "string", locationName = "unauthorizedCacheControlHeaderStrategy")), 
            shape = "MethodSetting", type = "structure")), shape = "MapOfMethodSettings", 
            type = "map", locationName = "methodSettings"), Variables = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "variables"), DocumentationVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "documentationVersion"), 
        AccessLogSettings = structure(list(Format = structure(logical(0), 
            shape = "String", type = "string", locationName = "format"), 
            DestinationArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "destinationArn")), 
            shape = "AccessLogSettings", type = "structure", 
            locationName = "accessLogSettings"), CanarySettings = structure(list(PercentTraffic = structure(logical(0), 
            shape = "Double", type = "double", locationName = "percentTraffic"), 
            DeploymentId = structure(logical(0), shape = "String", 
                type = "string", locationName = "deploymentId"), 
            StageVariableOverrides = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "MapOfStringToString", 
                type = "map", locationName = "stageVariableOverrides"), 
            UseStageCache = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useStageCache")), 
            shape = "CanarySettings", type = "structure", locationName = "canarySettings"), 
        TracingEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "tracingEnabled"), 
        Tags = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "tags"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate")), 
        shape = "Stage", type = "structure")
    return(populate(args, shape))
}

update_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), KeyId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "keyId", type = "string"), 
        PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
            shape = "Op", type = "string", locationName = "op"), 
            Path = structure(logical(0), shape = "String", type = "string", 
                locationName = "path"), Value = structure(logical(0), 
                shape = "String", type = "string", locationName = "value"), 
            From = structure(logical(0), shape = "String", type = "string", 
                locationName = "from")), shape = "PatchOperation", 
            type = "structure")), shape = "ListOfPatchOperation", 
            type = "list", locationName = "patchOperations")), 
        shape = "UpdateUsageRequest", type = "structure")
    return(populate(args, shape))
}

update_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", type = "string", locationName = "usagePlanId"), 
        StartDate = structure(logical(0), shape = "String", type = "string", 
            locationName = "startDate"), EndDate = structure(logical(0), 
            shape = "String", type = "string", locationName = "endDate"), 
        Position = structure(logical(0), shape = "String", type = "string", 
            locationName = "position"), Items = structure(list(structure(list(structure(list(structure(logical(0), 
            shape = "Long", type = "long")), shape = "ListOfLong", 
            type = "list")), shape = "ListOfUsage", type = "list")), 
            shape = "MapOfKeyUsages", locationName = "items", 
            type = "map")), shape = "Usage", type = "structure")
    return(populate(args, shape))
}

update_usage_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UsagePlanId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "usagePlanId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateUsagePlanRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_usage_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), ApiStages = structure(list(structure(list(ApiId = structure(logical(0), 
            shape = "String", type = "string", locationName = "apiId"), 
            Stage = structure(logical(0), shape = "String", type = "string", 
                locationName = "stage"), Throttle = structure(list(structure(list(BurstLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "burstLimit"), 
                RateLimit = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "rateLimit")), 
                shape = "ThrottleSettings", type = "structure")), 
                shape = "MapOfApiStageThrottleSettings", type = "map", 
                locationName = "throttle")), shape = "ApiStage", 
            type = "structure")), shape = "ListOfApiStage", type = "list", 
            locationName = "apiStages"), Throttle = structure(list(BurstLimit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "burstLimit"), 
            RateLimit = structure(logical(0), shape = "Double", 
                type = "double", locationName = "rateLimit")), 
            shape = "ThrottleSettings", type = "structure", locationName = "throttle"), 
        Quota = structure(list(Limit = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "limit"), 
            Offset = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "offset"), Period = structure(logical(0), 
                shape = "QuotaPeriodType", type = "string", locationName = "period")), 
            shape = "QuotaSettings", type = "structure", locationName = "quota"), 
        ProductCode = structure(logical(0), shape = "String", 
            type = "string", locationName = "productCode")), 
        shape = "UsagePlan", type = "structure")
    return(populate(args, shape))
}

update_vpc_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcLinkId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "vpcLinkId", 
        type = "string"), PatchOperations = structure(list(structure(list(Op = structure(logical(0), 
        shape = "Op", type = "string", locationName = "op"), 
        Path = structure(logical(0), shape = "String", type = "string", 
            locationName = "path"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value"), 
        From = structure(logical(0), shape = "String", type = "string", 
            locationName = "from")), shape = "PatchOperation", 
        type = "structure")), shape = "ListOfPatchOperation", 
        type = "list", locationName = "patchOperations")), shape = "UpdateVpcLinkRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_vpc_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "String", 
        type = "string", locationName = "id"), Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), TargetArns = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ListOfString", 
            type = "list", locationName = "targetArns"), Status = structure(logical(0), 
            shape = "VpcLinkStatus", type = "string", locationName = "status"), 
        StatusMessage = structure(logical(0), shape = "String", 
            type = "string", locationName = "statusMessage")), 
        shape = "VpcLink", type = "structure")
    return(populate(args, shape))
}
