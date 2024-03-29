# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include ssooidc_service.R
NULL

#' Creates and returns access and refresh tokens for clients that are
#' authenticated using client secrets
#'
#' @description
#' Creates and returns access and refresh tokens for clients that are
#' authenticated using client secrets. The access token can be used to
#' fetch short-term credentials for the assigned AWS accounts or to access
#' application APIs using `bearer` authentication.
#'
#' @usage
#' ssooidc_create_token(clientId, clientSecret, grantType, deviceCode,
#'   code, refreshToken, scope, redirectUri)
#'
#' @param clientId &#91;required&#93; The unique identifier string for the client or application. This value
#' comes from the result of the
#' [`register_client`][ssooidc_register_client] API.
#' @param clientSecret &#91;required&#93; A secret string generated for the client. This value should come from
#' the persisted result of the [`register_client`][ssooidc_register_client]
#' API.
#' @param grantType &#91;required&#93; Supports the following OAuth grant types: Device Code and Refresh Token.
#' Specify either of the following values, depending on the grant type that
#' you want:
#' 
#' * Device Code - `urn:ietf:params:oauth:grant-type:device_code`
#' 
#' * Refresh Token - `refresh_token`
#' 
#' For information about how to obtain the device code, see the
#' [`start_device_authorization`][ssooidc_start_device_authorization]
#' topic.
#' @param deviceCode Used only when calling this API for the Device Code grant type. This
#' short-term code is used to identify this authorization request. This
#' comes from the result of the
#' [`start_device_authorization`][ssooidc_start_device_authorization] API.
#' @param code Used only when calling this API for the Authorization Code grant type.
#' The short-term code is used to identify this authorization request. This
#' grant type is currently unsupported for the
#' [`create_token`][ssooidc_create_token] API.
#' @param refreshToken Used only when calling this API for the Refresh Token grant type. This
#' token is used to refresh short-term tokens, such as the access token,
#' that might expire.
#' 
#' For more information about the features and limitations of the current
#' IAM Identity Center OIDC implementation, see *Considerations for Using
#' this Guide* in the [IAM Identity Center OIDC API
#' Reference](https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html).
#' @param scope The list of scopes for which authorization is requested. The access
#' token that is issued is limited to the scopes that are granted. If this
#' value is not specified, IAM Identity Center authorizes all scopes that
#' are configured for the client during the call to
#' [`register_client`][ssooidc_register_client].
#' @param redirectUri Used only when calling this API for the Authorization Code grant type.
#' This value specifies the location of the client or application that has
#' registered to receive the authorization code.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   accessToken = "string",
#'   tokenType = "string",
#'   expiresIn = 123,
#'   refreshToken = "string",
#'   idToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_token(
#'   clientId = "string",
#'   clientSecret = "string",
#'   grantType = "string",
#'   deviceCode = "string",
#'   code = "string",
#'   refreshToken = "string",
#'   scope = list(
#'     "string"
#'   ),
#'   redirectUri = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # 
#' svc$create_token(
#'   clientId = "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
#'   clientSecret = "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
#'   deviceCode = "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzIn0EXAMPLEDEVICECODE",
#'   grantType = "urn:ietf:params:oauth:grant-type:device-code"
#' )
#' 
#' # 
#' svc$create_token(
#'   clientId = "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
#'   clientSecret = "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
#'   grantType = "refresh_token",
#'   refreshToken = "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7...",
#'   scope = list(
#'     "codewhisperer:completions"
#'   )
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname ssooidc_create_token
#'
#' @aliases ssooidc_create_token
ssooidc_create_token <- function(clientId, clientSecret, grantType, deviceCode = NULL, code = NULL, refreshToken = NULL, scope = NULL, redirectUri = NULL) {
  op <- new_operation(
    name = "CreateToken",
    http_method = "POST",
    http_path = "/token",
    paginator = list()
  )
  input <- .ssooidc$create_token_input(clientId = clientId, clientSecret = clientSecret, grantType = grantType, deviceCode = deviceCode, code = code, refreshToken = refreshToken, scope = scope, redirectUri = redirectUri)
  output <- .ssooidc$create_token_output()
  config <- get_config()
  svc <- .ssooidc$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ssooidc$operations$create_token <- ssooidc_create_token

#' Creates and returns access and refresh tokens for clients and
#' applications that are authenticated using IAM entities
#'
#' @description
#' Creates and returns access and refresh tokens for clients and
#' applications that are authenticated using IAM entities. The access token
#' can be used to fetch short-term credentials for the assigned AWS
#' accounts or to access application APIs using `bearer` authentication.
#'
#' @usage
#' ssooidc_create_token_with_iam(clientId, grantType, code, refreshToken,
#'   assertion, scope, redirectUri, subjectToken, subjectTokenType,
#'   requestedTokenType)
#'
#' @param clientId &#91;required&#93; The unique identifier string for the client or application. This value
#' is an application ARN that has OAuth grants configured.
#' @param grantType &#91;required&#93; Supports the following OAuth grant types: Authorization Code, Refresh
#' Token, JWT Bearer, and Token Exchange. Specify one of the following
#' values, depending on the grant type that you want:
#' 
#' * Authorization Code - `authorization_code`
#' 
#' * Refresh Token - `refresh_token`
#' 
#' * JWT Bearer - `urn:ietf:params:oauth:grant-type:jwt-bearer`
#' 
#' * Token Exchange - `urn:ietf:params:oauth:grant-type:token-exchange`
#' @param code Used only when calling this API for the Authorization Code grant type.
#' This short-term code is used to identify this authorization request. The
#' code is obtained through a redirect from IAM Identity Center to a
#' redirect URI persisted in the Authorization Code GrantOptions for the
#' application.
#' @param refreshToken Used only when calling this API for the Refresh Token grant type. This
#' token is used to refresh short-term tokens, such as the access token,
#' that might expire.
#' 
#' For more information about the features and limitations of the current
#' IAM Identity Center OIDC implementation, see *Considerations for Using
#' this Guide* in the [IAM Identity Center OIDC API
#' Reference](https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html).
#' @param assertion Used only when calling this API for the JWT Bearer grant type. This
#' value specifies the JSON Web Token (JWT) issued by a trusted token
#' issuer. To authorize a trusted token issuer, configure the JWT Bearer
#' GrantOptions for the application.
#' @param scope The list of scopes for which authorization is requested. The access
#' token that is issued is limited to the scopes that are granted. If the
#' value is not specified, IAM Identity Center authorizes all scopes
#' configured for the application, including the following default scopes:
#' `openid`, `aws`, `sts:identity_context`.
#' @param redirectUri Used only when calling this API for the Authorization Code grant type.
#' This value specifies the location of the client or application that has
#' registered to receive the authorization code.
#' @param subjectToken Used only when calling this API for the Token Exchange grant type. This
#' value specifies the subject of the exchange. The value of the subject
#' token must be an access token issued by IAM Identity Center to a
#' different client or application. The access token must have authorized
#' scopes that indicate the requested application as a target audience.
#' @param subjectTokenType Used only when calling this API for the Token Exchange grant type. This
#' value specifies the type of token that is passed as the subject of the
#' exchange. The following value is supported:
#' 
#' * Access Token - `urn:ietf:params:oauth:token-type:access_token`
#' @param requestedTokenType Used only when calling this API for the Token Exchange grant type. This
#' value specifies the type of token that the requester can receive. The
#' following values are supported:
#' 
#' * Access Token - `urn:ietf:params:oauth:token-type:access_token`
#' 
#' * Refresh Token - `urn:ietf:params:oauth:token-type:refresh_token`
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   accessToken = "string",
#'   tokenType = "string",
#'   expiresIn = 123,
#'   refreshToken = "string",
#'   idToken = "string",
#'   issuedTokenType = "string",
#'   scope = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_token_with_iam(
#'   clientId = "string",
#'   grantType = "string",
#'   code = "string",
#'   refreshToken = "string",
#'   assertion = "string",
#'   scope = list(
#'     "string"
#'   ),
#'   redirectUri = "string",
#'   subjectToken = "string",
#'   subjectTokenType = "string",
#'   requestedTokenType = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # 
#' svc$create_token_with_iam(
#'   clientId = "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
#'   code = "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzg0In0EXAMPLEAUTHCODE",
#'   grantType = "authorization_code",
#'   redirectUri = "https://mywebapp.example/redirect",
#'   scope = list(
#'     "openid",
#'     "aws",
#'     "sts:identity_context"
#'   )
#' )
#' 
#' # 
#' svc$create_token_with_iam(
#'   clientId = "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
#'   grantType = "refresh_token",
#'   refreshToken = "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7..."
#' )
#' 
#' # 
#' svc$create_token_with_iam(
#'   assertion = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IjFMVE16YWtpaGlS...",
#'   clientId = "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
#'   grantType = "urn:ietf:params:oauth:grant-type:jwt-bearer"
#' )
#' 
#' # 
#' svc$create_token_with_iam(
#'   clientId = "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
#'   grantType = "urn:ietf:params:oauth:grant-type:token-exchange",
#'   requestedTokenType = "urn:ietf:params:oauth:token-type:access_token",
#'   subjectToken = "aoak-Hig8TUDPNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh...",
#'   subjectTokenType = "urn:ietf:params:oauth:token-type:access_token"
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname ssooidc_create_token_with_iam
#'
#' @aliases ssooidc_create_token_with_iam
ssooidc_create_token_with_iam <- function(clientId, grantType, code = NULL, refreshToken = NULL, assertion = NULL, scope = NULL, redirectUri = NULL, subjectToken = NULL, subjectTokenType = NULL, requestedTokenType = NULL) {
  op <- new_operation(
    name = "CreateTokenWithIAM",
    http_method = "POST",
    http_path = "/token?aws_iam=t",
    paginator = list()
  )
  input <- .ssooidc$create_token_with_iam_input(clientId = clientId, grantType = grantType, code = code, refreshToken = refreshToken, assertion = assertion, scope = scope, redirectUri = redirectUri, subjectToken = subjectToken, subjectTokenType = subjectTokenType, requestedTokenType = requestedTokenType)
  output <- .ssooidc$create_token_with_iam_output()
  config <- get_config()
  svc <- .ssooidc$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ssooidc$operations$create_token_with_iam <- ssooidc_create_token_with_iam

#' Registers a client with IAM Identity Center
#'
#' @description
#' Registers a client with IAM Identity Center. This allows clients to
#' initiate device authorization. The output should be persisted for reuse
#' through many authentication requests.
#'
#' @usage
#' ssooidc_register_client(clientName, clientType, scopes)
#'
#' @param clientName &#91;required&#93; The friendly name of the client.
#' @param clientType &#91;required&#93; The type of client. The service supports only `public` as a client type.
#' Anything other than public will be rejected by the service.
#' @param scopes The list of scopes that are defined by the client. Upon authorization,
#' this list is used to restrict permissions when granting an access token.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   clientId = "string",
#'   clientSecret = "string",
#'   clientIdIssuedAt = 123,
#'   clientSecretExpiresAt = 123,
#'   authorizationEndpoint = "string",
#'   tokenEndpoint = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$register_client(
#'   clientName = "string",
#'   clientType = "string",
#'   scopes = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # 
#' svc$register_client(
#'   clientName = "My IDE Plugin",
#'   clientType = "public",
#'   scopes = list(
#'     "sso:account:access",
#'     "codewhisperer:completions"
#'   )
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname ssooidc_register_client
#'
#' @aliases ssooidc_register_client
ssooidc_register_client <- function(clientName, clientType, scopes = NULL) {
  op <- new_operation(
    name = "RegisterClient",
    http_method = "POST",
    http_path = "/client/register",
    paginator = list()
  )
  input <- .ssooidc$register_client_input(clientName = clientName, clientType = clientType, scopes = scopes)
  output <- .ssooidc$register_client_output()
  config <- get_config()
  svc <- .ssooidc$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ssooidc$operations$register_client <- ssooidc_register_client

#' Initiates device authorization by requesting a pair of verification
#' codes from the authorization service
#'
#' @description
#' Initiates device authorization by requesting a pair of verification
#' codes from the authorization service.
#'
#' @usage
#' ssooidc_start_device_authorization(clientId, clientSecret, startUrl)
#'
#' @param clientId &#91;required&#93; The unique identifier string for the client that is registered with IAM
#' Identity Center. This value should come from the persisted result of the
#' [`register_client`][ssooidc_register_client] API operation.
#' @param clientSecret &#91;required&#93; A secret string that is generated for the client. This value should come
#' from the persisted result of the
#' [`register_client`][ssooidc_register_client] API operation.
#' @param startUrl &#91;required&#93; The URL for the Amazon Web Services access portal. For more information,
#' see [Using the Amazon Web Services access
#' portal](https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html)
#' in the *IAM Identity Center User Guide*.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   deviceCode = "string",
#'   userCode = "string",
#'   verificationUri = "string",
#'   verificationUriComplete = "string",
#'   expiresIn = 123,
#'   interval = 123
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$start_device_authorization(
#'   clientId = "string",
#'   clientSecret = "string",
#'   startUrl = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # 
#' svc$start_device_authorization(
#'   clientId = "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
#'   clientSecret = "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
#'   startUrl = "https://identitycenter.amazonaws.com/ssoins-111111111111"
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname ssooidc_start_device_authorization
#'
#' @aliases ssooidc_start_device_authorization
ssooidc_start_device_authorization <- function(clientId, clientSecret, startUrl) {
  op <- new_operation(
    name = "StartDeviceAuthorization",
    http_method = "POST",
    http_path = "/device_authorization",
    paginator = list()
  )
  input <- .ssooidc$start_device_authorization_input(clientId = clientId, clientSecret = clientSecret, startUrl = startUrl)
  output <- .ssooidc$start_device_authorization_output()
  config <- get_config()
  svc <- .ssooidc$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ssooidc$operations$start_device_authorization <- ssooidc_start_device_authorization
