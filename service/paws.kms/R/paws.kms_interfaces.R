cancel_key_deletion_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "CancelKeyDeletionRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_key_deletion_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "CancelKeyDeletionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasName = structure(logical(0), 
        shape = "AliasNameType", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$"), TargetKeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L)), 
        shape = "CreateAliasRequest", type = "structure")
    return(populate(args, shape))
}

create_alias_output <- function () 
{
    return(list())
}

create_grant_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), GranteePrincipal = structure(logical(0), 
        shape = "PrincipalIdType", type = "string", max = 256L, 
        min = 1L), RetiringPrincipal = structure(logical(0), 
        shape = "PrincipalIdType", type = "string", max = 256L, 
        min = 1L), Operations = structure(list(structure(logical(0), 
        shape = "GrantOperation", type = "string")), shape = "GrantOperationList", 
        type = "list"), Constraints = structure(list(EncryptionContextSubset = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map"), EncryptionContextEquals = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map")), shape = "GrantConstraints", 
        type = "structure"), GrantTokens = structure(list(structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L)), shape = "GrantTokenList", type = "list", 
        max = 10L, min = 0L), Name = structure(logical(0), shape = "GrantNameType", 
        type = "string", max = 256L, min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$")), 
        shape = "CreateGrantRequest", type = "structure")
    return(populate(args, shape))
}

create_grant_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GrantToken = structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L), GrantId = structure(logical(0), shape = "GrantIdType", 
        type = "string", max = 128L, min = 1L)), shape = "CreateGrantResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(logical(0), shape = "PolicyType", 
        type = "string", max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        Description = structure(logical(0), shape = "DescriptionType", 
            type = "string", max = 8192L, min = 0L), KeyUsage = structure(logical(0), 
            shape = "KeyUsageType", type = "string"), Origin = structure(logical(0), 
            shape = "OriginType", type = "string"), BypassPolicyLockoutSafetyCheck = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), Tags = structure(list(structure(list(TagKey = structure(logical(0), 
            shape = "TagKeyType", type = "string", max = 128L, 
            min = 1L), TagValue = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateKeyRequest", type = "structure")
    return(populate(args, shape))
}

create_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyMetadata = structure(list(AWSAccountId = structure(logical(0), 
        shape = "AWSAccountIdType", type = "string"), KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L), 
        Arn = structure(logical(0), shape = "ArnType", type = "string", 
            max = 2048L, min = 20L), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), Enabled = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), Description = structure(logical(0), 
            shape = "DescriptionType", type = "string", max = 8192L, 
            min = 0L), KeyUsage = structure(logical(0), shape = "KeyUsageType", 
            type = "string"), KeyState = structure(logical(0), 
            shape = "KeyState", type = "string"), DeletionDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), ValidTo = structure(logical(0), 
            shape = "DateType", type = "timestamp"), Origin = structure(logical(0), 
            shape = "OriginType", type = "string"), ExpirationModel = structure(logical(0), 
            shape = "ExpirationModelType", type = "string"), 
        KeyManager = structure(logical(0), shape = "KeyManagerType", 
            type = "string")), shape = "KeyMetadata", type = "structure")), 
        shape = "CreateKeyResponse", type = "structure")
    return(populate(args, shape))
}

decrypt_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CiphertextBlob = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), EncryptionContext = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map"), GrantTokens = structure(list(structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L)), shape = "GrantTokenList", type = "list", 
        max = 10L, min = 0L)), shape = "DecryptRequest", type = "structure")
    return(populate(args, shape))
}

decrypt_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Plaintext = structure(logical(0), 
        shape = "PlaintextType", type = "blob", max = 4096L, 
        min = 1L, sensitive = TRUE)), shape = "DecryptResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasName = structure(logical(0), 
        shape = "AliasNameType", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$")), shape = "DeleteAliasRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_alias_output <- function () 
{
    return(list())
}

delete_imported_key_material_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "DeleteImportedKeyMaterialRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_imported_key_material_output <- function () 
{
    return(list())
}

describe_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), GrantTokens = structure(list(structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L)), shape = "GrantTokenList", type = "list", 
        max = 10L, min = 0L)), shape = "DescribeKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyMetadata = structure(list(AWSAccountId = structure(logical(0), 
        shape = "AWSAccountIdType", type = "string"), KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L), 
        Arn = structure(logical(0), shape = "ArnType", type = "string", 
            max = 2048L, min = 20L), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), Enabled = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), Description = structure(logical(0), 
            shape = "DescriptionType", type = "string", max = 8192L, 
            min = 0L), KeyUsage = structure(logical(0), shape = "KeyUsageType", 
            type = "string"), KeyState = structure(logical(0), 
            shape = "KeyState", type = "string"), DeletionDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), ValidTo = structure(logical(0), 
            shape = "DateType", type = "timestamp"), Origin = structure(logical(0), 
            shape = "OriginType", type = "string"), ExpirationModel = structure(logical(0), 
            shape = "ExpirationModelType", type = "string"), 
        KeyManager = structure(logical(0), shape = "KeyManagerType", 
            type = "string")), shape = "KeyMetadata", type = "structure")), 
        shape = "DescribeKeyResponse", type = "structure")
    return(populate(args, shape))
}

disable_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "DisableKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_key_output <- function () 
{
    return(list())
}

disable_key_rotation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "DisableKeyRotationRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_key_rotation_output <- function () 
{
    return(list())
}

enable_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "EnableKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_key_output <- function () 
{
    return(list())
}

enable_key_rotation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "EnableKeyRotationRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_key_rotation_output <- function () 
{
    return(list())
}

encrypt_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Plaintext = structure(logical(0), 
        shape = "PlaintextType", type = "blob", max = 4096L, 
        min = 1L, sensitive = TRUE), EncryptionContext = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map"), GrantTokens = structure(list(structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L)), shape = "GrantTokenList", type = "list", 
        max = 10L, min = 0L)), shape = "EncryptRequest", type = "structure")
    return(populate(args, shape))
}

encrypt_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CiphertextBlob = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "EncryptResponse", 
        type = "structure")
    return(populate(args, shape))
}

generate_data_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), EncryptionContext = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map"), NumberOfBytes = structure(logical(0), 
        shape = "NumberOfBytesType", type = "integer", max = 1024L, 
        min = 1L), KeySpec = structure(logical(0), shape = "DataKeySpec", 
        type = "string"), GrantTokens = structure(list(structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L)), shape = "GrantTokenList", type = "list", 
        max = 10L, min = 0L)), shape = "GenerateDataKeyRequest", 
        type = "structure")
    return(populate(args, shape))
}

generate_data_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CiphertextBlob = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), Plaintext = structure(logical(0), shape = "PlaintextType", 
        type = "blob", max = 4096L, min = 1L, sensitive = TRUE), 
        KeyId = structure(logical(0), shape = "KeyIdType", type = "string", 
            max = 2048L, min = 1L)), shape = "GenerateDataKeyResponse", 
        type = "structure")
    return(populate(args, shape))
}

generate_data_key_without_plaintext_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), EncryptionContext = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map"), KeySpec = structure(logical(0), 
        shape = "DataKeySpec", type = "string"), NumberOfBytes = structure(logical(0), 
        shape = "NumberOfBytesType", type = "integer", max = 1024L, 
        min = 1L), GrantTokens = structure(list(structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L)), shape = "GrantTokenList", type = "list", 
        max = 10L, min = 0L)), shape = "GenerateDataKeyWithoutPlaintextRequest", 
        type = "structure")
    return(populate(args, shape))
}

generate_data_key_without_plaintext_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CiphertextBlob = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "GenerateDataKeyWithoutPlaintextResponse", 
        type = "structure")
    return(populate(args, shape))
}

generate_random_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NumberOfBytes = structure(logical(0), 
        shape = "NumberOfBytesType", type = "integer", max = 1024L, 
        min = 1L)), shape = "GenerateRandomRequest", type = "structure")
    return(populate(args, shape))
}

generate_random_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Plaintext = structure(logical(0), 
        shape = "PlaintextType", type = "blob", max = 4096L, 
        min = 1L, sensitive = TRUE)), shape = "GenerateRandomResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_key_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), PolicyName = structure(logical(0), 
        shape = "PolicyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w]+")), shape = "GetKeyPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_key_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(logical(0), shape = "PolicyType", 
        type = "string", max = 131072L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "GetKeyPolicyResponse", type = "structure")
    return(populate(args, shape))
}

get_key_rotation_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L)), shape = "GetKeyRotationStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_key_rotation_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyRotationEnabled = structure(logical(0), 
        shape = "BooleanType", type = "boolean")), shape = "GetKeyRotationStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_parameters_for_import_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), WrappingAlgorithm = structure(logical(0), 
        shape = "AlgorithmSpec", type = "string"), WrappingKeySpec = structure(logical(0), 
        shape = "WrappingKeySpec", type = "string")), shape = "GetParametersForImportRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_parameters_for_import_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), ImportToken = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), PublicKey = structure(logical(0), shape = "PlaintextType", 
        type = "blob", max = 4096L, min = 1L, sensitive = TRUE), 
        ParametersValidTo = structure(logical(0), shape = "DateType", 
            type = "timestamp")), shape = "GetParametersForImportResponse", 
        type = "structure")
    return(populate(args, shape))
}

import_key_material_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), ImportToken = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), EncryptedKeyMaterial = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), ValidTo = structure(logical(0), shape = "DateType", 
        type = "timestamp"), ExpirationModel = structure(logical(0), 
        shape = "ExpirationModelType", type = "string")), shape = "ImportKeyMaterialRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_key_material_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ImportKeyMaterialResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
        shape = "LimitType", type = "integer", max = 1000L, min = 1L), 
        Marker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*")), 
        shape = "ListAliasesRequest", type = "structure")
    return(populate(args, shape))
}

list_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Aliases = structure(list(structure(list(AliasName = structure(logical(0), 
        shape = "AliasNameType", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$"), AliasArn = structure(logical(0), 
        shape = "ArnType", type = "string", max = 2048L, min = 20L), 
        TargetKeyId = structure(logical(0), shape = "KeyIdType", 
            type = "string", max = 2048L, min = 1L)), shape = "AliasListEntry", 
        type = "structure")), shape = "AliasList", type = "list"), 
        NextMarker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*"), 
        Truncated = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "ListAliasesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_grants_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "LimitType", 
        type = "integer", max = 1000L, min = 1L), Marker = structure(logical(0), 
        shape = "MarkerType", type = "string", max = 1024L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]*"), KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L)), 
        shape = "ListGrantsRequest", type = "structure")
    return(populate(args, shape))
}

list_grants_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Grants = structure(list(structure(list(KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L), 
        GrantId = structure(logical(0), shape = "GrantIdType", 
            type = "string", max = 128L, min = 1L), Name = structure(logical(0), 
            shape = "GrantNameType", type = "string", max = 256L, 
            min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), GranteePrincipal = structure(logical(0), 
            shape = "PrincipalIdType", type = "string", max = 256L, 
            min = 1L), RetiringPrincipal = structure(logical(0), 
            shape = "PrincipalIdType", type = "string", max = 256L, 
            min = 1L), IssuingAccount = structure(logical(0), 
            shape = "PrincipalIdType", type = "string", max = 256L, 
            min = 1L), Operations = structure(list(structure(logical(0), 
            shape = "GrantOperation", type = "string")), shape = "GrantOperationList", 
            type = "list"), Constraints = structure(list(EncryptionContextSubset = structure(list(structure(logical(0), 
            shape = "EncryptionContextValue", type = "string")), 
            shape = "EncryptionContextType", type = "map"), EncryptionContextEquals = structure(list(structure(logical(0), 
            shape = "EncryptionContextValue", type = "string")), 
            shape = "EncryptionContextType", type = "map")), 
            shape = "GrantConstraints", type = "structure")), 
        shape = "GrantListEntry", type = "structure")), shape = "GrantList", 
        type = "list"), NextMarker = structure(logical(0), shape = "MarkerType", 
        type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*"), 
        Truncated = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "ListGrantsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_key_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
        shape = "LimitType", type = "integer", max = 1000L, min = 1L), 
        Marker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*")), 
        shape = "ListKeyPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

list_key_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyNames = structure(list(structure(logical(0), 
        shape = "PolicyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w]+")), shape = "PolicyNameList", 
        type = "list"), NextMarker = structure(logical(0), shape = "MarkerType", 
        type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*"), 
        Truncated = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "ListKeyPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "LimitType", 
        type = "integer", max = 1000L, min = 1L), Marker = structure(logical(0), 
        shape = "MarkerType", type = "string", max = 1024L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]*")), shape = "ListKeysRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Keys = structure(list(structure(list(KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L), 
        KeyArn = structure(logical(0), shape = "ArnType", type = "string", 
            max = 2048L, min = 20L)), shape = "KeyListEntry", 
        type = "structure")), shape = "KeyList", type = "list"), 
        NextMarker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*"), 
        Truncated = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "ListKeysResponse", type = "structure")
    return(populate(args, shape))
}

list_resource_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
        shape = "LimitType", type = "integer", max = 1000L, min = 1L), 
        Marker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*")), 
        shape = "ListResourceTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_resource_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(TagKey = structure(logical(0), 
        shape = "TagKeyType", type = "string", max = 128L, min = 1L), 
        TagValue = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        NextMarker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*"), 
        Truncated = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "ListResourceTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_retirable_grants_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "LimitType", 
        type = "integer", max = 1000L, min = 1L), Marker = structure(logical(0), 
        shape = "MarkerType", type = "string", max = 1024L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]*"), RetiringPrincipal = structure(logical(0), 
        shape = "PrincipalIdType", type = "string", max = 256L, 
        min = 1L)), shape = "ListRetirableGrantsRequest", type = "structure")
    return(populate(args, shape))
}

list_retirable_grants_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Grants = structure(list(structure(list(KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L), 
        GrantId = structure(logical(0), shape = "GrantIdType", 
            type = "string", max = 128L, min = 1L), Name = structure(logical(0), 
            shape = "GrantNameType", type = "string", max = 256L, 
            min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$"), CreationDate = structure(logical(0), 
            shape = "DateType", type = "timestamp"), GranteePrincipal = structure(logical(0), 
            shape = "PrincipalIdType", type = "string", max = 256L, 
            min = 1L), RetiringPrincipal = structure(logical(0), 
            shape = "PrincipalIdType", type = "string", max = 256L, 
            min = 1L), IssuingAccount = structure(logical(0), 
            shape = "PrincipalIdType", type = "string", max = 256L, 
            min = 1L), Operations = structure(list(structure(logical(0), 
            shape = "GrantOperation", type = "string")), shape = "GrantOperationList", 
            type = "list"), Constraints = structure(list(EncryptionContextSubset = structure(list(structure(logical(0), 
            shape = "EncryptionContextValue", type = "string")), 
            shape = "EncryptionContextType", type = "map"), EncryptionContextEquals = structure(list(structure(logical(0), 
            shape = "EncryptionContextValue", type = "string")), 
            shape = "EncryptionContextType", type = "map")), 
            shape = "GrantConstraints", type = "structure")), 
        shape = "GrantListEntry", type = "structure")), shape = "GrantList", 
        type = "list"), NextMarker = structure(logical(0), shape = "MarkerType", 
        type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\u00FF]*"), 
        Truncated = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "ListGrantsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_key_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), PolicyName = structure(logical(0), 
        shape = "PolicyNameType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w]+"), Policy = structure(logical(0), 
        shape = "PolicyType", type = "string", max = 131072L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"), 
        BypassPolicyLockoutSafetyCheck = structure(logical(0), 
            shape = "BooleanType", type = "boolean")), shape = "PutKeyPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_key_policy_output <- function () 
{
    return(list())
}

re_encrypt_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CiphertextBlob = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), SourceEncryptionContext = structure(list(structure(logical(0), 
        shape = "EncryptionContextValue", type = "string")), 
        shape = "EncryptionContextType", type = "map"), DestinationKeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L), 
        DestinationEncryptionContext = structure(list(structure(logical(0), 
            shape = "EncryptionContextValue", type = "string")), 
            shape = "EncryptionContextType", type = "map"), GrantTokens = structure(list(structure(logical(0), 
            shape = "GrantTokenType", type = "string", max = 8192L, 
            min = 1L)), shape = "GrantTokenList", type = "list", 
            max = 10L, min = 0L)), shape = "ReEncryptRequest", 
        type = "structure")
    return(populate(args, shape))
}

re_encrypt_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CiphertextBlob = structure(logical(0), 
        shape = "CiphertextType", type = "blob", max = 6144L, 
        min = 1L), SourceKeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), KeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L)), 
        shape = "ReEncryptResponse", type = "structure")
    return(populate(args, shape))
}

retire_grant_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GrantToken = structure(logical(0), 
        shape = "GrantTokenType", type = "string", max = 8192L, 
        min = 1L), KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), GrantId = structure(logical(0), 
        shape = "GrantIdType", type = "string", max = 128L, min = 1L)), 
        shape = "RetireGrantRequest", type = "structure")
    return(populate(args, shape))
}

retire_grant_output <- function () 
{
    return(list())
}

revoke_grant_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), GrantId = structure(logical(0), 
        shape = "GrantIdType", type = "string", max = 128L, min = 1L)), 
        shape = "RevokeGrantRequest", type = "structure")
    return(populate(args, shape))
}

revoke_grant_output <- function () 
{
    return(list())
}

schedule_key_deletion_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), PendingWindowInDays = structure(logical(0), 
        shape = "PendingWindowInDaysType", type = "integer", 
        max = 365L, min = 1L)), shape = "ScheduleKeyDeletionRequest", 
        type = "structure")
    return(populate(args, shape))
}

schedule_key_deletion_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), DeletionDate = structure(logical(0), 
        shape = "DateType", type = "timestamp")), shape = "ScheduleKeyDeletionResponse", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Tags = structure(list(structure(list(TagKey = structure(logical(0), 
        shape = "TagKeyType", type = "string", max = 128L, min = 1L), 
        TagValue = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function () 
{
    return(list())
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKeyType", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeyList", type = "list")), shape = "UntagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function () 
{
    return(list())
}

update_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasName = structure(logical(0), 
        shape = "AliasNameType", type = "string", max = 256L, 
        min = 1L, pattern = "^[a-zA-Z0-9:/_-]+$"), TargetKeyId = structure(logical(0), 
        shape = "KeyIdType", type = "string", max = 2048L, min = 1L)), 
        shape = "UpdateAliasRequest", type = "structure")
    return(populate(args, shape))
}

update_alias_output <- function () 
{
    return(list())
}

update_key_description_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "KeyIdType", 
        type = "string", max = 2048L, min = 1L), Description = structure(logical(0), 
        shape = "DescriptionType", type = "string", max = 8192L, 
        min = 0L)), shape = "UpdateKeyDescriptionRequest", type = "structure")
    return(populate(args, shape))
}

update_key_description_output <- function () 
{
    return(list())
}
