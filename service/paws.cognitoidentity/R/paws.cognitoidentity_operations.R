#' Creates a new identity pool
#'
#' Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for `SupportedLoginProviders` are as follows:
#' 
#' -   Facebook: `graph.facebook.com`
#' 
#' -   Google: `accounts.google.com`
#' 
#' -   Amazon: `www.amazon.com`
#' 
#' -   Twitter: `api.twitter.com`
#' 
#' -   Digits: `www.digits.com`
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolName A string that you provide.
#' @param AllowUnauthenticatedIdentities TRUE if the identity pool supports unauthenticated logins.
#' @param SupportedLoginProviders Optional key:value pairs mapping provider names to provider app IDs.
#' @param DeveloperProviderName The \"domain\" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the `DeveloperProviderName`, you can use letters as well as period (`.`), underscore (`_`), and dash (`-`).
#' 
#' Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.
#' @param OpenIdConnectProviderARNs A list of OpendID Connect provider ARNs.
#' @param CognitoIdentityProviders An array of Amazon Cognito Identity user pools and their client IDs.
#' @param SamlProviderARNs An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
#'
#' @examples
#'
#' @export
create_identity_pool <- function (IdentityPoolName, AllowUnauthenticatedIdentities, 
    SupportedLoginProviders = NULL, DeveloperProviderName = NULL, 
    OpenIdConnectProviderARNs = NULL, CognitoIdentityProviders = NULL, 
    SamlProviderARNs = NULL) 
{
    op <- Operation(name = "CreateIdentityPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_identity_pool_input(IdentityPoolName = IdentityPoolName, 
        AllowUnauthenticatedIdentities = AllowUnauthenticatedIdentities, 
        SupportedLoginProviders = SupportedLoginProviders, DeveloperProviderName = DeveloperProviderName, 
        OpenIdConnectProviderARNs = OpenIdConnectProviderARNs, 
        CognitoIdentityProviders = CognitoIdentityProviders, 
        SamlProviderARNs = SamlProviderARNs)
    output <- create_identity_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes identities from an identity pool
#'
#' Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityIdsToDelete A list of 1-60 identities that you want to delete.
#'
#' @examples
#'
#' @export
delete_identities <- function (IdentityIdsToDelete) 
{
    op <- Operation(name = "DeleteIdentities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_identities_input(IdentityIdsToDelete = IdentityIdsToDelete)
    output <- delete_identities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a user pool
#'
#' Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#'
#' @examples
#'
#' @export
delete_identity_pool <- function (IdentityPoolId) 
{
    op <- Operation(name = "DeleteIdentityPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_identity_pool_input(IdentityPoolId = IdentityPoolId)
    output <- delete_identity_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns metadata related to the given identity, including when the identity was created and any associated linked logins
#'
#' Returns metadata related to the given identity, including when the identity was created and any associated linked logins.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityId A unique identifier in the format REGION:GUID.
#'
#' @examples
#'
#' @export
describe_identity <- function (IdentityId) 
{
    op <- Operation(name = "DescribeIdentity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_identity_input(IdentityId = IdentityId)
    output <- describe_identity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users
#'
#' Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#'
#' @examples
#'
#' @export
describe_identity_pool <- function (IdentityPoolId) 
{
    op <- Operation(name = "DescribeIdentityPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_identity_pool_input(IdentityPoolId = IdentityPoolId)
    output <- describe_identity_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns credentials for the provided identity ID
#'
#' Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.
#' 
#' This is a public API. You do not need any credentials to call this API.
#'
#' @param IdentityId A unique identifier in the format REGION:GUID.
#' @param Logins A set of optional name-value pairs that map provider names to provider tokens.
#' @param CustomRoleArn The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.
#'
#' @examples
#'
#' @export
get_credentials_for_identity <- function (IdentityId, Logins = NULL, 
    CustomRoleArn = NULL) 
{
    op <- Operation(name = "GetCredentialsForIdentity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_credentials_for_identity_input(IdentityId = IdentityId, 
        Logins = Logins, CustomRoleArn = CustomRoleArn)
    output <- get_credentials_for_identity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates (or retrieves) a Cognito ID
#'
#' Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.
#' 
#' This is a public API. You do not need any credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param AccountId A standard AWS account ID (9+ digits).
#' @param Logins A set of optional name-value pairs that map provider names to provider tokens. The available provider names for `Logins` are as follows:
#' 
#' -   Facebook: `graph.facebook.com`
#' 
#' -   Amazon Cognito Identity Provider: `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`
#' 
#' -   Google: `accounts.google.com`
#' 
#' -   Amazon: `www.amazon.com`
#' 
#' -   Twitter: `api.twitter.com`
#' 
#' -   Digits: `www.digits.com`
#'
#' @examples
#'
#' @export
get_id <- function (IdentityPoolId, AccountId = NULL, Logins = NULL) 
{
    op <- Operation(name = "GetId", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_id_input(IdentityPoolId = IdentityPoolId, AccountId = AccountId, 
        Logins = Logins)
    output <- get_id_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the roles for an identity pool
#'
#' Gets the roles for an identity pool.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#'
#' @examples
#'
#' @export
get_identity_pool_roles <- function (IdentityPoolId) 
{
    op <- Operation(name = "GetIdentityPoolRoles", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_identity_pool_roles_input(IdentityPoolId = IdentityPoolId)
    output <- get_identity_pool_roles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets an OpenID token, using a known Cognito ID
#'
#' Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by GetId. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.
#' 
#' The OpenId token is valid for 15 minutes.
#' 
#' This is a public API. You do not need any credentials to call this API.
#'
#' @param IdentityId A unique identifier in the format REGION:GUID.
#' @param Logins A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access\_token returned from the provider\'s authflow. For accounts.google.com, an Amazon Cognito Identity Provider, or any other OpenId Connect provider, always include the `id_token`.
#'
#' @examples
#'
#' @export
get_open_id_token <- function (IdentityId, Logins = NULL) 
{
    op <- Operation(name = "GetOpenIdToken", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_open_id_token_input(IdentityId = IdentityId, 
        Logins = Logins)
    output <- get_open_id_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect token for a user authenticated by your backend authentication process
#'
#' Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the `Logins` map, which is linked to the identity pool. The developer provider is the \"domain\" by which Cognito will refer to your users.
#' 
#' You can use `GetOpenIdTokenForDeveloperIdentity` to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the `IdentityId` should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing `IdentityId`. This API will create the identity in the specified `IdentityPoolId`.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param Logins A set of optional name-value pairs that map provider names to provider tokens. Each name-value pair represents a user from a public provider or developer provider. If the user is from a developer provider, the name-value pair will follow the syntax `"developer_provider_name": "developer_user_identifier"`. The developer provider is the \"domain\" by which Cognito will refer to your users; you provided this domain while creating/updating the identity pool. The developer user identifier is an identifier from your backend that uniquely identifies a user. When you create an identity pool, you can specify the supported logins.
#' @param IdentityId A unique identifier in the format REGION:GUID.
#' @param TokenDuration The expiration time of the token, in seconds. You can specify a custom expiration time for the token so that you can cache it. If you don\'t provide an expiration time, the token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token\'s duration.
#'
#' @examples
#'
#' @export
get_open_id_token_for_developer_identity <- function (IdentityPoolId, 
    Logins, IdentityId = NULL, TokenDuration = NULL) 
{
    op <- Operation(name = "GetOpenIdTokenForDeveloperIdentity", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_open_id_token_for_developer_identity_input(IdentityPoolId = IdentityPoolId, 
        Logins = Logins, IdentityId = IdentityId, TokenDuration = TokenDuration)
    output <- get_open_id_token_for_developer_identity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the identities in a pool
#'
#' Lists the identities in a pool.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param MaxResults The maximum number of identities to return.
#' @param NextToken A pagination token.
#' @param HideDisabled An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.
#'
#' @examples
#'
#' @export
list_identities <- function (IdentityPoolId, MaxResults, NextToken = NULL, 
    HideDisabled = NULL) 
{
    op <- Operation(name = "ListIdentities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_identities_input(IdentityPoolId = IdentityPoolId, 
        MaxResults = MaxResults, NextToken = NextToken, HideDisabled = HideDisabled)
    output <- list_identities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all of the Cognito identity pools registered for your account
#'
#' Lists all of the Cognito identity pools registered for your account.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param MaxResults The maximum number of identities to return.
#' @param NextToken A pagination token.
#'
#' @examples
#'
#' @export
list_identity_pools <- function (MaxResults, NextToken = NULL) 
{
    op <- Operation(name = "ListIdentityPools", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_identity_pools_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_identity_pools_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier` or the list of `DeveloperUserIdentifier`s associated with an `IdentityId` for an existing identity
#'
#' Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier` or the list of `DeveloperUserIdentifier`s associated with an `IdentityId` for an existing identity. Either `IdentityID` or `DeveloperUserIdentifier` must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, `DeveloperUserIdentifier` will be matched against `IdentityID`. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a `ResourceConflictException` is thrown.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param IdentityId A unique identifier in the format REGION:GUID.
#' @param DeveloperUserIdentifier A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.
#' @param MaxResults The maximum number of identities to return.
#' @param NextToken A pagination token. The first call you make will have `NextToken` set to null. After that the service will return `NextToken` values as needed. For example, let\'s say you make a request with `MaxResults` set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
#'
#' @examples
#'
#' @export
lookup_developer_identity <- function (IdentityPoolId, IdentityId = NULL, 
    DeveloperUserIdentifier = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "LookupDeveloperIdentity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- lookup_developer_identity_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DeveloperUserIdentifier = DeveloperUserIdentifier, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- lookup_developer_identity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Merges two users having different `IdentityId`s, existing in the same identity pool, and identified by the same developer provider
#'
#' Merges two users having different `IdentityId`s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (`SourceUserIdentifier`) with the `IdentityId` of the `DestinationUserIdentifier`. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param SourceUserIdentifier User identifier for the source user. The value should be a `DeveloperUserIdentifier`.
#' @param DestinationUserIdentifier User identifier for the destination user. The value should be a `DeveloperUserIdentifier`.
#' @param DeveloperProviderName The \"domain\" by which Cognito will refer to your users. This is a (pseudo) domain name that you provide while creating an identity pool. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the `DeveloperProviderName`, you can use letters as well as period (.), underscore (\_), and dash (-).
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#'
#' @examples
#'
#' @export
merge_developer_identities <- function (SourceUserIdentifier, 
    DestinationUserIdentifier, DeveloperProviderName, IdentityPoolId) 
{
    op <- Operation(name = "MergeDeveloperIdentities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- merge_developer_identities_input(SourceUserIdentifier = SourceUserIdentifier, 
        DestinationUserIdentifier = DestinationUserIdentifier, 
        DeveloperProviderName = DeveloperProviderName, IdentityPoolId = IdentityPoolId)
    output <- merge_developer_identities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the roles for an identity pool
#'
#' Sets the roles for an identity pool. These roles are used when making calls to GetCredentialsForIdentity action.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param Roles The map of roles associated with this pool. For a given role, the key will be either \"authenticated\" or \"unauthenticated\" and the value will be the Role ARN.
#' @param RoleMappings How users for a specific identity provider are to mapped to roles. This is a string to RoleMapping object map. The string identifies the identity provider, for example, \"graph.facebook.com\" or \"cognito-idp-east-1.amazonaws.com/us-east-1\_abcdefghi:app\_client\_id\".
#' 
#' Up to 25 rules can be specified per identity provider.
#'
#' @examples
#'
#' @export
set_identity_pool_roles <- function (IdentityPoolId, Roles, RoleMappings = NULL) 
{
    op <- Operation(name = "SetIdentityPoolRoles", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_identity_pool_roles_input(IdentityPoolId = IdentityPoolId, 
        Roles = Roles, RoleMappings = RoleMappings)
    output <- set_identity_pool_roles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unlinks a `DeveloperUserIdentifier` from an existing identity
#'
#' Unlinks a `DeveloperUserIdentifier` from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityId A unique identifier in the format REGION:GUID.
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param DeveloperProviderName The \"domain\" by which Cognito will refer to your users.
#' @param DeveloperUserIdentifier A unique ID used by your backend authentication process to identify a user.
#'
#' @examples
#'
#' @export
unlink_developer_identity <- function (IdentityId, IdentityPoolId, 
    DeveloperProviderName, DeveloperUserIdentifier) 
{
    op <- Operation(name = "UnlinkDeveloperIdentity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unlink_developer_identity_input(IdentityId = IdentityId, 
        IdentityPoolId = IdentityPoolId, DeveloperProviderName = DeveloperProviderName, 
        DeveloperUserIdentifier = DeveloperUserIdentifier)
    output <- unlink_developer_identity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unlinks a federated identity from an existing account
#'
#' Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.
#' 
#' This is a public API. You do not need any credentials to call this API.
#'
#' @param IdentityId A unique identifier in the format REGION:GUID.
#' @param Logins A set of optional name-value pairs that map provider names to provider tokens.
#' @param LoginsToRemove Provider names to unlink from this identity.
#'
#' @examples
#'
#' @export
unlink_identity <- function (IdentityId, Logins, LoginsToRemove) 
{
    op <- Operation(name = "UnlinkIdentity", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unlink_identity_input(IdentityId = IdentityId, Logins = Logins, 
        LoginsToRemove = LoginsToRemove)
    output <- unlink_identity_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a user pool
#'
#' Updates a user pool.
#' 
#' You must use AWS Developer credentials to call this API.
#'
#' @param IdentityPoolId An identity pool ID in the format REGION:GUID.
#' @param IdentityPoolName A string that you provide.
#' @param AllowUnauthenticatedIdentities TRUE if the identity pool supports unauthenticated logins.
#' @param SupportedLoginProviders Optional key:value pairs mapping provider names to provider app IDs.
#' @param DeveloperProviderName The \"domain\" by which Cognito will refer to your users.
#' @param OpenIdConnectProviderARNs A list of OpendID Connect provider ARNs.
#' @param CognitoIdentityProviders A list representing an Amazon Cognito Identity User Pool and its client ID.
#' @param SamlProviderARNs An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
#'
#' @examples
#'
#' @export
update_identity_pool <- function (IdentityPoolId, IdentityPoolName, 
    AllowUnauthenticatedIdentities, SupportedLoginProviders = NULL, 
    DeveloperProviderName = NULL, OpenIdConnectProviderARNs = NULL, 
    CognitoIdentityProviders = NULL, SamlProviderARNs = NULL) 
{
    op <- Operation(name = "UpdateIdentityPool", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_identity_pool_input(IdentityPoolId = IdentityPoolId, 
        IdentityPoolName = IdentityPoolName, AllowUnauthenticatedIdentities = AllowUnauthenticatedIdentities, 
        SupportedLoginProviders = SupportedLoginProviders, DeveloperProviderName = DeveloperProviderName, 
        OpenIdConnectProviderARNs = OpenIdConnectProviderARNs, 
        CognitoIdentityProviders = CognitoIdentityProviders, 
        SamlProviderARNs = SamlProviderARNs)
    output <- update_identity_pool_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
