associate_drt_log_bucket_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogBucket = structure(logical(0), 
        shape = "LogBucket", type = "string", max = 63L, min = 3L, 
        pattern = "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$")), 
        shape = "AssociateDRTLogBucketRequest", type = "structure")
    return(populate(args, shape))
}

associate_drt_log_bucket_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateDRTLogBucketResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_drt_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "RoleArn", 
        type = "string", max = 96L, pattern = "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "AssociateDRTRoleRequest", type = "structure")
    return(populate(args, shape))
}

associate_drt_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateDRTRoleResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ProtectionName", 
        type = "string", max = 128L, min = 1L, pattern = "[ a-zA-Z0-9_\\\\.\\\\-]*"), 
        ResourceArn = structure(logical(0), shape = "ResourceArn", 
            type = "string", min = 1L)), shape = "CreateProtectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProtectionId = structure(logical(0), 
        shape = "ProtectionId", type = "string", max = 36L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*")), shape = "CreateProtectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateSubscriptionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProtectionId = structure(logical(0), 
        shape = "ProtectionId", type = "string", max = 36L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*")), shape = "DeleteProtectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProtectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSubscriptionRequest", 
        type = "structure", deprecated = TRUE)
    return(populate(args, shape))
}

delete_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSubscriptionResponse", 
        type = "structure", deprecated = TRUE)
    return(populate(args, shape))
}

describe_attack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttackId = structure(logical(0), 
        shape = "AttackId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*")), shape = "DescribeAttackRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_attack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attack = structure(list(AttackId = structure(logical(0), 
        shape = "AttackId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*"), ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", min = 1L), SubResources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "SubResourceType", type = "string"), Id = structure(logical(0), 
        shape = "String", type = "string"), AttackVectors = structure(list(structure(list(VectorType = structure(logical(0), 
        shape = "String", type = "string"), VectorCounters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Max = structure(logical(0), 
        shape = "Double", type = "double"), Average = structure(logical(0), 
        shape = "Double", type = "double"), Sum = structure(logical(0), 
        shape = "Double", type = "double"), N = structure(logical(0), 
        shape = "Integer", type = "integer"), Unit = structure(logical(0), 
        shape = "String", type = "string")), shape = "SummarizedCounter", 
        type = "structure")), shape = "SummarizedCounterList", 
        type = "list")), shape = "SummarizedAttackVector", type = "structure")), 
        shape = "SummarizedAttackVectorList", type = "list"), 
        Counters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Max = structure(logical(0), 
            shape = "Double", type = "double"), Average = structure(logical(0), 
            shape = "Double", type = "double"), Sum = structure(logical(0), 
            shape = "Double", type = "double"), N = structure(logical(0), 
            shape = "Integer", type = "integer"), Unit = structure(logical(0), 
            shape = "String", type = "string")), shape = "SummarizedCounter", 
            type = "structure")), shape = "SummarizedCounterList", 
            type = "list")), shape = "SubResourceSummary", type = "structure")), 
        shape = "SubResourceSummaryList", type = "list"), StartTime = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp"), AttackCounters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Max = structure(logical(0), 
        shape = "Double", type = "double"), Average = structure(logical(0), 
        shape = "Double", type = "double"), Sum = structure(logical(0), 
        shape = "Double", type = "double"), N = structure(logical(0), 
        shape = "Integer", type = "integer"), Unit = structure(logical(0), 
        shape = "String", type = "string")), shape = "SummarizedCounter", 
        type = "structure")), shape = "SummarizedCounterList", 
        type = "list"), AttackProperties = structure(list(structure(list(AttackLayer = structure(logical(0), 
        shape = "AttackLayer", type = "string"), AttackPropertyIdentifier = structure(logical(0), 
        shape = "AttackPropertyIdentifier", type = "string"), 
        TopContributors = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "Long", type = "long")), shape = "Contributor", 
            type = "structure")), shape = "TopContributors", 
            type = "list"), Unit = structure(logical(0), shape = "Unit", 
            type = "string"), Total = structure(logical(0), shape = "Long", 
            type = "long")), shape = "AttackProperty", type = "structure")), 
        shape = "AttackProperties", type = "list"), Mitigations = structure(list(structure(list(MitigationName = structure(logical(0), 
        shape = "String", type = "string")), shape = "Mitigation", 
        type = "structure")), shape = "MitigationList", type = "list")), 
        shape = "AttackDetail", type = "structure")), shape = "DescribeAttackResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_drt_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeDRTAccessRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_drt_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "RoleArn", 
        type = "string", max = 96L, pattern = "^arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        LogBucketList = structure(list(structure(logical(0), 
            shape = "LogBucket", type = "string", max = 63L, 
            min = 3L, pattern = "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$")), 
            shape = "LogBucketList", type = "list", max = 10L, 
            min = 0L)), shape = "DescribeDRTAccessResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_emergency_contact_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeEmergencyContactSettingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_emergency_contact_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmergencyContactList = structure(list(structure(list(EmailAddress = structure(logical(0), 
        shape = "EmailAddress", type = "string", pattern = "^\\S+@\\S+\\.\\S+$")), 
        shape = "EmergencyContact", type = "structure")), shape = "EmergencyContactList", 
        type = "list", max = 10L, min = 0L)), shape = "DescribeEmergencyContactSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProtectionId = structure(logical(0), 
        shape = "ProtectionId", type = "string", max = 36L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*")), shape = "DescribeProtectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Protection = structure(list(Id = structure(logical(0), 
        shape = "ProtectionId", type = "string", max = 36L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*"), Name = structure(logical(0), 
        shape = "ProtectionName", type = "string", max = 128L, 
        min = 1L, pattern = "[ a-zA-Z0-9_\\\\.\\\\-]*"), ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", min = 1L)), shape = "Protection", 
        type = "structure")), shape = "DescribeProtectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscription = structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), TimeCommitmentInSeconds = structure(logical(0), 
        shape = "DurationInSeconds", type = "long", min = 0L), 
        AutoRenew = structure(logical(0), shape = "AutoRenew", 
            type = "string"), Limits = structure(list(structure(list(Type = structure(logical(0), 
            shape = "String", type = "string"), Max = structure(logical(0), 
            shape = "Long", type = "long")), shape = "Limit", 
            type = "structure")), shape = "Limits", type = "list")), 
        shape = "Subscription", type = "structure")), shape = "DescribeSubscriptionResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_drt_log_bucket_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogBucket = structure(logical(0), 
        shape = "LogBucket", type = "string", max = 63L, min = 3L, 
        pattern = "^([a-z]|(\\d(?!\\d{0,2}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3})))([a-z\\d]|(\\.(?!(\\.|-)))|(-(?!\\.))){1,61}[a-z\\d]$")), 
        shape = "DisassociateDRTLogBucketRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_drt_log_bucket_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDRTLogBucketResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_drt_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDRTRoleRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_drt_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDRTRoleResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetSubscriptionStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionState = structure(logical(0), 
        shape = "SubscriptionState", type = "string")), shape = "GetSubscriptionStateResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_attacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string", min = 1L)), shape = "ResourceArnFilterList", 
        type = "list"), StartTime = structure(list(FromInclusive = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp"), ToExclusive = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp")), shape = "TimeRange", 
        type = "structure"), EndTime = structure(list(FromInclusive = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp"), ToExclusive = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp")), shape = "TimeRange", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "Token", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 10000L, 
        min = 0L)), shape = "ListAttacksRequest", type = "structure")
    return(populate(args, shape))
}

list_attacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttackSummaries = structure(list(structure(list(AttackId = structure(logical(0), 
        shape = "String", type = "string"), ResourceArn = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "AttackTimestamp", type = "timestamp"), AttackVectors = structure(list(structure(list(VectorType = structure(logical(0), 
        shape = "String", type = "string")), shape = "AttackVectorDescription", 
        type = "structure")), shape = "AttackVectorDescriptionList", 
        type = "list")), shape = "AttackSummary", type = "structure")), 
        shape = "AttackSummaries", type = "list"), NextToken = structure(logical(0), 
        shape = "Token", type = "string", min = 1L)), shape = "ListAttacksResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_protections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 10000L, 
        min = 0L)), shape = "ListProtectionsRequest", type = "structure")
    return(populate(args, shape))
}

list_protections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Protections = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ProtectionId", type = "string", max = 36L, min = 1L, 
        pattern = "[a-zA-Z0-9\\\\-]*"), Name = structure(logical(0), 
        shape = "ProtectionName", type = "string", max = 128L, 
        min = 1L, pattern = "[ a-zA-Z0-9_\\\\.\\\\-]*"), ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", min = 1L)), shape = "Protection", 
        type = "structure")), shape = "Protections", type = "list"), 
        NextToken = structure(logical(0), shape = "Token", type = "string", 
            min = 1L)), shape = "ListProtectionsResponse", type = "structure")
    return(populate(args, shape))
}

update_emergency_contact_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmergencyContactList = structure(list(structure(list(EmailAddress = structure(logical(0), 
        shape = "EmailAddress", type = "string", pattern = "^\\S+@\\S+\\.\\S+$")), 
        shape = "EmergencyContact", type = "structure")), shape = "EmergencyContactList", 
        type = "list", max = 10L, min = 0L)), shape = "UpdateEmergencyContactSettingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_emergency_contact_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateEmergencyContactSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoRenew = structure(logical(0), 
        shape = "AutoRenew", type = "string")), shape = "UpdateSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateSubscriptionResponse", 
        type = "structure")
    return(populate(args, shape))
}
