create_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Expires = structure(logical(0), 
            shape = "Long", type = "long", locationName = "expires")), 
        shape = "CreateApiKeyRequest", type = "structure")
    return(populate(args, shape))
}

create_api_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiKey = structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", locationName = "id"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Expires = structure(logical(0), 
            shape = "Long", type = "long", locationName = "expires")), 
        shape = "ApiKey", type = "structure", locationName = "apiKey")), 
        shape = "CreateApiKeyResponse", type = "structure")
    return(populate(args, shape))
}

create_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Type = structure(logical(0), shape = "DataSourceType", 
            type = "string", locationName = "type"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRoleArn"), 
        DynamodbConfig = structure(list(TableName = structure(logical(0), 
            shape = "String", type = "string", locationName = "tableName"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            UseCallerCredentials = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useCallerCredentials")), 
            shape = "DynamodbDataSourceConfig", type = "structure", 
            locationName = "dynamodbConfig"), LambdaConfig = structure(list(LambdaFunctionArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "lambdaFunctionArn")), 
            shape = "LambdaDataSourceConfig", type = "structure", 
            locationName = "lambdaConfig"), ElasticsearchConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion")), 
            shape = "ElasticsearchDataSourceConfig", type = "structure", 
            locationName = "elasticsearchConfig"), HttpConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint")), 
            shape = "HttpDataSourceConfig", type = "structure", 
            locationName = "httpConfig")), shape = "CreateDataSourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSource = structure(list(DataSourceArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "dataSourceArn"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Type = structure(logical(0), shape = "DataSourceType", 
            type = "string", locationName = "type"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRoleArn"), 
        DynamodbConfig = structure(list(TableName = structure(logical(0), 
            shape = "String", type = "string", locationName = "tableName"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            UseCallerCredentials = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useCallerCredentials")), 
            shape = "DynamodbDataSourceConfig", type = "structure", 
            locationName = "dynamodbConfig"), LambdaConfig = structure(list(LambdaFunctionArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "lambdaFunctionArn")), 
            shape = "LambdaDataSourceConfig", type = "structure", 
            locationName = "lambdaConfig"), ElasticsearchConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion")), 
            shape = "ElasticsearchDataSourceConfig", type = "structure", 
            locationName = "elasticsearchConfig"), HttpConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint")), 
            shape = "HttpDataSourceConfig", type = "structure", 
            locationName = "httpConfig")), shape = "DataSource", 
        type = "structure", locationName = "dataSource")), shape = "CreateDataSourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_graphql_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string", locationName = "name"), LogConfig = structure(list(FieldLogLevel = structure(logical(0), 
        shape = "FieldLogLevel", type = "string", locationName = "fieldLogLevel"), 
        CloudWatchLogsRoleArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "cloudWatchLogsRoleArn")), 
        shape = "LogConfig", type = "structure", locationName = "logConfig"), 
        AuthenticationType = structure(logical(0), shape = "AuthenticationType", 
            type = "string", locationName = "authenticationType"), 
        UserPoolConfig = structure(list(UserPoolId = structure(logical(0), 
            shape = "String", type = "string", locationName = "userPoolId"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            DefaultAction = structure(logical(0), shape = "DefaultAction", 
                type = "string", locationName = "defaultAction"), 
            AppIdClientRegex = structure(logical(0), shape = "String", 
                type = "string", locationName = "appIdClientRegex")), 
            shape = "UserPoolConfig", type = "structure", locationName = "userPoolConfig"), 
        OpenIDConnectConfig = structure(list(Issuer = structure(logical(0), 
            shape = "String", type = "string", locationName = "issuer"), 
            ClientId = structure(logical(0), shape = "String", 
                type = "string", locationName = "clientId"), 
            IatTTL = structure(logical(0), shape = "Long", type = "long", 
                locationName = "iatTTL"), AuthTTL = structure(logical(0), 
                shape = "Long", type = "long", locationName = "authTTL")), 
            shape = "OpenIDConnectConfig", type = "structure", 
            locationName = "openIDConnectConfig")), shape = "CreateGraphqlApiRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_graphql_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GraphqlApi = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), ApiId = structure(logical(0), 
        shape = "String", type = "string", locationName = "apiId"), 
        AuthenticationType = structure(logical(0), shape = "AuthenticationType", 
            type = "string", locationName = "authenticationType"), 
        LogConfig = structure(list(FieldLogLevel = structure(logical(0), 
            shape = "FieldLogLevel", type = "string", locationName = "fieldLogLevel"), 
            CloudWatchLogsRoleArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "cloudWatchLogsRoleArn")), 
            shape = "LogConfig", type = "structure", locationName = "logConfig"), 
        UserPoolConfig = structure(list(UserPoolId = structure(logical(0), 
            shape = "String", type = "string", locationName = "userPoolId"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            DefaultAction = structure(logical(0), shape = "DefaultAction", 
                type = "string", locationName = "defaultAction"), 
            AppIdClientRegex = structure(logical(0), shape = "String", 
                type = "string", locationName = "appIdClientRegex")), 
            shape = "UserPoolConfig", type = "structure", locationName = "userPoolConfig"), 
        OpenIDConnectConfig = structure(list(Issuer = structure(logical(0), 
            shape = "String", type = "string", locationName = "issuer"), 
            ClientId = structure(logical(0), shape = "String", 
                type = "string", locationName = "clientId"), 
            IatTTL = structure(logical(0), shape = "Long", type = "long", 
                locationName = "iatTTL"), AuthTTL = structure(logical(0), 
                shape = "Long", type = "long", locationName = "authTTL")), 
            shape = "OpenIDConnectConfig", type = "structure", 
            locationName = "openIDConnectConfig"), Arn = structure(logical(0), 
            shape = "String", type = "string", locationName = "arn"), 
        Uris = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "uris")), shape = "GraphqlApi", 
        type = "structure", locationName = "graphqlApi")), shape = "CreateGraphqlApiResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_resolver_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), FieldName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "fieldName"), DataSourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "dataSourceName"), RequestMappingTemplate = structure(logical(0), 
            shape = "MappingTemplate", type = "string", max = 65536L, 
            min = 1L, locationName = "requestMappingTemplate"), 
        ResponseMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "responseMappingTemplate")), 
        shape = "CreateResolverRequest", type = "structure")
    return(populate(args, shape))
}

create_resolver_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resolver = structure(list(TypeName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "typeName"), FieldName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "fieldName"), DataSourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "dataSourceName"), ResolverArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "resolverArn"), 
        RequestMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "requestMappingTemplate"), 
        ResponseMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "responseMappingTemplate")), 
        shape = "Resolver", type = "structure", locationName = "resolver")), 
        shape = "CreateResolverResponse", type = "structure")
    return(populate(args, shape))
}

create_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Definition = structure(logical(0), shape = "String", 
            type = "string", locationName = "definition"), Format = structure(logical(0), 
            shape = "TypeDefinitionFormat", type = "string", 
            locationName = "format")), shape = "CreateTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Type = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), Definition = structure(logical(0), 
            shape = "String", type = "string", locationName = "definition"), 
        Format = structure(logical(0), shape = "TypeDefinitionFormat", 
            type = "string", locationName = "format")), shape = "Type", 
        type = "structure", locationName = "type")), shape = "CreateTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Id = structure(logical(0), shape = "String", location = "uri", 
            locationName = "id", type = "string")), shape = "DeleteApiKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_api_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApiKeyResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Name = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "name", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*")), shape = "DeleteDataSourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDataSourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_graphql_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string")), 
        shape = "DeleteGraphqlApiRequest", type = "structure")
    return(populate(args, shape))
}

delete_graphql_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteGraphqlApiResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_resolver_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), FieldName = structure(logical(0), 
            shape = "ResourceName", location = "uri", locationName = "fieldName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*")), 
        shape = "DeleteResolverRequest", type = "structure")
    return(populate(args, shape))
}

delete_resolver_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteResolverResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*")), shape = "DeleteTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Name = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "name", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*")), shape = "GetDataSourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSource = structure(list(DataSourceArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "dataSourceArn"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Type = structure(logical(0), shape = "DataSourceType", 
            type = "string", locationName = "type"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRoleArn"), 
        DynamodbConfig = structure(list(TableName = structure(logical(0), 
            shape = "String", type = "string", locationName = "tableName"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            UseCallerCredentials = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useCallerCredentials")), 
            shape = "DynamodbDataSourceConfig", type = "structure", 
            locationName = "dynamodbConfig"), LambdaConfig = structure(list(LambdaFunctionArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "lambdaFunctionArn")), 
            shape = "LambdaDataSourceConfig", type = "structure", 
            locationName = "lambdaConfig"), ElasticsearchConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion")), 
            shape = "ElasticsearchDataSourceConfig", type = "structure", 
            locationName = "elasticsearchConfig"), HttpConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint")), 
            shape = "HttpDataSourceConfig", type = "structure", 
            locationName = "httpConfig")), shape = "DataSource", 
        type = "structure", locationName = "dataSource")), shape = "GetDataSourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_graphql_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string")), 
        shape = "GetGraphqlApiRequest", type = "structure")
    return(populate(args, shape))
}

get_graphql_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GraphqlApi = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), ApiId = structure(logical(0), 
        shape = "String", type = "string", locationName = "apiId"), 
        AuthenticationType = structure(logical(0), shape = "AuthenticationType", 
            type = "string", locationName = "authenticationType"), 
        LogConfig = structure(list(FieldLogLevel = structure(logical(0), 
            shape = "FieldLogLevel", type = "string", locationName = "fieldLogLevel"), 
            CloudWatchLogsRoleArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "cloudWatchLogsRoleArn")), 
            shape = "LogConfig", type = "structure", locationName = "logConfig"), 
        UserPoolConfig = structure(list(UserPoolId = structure(logical(0), 
            shape = "String", type = "string", locationName = "userPoolId"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            DefaultAction = structure(logical(0), shape = "DefaultAction", 
                type = "string", locationName = "defaultAction"), 
            AppIdClientRegex = structure(logical(0), shape = "String", 
                type = "string", locationName = "appIdClientRegex")), 
            shape = "UserPoolConfig", type = "structure", locationName = "userPoolConfig"), 
        OpenIDConnectConfig = structure(list(Issuer = structure(logical(0), 
            shape = "String", type = "string", locationName = "issuer"), 
            ClientId = structure(logical(0), shape = "String", 
                type = "string", locationName = "clientId"), 
            IatTTL = structure(logical(0), shape = "Long", type = "long", 
                locationName = "iatTTL"), AuthTTL = structure(logical(0), 
                shape = "Long", type = "long", locationName = "authTTL")), 
            shape = "OpenIDConnectConfig", type = "structure", 
            locationName = "openIDConnectConfig"), Arn = structure(logical(0), 
            shape = "String", type = "string", locationName = "arn"), 
        Uris = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "uris")), shape = "GraphqlApi", 
        type = "structure", locationName = "graphqlApi")), shape = "GetGraphqlApiResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_introspection_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Format = structure(logical(0), shape = "OutputType", 
            location = "querystring", locationName = "format", 
            type = "string")), shape = "GetIntrospectionSchemaRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_introspection_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Schema = structure(logical(0), shape = "Blob", 
        type = "blob", locationName = "schema")), shape = "GetIntrospectionSchemaResponse", 
        type = "structure", payload = "schema")
    return(populate(args, shape))
}

get_resolver_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), FieldName = structure(logical(0), 
            shape = "ResourceName", location = "uri", locationName = "fieldName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*")), 
        shape = "GetResolverRequest", type = "structure")
    return(populate(args, shape))
}

get_resolver_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resolver = structure(list(TypeName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "typeName"), FieldName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "fieldName"), DataSourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "dataSourceName"), ResolverArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "resolverArn"), 
        RequestMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "requestMappingTemplate"), 
        ResponseMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "responseMappingTemplate")), 
        shape = "Resolver", type = "structure", locationName = "resolver")), 
        shape = "GetResolverResponse", type = "structure")
    return(populate(args, shape))
}

get_schema_creation_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string")), 
        shape = "GetSchemaCreationStatusRequest", type = "structure")
    return(populate(args, shape))
}

get_schema_creation_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "SchemaStatus", 
        type = "string", locationName = "status"), Details = structure(logical(0), 
        shape = "String", type = "string", locationName = "details")), 
        shape = "GetSchemaCreationStatusResponse", type = "structure")
    return(populate(args, shape))
}

get_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), Format = structure(logical(0), 
            shape = "TypeDefinitionFormat", location = "querystring", 
            locationName = "format", type = "string")), shape = "GetTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Type = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), Definition = structure(logical(0), 
            shape = "String", type = "string", locationName = "definition"), 
        Format = structure(logical(0), shape = "TypeDefinitionFormat", 
            type = "string", locationName = "format")), shape = "Type", 
        type = "structure", locationName = "type")), shape = "GetTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_api_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string", pattern = "[\\\\S]+"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 25L, min = 0L)), shape = "ListApiKeysRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_api_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiKeys = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", locationName = "id"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Expires = structure(logical(0), 
            shape = "Long", type = "long", locationName = "expires")), 
        shape = "ApiKey", type = "structure")), shape = "ApiKeys", 
        type = "list", locationName = "apiKeys"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[\\\\S]+", 
        locationName = "nextToken")), shape = "ListApiKeysResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_data_sources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string", pattern = "[\\\\S]+"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 25L, min = 0L)), shape = "ListDataSourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_data_sources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSources = structure(list(structure(list(DataSourceArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "dataSourceArn"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Type = structure(logical(0), shape = "DataSourceType", 
            type = "string", locationName = "type"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRoleArn"), 
        DynamodbConfig = structure(list(TableName = structure(logical(0), 
            shape = "String", type = "string", locationName = "tableName"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            UseCallerCredentials = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useCallerCredentials")), 
            shape = "DynamodbDataSourceConfig", type = "structure", 
            locationName = "dynamodbConfig"), LambdaConfig = structure(list(LambdaFunctionArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "lambdaFunctionArn")), 
            shape = "LambdaDataSourceConfig", type = "structure", 
            locationName = "lambdaConfig"), ElasticsearchConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion")), 
            shape = "ElasticsearchDataSourceConfig", type = "structure", 
            locationName = "elasticsearchConfig"), HttpConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint")), 
            shape = "HttpDataSourceConfig", type = "structure", 
            locationName = "httpConfig")), shape = "DataSource", 
        type = "structure")), shape = "DataSources", type = "list", 
        locationName = "dataSources"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[\\\\S]+", 
        locationName = "nextToken")), shape = "ListDataSourcesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_graphql_apis_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", location = "querystring", 
        locationName = "nextToken", type = "string", pattern = "[\\\\S]+"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 25L, min = 0L)), shape = "ListGraphqlApisRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_graphql_apis_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GraphqlApis = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), ApiId = structure(logical(0), 
        shape = "String", type = "string", locationName = "apiId"), 
        AuthenticationType = structure(logical(0), shape = "AuthenticationType", 
            type = "string", locationName = "authenticationType"), 
        LogConfig = structure(list(FieldLogLevel = structure(logical(0), 
            shape = "FieldLogLevel", type = "string", locationName = "fieldLogLevel"), 
            CloudWatchLogsRoleArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "cloudWatchLogsRoleArn")), 
            shape = "LogConfig", type = "structure", locationName = "logConfig"), 
        UserPoolConfig = structure(list(UserPoolId = structure(logical(0), 
            shape = "String", type = "string", locationName = "userPoolId"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            DefaultAction = structure(logical(0), shape = "DefaultAction", 
                type = "string", locationName = "defaultAction"), 
            AppIdClientRegex = structure(logical(0), shape = "String", 
                type = "string", locationName = "appIdClientRegex")), 
            shape = "UserPoolConfig", type = "structure", locationName = "userPoolConfig"), 
        OpenIDConnectConfig = structure(list(Issuer = structure(logical(0), 
            shape = "String", type = "string", locationName = "issuer"), 
            ClientId = structure(logical(0), shape = "String", 
                type = "string", locationName = "clientId"), 
            IatTTL = structure(logical(0), shape = "Long", type = "long", 
                locationName = "iatTTL"), AuthTTL = structure(logical(0), 
                shape = "Long", type = "long", locationName = "authTTL")), 
            shape = "OpenIDConnectConfig", type = "structure", 
            locationName = "openIDConnectConfig"), Arn = structure(logical(0), 
            shape = "String", type = "string", locationName = "arn"), 
        Uris = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "uris")), shape = "GraphqlApi", 
        type = "structure")), shape = "GraphqlApis", type = "list", 
        locationName = "graphqlApis"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[\\\\S]+", 
        locationName = "nextToken")), shape = "ListGraphqlApisResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_resolvers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "String", location = "uri", 
            locationName = "typeName", type = "string"), NextToken = structure(logical(0), 
            shape = "PaginationToken", location = "querystring", 
            locationName = "nextToken", type = "string", pattern = "[\\\\S]+"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 25L, min = 0L)), shape = "ListResolversRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_resolvers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resolvers = structure(list(structure(list(TypeName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "typeName"), FieldName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "fieldName"), DataSourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "dataSourceName"), ResolverArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "resolverArn"), 
        RequestMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "requestMappingTemplate"), 
        ResponseMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "responseMappingTemplate")), 
        shape = "Resolver", type = "structure")), shape = "Resolvers", 
        type = "list", locationName = "resolvers"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[\\\\S]+", 
        locationName = "nextToken")), shape = "ListResolversResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Format = structure(logical(0), shape = "TypeDefinitionFormat", 
            location = "querystring", locationName = "format", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "PaginationToken", location = "querystring", 
            locationName = "nextToken", type = "string", pattern = "[\\\\S]+"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 25L, min = 0L)), shape = "ListTypesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Types = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), Definition = structure(logical(0), 
            shape = "String", type = "string", locationName = "definition"), 
        Format = structure(logical(0), shape = "TypeDefinitionFormat", 
            type = "string", locationName = "format")), shape = "Type", 
        type = "structure")), shape = "TypeList", type = "list", 
        locationName = "types"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[\\\\S]+", 
        locationName = "nextToken")), shape = "ListTypesResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_schema_creation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Definition = structure(logical(0), shape = "Blob", type = "blob", 
            locationName = "definition")), shape = "StartSchemaCreationRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_schema_creation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "SchemaStatus", 
        type = "string", locationName = "status")), shape = "StartSchemaCreationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_api_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Id = structure(logical(0), shape = "String", location = "uri", 
            locationName = "id", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Expires = structure(logical(0), shape = "Long", type = "long", 
            locationName = "expires")), shape = "UpdateApiKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_api_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiKey = structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", locationName = "id"), 
        Description = structure(logical(0), shape = "String", 
            type = "string", locationName = "description"), Expires = structure(logical(0), 
            shape = "Long", type = "long", locationName = "expires")), 
        shape = "ApiKey", type = "structure", locationName = "apiKey")), 
        shape = "UpdateApiKeyResponse", type = "structure")
    return(populate(args, shape))
}

update_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Name = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "name", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Type = structure(logical(0), shape = "DataSourceType", 
            type = "string", locationName = "type"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRoleArn"), 
        DynamodbConfig = structure(list(TableName = structure(logical(0), 
            shape = "String", type = "string", locationName = "tableName"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            UseCallerCredentials = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useCallerCredentials")), 
            shape = "DynamodbDataSourceConfig", type = "structure", 
            locationName = "dynamodbConfig"), LambdaConfig = structure(list(LambdaFunctionArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "lambdaFunctionArn")), 
            shape = "LambdaDataSourceConfig", type = "structure", 
            locationName = "lambdaConfig"), ElasticsearchConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion")), 
            shape = "ElasticsearchDataSourceConfig", type = "structure", 
            locationName = "elasticsearchConfig"), HttpConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint")), 
            shape = "HttpDataSourceConfig", type = "structure", 
            locationName = "httpConfig")), shape = "UpdateDataSourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSource = structure(list(DataSourceArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "dataSourceArn"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Type = structure(logical(0), shape = "DataSourceType", 
            type = "string", locationName = "type"), ServiceRoleArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRoleArn"), 
        DynamodbConfig = structure(list(TableName = structure(logical(0), 
            shape = "String", type = "string", locationName = "tableName"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            UseCallerCredentials = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "useCallerCredentials")), 
            shape = "DynamodbDataSourceConfig", type = "structure", 
            locationName = "dynamodbConfig"), LambdaConfig = structure(list(LambdaFunctionArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "lambdaFunctionArn")), 
            shape = "LambdaDataSourceConfig", type = "structure", 
            locationName = "lambdaConfig"), ElasticsearchConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion")), 
            shape = "ElasticsearchDataSourceConfig", type = "structure", 
            locationName = "elasticsearchConfig"), HttpConfig = structure(list(Endpoint = structure(logical(0), 
            shape = "String", type = "string", locationName = "endpoint")), 
            shape = "HttpDataSourceConfig", type = "structure", 
            locationName = "httpConfig")), shape = "DataSource", 
        type = "structure", locationName = "dataSource")), shape = "UpdateDataSourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_graphql_api_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            locationName = "name"), LogConfig = structure(list(FieldLogLevel = structure(logical(0), 
            shape = "FieldLogLevel", type = "string", locationName = "fieldLogLevel"), 
            CloudWatchLogsRoleArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "cloudWatchLogsRoleArn")), 
            shape = "LogConfig", type = "structure", locationName = "logConfig"), 
        AuthenticationType = structure(logical(0), shape = "AuthenticationType", 
            type = "string", locationName = "authenticationType"), 
        UserPoolConfig = structure(list(UserPoolId = structure(logical(0), 
            shape = "String", type = "string", locationName = "userPoolId"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            DefaultAction = structure(logical(0), shape = "DefaultAction", 
                type = "string", locationName = "defaultAction"), 
            AppIdClientRegex = structure(logical(0), shape = "String", 
                type = "string", locationName = "appIdClientRegex")), 
            shape = "UserPoolConfig", type = "structure", locationName = "userPoolConfig"), 
        OpenIDConnectConfig = structure(list(Issuer = structure(logical(0), 
            shape = "String", type = "string", locationName = "issuer"), 
            ClientId = structure(logical(0), shape = "String", 
                type = "string", locationName = "clientId"), 
            IatTTL = structure(logical(0), shape = "Long", type = "long", 
                locationName = "iatTTL"), AuthTTL = structure(logical(0), 
                shape = "Long", type = "long", locationName = "authTTL")), 
            shape = "OpenIDConnectConfig", type = "structure", 
            locationName = "openIDConnectConfig")), shape = "UpdateGraphqlApiRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_graphql_api_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GraphqlApi = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), ApiId = structure(logical(0), 
        shape = "String", type = "string", locationName = "apiId"), 
        AuthenticationType = structure(logical(0), shape = "AuthenticationType", 
            type = "string", locationName = "authenticationType"), 
        LogConfig = structure(list(FieldLogLevel = structure(logical(0), 
            shape = "FieldLogLevel", type = "string", locationName = "fieldLogLevel"), 
            CloudWatchLogsRoleArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "cloudWatchLogsRoleArn")), 
            shape = "LogConfig", type = "structure", locationName = "logConfig"), 
        UserPoolConfig = structure(list(UserPoolId = structure(logical(0), 
            shape = "String", type = "string", locationName = "userPoolId"), 
            AwsRegion = structure(logical(0), shape = "String", 
                type = "string", locationName = "awsRegion"), 
            DefaultAction = structure(logical(0), shape = "DefaultAction", 
                type = "string", locationName = "defaultAction"), 
            AppIdClientRegex = structure(logical(0), shape = "String", 
                type = "string", locationName = "appIdClientRegex")), 
            shape = "UserPoolConfig", type = "structure", locationName = "userPoolConfig"), 
        OpenIDConnectConfig = structure(list(Issuer = structure(logical(0), 
            shape = "String", type = "string", locationName = "issuer"), 
            ClientId = structure(logical(0), shape = "String", 
                type = "string", locationName = "clientId"), 
            IatTTL = structure(logical(0), shape = "Long", type = "long", 
                locationName = "iatTTL"), AuthTTL = structure(logical(0), 
                shape = "Long", type = "long", locationName = "authTTL")), 
            shape = "OpenIDConnectConfig", type = "structure", 
            locationName = "openIDConnectConfig"), Arn = structure(logical(0), 
            shape = "String", type = "string", locationName = "arn"), 
        Uris = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "MapOfStringToString", 
            type = "map", locationName = "uris")), shape = "GraphqlApi", 
        type = "structure", locationName = "graphqlApi")), shape = "UpdateGraphqlApiResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_resolver_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), FieldName = structure(logical(0), 
            shape = "ResourceName", location = "uri", locationName = "fieldName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*"), 
        DataSourceName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
            locationName = "dataSourceName"), RequestMappingTemplate = structure(logical(0), 
            shape = "MappingTemplate", type = "string", max = 65536L, 
            min = 1L, locationName = "requestMappingTemplate"), 
        ResponseMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "responseMappingTemplate")), 
        shape = "UpdateResolverRequest", type = "structure")
    return(populate(args, shape))
}

update_resolver_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resolver = structure(list(TypeName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "typeName"), FieldName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "fieldName"), DataSourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "dataSourceName"), ResolverArn = structure(logical(0), 
        shape = "String", type = "string", locationName = "resolverArn"), 
        RequestMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "requestMappingTemplate"), 
        ResponseMappingTemplate = structure(logical(0), shape = "MappingTemplate", 
            type = "string", max = 65536L, min = 1L, locationName = "responseMappingTemplate")), 
        shape = "Resolver", type = "structure", locationName = "resolver")), 
        shape = "UpdateResolverResponse", type = "structure")
    return(populate(args, shape))
}

update_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApiId = structure(logical(0), shape = "String", 
        location = "uri", locationName = "apiId", type = "string"), 
        TypeName = structure(logical(0), shape = "ResourceName", 
            location = "uri", locationName = "typeName", type = "string", 
            pattern = "[_A-Za-z][_0-9A-Za-z]*"), Definition = structure(logical(0), 
            shape = "String", type = "string", locationName = "definition"), 
        Format = structure(logical(0), shape = "TypeDefinitionFormat", 
            type = "string", locationName = "format")), shape = "UpdateTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Type = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "[_A-Za-z][_0-9A-Za-z]*", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "String", type = "string", locationName = "description"), 
        Arn = structure(logical(0), shape = "String", type = "string", 
            locationName = "arn"), Definition = structure(logical(0), 
            shape = "String", type = "string", locationName = "definition"), 
        Format = structure(logical(0), shape = "TypeDefinitionFormat", 
            type = "string", locationName = "format")), shape = "Type", 
        type = "structure", locationName = "type")), shape = "UpdateTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}
