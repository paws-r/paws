#' Create an ApiKey resource
#'
#' Create an ApiKey resource.
#' 
#' ::: {.seeAlso}
#' [AWS CLI](%5B%5BAwsDocsUrlPrefix%5D%5D/cli/latest/reference/apigateway/create-api-key.html)
#' :::
#'
#' @param name The name of the ApiKey.
#' @param description The description of the ApiKey.
#' @param enabled Specifies whether the ApiKey can be used by callers.
#' @param generateDistinctId Specifies whether (`true`) or not (`false`) the key identifier is distinct from the created API key value.
#' @param value Specifies a value of the API key.
#' @param stageKeys DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.
#' @param customerId An AWS Marketplace customer identifier , when integrating with the AWS SaaS Marketplace.
#'
#' @examples
#'
#' @export
create_api_key <- function (name = NULL, description = NULL, 
    enabled = NULL, generateDistinctId = NULL, value = NULL, 
    stageKeys = NULL, customerId = NULL) 
{
    op <- Operation(name = "CreateApiKey", http_method = "POST", 
        http_path = "/apikeys", paginator = list())
    input <- create_api_key_input(name = name, description = description, 
        enabled = enabled, generateDistinctId = generateDistinctId, 
        value = value, stageKeys = stageKeys, customerId = customerId)
    output <- create_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a new Authorizer resource to an existing RestApi resource
#'
#' Adds a new Authorizer resource to an existing RestApi resource.
#' 
#' ::: {.seeAlso}
#' [AWS CLI](%5B%5BAwsDocsUrlPrefix%5D%5D/cli/latest/reference/apigateway/create-authorizer.html)
#' :::
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param name &#91;Required&#93; The name of the authorizer.
#' @param type &#91;Required&#93; The authorizer type. Valid values are `TOKEN` for a Lambda function using a single authorization token submitted in a custom header, `REQUEST` for a Lambda function using incoming request parameters, and `COGNITO_USER_POOLS` for using an Amazon Cognito user pool.
#' @param providerARNs A list of the Amazon Cognito user pool ARNs for the `COGNITO_USER_POOLS` authorizer. Each element is of this format: `arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}`. For a `TOKEN` or `REQUEST` authorizer, this is not defined.
#' @param authType Optional customer-defined field, used in Swagger imports and exports without functional impact.
#' @param authorizerUri Specifies the authorizer\'s Uniform Resource Identifier (URI). For `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda function URI, for example, `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations`. In general, the URI has this form `arn:aws:apigateway:{region}:lambda:path/{service_api}`, where `{region}` is the same as the region hosting the Lambda function, `path` indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial `/`. For Lambda functions, this is usually of the form `/2015-03-31/functions/[FunctionARN]/invocations`.
#' @param authorizerCredentials Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role\'s Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
#' @param identitySource The identity source for which authorization is requested.
#' 
#' -   For a `TOKEN` or `COGNITO_USER_POOLS` authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is `Auth`, the header mapping expression is `method.request.header.Auth`.
#' -   For the `REQUEST` authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an `Auth` header, a `Name` query string parameter are defined as identity sources, this value is `method.request.header.Auth, method.request.querystring.Name`. These parameters will be used to derive the authorization caching key and to perform runtime validation of the `REQUEST` authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
#' @param identityValidationExpression A validation expression for the incoming identity token. For `TOKEN` authorizers, this value is a regular expression. API Gateway will match the `aud` field of the incoming token from the client against the specified regular expression. It will invoke the authorizer\'s Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the `REQUEST` authorizer.
#' @param authorizerResultTtlInSeconds The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
#'
#' @examples
#'
#' @export
create_authorizer <- function (restApiId, name, type, providerARNs = NULL, 
    authType = NULL, authorizerUri = NULL, authorizerCredentials = NULL, 
    identitySource = NULL, identityValidationExpression = NULL, 
    authorizerResultTtlInSeconds = NULL) 
{
    op <- Operation(name = "CreateAuthorizer", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/authorizers", paginator = list())
    input <- create_authorizer_input(restApiId = restApiId, name = name, 
        type = type, providerARNs = providerARNs, authType = authType, 
        authorizerUri = authorizerUri, authorizerCredentials = authorizerCredentials, 
        identitySource = identitySource, identityValidationExpression = identityValidationExpression, 
        authorizerResultTtlInSeconds = authorizerResultTtlInSeconds)
    output <- create_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new BasePathMapping resource
#'
#' Creates a new BasePathMapping resource.
#'
#' @param domainName &#91;Required&#93; The domain name of the BasePathMapping resource to create.
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param basePath The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify a base path name after the domain name.
#' @param stage The name of the API\'s stage that you want to use for this mapping. Leave this blank if you do not want callers to explicitly specify the stage name after any base path name.
#'
#' @examples
#'
#' @export
create_base_path_mapping <- function (domainName, restApiId, 
    basePath = NULL, stage = NULL) 
{
    op <- Operation(name = "CreateBasePathMapping", http_method = "POST", 
        http_path = "/domainnames/{domain_name}/basepathmappings", 
        paginator = list())
    input <- create_base_path_mapping_input(domainName = domainName, 
        restApiId = restApiId, basePath = basePath, stage = stage)
    output <- create_base_path_mapping_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Deployment resource, which makes a specified RestApi callable over the internet
#'
#' Creates a Deployment resource, which makes a specified RestApi callable over the internet.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName The name of the Stage resource for the Deployment resource to create.
#' @param stageDescription The description of the Stage resource for the Deployment resource to create.
#' @param description The description for the Deployment resource to create.
#' @param cacheClusterEnabled Enables a cache cluster for the Stage resource specified in the input.
#' @param cacheClusterSize Specifies the cache cluster size for the Stage resource specified in the input, if a cache cluster is enabled.
#' @param variables A map that defines the stage variables for the Stage resource that is associated with the new deployment. Variable names can have alphanumeric and underscore characters, and the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
#' @param canarySettings The input configuration for the canary deployment when the deployment is a canary release deployment.
#' @param tracingEnabled Specifies whether active tracing with X-ray is enabled for the Stage.
#'
#' @examples
#'
#' @export
create_deployment <- function (restApiId, stageName = NULL, stageDescription = NULL, 
    description = NULL, cacheClusterEnabled = NULL, cacheClusterSize = NULL, 
    variables = NULL, canarySettings = NULL, tracingEnabled = NULL) 
{
    op <- Operation(name = "CreateDeployment", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/deployments", paginator = list())
    input <- create_deployment_input(restApiId = restApiId, stageName = stageName, 
        stageDescription = stageDescription, description = description, 
        cacheClusterEnabled = cacheClusterEnabled, cacheClusterSize = cacheClusterSize, 
        variables = variables, canarySettings = canarySettings, 
        tracingEnabled = tracingEnabled)
    output <- create_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param location &#91;Required&#93; The location of the targeted API entity of the to-be-created documentation part.
#' @param properties &#91;Required&#93; The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only Swagger-compliant key-value pairs can be exported and, hence, published.
#'
#' @examples
#'
#' @export
create_documentation_part <- function (restApiId, location, properties) 
{
    op <- Operation(name = "CreateDocumentationPart", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/documentation/parts", 
        paginator = list())
    input <- create_documentation_part_input(restApiId = restApiId, 
        location = location, properties = properties)
    output <- create_documentation_part_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param documentationVersion &#91;Required&#93; The version identifier of the new snapshot.
#' @param stageName The stage name to be associated with the new documentation snapshot.
#' @param description A description about the new documentation snapshot.
#'
#' @examples
#'
#' @export
create_documentation_version <- function (restApiId, documentationVersion, 
    stageName = NULL, description = NULL) 
{
    op <- Operation(name = "CreateDocumentationVersion", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/documentation/versions", 
        paginator = list())
    input <- create_documentation_version_input(restApiId = restApiId, 
        documentationVersion = documentationVersion, stageName = stageName, 
        description = description)
    output <- create_documentation_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new domain name
#'
#' Creates a new domain name.
#'
#' @param domainName &#91;Required&#93; The name of the DomainName resource.
#' @param certificateName The user-friendly name of the certificate that will be used by edge-optimized endpoint for this domain name.
#' @param certificateBody &#91;Deprecated&#93; The body of the server certificate that will be used by edge-optimized endpoint for this domain name provided by your certificate authority.
#' @param certificatePrivateKey &#91;Deprecated&#93; Your edge-optimized endpoint\'s domain name certificate\'s private key.
#' @param certificateChain &#91;Deprecated&#93; The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.
#' @param certificateArn The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
#' @param regionalCertificateName The user-friendly name of the certificate that will be used by regional endpoint for this domain name.
#' @param regionalCertificateArn The reference to an AWS-managed certificate that will be used by regional endpoint for this domain name. AWS Certificate Manager is the only supported source.
#' @param endpointConfiguration The endpoint configuration of this DomainName showing the endpoint types of the domain name.
#'
#' @examples
#'
#' @export
create_domain_name <- function (domainName, certificateName = NULL, 
    certificateBody = NULL, certificatePrivateKey = NULL, certificateChain = NULL, 
    certificateArn = NULL, regionalCertificateName = NULL, regionalCertificateArn = NULL, 
    endpointConfiguration = NULL) 
{
    op <- Operation(name = "CreateDomainName", http_method = "POST", 
        http_path = "/domainnames", paginator = list())
    input <- create_domain_name_input(domainName = domainName, 
        certificateName = certificateName, certificateBody = certificateBody, 
        certificatePrivateKey = certificatePrivateKey, certificateChain = certificateChain, 
        certificateArn = certificateArn, regionalCertificateName = regionalCertificateName, 
        regionalCertificateArn = regionalCertificateArn, endpointConfiguration = endpointConfiguration)
    output <- create_domain_name_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a new Model resource to an existing RestApi resource
#'
#' Adds a new Model resource to an existing RestApi resource.
#'
#' @param restApiId &#91;Required&#93; The RestApi identifier under which the Model will be created.
#' @param name &#91;Required&#93; The name of the model. Must be alphanumeric.
#' @param contentType &#91;Required&#93; The content-type for the model.
#' @param description The description of the model.
#' @param schema The schema for the model. For `application/json` models, this should be [JSON schema draft 4](%5B%5BJsonSchemaUrl%5D%5D) model.
#'
#' @examples
#'
#' @export
create_model <- function (restApiId, name, contentType, description = NULL, 
    schema = NULL) 
{
    op <- Operation(name = "CreateModel", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/models", paginator = list())
    input <- create_model_input(restApiId = restApiId, name = name, 
        contentType = contentType, description = description, 
        schema = schema)
    output <- create_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a ReqeustValidator of a given RestApi
#'
#' Creates a ReqeustValidator of a given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param name The name of the to-be-created RequestValidator.
#' @param validateRequestBody A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (`true`) or not (`false`).
#' @param validateRequestParameters A Boolean flag to indicate whether to validate request parameters, `true`, or not `false`.
#'
#' @examples
#'
#' @export
create_request_validator <- function (restApiId, name = NULL, 
    validateRequestBody = NULL, validateRequestParameters = NULL) 
{
    op <- Operation(name = "CreateRequestValidator", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/requestvalidators", 
        paginator = list())
    input <- create_request_validator_input(restApiId = restApiId, 
        name = name, validateRequestBody = validateRequestBody, 
        validateRequestParameters = validateRequestParameters)
    output <- create_request_validator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Resource resource
#'
#' Creates a Resource resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param parentId &#91;Required&#93; The parent resource\'s identifier.
#' @param pathPart The last path segment for this resource.
#'
#' @examples
#'
#' @export
create_resource <- function (restApiId, parentId, pathPart) 
{
    op <- Operation(name = "CreateResource", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/resources/{parent_id}", 
        paginator = list())
    input <- create_resource_input(restApiId = restApiId, parentId = parentId, 
        pathPart = pathPart)
    output <- create_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new RestApi resource
#'
#' Creates a new RestApi resource.
#'
#' @param name &#91;Required&#93; The name of the RestApi.
#' @param description The description of the RestApi.
#' @param version A version identifier for the API.
#' @param cloneFrom The ID of the RestApi that you want to clone from.
#' @param binaryMediaTypes The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.
#' @param minimumCompressionSize A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.
#' @param apiKeySource The source of the API key for metering requests according to a usage plan. Valid values are:
#' 
#' -   `HEADER` to read the API key from the `X-API-Key` header of a request.
#' -   `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from a custom authorizer.
#' @param endpointConfiguration The endpoint configuration of this RestApi showing the endpoint types of the API.
#' @param policy A stringified JSON policy document that applies to this RestApi regardless of the caller and <a>Method</a> configuration.
#'
#' @examples
#'
#' @export
create_rest_api <- function (name, description = NULL, version = NULL, 
    cloneFrom = NULL, binaryMediaTypes = NULL, minimumCompressionSize = NULL, 
    apiKeySource = NULL, endpointConfiguration = NULL, policy = NULL) 
{
    op <- Operation(name = "CreateRestApi", http_method = "POST", 
        http_path = "/restapis", paginator = list())
    input <- create_rest_api_input(name = name, description = description, 
        version = version, cloneFrom = cloneFrom, binaryMediaTypes = binaryMediaTypes, 
        minimumCompressionSize = minimumCompressionSize, apiKeySource = apiKeySource, 
        endpointConfiguration = endpointConfiguration, policy = policy)
    output <- create_rest_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new Stage resource that references a pre-existing Deployment for the API
#'
#' Creates a new Stage resource that references a pre-existing Deployment for the API.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name for the Stage resource.
#' @param deploymentId &#91;Required&#93; The identifier of the Deployment resource for the Stage resource.
#' @param description The description of the Stage resource.
#' @param cacheClusterEnabled Whether cache clustering is enabled for the stage.
#' @param cacheClusterSize The stage\'s cache cluster size.
#' @param variables A map that defines the stage variables for the new Stage resource. Variable names can have alphanumeric and underscore characters, and the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
#' @param documentationVersion The version of the associated API documentation.
#' @param canarySettings The canary deployment settings of this stage.
#' @param tracingEnabled Specifies whether active tracing with X-ray is enabled for the Stage.
#' @param tags The key-value map of strings. The valid character set is &#91;a-zA-Z+-=.\_:/&#93;. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
#'
#' @examples
#'
#' @export
create_stage <- function (restApiId, stageName, deploymentId, 
    description = NULL, cacheClusterEnabled = NULL, cacheClusterSize = NULL, 
    variables = NULL, documentationVersion = NULL, canarySettings = NULL, 
    tracingEnabled = NULL, tags = NULL) 
{
    op <- Operation(name = "CreateStage", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/stages", paginator = list())
    input <- create_stage_input(restApiId = restApiId, stageName = stageName, 
        deploymentId = deploymentId, description = description, 
        cacheClusterEnabled = cacheClusterEnabled, cacheClusterSize = cacheClusterSize, 
        variables = variables, documentationVersion = documentationVersion, 
        canarySettings = canarySettings, tracingEnabled = tracingEnabled, 
        tags = tags)
    output <- create_stage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload
#'
#' Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.
#'
#' @param name &#91;Required&#93; The name of the usage plan.
#' @param description The description of the usage plan.
#' @param apiStages The associated API stages of the usage plan.
#' @param throttle The throttling limits of the usage plan.
#' @param quota The quota of the usage plan.
#'
#' @examples
#'
#' @export
create_usage_plan <- function (name, description = NULL, apiStages = NULL, 
    throttle = NULL, quota = NULL) 
{
    op <- Operation(name = "CreateUsagePlan", http_method = "POST", 
        http_path = "/usageplans", paginator = list())
    input <- create_usage_plan_input(name = name, description = description, 
        apiStages = apiStages, throttle = throttle, quota = quota)
    output <- create_usage_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a usage plan key for adding an existing API key to a usage plan
#'
#' Creates a usage plan key for adding an existing API key to a usage plan.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the UsagePlan resource representing the usage plan containing the to-be-created UsagePlanKey resource representing a plan customer.
#' @param keyId &#91;Required&#93; The identifier of a UsagePlanKey resource for a plan customer.
#' @param keyType &#91;Required&#93; The type of a UsagePlanKey resource for a plan customer.
#'
#' @examples
#'
#' @export
create_usage_plan_key <- function (usagePlanId, keyId, keyType) 
{
    op <- Operation(name = "CreateUsagePlanKey", http_method = "POST", 
        http_path = "/usageplans/{usageplanId}/keys", paginator = list())
    input <- create_usage_plan_key_input(usagePlanId = usagePlanId, 
        keyId = keyId, keyType = keyType)
    output <- create_usage_plan_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a VPC link, under the caller\'s account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational
#'
#' Creates a VPC link, under the caller\'s account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.
#'
#' @param name &#91;Required&#93; The name used to label and identify the VPC link.
#' @param targetArns &#91;Required&#93; The ARNs of network load balancers of the VPC targeted by the VPC link. The network load balancers must be owned by the same AWS account of the API owner.
#' @param description The description of the VPC link.
#'
#' @examples
#'
#' @export
create_vpc_link <- function (name, targetArns, description = NULL) 
{
    op <- Operation(name = "CreateVpcLink", http_method = "POST", 
        http_path = "/vpclinks", paginator = list())
    input <- create_vpc_link_input(name = name, targetArns = targetArns, 
        description = description)
    output <- create_vpc_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the ApiKey resource
#'
#' Deletes the ApiKey resource.
#'
#' @param apiKey &#91;Required&#93; The identifier of the ApiKey resource to be deleted.
#'
#' @examples
#'
#' @export
delete_api_key <- function (apiKey) 
{
    op <- Operation(name = "DeleteApiKey", http_method = "DELETE", 
        http_path = "/apikeys/{api_Key}", paginator = list())
    input <- delete_api_key_input(apiKey = apiKey)
    output <- delete_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing Authorizer resource
#'
#' Deletes an existing Authorizer resource.
#' 
#' ::: {.seeAlso}
#' [AWS CLI](%5B%5BAwsDocsUrlPrefix%5D%5D/cli/latest/reference/apigateway/delete-authorizer.html)
#' :::
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param authorizerId &#91;Required&#93; The identifier of the Authorizer resource.
#'
#' @examples
#'
#' @export
delete_authorizer <- function (restApiId, authorizerId) 
{
    op <- Operation(name = "DeleteAuthorizer", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/authorizers/{authorizer_id}", 
        paginator = list())
    input <- delete_authorizer_input(restApiId = restApiId, authorizerId = authorizerId)
    output <- delete_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the BasePathMapping resource
#'
#' Deletes the BasePathMapping resource.
#'
#' @param domainName &#91;Required&#93; The domain name of the BasePathMapping resource to delete.
#' @param basePath &#91;Required&#93; The base path name of the BasePathMapping resource to delete.
#'
#' @examples
#'
#' @export
delete_base_path_mapping <- function (domainName, basePath) 
{
    op <- Operation(name = "DeleteBasePathMapping", http_method = "DELETE", 
        http_path = "/domainnames/{domain_name}/basepathmappings/{base_path}", 
        paginator = list())
    input <- delete_base_path_mapping_input(domainName = domainName, 
        basePath = basePath)
    output <- delete_base_path_mapping_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the ClientCertificate resource
#'
#' Deletes the ClientCertificate resource.
#'
#' @param clientCertificateId &#91;Required&#93; The identifier of the ClientCertificate resource to be deleted.
#'
#' @examples
#'
#' @export
delete_client_certificate <- function (clientCertificateId) 
{
    op <- Operation(name = "DeleteClientCertificate", http_method = "DELETE", 
        http_path = "/clientcertificates/{clientcertificate_id}", 
        paginator = list())
    input <- delete_client_certificate_input(clientCertificateId = clientCertificateId)
    output <- delete_client_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Deployment resource
#'
#' Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param deploymentId &#91;Required&#93; The identifier of the Deployment resource to delete.
#'
#' @examples
#'
#' @export
delete_deployment <- function (restApiId, deploymentId) 
{
    op <- Operation(name = "DeleteDeployment", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/deployments/{deployment_id}", 
        paginator = list())
    input <- delete_deployment_input(restApiId = restApiId, deploymentId = deploymentId)
    output <- delete_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param documentationPartId &#91;Required&#93; The identifier of the to-be-deleted documentation part.
#'
#' @examples
#'
#' @export
delete_documentation_part <- function (restApiId, documentationPartId) 
{
    op <- Operation(name = "DeleteDocumentationPart", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/documentation/parts/{part_id}", 
        paginator = list())
    input <- delete_documentation_part_input(restApiId = restApiId, 
        documentationPartId = documentationPartId)
    output <- delete_documentation_part_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param documentationVersion &#91;Required&#93; The version identifier of a to-be-deleted documentation snapshot.
#'
#' @examples
#'
#' @export
delete_documentation_version <- function (restApiId, documentationVersion) 
{
    op <- Operation(name = "DeleteDocumentationVersion", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/documentation/versions/{doc_version}", 
        paginator = list())
    input <- delete_documentation_version_input(restApiId = restApiId, 
        documentationVersion = documentationVersion)
    output <- delete_documentation_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the DomainName resource
#'
#' Deletes the DomainName resource.
#'
#' @param domainName &#91;Required&#93; The name of the DomainName resource to be deleted.
#'
#' @examples
#'
#' @export
delete_domain_name <- function (domainName) 
{
    op <- Operation(name = "DeleteDomainName", http_method = "DELETE", 
        http_path = "/domainnames/{domain_name}", paginator = list())
    input <- delete_domain_name_input(domainName = domainName)
    output <- delete_domain_name_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings
#'
#' Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param responseType &#91;Required&#93;
#' 
#' The response type of the associated GatewayResponse. Valid values are
#' 
#' -   ACCESS\_DENIED
#' -   API\_CONFIGURATION\_ERROR
#' -   AUTHORIZER\_FAILURE
#' -   AUTHORIZER\_CONFIGURATION\_ERROR
#' -   BAD\_REQUEST\_PARAMETERS
#' -   BAD\_REQUEST\_BODY
#' -   DEFAULT\_4XX
#' -   DEFAULT\_5XX
#' -   EXPIRED\_TOKEN
#' -   INVALID\_SIGNATURE
#' -   INTEGRATION\_FAILURE
#' -   INTEGRATION\_TIMEOUT
#' -   INVALID\_API\_KEY
#' -   MISSING\_AUTHENTICATION\_TOKEN
#' -   QUOTA\_EXCEEDED
#' -   REQUEST\_TOO\_LARGE
#' -   RESOURCE\_NOT\_FOUND
#' -   THROTTLED
#' -   UNAUTHORIZED
#' -   UNSUPPORTED\_MEDIA\_TYPE
#'
#' @examples
#'
#' @export
delete_gateway_response <- function (restApiId, responseType) 
{
    op <- Operation(name = "DeleteGatewayResponse", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/gatewayresponses/{response_type}", 
        paginator = list())
    input <- delete_gateway_response_input(restApiId = restApiId, 
        responseType = responseType)
    output <- delete_gateway_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a delete integration
#'
#' Represents a delete integration.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a delete integration request\'s resource identifier.
#' @param httpMethod &#91;Required&#93; Specifies a delete integration request\'s HTTP method.
#'
#' @examples
#'
#' @export
delete_integration <- function (restApiId, resourceId, httpMethod) 
{
    op <- Operation(name = "DeleteIntegration", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", 
        paginator = list())
    input <- delete_integration_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod)
    output <- delete_integration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a delete integration response
#'
#' Represents a delete integration response.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a delete integration response request\'s resource identifier.
#' @param httpMethod &#91;Required&#93; Specifies a delete integration response request\'s HTTP method.
#' @param statusCode &#91;Required&#93; Specifies a delete integration response request\'s status code.
#'
#' @examples
#'
#' @export
delete_integration_response <- function (restApiId, resourceId, 
    httpMethod, statusCode) 
{
    op <- Operation(name = "DeleteIntegrationResponse", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", 
        paginator = list())
    input <- delete_integration_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode)
    output <- delete_integration_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing Method resource
#'
#' Deletes an existing Method resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the Method resource.
#' @param httpMethod &#91;Required&#93; The HTTP verb of the Method resource.
#'
#' @examples
#'
#' @export
delete_method <- function (restApiId, resourceId, httpMethod) 
{
    op <- Operation(name = "DeleteMethod", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", 
        paginator = list())
    input <- delete_method_input(restApiId = restApiId, resourceId = resourceId, 
        httpMethod = httpMethod)
    output <- delete_method_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing MethodResponse resource
#'
#' Deletes an existing MethodResponse resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the MethodResponse resource.
#' @param httpMethod &#91;Required&#93; The HTTP verb of the Method resource.
#' @param statusCode &#91;Required&#93; The status code identifier for the MethodResponse resource.
#'
#' @examples
#'
#' @export
delete_method_response <- function (restApiId, resourceId, httpMethod, 
    statusCode) 
{
    op <- Operation(name = "DeleteMethodResponse", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", 
        paginator = list())
    input <- delete_method_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode)
    output <- delete_method_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a model
#'
#' Deletes a model.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param modelName &#91;Required&#93; The name of the model to delete.
#'
#' @examples
#'
#' @export
delete_model <- function (restApiId, modelName) 
{
    op <- Operation(name = "DeleteModel", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/models/{model_name}", 
        paginator = list())
    input <- delete_model_input(restApiId = restApiId, modelName = modelName)
    output <- delete_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a RequestValidator of a given RestApi
#'
#' Deletes a RequestValidator of a given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param requestValidatorId &#91;Required&#93; The identifier of the RequestValidator to be deleted.
#'
#' @examples
#'
#' @export
delete_request_validator <- function (restApiId, requestValidatorId) 
{
    op <- Operation(name = "DeleteRequestValidator", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", 
        paginator = list())
    input <- delete_request_validator_input(restApiId = restApiId, 
        requestValidatorId = requestValidatorId)
    output <- delete_request_validator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Resource resource
#'
#' Deletes a Resource resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The identifier of the Resource resource.
#'
#' @examples
#'
#' @export
delete_resource <- function (restApiId, resourceId) 
{
    op <- Operation(name = "DeleteResource", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}", 
        paginator = list())
    input <- delete_resource_input(restApiId = restApiId, resourceId = resourceId)
    output <- delete_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified API
#'
#' Deletes the specified API.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#'
#' @examples
#'
#' @export
delete_rest_api <- function (restApiId) 
{
    op <- Operation(name = "DeleteRestApi", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}", paginator = list())
    input <- delete_rest_api_input(restApiId = restApiId)
    output <- delete_rest_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Stage resource
#'
#' Deletes a Stage resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name of the Stage resource to delete.
#'
#' @examples
#'
#' @export
delete_stage <- function (restApiId, stageName) 
{
    op <- Operation(name = "DeleteStage", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/stages/{stage_name}", 
        paginator = list())
    input <- delete_stage_input(restApiId = restApiId, stageName = stageName)
    output <- delete_stage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a usage plan of a given plan Id
#'
#' Deletes a usage plan of a given plan Id.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the to-be-deleted usage plan.
#'
#' @examples
#'
#' @export
delete_usage_plan <- function (usagePlanId) 
{
    op <- Operation(name = "DeleteUsagePlan", http_method = "DELETE", 
        http_path = "/usageplans/{usageplanId}", paginator = list())
    input <- delete_usage_plan_input(usagePlanId = usagePlanId)
    output <- delete_usage_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a usage plan key and remove the underlying API key from the associated usage plan
#'
#' Deletes a usage plan key and remove the underlying API key from the associated usage plan.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the UsagePlan resource representing the usage plan containing the to-be-deleted UsagePlanKey resource representing a plan customer.
#' @param keyId &#91;Required&#93; The Id of the UsagePlanKey resource to be deleted.
#'
#' @examples
#'
#' @export
delete_usage_plan_key <- function (usagePlanId, keyId) 
{
    op <- Operation(name = "DeleteUsagePlanKey", http_method = "DELETE", 
        http_path = "/usageplans/{usageplanId}/keys/{keyId}", 
        paginator = list())
    input <- delete_usage_plan_key_input(usagePlanId = usagePlanId, 
        keyId = keyId)
    output <- delete_usage_plan_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing VpcLink of a specified identifier
#'
#' Deletes an existing VpcLink of a specified identifier.
#'
#' @param vpcLinkId &#91;Required&#93; The identifier of the VpcLink. It is used in an Integration to reference this VpcLink.
#'
#' @examples
#'
#' @export
delete_vpc_link <- function (vpcLinkId) 
{
    op <- Operation(name = "DeleteVpcLink", http_method = "DELETE", 
        http_path = "/vpclinks/{vpclink_id}", paginator = list())
    input <- delete_vpc_link_input(vpcLinkId = vpcLinkId)
    output <- delete_vpc_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Flushes all authorizer cache entries on a stage
#'
#' Flushes all authorizer cache entries on a stage.
#'
#' @param restApiId The string identifier of the associated RestApi.
#' @param stageName The name of the stage to flush.
#'
#' @examples
#'
#' @export
flush_stage_authorizers_cache <- function (restApiId, stageName) 
{
    op <- Operation(name = "FlushStageAuthorizersCache", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers", 
        paginator = list())
    input <- flush_stage_authorizers_cache_input(restApiId = restApiId, 
        stageName = stageName)
    output <- flush_stage_authorizers_cache_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Flushes a stage\'s cache
#'
#' Flushes a stage\'s cache.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name of the stage to flush its cache.
#'
#' @examples
#'
#' @export
flush_stage_cache <- function (restApiId, stageName) 
{
    op <- Operation(name = "FlushStageCache", http_method = "DELETE", 
        http_path = "/restapis/{restapi_id}/stages/{stage_name}/cache/data", 
        paginator = list())
    input <- flush_stage_cache_input(restApiId = restApiId, stageName = stageName)
    output <- flush_stage_cache_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates a ClientCertificate resource
#'
#' Generates a ClientCertificate resource.
#'
#' @param description The description of the ClientCertificate.
#'
#' @examples
#'
#' @export
generate_client_certificate <- function (description = NULL) 
{
    op <- Operation(name = "GenerateClientCertificate", http_method = "POST", 
        http_path = "/clientcertificates", paginator = list())
    input <- generate_client_certificate_input(description = description)
    output <- generate_client_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the current Account resource
#'
#' Gets information about the current Account resource.
#'
#' @examples
#'
#' @export
get_account <- function () 
{
    op <- Operation(name = "GetAccount", http_method = "GET", 
        http_path = "/account", paginator = list())
    input <- get_account_input()
    output <- get_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the current ApiKey resource
#'
#' Gets information about the current ApiKey resource.
#'
#' @param apiKey &#91;Required&#93; The identifier of the ApiKey resource.
#' @param includeValue A boolean flag to specify whether (`true`) or not (`false`) the result contains the key value.
#'
#' @examples
#'
#' @export
get_api_key <- function (apiKey, includeValue = NULL) 
{
    op <- Operation(name = "GetApiKey", http_method = "GET", 
        http_path = "/apikeys/{api_Key}", paginator = list())
    input <- get_api_key_input(apiKey = apiKey, includeValue = includeValue)
    output <- get_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the current ApiKeys resource
#'
#' Gets information about the current ApiKeys resource.
#'
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#' @param nameQuery The name of queried API keys.
#' @param customerId The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.
#' @param includeValues A boolean flag to specify whether (`true`) or not (`false`) the result contains key values.
#'
#' @examples
#'
#' @export
get_api_keys <- function (position = NULL, limit = NULL, nameQuery = NULL, 
    customerId = NULL, includeValues = NULL) 
{
    op <- Operation(name = "GetApiKeys", http_method = "GET", 
        http_path = "/apikeys", paginator = list())
    input <- get_api_keys_input(position = position, limit = limit, 
        nameQuery = nameQuery, customerId = customerId, includeValues = includeValues)
    output <- get_api_keys_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe an existing Authorizer resource
#'
#' Describe an existing Authorizer resource.
#' 
#' ::: {.seeAlso}
#' [AWS CLI](%5B%5BAwsDocsUrlPrefix%5D%5D/cli/latest/reference/apigateway/get-authorizer.html)
#' :::
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param authorizerId &#91;Required&#93; The identifier of the Authorizer resource.
#'
#' @examples
#'
#' @export
get_authorizer <- function (restApiId, authorizerId) 
{
    op <- Operation(name = "GetAuthorizer", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/authorizers/{authorizer_id}", 
        paginator = list())
    input <- get_authorizer_input(restApiId = restApiId, authorizerId = authorizerId)
    output <- get_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe an existing Authorizers resource
#'
#' Describe an existing Authorizers resource.
#' 
#' ::: {.seeAlso}
#' [AWS CLI](%5B%5BAwsDocsUrlPrefix%5D%5D/cli/latest/reference/apigateway/get-authorizers.html)
#' :::
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_authorizers <- function (restApiId, position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetAuthorizers", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/authorizers", paginator = list())
    input <- get_authorizers_input(restApiId = restApiId, position = position, 
        limit = limit)
    output <- get_authorizers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe a BasePathMapping resource
#'
#' Describe a BasePathMapping resource.
#'
#' @param domainName &#91;Required&#93; The domain name of the BasePathMapping resource to be described.
#' @param basePath &#91;Required&#93; The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Leave this blank if you do not want callers to specify any base path name after the domain name.
#'
#' @examples
#'
#' @export
get_base_path_mapping <- function (domainName, basePath) 
{
    op <- Operation(name = "GetBasePathMapping", http_method = "GET", 
        http_path = "/domainnames/{domain_name}/basepathmappings/{base_path}", 
        paginator = list())
    input <- get_base_path_mapping_input(domainName = domainName, 
        basePath = basePath)
    output <- get_base_path_mapping_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a collection of BasePathMapping resources
#'
#' Represents a collection of BasePathMapping resources.
#'
#' @param domainName &#91;Required&#93; The domain name of a BasePathMapping resource.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_base_path_mappings <- function (domainName, position = NULL, 
    limit = NULL) 
{
    op <- Operation(name = "GetBasePathMappings", http_method = "GET", 
        http_path = "/domainnames/{domain_name}/basepathmappings", 
        paginator = list())
    input <- get_base_path_mappings_input(domainName = domainName, 
        position = position, limit = limit)
    output <- get_base_path_mappings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about the current ClientCertificate resource
#'
#' Gets information about the current ClientCertificate resource.
#'
#' @param clientCertificateId &#91;Required&#93; The identifier of the ClientCertificate resource to be described.
#'
#' @examples
#'
#' @export
get_client_certificate <- function (clientCertificateId) 
{
    op <- Operation(name = "GetClientCertificate", http_method = "GET", 
        http_path = "/clientcertificates/{clientcertificate_id}", 
        paginator = list())
    input <- get_client_certificate_input(clientCertificateId = clientCertificateId)
    output <- get_client_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a collection of ClientCertificate resources
#'
#' Gets a collection of ClientCertificate resources.
#'
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_client_certificates <- function (position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetClientCertificates", http_method = "GET", 
        http_path = "/clientcertificates", paginator = list())
    input <- get_client_certificates_input(position = position, 
        limit = limit)
    output <- get_client_certificates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a Deployment resource
#'
#' Gets information about a Deployment resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param deploymentId &#91;Required&#93; The identifier of the Deployment resource to get information about.
#' @param embed A query parameter to retrieve the specified embedded resources of the returned Deployment resource in the response. In a REST API call, this `embed` parameter value is a list of comma-separated strings, as in `GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2`. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the `"apisummary"` string. For example, `GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary`.
#'
#' @examples
#'
#' @export
get_deployment <- function (restApiId, deploymentId, embed = NULL) 
{
    op <- Operation(name = "GetDeployment", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/deployments/{deployment_id}", 
        paginator = list())
    input <- get_deployment_input(restApiId = restApiId, deploymentId = deploymentId, 
        embed = embed)
    output <- get_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a Deployments collection
#'
#' Gets information about a Deployments collection.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_deployments <- function (restApiId, position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetDeployments", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/deployments", paginator = list())
    input <- get_deployments_input(restApiId = restApiId, position = position, 
        limit = limit)
    output <- get_deployments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param documentationPartId &#91;Required&#93; The string identifier of the associated RestApi.
#'
#' @examples
#'
#' @export
get_documentation_part <- function (restApiId, documentationPartId) 
{
    op <- Operation(name = "GetDocumentationPart", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/documentation/parts/{part_id}", 
        paginator = list())
    input <- get_documentation_part_input(restApiId = restApiId, 
        documentationPartId = documentationPartId)
    output <- get_documentation_part_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param type The type of API entities of the to-be-retrieved documentation parts.
#' @param nameQuery The name of API entities of the to-be-retrieved documentation parts.
#' @param path The path of API entities of the to-be-retrieved documentation parts.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#' @param locationStatus The status of the API documentation parts to retrieve. Valid values are `DOCUMENTED` for retrieving DocumentationPart resources with content and `UNDOCUMENTED` for DocumentationPart resources without content.
#'
#' @examples
#'
#' @export
get_documentation_parts <- function (restApiId, type = NULL, 
    nameQuery = NULL, path = NULL, position = NULL, limit = NULL, 
    locationStatus = NULL) 
{
    op <- Operation(name = "GetDocumentationParts", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/documentation/parts", 
        paginator = list())
    input <- get_documentation_parts_input(restApiId = restApiId, 
        type = type, nameQuery = nameQuery, path = path, position = position, 
        limit = limit, locationStatus = locationStatus)
    output <- get_documentation_parts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param documentationVersion &#91;Required&#93; The version identifier of the to-be-retrieved documentation snapshot.
#'
#' @examples
#'
#' @export
get_documentation_version <- function (restApiId, documentationVersion) 
{
    op <- Operation(name = "GetDocumentationVersion", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/documentation/versions/{doc_version}", 
        paginator = list())
    input <- get_documentation_version_input(restApiId = restApiId, 
        documentationVersion = documentationVersion)
    output <- get_documentation_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_documentation_versions <- function (restApiId, position = NULL, 
    limit = NULL) 
{
    op <- Operation(name = "GetDocumentationVersions", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/documentation/versions", 
        paginator = list())
    input <- get_documentation_versions_input(restApiId = restApiId, 
        position = position, limit = limit)
    output <- get_documentation_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a domain name that is contained in a simpler, more intuitive URL that can be called
#'
#' Represents a domain name that is contained in a simpler, more intuitive URL that can be called.
#'
#' @param domainName &#91;Required&#93; The name of the DomainName resource.
#'
#' @examples
#'
#' @export
get_domain_name <- function (domainName) 
{
    op <- Operation(name = "GetDomainName", http_method = "GET", 
        http_path = "/domainnames/{domain_name}", paginator = list())
    input <- get_domain_name_input(domainName = domainName)
    output <- get_domain_name_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a collection of DomainName resources
#'
#' Represents a collection of DomainName resources.
#'
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_domain_names <- function (position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetDomainNames", http_method = "GET", 
        http_path = "/domainnames", paginator = list())
    input <- get_domain_names_input(position = position, limit = limit)
    output <- get_domain_names_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Exports a deployed version of a RestApi in a specified format
#'
#' Exports a deployed version of a RestApi in a specified format.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name of the Stage that will be exported.
#' @param exportType &#91;Required&#93; The type of export. Currently only \'swagger\' is supported.
#' @param parameters A key-value map of query string parameters that specify properties of the export, depending on the requested `exportType`. For `exportType` `swagger`, any combination of the following parameters are supported: `extensions='integrations'` or `extensions='apigateway'` will export the API with x-amazon-apigateway-integration extensions. `extensions='authorizers'` will export the API with x-amazon-apigateway-authorizer extensions. `postman` will export the API with Postman extensions, allowing for import to the Postman tool
#' @param accepts The content-type of the export, for example `application/json`. Currently `application/json` and `application/yaml` are supported for `exportType` of `swagger`. This should be specified in the `Accept` header for direct API requests.
#'
#' @examples
#'
#' @export
get_export <- function (restApiId, stageName, exportType, parameters = NULL, 
    accepts = NULL) 
{
    op <- Operation(name = "GetExport", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}", 
        paginator = list())
    input <- get_export_input(restApiId = restApiId, stageName = stageName, 
        exportType = exportType, parameters = parameters, accepts = accepts)
    output <- get_export_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a GatewayResponse of a specified response type on the given RestApi
#'
#' Gets a GatewayResponse of a specified response type on the given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param responseType &#91;Required&#93;
#' 
#' The response type of the associated GatewayResponse. Valid values are
#' 
#' -   ACCESS\_DENIED
#' -   API\_CONFIGURATION\_ERROR
#' -   AUTHORIZER\_FAILURE
#' -   AUTHORIZER\_CONFIGURATION\_ERROR
#' -   BAD\_REQUEST\_PARAMETERS
#' -   BAD\_REQUEST\_BODY
#' -   DEFAULT\_4XX
#' -   DEFAULT\_5XX
#' -   EXPIRED\_TOKEN
#' -   INVALID\_SIGNATURE
#' -   INTEGRATION\_FAILURE
#' -   INTEGRATION\_TIMEOUT
#' -   INVALID\_API\_KEY
#' -   MISSING\_AUTHENTICATION\_TOKEN
#' -   QUOTA\_EXCEEDED
#' -   REQUEST\_TOO\_LARGE
#' -   RESOURCE\_NOT\_FOUND
#' -   THROTTLED
#' -   UNAUTHORIZED
#' -   UNSUPPORTED\_MEDIA\_TYPE
#'
#' @examples
#'
#' @export
get_gateway_response <- function (restApiId, responseType) 
{
    op <- Operation(name = "GetGatewayResponse", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/gatewayresponses/{response_type}", 
        paginator = list())
    input <- get_gateway_response_input(restApiId = restApiId, 
        responseType = responseType)
    output <- get_gateway_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the GatewayResponses collection on the given RestApi
#'
#' Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The GatewayResponses collection does not support pagination and the limit does not apply here.
#'
#' @examples
#'
#' @export
get_gateway_responses <- function (restApiId, position = NULL, 
    limit = NULL) 
{
    op <- Operation(name = "GetGatewayResponses", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/gatewayresponses", 
        paginator = list())
    input <- get_gateway_responses_input(restApiId = restApiId, 
        position = position, limit = limit)
    output <- get_gateway_responses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get the integration settings
#'
#' Get the integration settings.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a get integration request\'s resource identifier
#' @param httpMethod &#91;Required&#93; Specifies a get integration request\'s HTTP method.
#'
#' @examples
#'
#' @export
get_integration <- function (restApiId, resourceId, httpMethod) 
{
    op <- Operation(name = "GetIntegration", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", 
        paginator = list())
    input <- get_integration_input(restApiId = restApiId, resourceId = resourceId, 
        httpMethod = httpMethod)
    output <- get_integration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a get integration response
#'
#' Represents a get integration response.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a get integration response request\'s resource identifier.
#' @param httpMethod &#91;Required&#93; Specifies a get integration response request\'s HTTP method.
#' @param statusCode &#91;Required&#93; Specifies a get integration response request\'s status code.
#'
#' @examples
#'
#' @export
get_integration_response <- function (restApiId, resourceId, 
    httpMethod, statusCode) 
{
    op <- Operation(name = "GetIntegrationResponse", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", 
        paginator = list())
    input <- get_integration_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode)
    output <- get_integration_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe an existing Method resource
#'
#' Describe an existing Method resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the Method resource.
#' @param httpMethod &#91;Required&#93; Specifies the method request\'s HTTP method type.
#'
#' @examples
#'
#' @export
get_method <- function (restApiId, resourceId, httpMethod) 
{
    op <- Operation(name = "GetMethod", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", 
        paginator = list())
    input <- get_method_input(restApiId = restApiId, resourceId = resourceId, 
        httpMethod = httpMethod)
    output <- get_method_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a MethodResponse resource
#'
#' Describes a MethodResponse resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the MethodResponse resource.
#' @param httpMethod &#91;Required&#93; The HTTP verb of the Method resource.
#' @param statusCode &#91;Required&#93; The status code for the MethodResponse resource.
#'
#' @examples
#'
#' @export
get_method_response <- function (restApiId, resourceId, httpMethod, 
    statusCode) 
{
    op <- Operation(name = "GetMethodResponse", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", 
        paginator = list())
    input <- get_method_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode)
    output <- get_method_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes an existing model defined for a RestApi resource
#'
#' Describes an existing model defined for a RestApi resource.
#'
#' @param restApiId &#91;Required&#93; The RestApi identifier under which the Model exists.
#' @param modelName &#91;Required&#93; The name of the model as an identifier.
#' @param flatten A query parameter of a Boolean value to resolve (`true`) all external model references and returns a flattened model schema or not (`false`) The default is `false`.
#'
#' @examples
#'
#' @export
get_model <- function (restApiId, modelName, flatten = NULL) 
{
    op <- Operation(name = "GetModel", http_method = "GET", http_path = "/restapis/{restapi_id}/models/{model_name}", 
        paginator = list())
    input <- get_model_input(restApiId = restApiId, modelName = modelName, 
        flatten = flatten)
    output <- get_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates a sample mapping template that can be used to transform a payload into the structure of a model
#'
#' Generates a sample mapping template that can be used to transform a payload into the structure of a model.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param modelName &#91;Required&#93; The name of the model for which to generate a template.
#'
#' @examples
#'
#' @export
get_model_template <- function (restApiId, modelName) 
{
    op <- Operation(name = "GetModelTemplate", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/models/{model_name}/default_template", 
        paginator = list())
    input <- get_model_template_input(restApiId = restApiId, 
        modelName = modelName)
    output <- get_model_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes existing Models defined for a RestApi resource
#'
#' Describes existing Models defined for a RestApi resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_models <- function (restApiId, position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetModels", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/models", paginator = list())
    input <- get_models_input(restApiId = restApiId, position = position, 
        limit = limit)
    output <- get_models_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a RequestValidator of a given RestApi
#'
#' Gets a RequestValidator of a given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param requestValidatorId &#91;Required&#93; The identifier of the RequestValidator to be retrieved.
#'
#' @examples
#'
#' @export
get_request_validator <- function (restApiId, requestValidatorId) 
{
    op <- Operation(name = "GetRequestValidator", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", 
        paginator = list())
    input <- get_request_validator_input(restApiId = restApiId, 
        requestValidatorId = requestValidatorId)
    output <- get_request_validator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the RequestValidators collection of a given RestApi
#'
#' Gets the RequestValidators collection of a given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_request_validators <- function (restApiId, position = NULL, 
    limit = NULL) 
{
    op <- Operation(name = "GetRequestValidators", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/requestvalidators", 
        paginator = list())
    input <- get_request_validators_input(restApiId = restApiId, 
        position = position, limit = limit)
    output <- get_request_validators_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists information about a resource
#'
#' Lists information about a resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The identifier for the Resource resource.
#' @param embed A query parameter to retrieve the specified resources embedded in the returned Resource representation in the response. This `embed` parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the `"methods"` string. For example, `GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods`.
#'
#' @examples
#'
#' @export
get_resource <- function (restApiId, resourceId, embed = NULL) 
{
    op <- Operation(name = "GetResource", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}", 
        paginator = list())
    input <- get_resource_input(restApiId = restApiId, resourceId = resourceId, 
        embed = embed)
    output <- get_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists information about a collection of Resource resources
#'
#' Lists information about a collection of Resource resources.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#' @param embed A query parameter used to retrieve the specified resources embedded in the returned Resources resource in the response. This `embed` parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the `"methods"` string. For example, `GET /restapis/{restapi_id}/resources?embed=methods`.
#'
#' @examples
#'
#' @export
get_resources <- function (restApiId, position = NULL, limit = NULL, 
    embed = NULL) 
{
    op <- Operation(name = "GetResources", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/resources", paginator = list())
    input <- get_resources_input(restApiId = restApiId, position = position, 
        limit = limit, embed = embed)
    output <- get_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the RestApi resource in the collection
#'
#' Lists the RestApi resource in the collection.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#'
#' @examples
#'
#' @export
get_rest_api <- function (restApiId) 
{
    op <- Operation(name = "GetRestApi", http_method = "GET", 
        http_path = "/restapis/{restapi_id}", paginator = list())
    input <- get_rest_api_input(restApiId = restApiId)
    output <- get_rest_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the RestApis resources for your collection
#'
#' Lists the RestApis resources for your collection.
#'
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_rest_apis <- function (position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetRestApis", http_method = "GET", 
        http_path = "/restapis", paginator = list())
    input <- get_rest_apis_input(position = position, limit = limit)
    output <- get_rest_apis_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates a client SDK for a RestApi and Stage
#'
#' Generates a client SDK for a RestApi and Stage.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name of the Stage that the SDK will use.
#' @param sdkType &#91;Required&#93; The language for the generated SDK. Currently `java`, `javascript`, `android`, `objectivec` (for iOS), `swift` (for iOS), and `ruby` are supported.
#' @param parameters A string-to-string key-value map of query parameters `sdkType`-dependent properties of the SDK. For `sdkType` of `objectivec` or `swift`, a parameter named `classPrefix` is required. For `sdkType` of `android`, parameters named `groupId`, `artifactId`, `artifactVersion`, and `invokerPackage` are required. For `sdkType` of `java`, parameters named `serviceName` and `javaPackageName` are required.
#'
#' @examples
#'
#' @export
get_sdk <- function (restApiId, stageName, sdkType, parameters = NULL) 
{
    op <- Operation(name = "GetSdk", http_method = "GET", http_path = "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}", 
        paginator = list())
    input <- get_sdk_input(restApiId = restApiId, stageName = stageName, 
        sdkType = sdkType, parameters = parameters)
    output <- get_sdk_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param id &#91;Required&#93; The identifier of the queried SdkType instance.
#'
#' @examples
#'
#' @export
get_sdk_type <- function (id) 
{
    op <- Operation(name = "GetSdkType", http_method = "GET", 
        http_path = "/sdktypes/{sdktype_id}", paginator = list())
    input <- get_sdk_type_input(id = id)
    output <- get_sdk_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_sdk_types <- function (position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetSdkTypes", http_method = "GET", 
        http_path = "/sdktypes", paginator = list())
    input <- get_sdk_types_input(position = position, limit = limit)
    output <- get_sdk_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a Stage resource
#'
#' Gets information about a Stage resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name of the Stage resource to get information about.
#'
#' @examples
#'
#' @export
get_stage <- function (restApiId, stageName) 
{
    op <- Operation(name = "GetStage", http_method = "GET", http_path = "/restapis/{restapi_id}/stages/{stage_name}", 
        paginator = list())
    input <- get_stage_input(restApiId = restApiId, stageName = stageName)
    output <- get_stage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more Stage resources
#'
#' Gets information about one or more Stage resources.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param deploymentId The stages\' deployment identifiers.
#'
#' @examples
#'
#' @export
get_stages <- function (restApiId, deploymentId = NULL) 
{
    op <- Operation(name = "GetStages", http_method = "GET", 
        http_path = "/restapis/{restapi_id}/stages", paginator = list())
    input <- get_stages_input(restApiId = restApiId, deploymentId = deploymentId)
    output <- get_stages_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the Tags collection for a given resource
#'
#' Gets the Tags collection for a given resource.
#'
#' @param resourceArn &#91;Required&#93; The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, Stage is the only taggable resource.
#' @param position (Not currently supported) The current pagination position in the paged result set.
#' @param limit (Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_tags <- function (resourceArn, position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetTags", http_method = "GET", http_path = "/tags/{resource_arn}", 
        paginator = list())
    input <- get_tags_input(resourceArn = resourceArn, position = position, 
        limit = limit)
    output <- get_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the usage data of a usage plan in a specified time interval
#'
#' Gets the usage data of a usage plan in a specified time interval.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the usage plan associated with the usage data.
#' @param startDate &#91;Required&#93; The starting date (e.g., 2016-01-01) of the usage data.
#' @param endDate &#91;Required&#93; The ending date (e.g., 2016-12-31) of the usage data.
#' @param keyId The Id of the API key associated with the resultant usage data.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_usage <- function (usagePlanId, startDate, endDate, keyId = NULL, 
    position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetUsage", http_method = "GET", http_path = "/usageplans/{usageplanId}/usage", 
        paginator = list())
    input <- get_usage_input(usagePlanId = usagePlanId, startDate = startDate, 
        endDate = endDate, keyId = keyId, position = position, 
        limit = limit)
    output <- get_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a usage plan of a given plan identifier
#'
#' Gets a usage plan of a given plan identifier.
#'
#' @param usagePlanId &#91;Required&#93; The identifier of the UsagePlan resource to be retrieved.
#'
#' @examples
#'
#' @export
get_usage_plan <- function (usagePlanId) 
{
    op <- Operation(name = "GetUsagePlan", http_method = "GET", 
        http_path = "/usageplans/{usageplanId}", paginator = list())
    input <- get_usage_plan_input(usagePlanId = usagePlanId)
    output <- get_usage_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a usage plan key of a given key identifier
#'
#' Gets a usage plan key of a given key identifier.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.
#' @param keyId &#91;Required&#93; The key Id of the to-be-retrieved UsagePlanKey resource representing a plan customer.
#'
#' @examples
#'
#' @export
get_usage_plan_key <- function (usagePlanId, keyId) 
{
    op <- Operation(name = "GetUsagePlanKey", http_method = "GET", 
        http_path = "/usageplans/{usageplanId}/keys/{keyId}", 
        paginator = list())
    input <- get_usage_plan_key_input(usagePlanId = usagePlanId, 
        keyId = keyId)
    output <- get_usage_plan_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets all the usage plan keys representing the API keys added to a specified usage plan
#'
#' Gets all the usage plan keys representing the API keys added to a specified usage plan.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#' @param nameQuery A query parameter specifying the name of the to-be-returned usage plan keys.
#'
#' @examples
#'
#' @export
get_usage_plan_keys <- function (usagePlanId, position = NULL, 
    limit = NULL, nameQuery = NULL) 
{
    op <- Operation(name = "GetUsagePlanKeys", http_method = "GET", 
        http_path = "/usageplans/{usageplanId}/keys", paginator = list())
    input <- get_usage_plan_keys_input(usagePlanId = usagePlanId, 
        position = position, limit = limit, nameQuery = nameQuery)
    output <- get_usage_plan_keys_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets all the usage plans of the caller\'s account
#'
#' Gets all the usage plans of the caller\'s account.
#'
#' @param position The current pagination position in the paged result set.
#' @param keyId The identifier of the API key associated with the usage plans.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_usage_plans <- function (position = NULL, keyId = NULL, limit = NULL) 
{
    op <- Operation(name = "GetUsagePlans", http_method = "GET", 
        http_path = "/usageplans", paginator = list())
    input <- get_usage_plans_input(position = position, keyId = keyId, 
        limit = limit)
    output <- get_usage_plans_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a specified VPC link under the caller\'s account in a region
#'
#' Gets a specified VPC link under the caller\'s account in a region.
#'
#' @param vpcLinkId &#91;Required&#93; The identifier of the VpcLink. It is used in an Integration to reference this VpcLink.
#'
#' @examples
#'
#' @export
get_vpc_link <- function (vpcLinkId) 
{
    op <- Operation(name = "GetVpcLink", http_method = "GET", 
        http_path = "/vpclinks/{vpclink_id}", paginator = list())
    input <- get_vpc_link_input(vpcLinkId = vpcLinkId)
    output <- get_vpc_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the VpcLinks collection under the caller\'s account in a selected region
#'
#' Gets the VpcLinks collection under the caller\'s account in a selected region.
#'
#' @param position The current pagination position in the paged result set.
#' @param limit The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
#'
#' @examples
#'
#' @export
get_vpc_links <- function (position = NULL, limit = NULL) 
{
    op <- Operation(name = "GetVpcLinks", http_method = "GET", 
        http_path = "/vpclinks", paginator = list())
    input <- get_vpc_links_input(position = position, limit = limit)
    output <- get_vpc_links_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Import API keys from an external source, such as a CSV-formatted file
#'
#' Import API keys from an external source, such as a CSV-formatted file.
#'
#' @param body The payload of the POST request to import API keys. For the payload format, see [API Key File Format](%5B%5BAwsDocsUrlPrefix%5D%5D/apigateway/latest/developerguide/api-key-file-format.html).
#' @param format A query parameter to specify the input format to imported API keys. Currently, only the `csv` format is supported.
#' @param failOnWarnings A query parameter to indicate whether to rollback ApiKey importation (`true`) or not (`false`) when error is encountered.
#'
#' @examples
#'
#' @export
import_api_keys <- function (body, format, failOnWarnings = NULL) 
{
    op <- Operation(name = "ImportApiKeys", http_method = "POST", 
        http_path = "/apikeys?mode=import", paginator = list())
    input <- import_api_keys_input(body = body, format = format, 
        failOnWarnings = failOnWarnings)
    output <- import_api_keys_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param body &#91;Required&#93; Raw byte array representing the to-be-imported documentation parts. To import from a Swagger file, this is a JSON object.
#' @param mode A query parameter to indicate whether to overwrite (`OVERWRITE`) any existing DocumentationParts definition or to merge (`MERGE`) the new definition into the existing one. The default value is `MERGE`.
#' @param failOnWarnings A query parameter to specify whether to rollback the documentation importation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
#'
#' @examples
#'
#' @export
import_documentation_parts <- function (restApiId, body, mode = NULL, 
    failOnWarnings = NULL) 
{
    op <- Operation(name = "ImportDocumentationParts", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}/documentation/parts", 
        paginator = list())
    input <- import_documentation_parts_input(restApiId = restApiId, 
        body = body, mode = mode, failOnWarnings = failOnWarnings)
    output <- import_documentation_parts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' A feature of the API Gateway control service for creating a new API from an external API definition file
#'
#' A feature of the API Gateway control service for creating a new API from an external API definition file.
#'
#' @param body &#91;Required&#93; The POST request body containing external API definitions. Currently, only Swagger definition JSON files are supported. The maximum size of the API definition file is 2MB.
#' @param failOnWarnings A query parameter to indicate whether to rollback the API creation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
#' @param parameters A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.
#' 
#' To exclude DocumentationParts from the import, set `parameters` as `ignore=documentation`.
#' 
#' To configure the endpoint type, set `parameters` as `endpointConfigurationTypes=EDGE`, `endpointConfigurationTypes=REGIONAL`, or `endpointConfigurationTypes=PRIVATE`. The default endpoint type is `EDGE`.
#' 
#' To handle imported `basePath`, set `parameters` as `basePath=ignore`, `basePath=prepend` or `basePath=split`.
#' 
#' For example, the AWS CLI command to exclude documentation from the imported API is:
#' 
#'     aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'
#' 
#' The AWS CLI command to set the regional endpoint on the imported API is:
#' 
#'     aws apigateway import-rest-api --parameters endpointConfigurationTypes=REGIONAL --body 'file:///path/to/imported-api-body.json'
#'
#' @examples
#'
#' @export
import_rest_api <- function (body, failOnWarnings = NULL, parameters = NULL) 
{
    op <- Operation(name = "ImportRestApi", http_method = "POST", 
        http_path = "/restapis?mode=import", paginator = list())
    input <- import_rest_api_input(body = body, failOnWarnings = failOnWarnings, 
        parameters = parameters)
    output <- import_rest_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi
#'
#' Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param responseType &#91;Required&#93;
#' 
#' The response type of the associated GatewayResponse. Valid values are
#' 
#' -   ACCESS\_DENIED
#' -   API\_CONFIGURATION\_ERROR
#' -   AUTHORIZER\_FAILURE
#' -   AUTHORIZER\_CONFIGURATION\_ERROR
#' -   BAD\_REQUEST\_PARAMETERS
#' -   BAD\_REQUEST\_BODY
#' -   DEFAULT\_4XX
#' -   DEFAULT\_5XX
#' -   EXPIRED\_TOKEN
#' -   INVALID\_SIGNATURE
#' -   INTEGRATION\_FAILURE
#' -   INTEGRATION\_TIMEOUT
#' -   INVALID\_API\_KEY
#' -   MISSING\_AUTHENTICATION\_TOKEN
#' -   QUOTA\_EXCEEDED
#' -   REQUEST\_TOO\_LARGE
#' -   RESOURCE\_NOT\_FOUND
#' -   THROTTLED
#' -   UNAUTHORIZED
#' -   UNSUPPORTED\_MEDIA\_TYPE
#' @param statusCode The HTTP status code of the <a>GatewayResponse</a>.
#' @param responseParameters Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value pairs.
#' @param responseTemplates Response templates of the GatewayResponse as a string-to-string map of key-value pairs.
#'
#' @examples
#'
#' @export
put_gateway_response <- function (restApiId, responseType, statusCode = NULL, 
    responseParameters = NULL, responseTemplates = NULL) 
{
    op <- Operation(name = "PutGatewayResponse", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}/gatewayresponses/{response_type}", 
        paginator = list())
    input <- put_gateway_response_input(restApiId = restApiId, 
        responseType = responseType, statusCode = statusCode, 
        responseParameters = responseParameters, responseTemplates = responseTemplates)
    output <- put_gateway_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets up a method\'s integration
#'
#' Sets up a method\'s integration.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a put integration request\'s resource ID.
#' @param httpMethod &#91;Required&#93; Specifies a put integration request\'s HTTP method.
#' @param type &#91;Required&#93; Specifies a put integration input\'s type.
#' @param integrationHttpMethod Specifies a put integration HTTP method. When the integration type is HTTP or AWS, this field is required.
#' @param uri Specifies Uniform Resource Identifier (URI) of the integration endpoint.
#' 
#' -   For `HTTP` or `HTTP_PROXY` integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the [RFC-3986 specification](%5B%5BUriEntryWikipediaUrl%5D%5D), for either standard integration, where `connectionType` is not `VPC_LINK`, or private integration, where `connectionType` is `VPC_LINK`. For a private HTTP integration, the URI is not used for routing.
#' 
#' -   For `AWS` or `AWS_PROXY` integrations, the URI is of the form `arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}`. Here, `{Region}` is the API Gateway region (e.g., `us-east-1`); `{service}` is the name of the integrated AWS service (e.g., `s3`); and `{subdomain}` is a designated subdomain supported by certain AWS service for fast host-name lookup. `action` can be used for an AWS service action-based API, using an `Action={name}&{p1}={v1}&p2={v2}...` query string. The ensuing `{service_api}` refers to a supported action `{name}` plus any required input parameters. Alternatively, `path` can be used for an AWS service path-based API. The ensuing `service_api` refers to the path to an AWS service resource, including the region of the integrated AWS service, if applicable. For example, for integration with the S3 API of `GetObject`, the `uri` can be either `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}` or `arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}`
#' @param connectionType The type of the network connection to the integration endpoint. The valid value is `INTERNET` for connections through the public routable internet or `VPC_LINK` for private connections between API Gateway and a network load balancer in a VPC. The default value is `INTERNET`.
#' @param connectionId The ([`id`](%5B%5BAwsDocsUrlPrefix%5D%5D/apigateway/api-reference/resource/vpc-link/#id)) of the VpcLink used for the integration when `connectionType=VPC_LINK` and undefined, otherwise.
#' @param credentials Specifies whether credentials are required for a put integration.
#' @param requestParameters A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` must be a valid and unique method request parameter name.
#' @param requestTemplates Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.
#' @param passthroughBehavior Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the `requestTemplates` property on the Integration resource. There are three valid values: `WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, and `NEVER`.
#' 
#' -   `WHEN_NO_MATCH` passes the request body for unmapped content types through to the integration back end without transformation.
#' 
#' -   `NEVER` rejects unmapped content types with an HTTP 415 \'Unsupported Media Type\' response.
#' 
#' -   `WHEN_NO_TEMPLATES` allows pass-through when the integration has NO content types mapped to templates. However if there is at least one content type defined, unmapped content types will be rejected with the same 415 response.
#' @param cacheNamespace Specifies a put integration input\'s cache namespace.
#' @param cacheKeyParameters Specifies a put integration input\'s cache key parameters.
#' @param contentHandling Specifies how to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with the following behaviors:
#' 
#' -   `CONVERT_TO_BINARY`: Converts a request payload from a Base64-encoded string to the corresponding binary blob.
#' 
#' -   `CONVERT_TO_TEXT`: Converts a request payload from a binary blob to a Base64-encoded string.
#' 
#' If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the `passthroughBehaviors` is configured to support payload pass-through.
#' @param timeoutInMillis Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.
#'
#' @examples
#'
#' @export
put_integration <- function (restApiId, resourceId, httpMethod, 
    type, integrationHttpMethod = NULL, uri = NULL, connectionType = NULL, 
    connectionId = NULL, credentials = NULL, requestParameters = NULL, 
    requestTemplates = NULL, passthroughBehavior = NULL, cacheNamespace = NULL, 
    cacheKeyParameters = NULL, contentHandling = NULL, timeoutInMillis = NULL) 
{
    op <- Operation(name = "PutIntegration", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", 
        paginator = list())
    input <- put_integration_input(restApiId = restApiId, resourceId = resourceId, 
        httpMethod = httpMethod, type = type, integrationHttpMethod = integrationHttpMethod, 
        uri = uri, connectionType = connectionType, connectionId = connectionId, 
        credentials = credentials, requestParameters = requestParameters, 
        requestTemplates = requestTemplates, passthroughBehavior = passthroughBehavior, 
        cacheNamespace = cacheNamespace, cacheKeyParameters = cacheKeyParameters, 
        contentHandling = contentHandling, timeoutInMillis = timeoutInMillis)
    output <- put_integration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents a put integration
#'
#' Represents a put integration.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a put integration response request\'s resource identifier.
#' @param httpMethod &#91;Required&#93; Specifies a put integration response request\'s HTTP method.
#' @param statusCode &#91;Required&#93; Specifies the status code that is used to map the integration response to an existing MethodResponse.
#' @param selectionPattern Specifies the selection pattern of a put integration response.
#' @param responseParameters A key-value map specifying response parameters that are passed to the method response from the back end. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The mapped non-static value must match the pattern of `integration.response.header.{name}` or `integration.response.body.{JSON-expression}`, where `name` must be a valid and unique response header name and `JSON-expression` a valid JSON expression without the `$` prefix.
#' @param responseTemplates Specifies a put integration response\'s templates.
#' @param contentHandling Specifies how to handle response payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with the following behaviors:
#' 
#' -   `CONVERT_TO_BINARY`: Converts a response payload from a Base64-encoded string to the corresponding binary blob.
#' 
#' -   `CONVERT_TO_TEXT`: Converts a response payload from a binary blob to a Base64-encoded string.
#' 
#' If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
#'
#' @examples
#'
#' @export
put_integration_response <- function (restApiId, resourceId, 
    httpMethod, statusCode, selectionPattern = NULL, responseParameters = NULL, 
    responseTemplates = NULL, contentHandling = NULL) 
{
    op <- Operation(name = "PutIntegrationResponse", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", 
        paginator = list())
    input <- put_integration_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode, 
        selectionPattern = selectionPattern, responseParameters = responseParameters, 
        responseTemplates = responseTemplates, contentHandling = contentHandling)
    output <- put_integration_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Add a method to an existing Resource resource
#'
#' Add a method to an existing Resource resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the new Method resource.
#' @param httpMethod &#91;Required&#93; Specifies the method request\'s HTTP method type.
#' @param authorizationType &#91;Required&#93; The method\'s authorization type. Valid values are `NONE` for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for using a custom authorizer, or `COGNITO_USER_POOLS` for using a Cognito user pool.
#' @param authorizerId Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO\_USER\_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.
#' @param apiKeyRequired Specifies whether the method required a valid ApiKey.
#' @param operationName A human-friendly operation identifier for the method. For example, you can assign the `operationName` of `ListPets` for the `GET /pets` method in [PetStore](%5B%5BPetstoreDemoUrl%5D%5D) example.
#' @param requestParameters A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of `method.request.{location}.{name}`, where `location` is `querystring`, `path`, or `header` and `name` is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (`true`) or optional (`false`). The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.
#' @param requestModels Specifies the Model resources used for the request\'s content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.
#' @param requestValidatorId The identifier of a RequestValidator for validating the method request.
#' @param authorizationScopes A list of authorization scopes configured on the method. The scopes are used with a `COGNITO_USER_POOLS` authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.
#'
#' @examples
#'
#' @export
put_method <- function (restApiId, resourceId, httpMethod, authorizationType, 
    authorizerId = NULL, apiKeyRequired = NULL, operationName = NULL, 
    requestParameters = NULL, requestModels = NULL, requestValidatorId = NULL, 
    authorizationScopes = NULL) 
{
    op <- Operation(name = "PutMethod", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", 
        paginator = list())
    input <- put_method_input(restApiId = restApiId, resourceId = resourceId, 
        httpMethod = httpMethod, authorizationType = authorizationType, 
        authorizerId = authorizerId, apiKeyRequired = apiKeyRequired, 
        operationName = operationName, requestParameters = requestParameters, 
        requestModels = requestModels, requestValidatorId = requestValidatorId, 
        authorizationScopes = authorizationScopes)
    output <- put_method_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a MethodResponse to an existing Method resource
#'
#' Adds a MethodResponse to an existing Method resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the Method resource.
#' @param httpMethod &#91;Required&#93; The HTTP verb of the Method resource.
#' @param statusCode &#91;Required&#93; The method response\'s status code.
#' @param responseParameters A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of `method.response.header.{name}`, where `name` is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in `integration.response.header.{name}`, a static value enclosed within a pair of single quotes (e.g., `'application/json'`), or a JSON expression from the back-end response payload in the form of `integration.response.body.{JSON-expression}`, where `JSON-expression` is a valid JSON expression without the `$` prefix.)
#' @param responseModels Specifies the Model resources used for the response\'s content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.
#'
#' @examples
#'
#' @export
put_method_response <- function (restApiId, resourceId, httpMethod, 
    statusCode, responseParameters = NULL, responseModels = NULL) 
{
    op <- Operation(name = "PutMethodResponse", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", 
        paginator = list())
    input <- put_method_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode, 
        responseParameters = responseParameters, responseModels = responseModels)
    output <- put_method_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' A feature of the API Gateway control service for updating an existing API with an input of external API definitions
#'
#' A feature of the API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param body &#91;Required&#93; The PUT request body containing external API definitions. Currently, only Swagger definition JSON files are supported. The maximum size of the API definition file is 2MB.
#' @param mode The `mode` query parameter to specify the update mode. Valid values are \"merge\" and \"overwrite\". By default, the update mode is \"merge\".
#' @param failOnWarnings A query parameter to indicate whether to rollback the API update (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
#' @param parameters Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set `ignore=documentation` as a `parameters` value, as in the AWS CLI command of `aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'`.
#'
#' @examples
#'
#' @export
put_rest_api <- function (restApiId, body, mode = NULL, failOnWarnings = NULL, 
    parameters = NULL) 
{
    op <- Operation(name = "PutRestApi", http_method = "PUT", 
        http_path = "/restapis/{restapi_id}", paginator = list())
    input <- put_rest_api_input(restApiId = restApiId, body = body, 
        mode = mode, failOnWarnings = failOnWarnings, parameters = parameters)
    output <- put_rest_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or updates a tag on a given resource
#'
#' Adds or updates a tag on a given resource.
#'
#' @param resourceArn &#91;Required&#93; The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, Stage is the only taggable resource.
#' @param tags &#91;Required&#93; The key-value map of strings. The valid character set is &#91;a-zA-Z+-=.\_:/&#93;. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
#'
#' @examples
#'
#' @export
tag_resource <- function (resourceArn, tags) 
{
    op <- Operation(name = "TagResource", http_method = "PUT", 
        http_path = "/tags/{resource_arn}", paginator = list())
    input <- tag_resource_input(resourceArn = resourceArn, tags = tags)
    output <- tag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body
#'
#' Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.
#' 
#' ::: {.seeAlso}
#' [Enable custom authorizers](%5B%5BAwsDocsUrlPrefix%5D%5D/apigateway/latest/developerguide/use-custom-authorizer.html)
#' :::
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param authorizerId &#91;Required&#93; Specifies a test invoke authorizer request\'s Authorizer ID.
#' @param headers &#91;Required&#93; A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.
#' @param multiValueHeaders &#91;Optional&#93; The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.
#' @param pathWithQueryString &#91;Optional&#93; The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
#' @param body &#91;Optional&#93; The simulated request body of an incoming invocation request.
#' @param stageVariables A key-value map of stage variables to simulate an invocation on a deployed Stage.
#' @param additionalContext &#91;Optional&#93; A key-value map of additional context variables.
#'
#' @examples
#'
#' @export
test_invoke_authorizer <- function (restApiId, authorizerId, 
    headers = NULL, multiValueHeaders = NULL, pathWithQueryString = NULL, 
    body = NULL, stageVariables = NULL, additionalContext = NULL) 
{
    op <- Operation(name = "TestInvokeAuthorizer", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/authorizers/{authorizer_id}", 
        paginator = list())
    input <- test_invoke_authorizer_input(restApiId = restApiId, 
        authorizerId = authorizerId, headers = headers, multiValueHeaders = multiValueHeaders, 
        pathWithQueryString = pathWithQueryString, body = body, 
        stageVariables = stageVariables, additionalContext = additionalContext)
    output <- test_invoke_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body
#'
#' Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies a test invoke method request\'s resource ID.
#' @param httpMethod &#91;Required&#93; Specifies a test invoke method request\'s HTTP method.
#' @param pathWithQueryString The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
#' @param body The simulated request body of an incoming invocation request.
#' @param headers A key-value map of headers to simulate an incoming invocation request.
#' @param multiValueHeaders The headers as a map from string to list of values to simulate an incoming invocation request.
#' @param clientCertificateId A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.
#' @param stageVariables A key-value map of stage variables to simulate an invocation on a deployed Stage.
#'
#' @examples
#'
#' @export
test_invoke_method <- function (restApiId, resourceId, httpMethod, 
    pathWithQueryString = NULL, body = NULL, headers = NULL, 
    multiValueHeaders = NULL, clientCertificateId = NULL, stageVariables = NULL) 
{
    op <- Operation(name = "TestInvokeMethod", http_method = "POST", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", 
        paginator = list())
    input <- test_invoke_method_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, pathWithQueryString = pathWithQueryString, 
        body = body, headers = headers, multiValueHeaders = multiValueHeaders, 
        clientCertificateId = clientCertificateId, stageVariables = stageVariables)
    output <- test_invoke_method_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a tag from a given resource
#'
#' Removes a tag from a given resource.
#'
#' @param resourceArn &#91;Required&#93; The ARN of a resource that can be tagged. The resource ARN must be URL-encoded. At present, Stage is the only taggable resource.
#' @param tagKeys &#91;Required&#93; The Tag keys to delete.
#'
#' @examples
#'
#' @export
untag_resource <- function (resourceArn, tagKeys) 
{
    op <- Operation(name = "UntagResource", http_method = "DELETE", 
        http_path = "/tags/{resource_arn}", paginator = list())
    input <- untag_resource_input(resourceArn = resourceArn, 
        tagKeys = tagKeys)
    output <- untag_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about the current Account resource
#'
#' Changes information about the current Account resource.
#'
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_account <- function (patchOperations = NULL) 
{
    op <- Operation(name = "UpdateAccount", http_method = "PATCH", 
        http_path = "/account", paginator = list())
    input <- update_account_input(patchOperations = patchOperations)
    output <- update_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about an ApiKey resource
#'
#' Changes information about an ApiKey resource.
#'
#' @param apiKey &#91;Required&#93; The identifier of the ApiKey resource to be updated.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_api_key <- function (apiKey, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateApiKey", http_method = "PATCH", 
        http_path = "/apikeys/{api_Key}", paginator = list())
    input <- update_api_key_input(apiKey = apiKey, patchOperations = patchOperations)
    output <- update_api_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing Authorizer resource
#'
#' Updates an existing Authorizer resource.
#' 
#' ::: {.seeAlso}
#' [AWS CLI](%5B%5BAwsDocsUrlPrefix%5D%5D/cli/latest/reference/apigateway/update-authorizer.html)
#' :::
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param authorizerId &#91;Required&#93; The identifier of the Authorizer resource.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_authorizer <- function (restApiId, authorizerId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateAuthorizer", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/authorizers/{authorizer_id}", 
        paginator = list())
    input <- update_authorizer_input(restApiId = restApiId, authorizerId = authorizerId, 
        patchOperations = patchOperations)
    output <- update_authorizer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about the BasePathMapping resource
#'
#' Changes information about the BasePathMapping resource.
#'
#' @param domainName &#91;Required&#93; The domain name of the BasePathMapping resource to change.
#' @param basePath &#91;Required&#93; The base path of the BasePathMapping resource to change.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_base_path_mapping <- function (domainName, basePath, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateBasePathMapping", http_method = "PATCH", 
        http_path = "/domainnames/{domain_name}/basepathmappings/{base_path}", 
        paginator = list())
    input <- update_base_path_mapping_input(domainName = domainName, 
        basePath = basePath, patchOperations = patchOperations)
    output <- update_base_path_mapping_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about an ClientCertificate resource
#'
#' Changes information about an ClientCertificate resource.
#'
#' @param clientCertificateId &#91;Required&#93; The identifier of the ClientCertificate resource to be updated.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_client_certificate <- function (clientCertificateId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateClientCertificate", http_method = "PATCH", 
        http_path = "/clientcertificates/{clientcertificate_id}", 
        paginator = list())
    input <- update_client_certificate_input(clientCertificateId = clientCertificateId, 
        patchOperations = patchOperations)
    output <- update_client_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about a Deployment resource
#'
#' Changes information about a Deployment resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param deploymentId The replacement identifier for the Deployment resource to change information about.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_deployment <- function (restApiId, deploymentId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateDeployment", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/deployments/{deployment_id}", 
        paginator = list())
    input <- update_deployment_input(restApiId = restApiId, deploymentId = deploymentId, 
        patchOperations = patchOperations)
    output <- update_deployment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param documentationPartId &#91;Required&#93; The identifier of the to-be-updated documentation part.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_documentation_part <- function (restApiId, documentationPartId, 
    patchOperations = NULL) 
{
    op <- Operation(name = "UpdateDocumentationPart", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/documentation/parts/{part_id}", 
        paginator = list())
    input <- update_documentation_part_input(restApiId = restApiId, 
        documentationPartId = documentationPartId, patchOperations = patchOperations)
    output <- update_documentation_part_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' 
#'
#' 
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi..
#' @param documentationVersion &#91;Required&#93; The version identifier of the to-be-updated documentation version.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_documentation_version <- function (restApiId, documentationVersion, 
    patchOperations = NULL) 
{
    op <- Operation(name = "UpdateDocumentationVersion", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/documentation/versions/{doc_version}", 
        paginator = list())
    input <- update_documentation_version_input(restApiId = restApiId, 
        documentationVersion = documentationVersion, patchOperations = patchOperations)
    output <- update_documentation_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about the DomainName resource
#'
#' Changes information about the DomainName resource.
#'
#' @param domainName &#91;Required&#93; The name of the DomainName resource to be changed.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_domain_name <- function (domainName, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateDomainName", http_method = "PATCH", 
        http_path = "/domainnames/{domain_name}", paginator = list())
    input <- update_domain_name_input(domainName = domainName, 
        patchOperations = patchOperations)
    output <- update_domain_name_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a GatewayResponse of a specified response type on the given RestApi
#'
#' Updates a GatewayResponse of a specified response type on the given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param responseType &#91;Required&#93;
#' 
#' The response type of the associated GatewayResponse. Valid values are
#' 
#' -   ACCESS\_DENIED
#' -   API\_CONFIGURATION\_ERROR
#' -   AUTHORIZER\_FAILURE
#' -   AUTHORIZER\_CONFIGURATION\_ERROR
#' -   BAD\_REQUEST\_PARAMETERS
#' -   BAD\_REQUEST\_BODY
#' -   DEFAULT\_4XX
#' -   DEFAULT\_5XX
#' -   EXPIRED\_TOKEN
#' -   INVALID\_SIGNATURE
#' -   INTEGRATION\_FAILURE
#' -   INTEGRATION\_TIMEOUT
#' -   INVALID\_API\_KEY
#' -   MISSING\_AUTHENTICATION\_TOKEN
#' -   QUOTA\_EXCEEDED
#' -   REQUEST\_TOO\_LARGE
#' -   RESOURCE\_NOT\_FOUND
#' -   THROTTLED
#' -   UNAUTHORIZED
#' -   UNSUPPORTED\_MEDIA\_TYPE
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_gateway_response <- function (restApiId, responseType, 
    patchOperations = NULL) 
{
    op <- Operation(name = "UpdateGatewayResponse", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/gatewayresponses/{response_type}", 
        paginator = list())
    input <- update_gateway_response_input(restApiId = restApiId, 
        responseType = responseType, patchOperations = patchOperations)
    output <- update_gateway_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents an update integration
#'
#' Represents an update integration.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Represents an update integration request\'s resource identifier.
#' @param httpMethod &#91;Required&#93; Represents an update integration request\'s HTTP method.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_integration <- function (restApiId, resourceId, httpMethod, 
    patchOperations = NULL) 
{
    op <- Operation(name = "UpdateIntegration", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration", 
        paginator = list())
    input <- update_integration_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, patchOperations = patchOperations)
    output <- update_integration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents an update integration response
#'
#' Represents an update integration response.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; Specifies an update integration response request\'s resource identifier.
#' @param httpMethod &#91;Required&#93; Specifies an update integration response request\'s HTTP method.
#' @param statusCode &#91;Required&#93; Specifies an update integration response request\'s status code.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_integration_response <- function (restApiId, resourceId, 
    httpMethod, statusCode, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateIntegrationResponse", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}", 
        paginator = list())
    input <- update_integration_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode, 
        patchOperations = patchOperations)
    output <- update_integration_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing Method resource
#'
#' Updates an existing Method resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the Method resource.
#' @param httpMethod &#91;Required&#93; The HTTP verb of the Method resource.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_method <- function (restApiId, resourceId, httpMethod, 
    patchOperations = NULL) 
{
    op <- Operation(name = "UpdateMethod", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}", 
        paginator = list())
    input <- update_method_input(restApiId = restApiId, resourceId = resourceId, 
        httpMethod = httpMethod, patchOperations = patchOperations)
    output <- update_method_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing MethodResponse resource
#'
#' Updates an existing MethodResponse resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The Resource identifier for the MethodResponse resource.
#' @param httpMethod &#91;Required&#93; The HTTP verb of the Method resource.
#' @param statusCode &#91;Required&#93; The status code for the MethodResponse resource.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_method_response <- function (restApiId, resourceId, httpMethod, 
    statusCode, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateMethodResponse", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}", 
        paginator = list())
    input <- update_method_response_input(restApiId = restApiId, 
        resourceId = resourceId, httpMethod = httpMethod, statusCode = statusCode, 
        patchOperations = patchOperations)
    output <- update_method_response_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about a model
#'
#' Changes information about a model.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param modelName &#91;Required&#93; The name of the model to update.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_model <- function (restApiId, modelName, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateModel", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/models/{model_name}", 
        paginator = list())
    input <- update_model_input(restApiId = restApiId, modelName = modelName, 
        patchOperations = patchOperations)
    output <- update_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a RequestValidator of a given RestApi
#'
#' Updates a RequestValidator of a given RestApi.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param requestValidatorId &#91;Required&#93; The identifier of RequestValidator to be updated.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_request_validator <- function (restApiId, requestValidatorId, 
    patchOperations = NULL) 
{
    op <- Operation(name = "UpdateRequestValidator", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}", 
        paginator = list())
    input <- update_request_validator_input(restApiId = restApiId, 
        requestValidatorId = requestValidatorId, patchOperations = patchOperations)
    output <- update_request_validator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about a Resource resource
#'
#' Changes information about a Resource resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param resourceId &#91;Required&#93; The identifier of the Resource resource.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_resource <- function (restApiId, resourceId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateResource", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/resources/{resource_id}", 
        paginator = list())
    input <- update_resource_input(restApiId = restApiId, resourceId = resourceId, 
        patchOperations = patchOperations)
    output <- update_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about the specified API
#'
#' Changes information about the specified API.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_rest_api <- function (restApiId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateRestApi", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}", paginator = list())
    input <- update_rest_api_input(restApiId = restApiId, patchOperations = patchOperations)
    output <- update_rest_api_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes information about a Stage resource
#'
#' Changes information about a Stage resource.
#'
#' @param restApiId &#91;Required&#93; The string identifier of the associated RestApi.
#' @param stageName &#91;Required&#93; The name of the Stage resource to change information about.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_stage <- function (restApiId, stageName, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateStage", http_method = "PATCH", 
        http_path = "/restapis/{restapi_id}/stages/{stage_name}", 
        paginator = list())
    input <- update_stage_input(restApiId = restApiId, stageName = stageName, 
        patchOperations = patchOperations)
    output <- update_stage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key
#'
#' Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the usage plan associated with the usage data.
#' @param keyId &#91;Required&#93; The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_usage <- function (usagePlanId, keyId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateUsage", http_method = "PATCH", 
        http_path = "/usageplans/{usageplanId}/keys/{keyId}/usage", 
        paginator = list())
    input <- update_usage_input(usagePlanId = usagePlanId, keyId = keyId, 
        patchOperations = patchOperations)
    output <- update_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a usage plan of a given plan Id
#'
#' Updates a usage plan of a given plan Id.
#'
#' @param usagePlanId &#91;Required&#93; The Id of the to-be-updated usage plan.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_usage_plan <- function (usagePlanId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateUsagePlan", http_method = "PATCH", 
        http_path = "/usageplans/{usageplanId}", paginator = list())
    input <- update_usage_plan_input(usagePlanId = usagePlanId, 
        patchOperations = patchOperations)
    output <- update_usage_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing VpcLink of a specified identifier
#'
#' Updates an existing VpcLink of a specified identifier.
#'
#' @param vpcLinkId &#91;Required&#93; The identifier of the VpcLink. It is used in an Integration to reference this VpcLink.
#' @param patchOperations A list of update operations to be applied to the specified resource and in the order specified in this list.
#'
#' @examples
#'
#' @export
update_vpc_link <- function (vpcLinkId, patchOperations = NULL) 
{
    op <- Operation(name = "UpdateVpcLink", http_method = "PATCH", 
        http_path = "/vpclinks/{vpclink_id}", paginator = list())
    input <- update_vpc_link_input(vpcLinkId = vpcLinkId, patchOperations = patchOperations)
    output <- update_vpc_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
