cancel_rotate_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L)), shape = "CancelRotateSecretRequest", type = "structure")
    return(populate(args, shape))
}

cancel_rotate_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        type = "string", max = 64L, min = 32L)), shape = "CancelRotateSecretResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameType", 
        type = "string", max = 512L, min = 1L), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestTokenType", idempotencyToken = TRUE, 
        type = "string", max = 64L, min = 32L), Description = structure(logical(0), 
        shape = "DescriptionType", type = "string", max = 2048L), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyIdType", 
            type = "string", max = 2048L, min = 0L), SecretBinary = structure(logical(0), 
            shape = "SecretBinaryType", type = "blob", max = 4096L, 
            min = 0L, sensitive = TRUE), SecretString = structure(logical(0), 
            shape = "SecretStringType", type = "string", max = 4096L, 
            min = 0L, sensitive = TRUE), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKeyType", type = "string", max = 128L, 
            min = 1L), Value = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
            type = "structure")), shape = "TagListType", type = "list")), 
        shape = "CreateSecretRequest", type = "structure")
    return(populate(args, shape))
}

create_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        type = "string", max = 64L, min = 32L)), shape = "CreateSecretResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_resource_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L)), shape = "DeleteResourcePolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_resource_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "NameType", type = "string", max = 512L, min = 1L)), 
        shape = "DeleteResourcePolicyResponse", type = "structure")
    return(populate(args, shape))
}

delete_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), RecoveryWindowInDays = structure(logical(0), 
        shape = "RecoveryWindowInDaysType", box = TRUE, type = "long"), 
        ForceDeleteWithoutRecovery = structure(logical(0), shape = "BooleanType", 
            box = TRUE, type = "boolean")), shape = "DeleteSecretRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), DeletionDate = structure(logical(0), shape = "DeletionDateType", 
        box = TRUE, type = "timestamp")), shape = "DeleteSecretResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L)), shape = "DescribeSecretRequest", type = "structure")
    return(populate(args, shape))
}

describe_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), Description = structure(logical(0), shape = "DescriptionType", 
        type = "string", max = 2048L), KmsKeyId = structure(logical(0), 
        shape = "KmsKeyIdType", type = "string", max = 2048L, 
        min = 0L), RotationEnabled = structure(logical(0), shape = "RotationEnabledType", 
        box = TRUE, type = "boolean"), RotationLambdaARN = structure(logical(0), 
        shape = "RotationLambdaARNType", type = "string", max = 2048L, 
        min = 0L), RotationRules = structure(list(AutomaticallyAfterDays = structure(logical(0), 
        shape = "AutomaticallyRotateAfterDaysType", box = TRUE, 
        type = "long", max = 1000L, min = 1L)), shape = "RotationRulesType", 
        type = "structure"), LastRotatedDate = structure(logical(0), 
        shape = "LastRotatedDateType", box = TRUE, type = "timestamp"), 
        LastChangedDate = structure(logical(0), shape = "LastChangedDateType", 
            box = TRUE, type = "timestamp"), LastAccessedDate = structure(logical(0), 
            shape = "LastAccessedDateType", box = TRUE, type = "timestamp"), 
        DeletedDate = structure(logical(0), shape = "DeletedDateType", 
            box = TRUE, type = "timestamp"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKeyType", type = "string", max = 128L, 
            min = 1L), Value = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
            type = "structure")), shape = "TagListType", type = "list"), 
        VersionIdsToStages = structure(list(structure(list(structure(logical(0), 
            shape = "SecretVersionStageType", type = "string", 
            max = 256L, min = 1L)), shape = "SecretVersionStagesType", 
            type = "list", max = 20L, min = 1L)), shape = "SecretVersionsToStagesMapType", 
            type = "map")), shape = "DescribeSecretResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_random_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PasswordLength = structure(logical(0), 
        shape = "PasswordLengthType", box = TRUE, type = "long", 
        max = 4096L, min = 1L), ExcludeCharacters = structure(logical(0), 
        shape = "ExcludeCharactersType", type = "string", max = 4096L, 
        min = 0L), ExcludeNumbers = structure(logical(0), shape = "ExcludeNumbersType", 
        box = TRUE, type = "boolean"), ExcludePunctuation = structure(logical(0), 
        shape = "ExcludePunctuationType", box = TRUE, type = "boolean"), 
        ExcludeUppercase = structure(logical(0), shape = "ExcludeUppercaseType", 
            box = TRUE, type = "boolean"), ExcludeLowercase = structure(logical(0), 
            shape = "ExcludeLowercaseType", box = TRUE, type = "boolean"), 
        IncludeSpace = structure(logical(0), shape = "IncludeSpaceType", 
            box = TRUE, type = "boolean"), RequireEachIncludedType = structure(logical(0), 
            shape = "RequireEachIncludedTypeType", box = TRUE, 
            type = "boolean")), shape = "GetRandomPasswordRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_random_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RandomPassword = structure(logical(0), 
        shape = "RandomPasswordType", type = "string", max = 4096L, 
        min = 0L)), shape = "GetRandomPasswordResponse", type = "structure")
    return(populate(args, shape))
}

get_resource_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L)), shape = "GetResourcePolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_resource_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "NameType", type = "string", max = 512L, min = 1L), 
        ResourcePolicy = structure(logical(0), shape = "NonEmptyResourcePolicyType", 
            type = "string", max = 4096L, min = 1L)), shape = "GetResourcePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_secret_value_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        type = "string", max = 64L, min = 32L), VersionStage = structure(logical(0), 
        shape = "SecretVersionStageType", type = "string", max = 256L, 
        min = 1L)), shape = "GetSecretValueRequest", type = "structure")
    return(populate(args, shape))
}

get_secret_value_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        type = "string", max = 64L, min = 32L), SecretBinary = structure(logical(0), 
        shape = "SecretBinaryType", type = "blob", max = 4096L, 
        min = 0L, sensitive = TRUE), SecretString = structure(logical(0), 
        shape = "SecretStringType", type = "string", max = 4096L, 
        min = 0L, sensitive = TRUE), VersionStages = structure(list(structure(logical(0), 
        shape = "SecretVersionStageType", type = "string", max = 256L, 
        min = 1L)), shape = "SecretVersionStagesType", type = "list", 
        max = 20L, min = 1L), CreatedDate = structure(logical(0), 
        shape = "CreatedDateType", box = TRUE, type = "timestamp")), 
        shape = "GetSecretValueResponse", type = "structure")
    return(populate(args, shape))
}

list_secret_version_ids_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), MaxResults = structure(logical(0), shape = "MaxResultsType", 
        box = TRUE, type = "integer", max = 100L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextTokenType", 
            type = "string", max = 4096L, min = 1L), IncludeDeprecated = structure(logical(0), 
            shape = "BooleanType", box = TRUE, type = "boolean")), 
        shape = "ListSecretVersionIdsRequest", type = "structure")
    return(populate(args, shape))
}

list_secret_version_ids_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Versions = structure(list(structure(list(VersionId = structure(logical(0), 
        shape = "SecretVersionIdType", type = "string", max = 64L, 
        min = 32L), VersionStages = structure(list(structure(logical(0), 
        shape = "SecretVersionStageType", type = "string", max = 256L, 
        min = 1L)), shape = "SecretVersionStagesType", type = "list", 
        max = 20L, min = 1L), LastAccessedDate = structure(logical(0), 
        shape = "LastAccessedDateType", box = TRUE, type = "timestamp"), 
        CreatedDate = structure(logical(0), shape = "CreatedDateType", 
            box = TRUE, type = "timestamp")), shape = "SecretVersionsListEntry", 
        type = "structure")), shape = "SecretVersionsListType", 
        type = "list"), NextToken = structure(logical(0), shape = "NextTokenType", 
        type = "string", max = 4096L, min = 1L), ARN = structure(logical(0), 
        shape = "SecretARNType", type = "string", max = 2048L, 
        min = 20L), Name = structure(logical(0), shape = "SecretNameType", 
        type = "string", max = 256L, min = 1L)), shape = "ListSecretVersionIdsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_secrets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResultsType", box = TRUE, type = "integer", 
        max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextTokenType", type = "string", max = 4096L, 
        min = 1L)), shape = "ListSecretsRequest", type = "structure")
    return(populate(args, shape))
}

list_secrets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretList = structure(list(structure(list(ARN = structure(logical(0), 
        shape = "SecretARNType", type = "string", max = 2048L, 
        min = 20L), Name = structure(logical(0), shape = "SecretNameType", 
        type = "string", max = 256L, min = 1L), Description = structure(logical(0), 
        shape = "DescriptionType", type = "string", max = 2048L), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyIdType", 
            type = "string", max = 2048L, min = 0L), RotationEnabled = structure(logical(0), 
            shape = "RotationEnabledType", box = TRUE, type = "boolean"), 
        RotationLambdaARN = structure(logical(0), shape = "RotationLambdaARNType", 
            type = "string", max = 2048L, min = 0L), RotationRules = structure(list(AutomaticallyAfterDays = structure(logical(0), 
            shape = "AutomaticallyRotateAfterDaysType", box = TRUE, 
            type = "long", max = 1000L, min = 1L)), shape = "RotationRulesType", 
            type = "structure"), LastRotatedDate = structure(logical(0), 
            shape = "LastRotatedDateType", box = TRUE, type = "timestamp"), 
        LastChangedDate = structure(logical(0), shape = "LastChangedDateType", 
            box = TRUE, type = "timestamp"), LastAccessedDate = structure(logical(0), 
            shape = "LastAccessedDateType", box = TRUE, type = "timestamp"), 
        DeletedDate = structure(logical(0), shape = "DeletedDateType", 
            type = "timestamp"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKeyType", type = "string", max = 128L, 
            min = 1L), Value = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
            type = "structure")), shape = "TagListType", type = "list"), 
        SecretVersionsToStages = structure(list(structure(list(structure(logical(0), 
            shape = "SecretVersionStageType", type = "string", 
            max = 256L, min = 1L)), shape = "SecretVersionStagesType", 
            type = "list", max = 20L, min = 1L)), shape = "SecretVersionsToStagesMapType", 
            type = "map")), shape = "SecretListEntry", type = "structure")), 
        shape = "SecretListType", type = "list"), NextToken = structure(logical(0), 
        shape = "NextTokenType", type = "string", max = 4096L, 
        min = 1L)), shape = "ListSecretsResponse", type = "structure")
    return(populate(args, shape))
}

put_resource_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), ResourcePolicy = structure(logical(0), shape = "NonEmptyResourcePolicyType", 
        type = "string", max = 4096L, min = 1L)), shape = "PutResourcePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_resource_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "NameType", type = "string", max = 512L, min = 1L)), 
        shape = "PutResourcePolicyResponse", type = "structure")
    return(populate(args, shape))
}

put_secret_value_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestTokenType", idempotencyToken = TRUE, 
        type = "string", max = 64L, min = 32L), SecretBinary = structure(logical(0), 
        shape = "SecretBinaryType", type = "blob", max = 4096L, 
        min = 0L, sensitive = TRUE), SecretString = structure(logical(0), 
        shape = "SecretStringType", type = "string", max = 4096L, 
        min = 0L, sensitive = TRUE), VersionStages = structure(list(structure(logical(0), 
        shape = "SecretVersionStageType", type = "string", max = 256L, 
        min = 1L)), shape = "SecretVersionStagesType", type = "list", 
        max = 20L, min = 1L)), shape = "PutSecretValueRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_secret_value_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        type = "string", max = 64L, min = 32L), VersionStages = structure(list(structure(logical(0), 
        shape = "SecretVersionStageType", type = "string", max = 256L, 
        min = 1L)), shape = "SecretVersionStagesType", type = "list", 
        max = 20L, min = 1L)), shape = "PutSecretValueResponse", 
        type = "structure")
    return(populate(args, shape))
}

restore_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L)), shape = "RestoreSecretRequest", type = "structure")
    return(populate(args, shape))
}

restore_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L)), shape = "RestoreSecretResponse", type = "structure")
    return(populate(args, shape))
}

rotate_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestTokenType", idempotencyToken = TRUE, 
        type = "string", max = 64L, min = 32L), RotationLambdaARN = structure(logical(0), 
        shape = "RotationLambdaARNType", type = "string", max = 2048L, 
        min = 0L), RotationRules = structure(list(AutomaticallyAfterDays = structure(logical(0), 
        shape = "AutomaticallyRotateAfterDaysType", box = TRUE, 
        type = "long", max = 1000L, min = 1L)), shape = "RotationRulesType", 
        type = "structure")), shape = "RotateSecretRequest", 
        type = "structure")
    return(populate(args, shape))
}

rotate_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        box = TRUE, type = "string", max = 64L, min = 32L)), 
        shape = "RotateSecretResponse", type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKeyType", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValueType", 
            type = "string", max = 256L, min = 0L)), shape = "Tag", 
        type = "structure")), shape = "TagListType", type = "list")), 
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
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKeyType", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeyListType", type = "list")), shape = "UntagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function () 
{
    return(list())
}

update_secret_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestTokenType", idempotencyToken = TRUE, 
        type = "string", max = 64L, min = 32L), Description = structure(logical(0), 
        shape = "DescriptionType", type = "string", max = 2048L), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyIdType", 
            type = "string", max = 2048L, min = 0L), SecretBinary = structure(logical(0), 
            shape = "SecretBinaryType", type = "blob", max = 4096L, 
            min = 0L, sensitive = TRUE), SecretString = structure(logical(0), 
            shape = "SecretStringType", type = "string", max = 4096L, 
            min = 0L, sensitive = TRUE)), shape = "UpdateSecretRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_secret_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L), VersionId = structure(logical(0), shape = "SecretVersionIdType", 
        type = "string", max = 64L, min = 32L)), shape = "UpdateSecretResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_secret_version_stage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecretId = structure(logical(0), 
        shape = "SecretIdType", type = "string", max = 2048L, 
        min = 1L), VersionStage = structure(logical(0), shape = "SecretVersionStageType", 
        type = "string", max = 256L, min = 1L), RemoveFromVersionId = structure(logical(0), 
        shape = "SecretVersionIdType", box = TRUE, type = "string", 
        max = 64L, min = 32L), MoveToVersionId = structure(logical(0), 
        shape = "SecretVersionIdType", box = TRUE, type = "string", 
        max = 64L, min = 32L)), shape = "UpdateSecretVersionStageRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_secret_version_stage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "SecretARNType", 
        type = "string", max = 2048L, min = 20L), Name = structure(logical(0), 
        shape = "SecretNameType", type = "string", max = 256L, 
        min = 1L)), shape = "UpdateSecretVersionStageResponse", 
        type = "structure")
    return(populate(args, shape))
}
