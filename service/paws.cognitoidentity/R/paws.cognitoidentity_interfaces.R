create_identity_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolName = structure(logical(0), 
        shape = "IdentityPoolName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w ]+"), AllowUnauthenticatedIdentities = structure(logical(0), 
        shape = "IdentityPoolUnauthenticated", type = "boolean"), 
        SupportedLoginProviders = structure(list(structure(logical(0), 
            shape = "IdentityProviderId", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w.;_/-]+")), shape = "IdentityProviders", 
            type = "map", max = 10L), DeveloperProviderName = structure(logical(0), 
            shape = "DeveloperProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._-]+"), OpenIdConnectProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "OIDCProviderList", type = "list"), 
        CognitoIdentityProviders = structure(list(structure(list(ProviderName = structure(logical(0), 
            shape = "CognitoIdentityProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._:/-]+"), ClientId = structure(logical(0), 
            shape = "CognitoIdentityProviderClientId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w_]+"), ServerSideTokenCheck = structure(logical(0), 
            shape = "CognitoIdentityProviderTokenCheck", box = TRUE, 
            type = "boolean")), shape = "CognitoIdentityProvider", 
            type = "structure")), shape = "CognitoIdentityProviderList", 
            type = "list"), SamlProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "SAMLProviderList", type = "list")), 
        shape = "CreateIdentityPoolInput", type = "structure")
    return(populate(args, shape))
}

create_identity_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolName = structure(logical(0), 
        shape = "IdentityPoolName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w ]+"), AllowUnauthenticatedIdentities = structure(logical(0), 
        shape = "IdentityPoolUnauthenticated", type = "boolean"), 
        SupportedLoginProviders = structure(list(structure(logical(0), 
            shape = "IdentityProviderId", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w.;_/-]+")), shape = "IdentityProviders", 
            type = "map", max = 10L), DeveloperProviderName = structure(logical(0), 
            shape = "DeveloperProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._-]+"), OpenIdConnectProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "OIDCProviderList", type = "list"), 
        CognitoIdentityProviders = structure(list(structure(list(ProviderName = structure(logical(0), 
            shape = "CognitoIdentityProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._:/-]+"), ClientId = structure(logical(0), 
            shape = "CognitoIdentityProviderClientId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w_]+"), ServerSideTokenCheck = structure(logical(0), 
            shape = "CognitoIdentityProviderTokenCheck", box = TRUE, 
            type = "boolean")), shape = "CognitoIdentityProvider", 
            type = "structure")), shape = "CognitoIdentityProviderList", 
            type = "list"), SamlProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "SAMLProviderList", type = "list")), 
        shape = "IdentityPool", type = "structure")
    return(populate(args, shape))
}

delete_identities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityIdsToDelete = structure(list(structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+")), shape = "IdentityIdList", 
        type = "list", max = 60L, min = 1L)), shape = "DeleteIdentitiesInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_identities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedIdentityIds = structure(list(structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string")), shape = "UnprocessedIdentityId", 
        type = "structure")), shape = "UnprocessedIdentityIdList", 
        type = "list", max = 60L)), shape = "DeleteIdentitiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_identity_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+")), shape = "DeleteIdentityPoolInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_identity_pool_output <- function () 
{
    return(list())
}

describe_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+")), shape = "DescribeIdentityInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderName", type = "string", max = 128L, 
        min = 1L)), shape = "LoginsList", type = "list"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "IdentityDescription", 
        type = "structure")
    return(populate(args, shape))
}

describe_identity_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+")), shape = "DescribeIdentityPoolInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_identity_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolName = structure(logical(0), 
        shape = "IdentityPoolName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w ]+"), AllowUnauthenticatedIdentities = structure(logical(0), 
        shape = "IdentityPoolUnauthenticated", type = "boolean"), 
        SupportedLoginProviders = structure(list(structure(logical(0), 
            shape = "IdentityProviderId", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w.;_/-]+")), shape = "IdentityProviders", 
            type = "map", max = 10L), DeveloperProviderName = structure(logical(0), 
            shape = "DeveloperProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._-]+"), OpenIdConnectProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "OIDCProviderList", type = "list"), 
        CognitoIdentityProviders = structure(list(structure(list(ProviderName = structure(logical(0), 
            shape = "CognitoIdentityProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._:/-]+"), ClientId = structure(logical(0), 
            shape = "CognitoIdentityProviderClientId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w_]+"), ServerSideTokenCheck = structure(logical(0), 
            shape = "CognitoIdentityProviderTokenCheck", box = TRUE, 
            type = "boolean")), shape = "CognitoIdentityProvider", 
            type = "structure")), shape = "CognitoIdentityProviderList", 
            type = "list"), SamlProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "SAMLProviderList", type = "list")), 
        shape = "IdentityPool", type = "structure")
    return(populate(args, shape))
}

get_credentials_for_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderToken", type = "string", max = 50000L, 
        min = 1L)), shape = "LoginsMap", type = "map", max = 10L), 
        CustomRoleArn = structure(logical(0), shape = "ARNString", 
            type = "string", max = 2048L, min = 20L)), shape = "GetCredentialsForIdentityInput", 
        type = "structure")
    return(populate(args, shape))
}

get_credentials_for_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Credentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "AccessKeyString", type = "string"), SecretKey = structure(logical(0), 
        shape = "SecretKeyString", type = "string"), SessionToken = structure(logical(0), 
        shape = "SessionTokenString", type = "string"), Expiration = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "Credentials", 
        type = "structure")), shape = "GetCredentialsForIdentityResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_id_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", max = 15L, min = 1L, 
        pattern = "\\d+"), IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderToken", type = "string", max = 50000L, 
        min = 1L)), shape = "LoginsMap", type = "map", max = 10L)), 
        shape = "GetIdInput", type = "structure")
    return(populate(args, shape))
}

get_id_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+")), shape = "GetIdResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_pool_roles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+")), shape = "GetIdentityPoolRolesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_pool_roles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), Roles = structure(list(structure(logical(0), 
        shape = "ARNString", type = "string", max = 2048L, min = 20L)), 
        shape = "RolesMap", type = "map", max = 2L), RoleMappings = structure(list(structure(list(Type = structure(logical(0), 
        shape = "RoleMappingType", type = "string"), AmbiguousRoleResolution = structure(logical(0), 
        shape = "AmbiguousRoleResolutionType", type = "string"), 
        RulesConfiguration = structure(list(Rules = structure(list(structure(list(Claim = structure(logical(0), 
            shape = "ClaimName", type = "string", max = 64L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
            MatchType = structure(logical(0), shape = "MappingRuleMatchType", 
                type = "string"), Value = structure(logical(0), 
                shape = "ClaimValue", type = "string", max = 128L, 
                min = 1L), RoleARN = structure(logical(0), shape = "ARNString", 
                type = "string", max = 2048L, min = 20L)), shape = "MappingRule", 
            type = "structure")), shape = "MappingRulesList", 
            type = "list", max = 25L, min = 1L)), shape = "RulesConfigurationType", 
            type = "structure")), shape = "RoleMapping", type = "structure")), 
        shape = "RoleMappingMap", type = "map", max = 10L)), 
        shape = "GetIdentityPoolRolesResponse", type = "structure")
    return(populate(args, shape))
}

get_open_id_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderToken", type = "string", max = 50000L, 
        min = 1L)), shape = "LoginsMap", type = "map", max = 10L)), 
        shape = "GetOpenIdTokenInput", type = "structure")
    return(populate(args, shape))
}

get_open_id_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Token = structure(logical(0), 
        shape = "OIDCToken", type = "string")), shape = "GetOpenIdTokenResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_open_id_token_for_developer_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderToken", type = "string", max = 50000L, 
        min = 1L)), shape = "LoginsMap", type = "map", max = 10L), 
        TokenDuration = structure(logical(0), shape = "TokenDuration", 
            type = "long", max = 86400L, min = 1L)), shape = "GetOpenIdTokenForDeveloperIdentityInput", 
        type = "structure")
    return(populate(args, shape))
}

get_open_id_token_for_developer_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Token = structure(logical(0), 
        shape = "OIDCToken", type = "string")), shape = "GetOpenIdTokenForDeveloperIdentityResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_identities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), MaxResults = structure(logical(0), 
        shape = "QueryLimit", type = "integer", max = 60L, min = 1L), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+"), HideDisabled = structure(logical(0), 
            shape = "HideDisabled", type = "boolean")), shape = "ListIdentitiesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_identities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), Identities = structure(list(structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderName", type = "string", max = 128L, 
        min = 1L)), shape = "LoginsList", type = "list"), CreationDate = structure(logical(0), 
        shape = "DateType", type = "timestamp"), LastModifiedDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "IdentityDescription", 
        type = "structure")), shape = "IdentitiesList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListIdentitiesResponse", type = "structure")
    return(populate(args, shape))
}

list_identity_pools_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "QueryLimit", type = "integer", max = 60L, min = 1L), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListIdentityPoolsInput", type = "structure")
    return(populate(args, shape))
}

list_identity_pools_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPools = structure(list(structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolName = structure(logical(0), 
        shape = "IdentityPoolName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w ]+")), shape = "IdentityPoolShortDescription", 
        type = "structure")), shape = "IdentityPoolsList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "ListIdentityPoolsResponse", type = "structure")
    return(populate(args, shape))
}

lookup_developer_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), DeveloperUserIdentifier = structure(logical(0), 
        shape = "DeveloperUserIdentifier", type = "string", max = 1024L, 
        min = 1L), MaxResults = structure(logical(0), shape = "QueryLimit", 
        type = "integer", max = 60L, min = 1L), NextToken = structure(logical(0), 
        shape = "PaginationKey", type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "LookupDeveloperIdentityInput", type = "structure")
    return(populate(args, shape))
}

lookup_developer_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), DeveloperUserIdentifierList = structure(list(structure(logical(0), 
        shape = "DeveloperUserIdentifier", type = "string", max = 1024L, 
        min = 1L)), shape = "DeveloperUserIdentifierList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationKey", 
            type = "string", min = 1L, pattern = "[\\S]+")), 
        shape = "LookupDeveloperIdentityResponse", type = "structure")
    return(populate(args, shape))
}

merge_developer_identities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceUserIdentifier = structure(logical(0), 
        shape = "DeveloperUserIdentifier", type = "string", max = 1024L, 
        min = 1L), DestinationUserIdentifier = structure(logical(0), 
        shape = "DeveloperUserIdentifier", type = "string", max = 1024L, 
        min = 1L), DeveloperProviderName = structure(logical(0), 
        shape = "DeveloperProviderName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w._-]+"), IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+")), shape = "MergeDeveloperIdentitiesInput", 
        type = "structure")
    return(populate(args, shape))
}

merge_developer_identities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+")), shape = "MergeDeveloperIdentitiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_pool_roles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), Roles = structure(list(structure(logical(0), 
        shape = "ARNString", type = "string", max = 2048L, min = 20L)), 
        shape = "RolesMap", type = "map", max = 2L), RoleMappings = structure(list(structure(list(Type = structure(logical(0), 
        shape = "RoleMappingType", type = "string"), AmbiguousRoleResolution = structure(logical(0), 
        shape = "AmbiguousRoleResolutionType", type = "string"), 
        RulesConfiguration = structure(list(Rules = structure(list(structure(list(Claim = structure(logical(0), 
            shape = "ClaimName", type = "string", max = 64L, 
            min = 1L, pattern = "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+"), 
            MatchType = structure(logical(0), shape = "MappingRuleMatchType", 
                type = "string"), Value = structure(logical(0), 
                shape = "ClaimValue", type = "string", max = 128L, 
                min = 1L), RoleARN = structure(logical(0), shape = "ARNString", 
                type = "string", max = 2048L, min = 20L)), shape = "MappingRule", 
            type = "structure")), shape = "MappingRulesList", 
            type = "list", max = 25L, min = 1L)), shape = "RulesConfigurationType", 
            type = "structure")), shape = "RoleMapping", type = "structure")), 
        shape = "RoleMappingMap", type = "map", max = 10L)), 
        shape = "SetIdentityPoolRolesInput", type = "structure")
    return(populate(args, shape))
}

set_identity_pool_roles_output <- function () 
{
    return(list())
}

unlink_developer_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), DeveloperProviderName = structure(logical(0), 
        shape = "DeveloperProviderName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w._-]+"), DeveloperUserIdentifier = structure(logical(0), 
        shape = "DeveloperUserIdentifier", type = "string", max = 1024L, 
        min = 1L)), shape = "UnlinkDeveloperIdentityInput", type = "structure")
    return(populate(args, shape))
}

unlink_developer_identity_output <- function () 
{
    return(list())
}

unlink_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", max = 55L, min = 1L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), Logins = structure(list(structure(logical(0), 
        shape = "IdentityProviderToken", type = "string", max = 50000L, 
        min = 1L)), shape = "LoginsMap", type = "map", max = 10L), 
        LoginsToRemove = structure(list(structure(logical(0), 
            shape = "IdentityProviderName", type = "string", 
            max = 128L, min = 1L)), shape = "LoginsList", type = "list")), 
        shape = "UnlinkIdentityInput", type = "structure")
    return(populate(args, shape))
}

unlink_identity_output <- function () 
{
    return(list())
}

update_identity_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolName = structure(logical(0), 
        shape = "IdentityPoolName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w ]+"), AllowUnauthenticatedIdentities = structure(logical(0), 
        shape = "IdentityPoolUnauthenticated", type = "boolean"), 
        SupportedLoginProviders = structure(list(structure(logical(0), 
            shape = "IdentityProviderId", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w.;_/-]+")), shape = "IdentityProviders", 
            type = "map", max = 10L), DeveloperProviderName = structure(logical(0), 
            shape = "DeveloperProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._-]+"), OpenIdConnectProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "OIDCProviderList", type = "list"), 
        CognitoIdentityProviders = structure(list(structure(list(ProviderName = structure(logical(0), 
            shape = "CognitoIdentityProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._:/-]+"), ClientId = structure(logical(0), 
            shape = "CognitoIdentityProviderClientId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w_]+"), ServerSideTokenCheck = structure(logical(0), 
            shape = "CognitoIdentityProviderTokenCheck", box = TRUE, 
            type = "boolean")), shape = "CognitoIdentityProvider", 
            type = "structure")), shape = "CognitoIdentityProviderList", 
            type = "list"), SamlProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "SAMLProviderList", type = "list")), 
        shape = "IdentityPool", type = "structure")
    return(populate(args, shape))
}

update_identity_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", max = 55L, 
        min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolName = structure(logical(0), 
        shape = "IdentityPoolName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w ]+"), AllowUnauthenticatedIdentities = structure(logical(0), 
        shape = "IdentityPoolUnauthenticated", type = "boolean"), 
        SupportedLoginProviders = structure(list(structure(logical(0), 
            shape = "IdentityProviderId", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w.;_/-]+")), shape = "IdentityProviders", 
            type = "map", max = 10L), DeveloperProviderName = structure(logical(0), 
            shape = "DeveloperProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._-]+"), OpenIdConnectProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "OIDCProviderList", type = "list"), 
        CognitoIdentityProviders = structure(list(structure(list(ProviderName = structure(logical(0), 
            shape = "CognitoIdentityProviderName", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w._:/-]+"), ClientId = structure(logical(0), 
            shape = "CognitoIdentityProviderClientId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w_]+"), ServerSideTokenCheck = structure(logical(0), 
            shape = "CognitoIdentityProviderTokenCheck", box = TRUE, 
            type = "boolean")), shape = "CognitoIdentityProvider", 
            type = "structure")), shape = "CognitoIdentityProviderList", 
            type = "list"), SamlProviderARNs = structure(list(structure(logical(0), 
            shape = "ARNString", type = "string", max = 2048L, 
            min = 20L)), shape = "SAMLProviderList", type = "list")), 
        shape = "IdentityPool", type = "structure")
    return(populate(args, shape))
}
