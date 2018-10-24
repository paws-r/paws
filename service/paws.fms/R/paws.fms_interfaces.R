associate_admin_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdminAccount = structure(logical(0), 
        shape = "AWSAccountId", type = "string", max = 1024L, 
        min = 1L)), shape = "AssociateAdminAccountRequest", type = "structure")
    return(populate(args, shape))
}

associate_admin_account_output <- function () 
{
    return(list())
}

delete_notification_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteNotificationChannelRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_notification_channel_output <- function () 
{
    return(list())
}

delete_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L)), 
        shape = "DeletePolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_policy_output <- function () 
{
    return(list())
}

disassociate_admin_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateAdminAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_admin_account_output <- function () 
{
    return(list())
}

get_admin_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetAdminAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_admin_account_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdminAccount = structure(logical(0), 
        shape = "AWSAccountId", type = "string", max = 1024L, 
        min = 1L), RoleStatus = structure(logical(0), shape = "AccountRoleStatus", 
        type = "string")), shape = "GetAdminAccountResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_detail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L), 
        MemberAccount = structure(logical(0), shape = "AWSAccountId", 
            type = "string", max = 1024L, min = 1L)), shape = "GetComplianceDetailRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_detail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyComplianceDetail = structure(list(PolicyOwner = structure(logical(0), 
        shape = "AWSAccountId", type = "string", max = 1024L, 
        min = 1L), PolicyId = structure(logical(0), shape = "PolicyId", 
        type = "string", max = 36L, min = 36L), MemberAccount = structure(logical(0), 
        shape = "AWSAccountId", type = "string", max = 1024L, 
        min = 1L), Violators = structure(list(structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 1024L, min = 1L), 
        ViolationReason = structure(logical(0), shape = "ViolationReason", 
            type = "string"), ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", max = 128L, 
            min = 1L)), shape = "ComplianceViolator", type = "structure")), 
        shape = "ComplianceViolators", type = "list"), EvaluationLimitExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ExpiredAt = structure(logical(0), 
        shape = "TimeStamp", type = "timestamp"), IssueInfoMap = structure(list(structure(logical(0), 
        shape = "DetailedInfo", type = "string", max = 1024L, 
        min = 1L)), shape = "IssueInfoMap", type = "map")), shape = "PolicyComplianceDetail", 
        type = "structure")), shape = "GetComplianceDetailResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_notification_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetNotificationChannelRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_notification_channel_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnsTopicArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1024L, 
        min = 1L), SnsRoleName = structure(logical(0), shape = "ResourceArn", 
        type = "string", max = 1024L, min = 1L)), shape = "GetNotificationChannelResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L)), 
        shape = "GetPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L), 
        PolicyName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), PolicyUpdateToken = structure(logical(0), 
            shape = "PolicyUpdateToken", type = "string", max = 1024L, 
            min = 1L), SecurityServicePolicyData = structure(list(Type = structure(logical(0), 
            shape = "SecurityServiceType", type = "string"), 
            ManagedServiceData = structure(logical(0), shape = "ManagedServiceData", 
                type = "string", max = 1024L, min = 1L)), shape = "SecurityServicePolicyData", 
            type = "structure"), ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", max = 128L, 
            min = 1L), ResourceTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "ResourceTag", type = "structure")), shape = "ResourceTags", 
            type = "list", max = 8L, min = 0L), ExcludeResourceTags = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RemediationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IncludeMap = structure(list(structure(list(structure(logical(0), 
            shape = "CustomerPolicyScopeId", type = "string", 
            max = 1024L, min = 1L)), shape = "CustomerPolicyScopeIdList", 
            type = "list")), shape = "CustomerPolicyScopeMap", 
            type = "map"), ExcludeMap = structure(list(structure(list(structure(logical(0), 
            shape = "CustomerPolicyScopeId", type = "string", 
            max = 1024L, min = 1L)), shape = "CustomerPolicyScopeIdList", 
            type = "list")), shape = "CustomerPolicyScopeMap", 
            type = "map")), shape = "Policy", type = "structure"), 
        PolicyArn = structure(logical(0), shape = "ResourceArn", 
            type = "string", max = 1024L, min = 1L)), shape = "GetPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_compliance_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", min = 1L), MaxResults = structure(logical(0), 
            shape = "PaginationMaxResults", type = "integer", 
            max = 100L, min = 1L)), shape = "ListComplianceStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_compliance_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyComplianceStatusList = structure(list(structure(list(PolicyOwner = structure(logical(0), 
        shape = "AWSAccountId", type = "string", max = 1024L, 
        min = 1L), PolicyId = structure(logical(0), shape = "PolicyId", 
        type = "string", max = 36L, min = 36L), PolicyName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 128L, 
        min = 1L), MemberAccount = structure(logical(0), shape = "AWSAccountId", 
        type = "string", max = 1024L, min = 1L), EvaluationResults = structure(list(structure(list(ComplianceStatus = structure(logical(0), 
        shape = "PolicyComplianceStatusType", type = "string"), 
        ViolatorCount = structure(logical(0), shape = "ResourceCount", 
            type = "long", min = 0L), EvaluationLimitExceeded = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "EvaluationResult", 
        type = "structure")), shape = "EvaluationResults", type = "list"), 
        LastUpdated = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp"), IssueInfoMap = structure(list(structure(logical(0), 
            shape = "DetailedInfo", type = "string", max = 1024L, 
            min = 1L)), shape = "IssueInfoMap", type = "map")), 
        shape = "PolicyComplianceStatus", type = "structure")), 
        shape = "PolicyComplianceStatusList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", min = 1L)), shape = "ListComplianceStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_member_accounts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", min = 1L), 
        MaxResults = structure(logical(0), shape = "PaginationMaxResults", 
            type = "integer", max = 100L, min = 1L)), shape = "ListMemberAccountsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_member_accounts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccounts = structure(list(structure(logical(0), 
        shape = "AWSAccountId", type = "string", max = 1024L, 
        min = 1L)), shape = "MemberAccounts", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", min = 1L)), shape = "ListMemberAccountsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", min = 1L), 
        MaxResults = structure(logical(0), shape = "PaginationMaxResults", 
            type = "integer", max = 100L, min = 1L)), shape = "ListPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyList = structure(list(structure(list(PolicyArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1024L, 
        min = 1L), PolicyId = structure(logical(0), shape = "PolicyId", 
        type = "string", max = 36L, min = 36L), PolicyName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 128L, 
        min = 1L), ResourceType = structure(logical(0), shape = "ResourceType", 
        type = "string", max = 128L, min = 1L), SecurityServiceType = structure(logical(0), 
        shape = "SecurityServiceType", type = "string"), RemediationEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "PolicySummary", 
        type = "structure")), shape = "PolicySummaryList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", min = 1L)), shape = "ListPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_notification_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnsTopicArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1024L, 
        min = 1L), SnsRoleName = structure(logical(0), shape = "ResourceArn", 
        type = "string", max = 1024L, min = 1L)), shape = "PutNotificationChannelRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_notification_channel_output <- function () 
{
    return(list())
}

put_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L), 
        PolicyName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), PolicyUpdateToken = structure(logical(0), 
            shape = "PolicyUpdateToken", type = "string", max = 1024L, 
            min = 1L), SecurityServicePolicyData = structure(list(Type = structure(logical(0), 
            shape = "SecurityServiceType", type = "string"), 
            ManagedServiceData = structure(logical(0), shape = "ManagedServiceData", 
                type = "string", max = 1024L, min = 1L)), shape = "SecurityServicePolicyData", 
            type = "structure"), ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", max = 128L, 
            min = 1L), ResourceTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "ResourceTag", type = "structure")), shape = "ResourceTags", 
            type = "list", max = 8L, min = 0L), ExcludeResourceTags = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RemediationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IncludeMap = structure(list(structure(list(structure(logical(0), 
            shape = "CustomerPolicyScopeId", type = "string", 
            max = 1024L, min = 1L)), shape = "CustomerPolicyScopeIdList", 
            type = "list")), shape = "CustomerPolicyScopeMap", 
            type = "map"), ExcludeMap = structure(list(structure(list(structure(logical(0), 
            shape = "CustomerPolicyScopeId", type = "string", 
            max = 1024L, min = 1L)), shape = "CustomerPolicyScopeIdList", 
            type = "list")), shape = "CustomerPolicyScopeMap", 
            type = "map")), shape = "Policy", type = "structure")), 
        shape = "PutPolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string", max = 36L, min = 36L), 
        PolicyName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), PolicyUpdateToken = structure(logical(0), 
            shape = "PolicyUpdateToken", type = "string", max = 1024L, 
            min = 1L), SecurityServicePolicyData = structure(list(Type = structure(logical(0), 
            shape = "SecurityServiceType", type = "string"), 
            ManagedServiceData = structure(logical(0), shape = "ManagedServiceData", 
                type = "string", max = 1024L, min = 1L)), shape = "SecurityServicePolicyData", 
            type = "structure"), ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", max = 128L, 
            min = 1L), ResourceTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "ResourceTag", type = "structure")), shape = "ResourceTags", 
            type = "list", max = 8L, min = 0L), ExcludeResourceTags = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RemediationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IncludeMap = structure(list(structure(list(structure(logical(0), 
            shape = "CustomerPolicyScopeId", type = "string", 
            max = 1024L, min = 1L)), shape = "CustomerPolicyScopeIdList", 
            type = "list")), shape = "CustomerPolicyScopeMap", 
            type = "map"), ExcludeMap = structure(list(structure(list(structure(logical(0), 
            shape = "CustomerPolicyScopeId", type = "string", 
            max = 1024L, min = 1L)), shape = "CustomerPolicyScopeIdList", 
            type = "list")), shape = "CustomerPolicyScopeMap", 
            type = "map")), shape = "Policy", type = "structure"), 
        PolicyArn = structure(logical(0), shape = "ResourceArn", 
            type = "string", max = 1024L, min = 1L)), shape = "PutPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}
