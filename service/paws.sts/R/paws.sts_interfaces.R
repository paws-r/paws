assume_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+"), 
        RoleSessionName = structure(logical(0), shape = "roleSessionNameType", 
            type = "string", max = 64L, min = 2L, pattern = "[\\w+=,.@-]*"), 
        Policy = structure(logical(0), shape = "sessionPolicyDocumentType", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        DurationSeconds = structure(logical(0), shape = "roleDurationSecondsType", 
            type = "integer", max = 43200L, min = 900L), ExternalId = structure(logical(0), 
            shape = "externalIdType", type = "string", max = 1224L, 
            min = 2L, pattern = "[\\w+=,.@:\\/-]*"), SerialNumber = structure(logical(0), 
            shape = "serialNumberType", type = "string", max = 256L, 
            min = 9L, pattern = "[\\w+=/:,.@-]*"), TokenCode = structure(logical(0), 
            shape = "tokenCodeType", type = "string", max = 6L, 
            min = 6L, pattern = "[\\d]*")), shape = "AssumeRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

assume_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]*"), SecretAccessKey = structure(logical(0), 
        shape = "accessKeySecretType", type = "string"), SessionToken = structure(logical(0), 
        shape = "tokenType", type = "string"), Expiration = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "Credentials", 
        type = "structure"), AssumedRoleUser = structure(list(AssumedRoleId = structure(logical(0), 
        shape = "assumedRoleIdType", type = "string", max = 193L, 
        min = 2L, pattern = "[\\w+=,.@:-]*"), Arn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+")), 
        shape = "AssumedRoleUser", type = "structure"), PackedPolicySize = structure(logical(0), 
        shape = "nonNegativeIntegerType", type = "integer", min = 0L)), 
        shape = "AssumeRoleResponse", type = "structure")
    return(populate(args, shape))
}

assume_role_with_saml_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+"), 
        PrincipalArn = structure(logical(0), shape = "arnType", 
            type = "string", max = 2048L, min = 20L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+"), 
        SAMLAssertion = structure(logical(0), shape = "SAMLAssertionType", 
            type = "string", max = 100000L, min = 4L), Policy = structure(logical(0), 
            shape = "sessionPolicyDocumentType", type = "string", 
            max = 2048L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        DurationSeconds = structure(logical(0), shape = "roleDurationSecondsType", 
            type = "integer", max = 43200L, min = 900L)), shape = "AssumeRoleWithSAMLRequest", 
        type = "structure")
    return(populate(args, shape))
}

assume_role_with_saml_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]*"), SecretAccessKey = structure(logical(0), 
        shape = "accessKeySecretType", type = "string"), SessionToken = structure(logical(0), 
        shape = "tokenType", type = "string"), Expiration = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "Credentials", 
        type = "structure"), AssumedRoleUser = structure(list(AssumedRoleId = structure(logical(0), 
        shape = "assumedRoleIdType", type = "string", max = 193L, 
        min = 2L, pattern = "[\\w+=,.@:-]*"), Arn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+")), 
        shape = "AssumedRoleUser", type = "structure"), PackedPolicySize = structure(logical(0), 
        shape = "nonNegativeIntegerType", type = "integer", min = 0L), 
        Subject = structure(logical(0), shape = "Subject", type = "string"), 
        SubjectType = structure(logical(0), shape = "SubjectType", 
            type = "string"), Issuer = structure(logical(0), 
            shape = "Issuer", type = "string"), Audience = structure(logical(0), 
            shape = "Audience", type = "string"), NameQualifier = structure(logical(0), 
            shape = "NameQualifier", type = "string")), shape = "AssumeRoleWithSAMLResponse", 
        type = "structure")
    return(populate(args, shape))
}

assume_role_with_web_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+"), 
        RoleSessionName = structure(logical(0), shape = "roleSessionNameType", 
            type = "string", max = 64L, min = 2L, pattern = "[\\w+=,.@-]*"), 
        WebIdentityToken = structure(logical(0), shape = "clientTokenType", 
            type = "string", max = 2048L, min = 4L), ProviderId = structure(logical(0), 
            shape = "urlType", type = "string", max = 2048L, 
            min = 4L), Policy = structure(logical(0), shape = "sessionPolicyDocumentType", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        DurationSeconds = structure(logical(0), shape = "roleDurationSecondsType", 
            type = "integer", max = 43200L, min = 900L)), shape = "AssumeRoleWithWebIdentityRequest", 
        type = "structure")
    return(populate(args, shape))
}

assume_role_with_web_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]*"), SecretAccessKey = structure(logical(0), 
        shape = "accessKeySecretType", type = "string"), SessionToken = structure(logical(0), 
        shape = "tokenType", type = "string"), Expiration = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "Credentials", 
        type = "structure"), SubjectFromWebIdentityToken = structure(logical(0), 
        shape = "webIdentitySubjectType", type = "string", max = 255L, 
        min = 6L), AssumedRoleUser = structure(list(AssumedRoleId = structure(logical(0), 
        shape = "assumedRoleIdType", type = "string", max = 193L, 
        min = 2L, pattern = "[\\w+=,.@:-]*"), Arn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+")), 
        shape = "AssumedRoleUser", type = "structure"), PackedPolicySize = structure(logical(0), 
        shape = "nonNegativeIntegerType", type = "integer", min = 0L), 
        Provider = structure(logical(0), shape = "Issuer", type = "string"), 
        Audience = structure(logical(0), shape = "Audience", 
            type = "string")), shape = "AssumeRoleWithWebIdentityResponse", 
        type = "structure")
    return(populate(args, shape))
}

decode_authorization_message_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EncodedMessage = structure(logical(0), 
        shape = "encodedMessageType", type = "string", max = 10240L, 
        min = 1L)), shape = "DecodeAuthorizationMessageRequest", 
        type = "structure")
    return(populate(args, shape))
}

decode_authorization_message_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DecodedMessage = structure(logical(0), 
        shape = "decodedMessageType", type = "string")), shape = "DecodeAuthorizationMessageResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_caller_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetCallerIdentityRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_caller_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "userIdType", 
        type = "string"), Account = structure(logical(0), shape = "accountType", 
        type = "string"), Arn = structure(logical(0), shape = "arnType", 
        type = "string", max = 2048L, min = 20L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+")), 
        shape = "GetCallerIdentityResponse", type = "structure")
    return(populate(args, shape))
}

get_federation_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "userNameType", 
        type = "string", max = 32L, min = 2L, pattern = "[\\w+=,.@-]*"), 
        Policy = structure(logical(0), shape = "sessionPolicyDocumentType", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        DurationSeconds = structure(logical(0), shape = "durationSecondsType", 
            type = "integer", max = 129600L, min = 900L)), shape = "GetFederationTokenRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_federation_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]*"), SecretAccessKey = structure(logical(0), 
        shape = "accessKeySecretType", type = "string"), SessionToken = structure(logical(0), 
        shape = "tokenType", type = "string"), Expiration = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "Credentials", 
        type = "structure"), FederatedUser = structure(list(FederatedUserId = structure(logical(0), 
        shape = "federatedIdType", type = "string", max = 193L, 
        min = 2L, pattern = "[\\w+=,.@\\:-]*"), Arn = structure(logical(0), 
        shape = "arnType", type = "string", max = 2048L, min = 20L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+")), 
        shape = "FederatedUser", type = "structure"), PackedPolicySize = structure(logical(0), 
        shape = "nonNegativeIntegerType", type = "integer", min = 0L)), 
        shape = "GetFederationTokenResponse", type = "structure")
    return(populate(args, shape))
}

get_session_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DurationSeconds = structure(logical(0), 
        shape = "durationSecondsType", type = "integer", max = 129600L, 
        min = 900L), SerialNumber = structure(logical(0), shape = "serialNumberType", 
        type = "string", max = 256L, min = 9L, pattern = "[\\w+=/:,.@-]*"), 
        TokenCode = structure(logical(0), shape = "tokenCodeType", 
            type = "string", max = 6L, min = 6L, pattern = "[\\d]*")), 
        shape = "GetSessionTokenRequest", type = "structure")
    return(populate(args, shape))
}

get_session_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Credentials = structure(list(AccessKeyId = structure(logical(0), 
        shape = "accessKeyIdType", type = "string", max = 128L, 
        min = 16L, pattern = "[\\w]*"), SecretAccessKey = structure(logical(0), 
        shape = "accessKeySecretType", type = "string"), SessionToken = structure(logical(0), 
        shape = "tokenType", type = "string"), Expiration = structure(logical(0), 
        shape = "dateType", type = "timestamp")), shape = "Credentials", 
        type = "structure")), shape = "GetSessionTokenResponse", 
        type = "structure")
    return(populate(args, shape))
}
