#' Creates a unique key that you can distribute to clients who are executing your API
#'
#' Creates a unique key that you can distribute to clients who are executing your API.
#'
#' @param apiId The ID for your GraphQL API.
#' @param description A description of the purpose of the API key.
#' @param expires The time from creation time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour. The default value for this parameter is 7 days from creation time. For more information, see .
#'
#' @examples
#'
#' @export
create_api_key <- function (apiId, description = NULL, expires = NULL) 
{
    op <- Operation(name = "CreateApiKey", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/apikeys", paginator = list())
    input <- create_api_key_input(apiId = apiId, description = description, 
        expires = expires)
    output <- create_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `DataSource` object
#'
#' Creates a `DataSource` object.
#'
#' @param apiId The API ID for the GraphQL API for the `DataSource`.
#' @param name A user-supplied name for the `DataSource`.
#' @param type The type of the `DataSource`.
#' @param description A description of the `DataSource`.
#' @param serviceRoleArn The IAM service role ARN for the data source. The system assumes this role when accessing the data source.
#' @param dynamodbConfig DynamoDB settings.
#' @param lambdaConfig AWS Lambda settings.
#' @param elasticsearchConfig Amazon Elasticsearch settings.
#' @param httpConfig Http endpoint settings.
#'
#' @examples
#'
#' @export
create_data_source <- function (apiId, name, type, description = NULL, 
    serviceRoleArn = NULL, dynamodbConfig = NULL, lambdaConfig = NULL, 
    elasticsearchConfig = NULL, httpConfig = NULL) 
{
    op <- Operation(name = "CreateDataSource", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/datasources", paginator = list())
    input <- create_data_source_input(apiId = apiId, name = name, 
        type = type, description = description, serviceRoleArn = serviceRoleArn, 
        dynamodbConfig = dynamodbConfig, lambdaConfig = lambdaConfig, 
        elasticsearchConfig = elasticsearchConfig, httpConfig = httpConfig)
    output <- create_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `GraphqlApi` object
#'
#' Creates a `GraphqlApi` object.
#'
#' @param name A user-supplied name for the `GraphqlApi`.
#' @param authenticationType The authentication type: API key, IAM, or Amazon Cognito User Pools.
#' @param logConfig The Amazon CloudWatch logs configuration.
#' @param userPoolConfig The Amazon Cognito User Pool configuration.
#' @param openIDConnectConfig The Open Id Connect configuration configuration.
#'
#' @examples
#'
#' @export
create_graphql_api <- function (name, authenticationType, logConfig = NULL, 
    userPoolConfig = NULL, openIDConnectConfig = NULL) 
{
    op <- Operation(name = "CreateGraphqlApi", http_method = "POST", 
        http_path = "/v1/apis", paginator = list())
    input <- create_graphql_api_input(name = name, authenticationType = authenticationType, 
        logConfig = logConfig, userPoolConfig = userPoolConfig, 
        openIDConnectConfig = openIDConnectConfig)
    output <- create_graphql_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `Resolver` object
#'
#' Creates a `Resolver` object.
#' 
#' A resolver converts incoming requests into a format that a data source can understand and converts the data source\'s responses into GraphQL.
#'
#' @param apiId The ID for the GraphQL API for which the resolver is being created.
#' @param typeName The name of the `Type`.
#' @param fieldName The name of the field to attach the resolver to.
#' @param dataSourceName The name of the data source for which the resolver is being created.
#' @param requestMappingTemplate The mapping template to be used for requests.
#' 
#' A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL).
#' @param responseMappingTemplate The mapping template to be used for responses from the data source.
#'
#' @examples
#'
#' @export
create_resolver <- function (apiId, typeName, fieldName, dataSourceName, 
    requestMappingTemplate, responseMappingTemplate = NULL) 
{
    op <- Operation(name = "CreateResolver", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers", 
        paginator = list())
    input <- create_resolver_input(apiId = apiId, typeName = typeName, 
        fieldName = fieldName, dataSourceName = dataSourceName, 
        requestMappingTemplate = requestMappingTemplate, responseMappingTemplate = responseMappingTemplate)
    output <- create_resolver_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `Type` object
#'
#' Creates a `Type` object.
#'
#' @param apiId The API ID.
#' @param definition The type definition, in GraphQL Schema Definition Language (SDL) format.
#' 
#' For more information, see the [GraphQL SDL documentation](http://graphql.org/learn/schema/).
#' @param format The type format: SDL or JSON.
#'
#' @examples
#'
#' @export
create_type <- function (apiId, definition, format) 
{
    op <- Operation(name = "CreateType", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/types", paginator = list())
    input <- create_type_input(apiId = apiId, definition = definition, 
        format = format)
    output <- create_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an API key
#'
#' Deletes an API key.
#'
#' @param apiId The API ID.
#' @param id The ID for the API key.
#'
#' @examples
#'
#' @export
delete_api_key <- function (apiId, id) 
{
    op <- Operation(name = "DeleteApiKey", http_method = "DELETE", 
        http_path = "/v1/apis/{apiId}/apikeys/{id}", paginator = list())
    input <- delete_api_key_input(apiId = apiId, id = id)
    output <- delete_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a `DataSource` object
#'
#' Deletes a `DataSource` object.
#'
#' @param apiId The API ID.
#' @param name The name of the data source.
#'
#' @examples
#'
#' @export
delete_data_source <- function (apiId, name) 
{
    op <- Operation(name = "DeleteDataSource", http_method = "DELETE", 
        http_path = "/v1/apis/{apiId}/datasources/{name}", paginator = list())
    input <- delete_data_source_input(apiId = apiId, name = name)
    output <- delete_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a `GraphqlApi` object
#'
#' Deletes a `GraphqlApi` object.
#'
#' @param apiId The API ID.
#'
#' @examples
#'
#' @export
delete_graphql_api <- function (apiId) 
{
    op <- Operation(name = "DeleteGraphqlApi", http_method = "DELETE", 
        http_path = "/v1/apis/{apiId}", paginator = list())
    input <- delete_graphql_api_input(apiId = apiId)
    output <- delete_graphql_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a `Resolver` object
#'
#' Deletes a `Resolver` object.
#'
#' @param apiId The API ID.
#' @param typeName The name of the resolver type.
#' @param fieldName The resolver field name.
#'
#' @examples
#'
#' @export
delete_resolver <- function (apiId, typeName, fieldName) 
{
    op <- Operation(name = "DeleteResolver", http_method = "DELETE", 
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", 
        paginator = list())
    input <- delete_resolver_input(apiId = apiId, typeName = typeName, 
        fieldName = fieldName)
    output <- delete_resolver_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a `Type` object
#'
#' Deletes a `Type` object.
#'
#' @param apiId The API ID.
#' @param typeName The type name.
#'
#' @examples
#'
#' @export
delete_type <- function (apiId, typeName) 
{
    op <- Operation(name = "DeleteType", http_method = "DELETE", 
        http_path = "/v1/apis/{apiId}/types/{typeName}", paginator = list())
    input <- delete_type_input(apiId = apiId, typeName = typeName)
    output <- delete_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a `DataSource` object
#'
#' Retrieves a `DataSource` object.
#'
#' @param apiId The API ID.
#' @param name The name of the data source.
#'
#' @examples
#'
#' @export
get_data_source <- function (apiId, name) 
{
    op <- Operation(name = "GetDataSource", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/datasources/{name}", paginator = list())
    input <- get_data_source_input(apiId = apiId, name = name)
    output <- get_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a `GraphqlApi` object
#'
#' Retrieves a `GraphqlApi` object.
#'
#' @param apiId The API ID for the GraphQL API.
#'
#' @examples
#'
#' @export
get_graphql_api <- function (apiId) 
{
    op <- Operation(name = "GetGraphqlApi", http_method = "GET", 
        http_path = "/v1/apis/{apiId}", paginator = list())
    input <- get_graphql_api_input(apiId = apiId)
    output <- get_graphql_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the introspection schema for a GraphQL API
#'
#' Retrieves the introspection schema for a GraphQL API.
#'
#' @param apiId The API ID.
#' @param format The schema format: SDL or JSON.
#'
#' @examples
#'
#' @export
get_introspection_schema <- function (apiId, format) 
{
    op <- Operation(name = "GetIntrospectionSchema", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/schema", paginator = list())
    input <- get_introspection_schema_input(apiId = apiId, format = format)
    output <- get_introspection_schema_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a `Resolver` object
#'
#' Retrieves a `Resolver` object.
#'
#' @param apiId The API ID.
#' @param typeName The resolver type name.
#' @param fieldName The resolver field name.
#'
#' @examples
#'
#' @export
get_resolver <- function (apiId, typeName, fieldName) 
{
    op <- Operation(name = "GetResolver", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", 
        paginator = list())
    input <- get_resolver_input(apiId = apiId, typeName = typeName, 
        fieldName = fieldName)
    output <- get_resolver_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the current status of a schema creation operation
#'
#' Retrieves the current status of a schema creation operation.
#'
#' @param apiId The API ID.
#'
#' @examples
#'
#' @export
get_schema_creation_status <- function (apiId) 
{
    op <- Operation(name = "GetSchemaCreationStatus", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/schemacreation", paginator = list())
    input <- get_schema_creation_status_input(apiId = apiId)
    output <- get_schema_creation_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a `Type` object
#'
#' Retrieves a `Type` object.
#'
#' @param apiId The API ID.
#' @param typeName The type name.
#' @param format The type format: SDL or JSON.
#'
#' @examples
#'
#' @export
get_type <- function (apiId, typeName, format) 
{
    op <- Operation(name = "GetType", http_method = "GET", http_path = "/v1/apis/{apiId}/types/{typeName}", 
        paginator = list())
    input <- get_type_input(apiId = apiId, typeName = typeName, 
        format = format)
    output <- get_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the API keys for a given API
#'
#' Lists the API keys for a given API.
#' 
#' API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call `DeleteApiKey` to manually delete a key before it\'s automatically deleted.
#'
#' @param apiId The API ID.
#' @param nextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#' @param maxResults The maximum number of results you want the request to return.
#'
#' @examples
#'
#' @export
list_api_keys <- function (apiId, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListApiKeys", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/apikeys", paginator = list())
    input <- list_api_keys_input(apiId = apiId, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_api_keys_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the data sources for a given API
#'
#' Lists the data sources for a given API.
#'
#' @param apiId The API ID.
#' @param nextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#' @param maxResults The maximum number of results you want the request to return.
#'
#' @examples
#'
#' @export
list_data_sources <- function (apiId, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListDataSources", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/datasources", paginator = list())
    input <- list_data_sources_input(apiId = apiId, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_data_sources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists your GraphQL APIs
#'
#' Lists your GraphQL APIs.
#'
#' @param nextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#' @param maxResults The maximum number of results you want the request to return.
#'
#' @examples
#'
#' @export
list_graphql_apis <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListGraphqlApis", http_method = "GET", 
        http_path = "/v1/apis", paginator = list())
    input <- list_graphql_apis_input(nextToken = nextToken, maxResults = maxResults)
    output <- list_graphql_apis_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the resolvers for a given API and type
#'
#' Lists the resolvers for a given API and type.
#'
#' @param apiId The API ID.
#' @param typeName The type name.
#' @param nextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#' @param maxResults The maximum number of results you want the request to return.
#'
#' @examples
#'
#' @export
list_resolvers <- function (apiId, typeName, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "ListResolvers", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers", 
        paginator = list())
    input <- list_resolvers_input(apiId = apiId, typeName = typeName, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_resolvers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the types for a given API
#'
#' Lists the types for a given API.
#'
#' @param apiId The API ID.
#' @param format The type format: SDL or JSON.
#' @param nextToken An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
#' @param maxResults The maximum number of results you want the request to return.
#'
#' @examples
#'
#' @export
list_types <- function (apiId, format, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListTypes", http_method = "GET", 
        http_path = "/v1/apis/{apiId}/types", paginator = list())
    input <- list_types_input(apiId = apiId, format = format, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a new schema to your GraphQL API
#'
#' Adds a new schema to your GraphQL API.
#' 
#' This operation is asynchronous. Use to determine when it has completed.
#'
#' @param apiId The API ID.
#' @param definition The schema definition, in GraphQL schema language format.
#'
#' @examples
#'
#' @export
start_schema_creation <- function (apiId, definition) 
{
    op <- Operation(name = "StartSchemaCreation", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/schemacreation", paginator = list())
    input <- start_schema_creation_input(apiId = apiId, definition = definition)
    output <- start_schema_creation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an API key
#'
#' Updates an API key.
#'
#' @param apiId The ID for the GraphQL API
#' @param id The API key ID.
#' @param description A description of the purpose of the API key.
#' @param expires The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .
#'
#' @examples
#'
#' @export
update_api_key <- function (apiId, id, description = NULL, expires = NULL) 
{
    op <- Operation(name = "UpdateApiKey", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/apikeys/{id}", paginator = list())
    input <- update_api_key_input(apiId = apiId, id = id, description = description, 
        expires = expires)
    output <- update_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a `DataSource` object
#'
#' Updates a `DataSource` object.
#'
#' @param apiId The API ID.
#' @param name The new name for the data source.
#' @param type The new data source type.
#' @param description The new description for the data source.
#' @param serviceRoleArn The new service role ARN for the data source.
#' @param dynamodbConfig The new DynamoDB configuration.
#' @param lambdaConfig The new Lambda configuration.
#' @param elasticsearchConfig The new Elasticsearch configuration.
#' @param httpConfig The new http endpoint configuration
#'
#' @examples
#'
#' @export
update_data_source <- function (apiId, name, type, description = NULL, 
    serviceRoleArn = NULL, dynamodbConfig = NULL, lambdaConfig = NULL, 
    elasticsearchConfig = NULL, httpConfig = NULL) 
{
    op <- Operation(name = "UpdateDataSource", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/datasources/{name}", paginator = list())
    input <- update_data_source_input(apiId = apiId, name = name, 
        type = type, description = description, serviceRoleArn = serviceRoleArn, 
        dynamodbConfig = dynamodbConfig, lambdaConfig = lambdaConfig, 
        elasticsearchConfig = elasticsearchConfig, httpConfig = httpConfig)
    output <- update_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a `GraphqlApi` object
#'
#' Updates a `GraphqlApi` object.
#'
#' @param apiId The API ID.
#' @param name The new name for the `GraphqlApi` object.
#' @param logConfig The Amazon CloudWatch logs configuration for the `GraphqlApi` object.
#' @param authenticationType The new authentication type for the `GraphqlApi` object.
#' @param userPoolConfig The new Amazon Cognito User Pool configuration for the `GraphqlApi` object.
#' @param openIDConnectConfig The Open Id Connect configuration configuration for the `GraphqlApi` object.
#'
#' @examples
#'
#' @export
update_graphql_api <- function (apiId, name, logConfig = NULL, 
    authenticationType = NULL, userPoolConfig = NULL, openIDConnectConfig = NULL) 
{
    op <- Operation(name = "UpdateGraphqlApi", http_method = "POST", 
        http_path = "/v1/apis/{apiId}", paginator = list())
    input <- update_graphql_api_input(apiId = apiId, name = name, 
        logConfig = logConfig, authenticationType = authenticationType, 
        userPoolConfig = userPoolConfig, openIDConnectConfig = openIDConnectConfig)
    output <- update_graphql_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a `Resolver` object
#'
#' Updates a `Resolver` object.
#'
#' @param apiId The API ID.
#' @param typeName The new type name.
#' @param fieldName The new field name.
#' @param dataSourceName The new data source name.
#' @param requestMappingTemplate The new request mapping template.
#' @param responseMappingTemplate The new response mapping template.
#'
#' @examples
#'
#' @export
update_resolver <- function (apiId, typeName, fieldName, dataSourceName, 
    requestMappingTemplate, responseMappingTemplate = NULL) 
{
    op <- Operation(name = "UpdateResolver", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", 
        paginator = list())
    input <- update_resolver_input(apiId = apiId, typeName = typeName, 
        fieldName = fieldName, dataSourceName = dataSourceName, 
        requestMappingTemplate = requestMappingTemplate, responseMappingTemplate = responseMappingTemplate)
    output <- update_resolver_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a `Type` object
#'
#' Updates a `Type` object.
#'
#' @param apiId The API ID.
#' @param typeName The new type name.
#' @param format The new type format: SDL or JSON.
#' @param definition The new definition.
#'
#' @examples
#'
#' @export
update_type <- function (apiId, typeName, format, definition = NULL) 
{
    op <- Operation(name = "UpdateType", http_method = "POST", 
        http_path = "/v1/apis/{apiId}/types/{typeName}", paginator = list())
    input <- update_type_input(apiId = apiId, typeName = typeName, 
        format = format, definition = definition)
    output <- update_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
