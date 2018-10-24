associate_ip_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        GroupIds = structure(list(structure(logical(0), shape = "IpGroupId", 
            type = "string", pattern = "wsipg-[0-9a-z]{8,63}$")), 
            shape = "IpGroupIdList", type = "list")), shape = "AssociateIpGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_ip_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateIpGroupsResult", 
        type = "structure")
    return(populate(args, shape))
}

authorize_ip_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "IpGroupId", 
        type = "string", pattern = "wsipg-[0-9a-z]{8,63}$"), 
        UserRules = structure(list(structure(list(IpRule = structure(logical(0), 
            shape = "IpRule", type = "string", locationName = "ipRule"), 
            RuleDesc = structure(logical(0), shape = "IpRuleDesc", 
                type = "string", locationName = "ruleDesc")), 
            shape = "IpRuleItem", type = "structure")), shape = "IpRuleList", 
            type = "list")), shape = "AuthorizeIpRulesRequest", 
        type = "structure")
    return(populate(args, shape))
}

authorize_ip_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AuthorizeIpRulesResult", 
        type = "structure")
    return(populate(args, shape))
}

create_ip_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "IpGroupName", type = "string"), GroupDesc = structure(logical(0), 
        shape = "IpGroupDesc", type = "string"), UserRules = structure(list(structure(list(IpRule = structure(logical(0), 
        shape = "IpRule", type = "string", locationName = "ipRule"), 
        RuleDesc = structure(logical(0), shape = "IpRuleDesc", 
            type = "string", locationName = "ruleDesc")), shape = "IpRuleItem", 
        type = "structure")), shape = "IpRuleList", type = "list")), 
        shape = "CreateIpGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_ip_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "IpGroupId", 
        type = "string", pattern = "wsipg-[0-9a-z]{8,63}$")), 
        shape = "CreateIpGroupResult", type = "structure")
    return(populate(args, shape))
}

create_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 127L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 255L)), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateTagsRequest", type = "structure")
    return(populate(args, shape))
}

create_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateTagsResult", type = "structure")
    return(populate(args, shape))
}

create_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Workspaces = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        UserName = structure(logical(0), shape = "UserName", 
            type = "string", max = 63L, min = 1L), BundleId = structure(logical(0), 
            shape = "BundleId", type = "string", pattern = "^wsb-[0-9a-z]{8,63}$"), 
        VolumeEncryptionKey = structure(logical(0), shape = "VolumeEncryptionKey", 
            type = "string"), UserVolumeEncryptionEnabled = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), RootVolumeEncryptionEnabled = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), WorkspaceProperties = structure(list(RunningMode = structure(logical(0), 
            shape = "RunningMode", type = "string"), RunningModeAutoStopTimeoutInMinutes = structure(logical(0), 
            shape = "RunningModeAutoStopTimeoutInMinutes", type = "integer"), 
            RootVolumeSizeGib = structure(logical(0), shape = "RootVolumeSizeGib", 
                type = "integer"), UserVolumeSizeGib = structure(logical(0), 
                shape = "UserVolumeSizeGib", type = "integer"), 
            ComputeTypeName = structure(logical(0), shape = "Compute", 
                type = "string")), shape = "WorkspaceProperties", 
            type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 127L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 255L)), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list")), 
        shape = "WorkspaceRequest", type = "structure")), shape = "WorkspaceRequestList", 
        type = "list", max = 25L, min = 1L)), shape = "CreateWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRequests = structure(list(structure(list(WorkspaceRequest = structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        UserName = structure(logical(0), shape = "UserName", 
            type = "string", max = 63L, min = 1L), BundleId = structure(logical(0), 
            shape = "BundleId", type = "string", pattern = "^wsb-[0-9a-z]{8,63}$"), 
        VolumeEncryptionKey = structure(logical(0), shape = "VolumeEncryptionKey", 
            type = "string"), UserVolumeEncryptionEnabled = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), RootVolumeEncryptionEnabled = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), WorkspaceProperties = structure(list(RunningMode = structure(logical(0), 
            shape = "RunningMode", type = "string"), RunningModeAutoStopTimeoutInMinutes = structure(logical(0), 
            shape = "RunningModeAutoStopTimeoutInMinutes", type = "integer"), 
            RootVolumeSizeGib = structure(logical(0), shape = "RootVolumeSizeGib", 
                type = "integer"), UserVolumeSizeGib = structure(logical(0), 
                shape = "UserVolumeSizeGib", type = "integer"), 
            ComputeTypeName = structure(logical(0), shape = "Compute", 
                type = "string")), shape = "WorkspaceProperties", 
            type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 127L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 255L)), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list")), 
        shape = "WorkspaceRequest", type = "structure"), ErrorCode = structure(logical(0), 
        shape = "ErrorType", type = "string"), ErrorMessage = structure(logical(0), 
        shape = "Description", type = "string")), shape = "FailedCreateWorkspaceRequest", 
        type = "structure")), shape = "FailedCreateWorkspaceRequests", 
        type = "list"), PendingRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        DirectoryId = structure(logical(0), shape = "DirectoryId", 
            type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        UserName = structure(logical(0), shape = "UserName", 
            type = "string", max = 63L, min = 1L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), State = structure(logical(0), 
            shape = "WorkspaceState", type = "string"), BundleId = structure(logical(0), 
            shape = "BundleId", type = "string", pattern = "^wsb-[0-9a-z]{8,63}$"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            type = "string", pattern = "^(subnet-[0-9a-f]{8})$"), 
        ErrorMessage = structure(logical(0), shape = "Description", 
            type = "string"), ErrorCode = structure(logical(0), 
            shape = "WorkspaceErrorCode", type = "string"), ComputerName = structure(logical(0), 
            shape = "ComputerName", type = "string"), VolumeEncryptionKey = structure(logical(0), 
            shape = "VolumeEncryptionKey", type = "string"), 
        UserVolumeEncryptionEnabled = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), RootVolumeEncryptionEnabled = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), WorkspaceProperties = structure(list(RunningMode = structure(logical(0), 
            shape = "RunningMode", type = "string"), RunningModeAutoStopTimeoutInMinutes = structure(logical(0), 
            shape = "RunningModeAutoStopTimeoutInMinutes", type = "integer"), 
            RootVolumeSizeGib = structure(logical(0), shape = "RootVolumeSizeGib", 
                type = "integer"), UserVolumeSizeGib = structure(logical(0), 
                shape = "UserVolumeSizeGib", type = "integer"), 
            ComputeTypeName = structure(logical(0), shape = "Compute", 
                type = "string")), shape = "WorkspaceProperties", 
            type = "structure"), ModificationStates = structure(list(structure(list(Resource = structure(logical(0), 
            shape = "ModificationResourceEnum", type = "string"), 
            State = structure(logical(0), shape = "ModificationStateEnum", 
                type = "string")), shape = "ModificationState", 
            type = "structure")), shape = "ModificationStateList", 
            type = "list")), shape = "Workspace", type = "structure")), 
        shape = "WorkspaceList", type = "list")), shape = "CreateWorkspacesResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_ip_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "IpGroupId", 
        type = "string", pattern = "wsipg-[0-9a-z]{8,63}$")), 
        shape = "DeleteIpGroupRequest", type = "structure")
    return(populate(args, shape))
}

delete_ip_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteIpGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L), 
        TagKeys = structure(list(structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L)), shape = "TagKeyList", 
            type = "list")), shape = "DeleteTagsRequest", type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTagsResult", type = "structure")
    return(populate(args, shape))
}

describe_ip_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupIds = structure(list(structure(logical(0), 
        shape = "IpGroupId", type = "string", pattern = "wsipg-[0-9a-z]{8,63}$")), 
        shape = "IpGroupIdList", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 63L, 
        min = 1L), MaxResults = structure(logical(0), shape = "Limit", 
        type = "integer", max = 25L, min = 1L)), shape = "DescribeIpGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_ip_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Result = structure(list(structure(list(GroupId = structure(logical(0), 
        shape = "IpGroupId", type = "string", pattern = "wsipg-[0-9a-z]{8,63}$", 
        locationName = "groupId"), GroupName = structure(logical(0), 
        shape = "IpGroupName", type = "string", locationName = "groupName"), 
        GroupDesc = structure(logical(0), shape = "IpGroupDesc", 
            type = "string", locationName = "groupDesc"), UserRules = structure(list(structure(list(IpRule = structure(logical(0), 
            shape = "IpRule", type = "string", locationName = "ipRule"), 
            RuleDesc = structure(logical(0), shape = "IpRuleDesc", 
                type = "string", locationName = "ruleDesc")), 
            shape = "IpRuleItem", type = "structure")), shape = "IpRuleList", 
            type = "list", locationName = "userRules")), shape = "WorkspacesIpGroup", 
        type = "structure")), shape = "WorkspacesIpGroupsList", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 63L, min = 1L)), shape = "DescribeIpGroupsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", min = 1L)), 
        shape = "DescribeTagsRequest", type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 127L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 255L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "DescribeTagsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspace_bundles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleIds = structure(list(structure(logical(0), 
        shape = "BundleId", type = "string", pattern = "^wsb-[0-9a-z]{8,63}$")), 
        shape = "BundleIdList", type = "list", max = 25L, min = 1L), 
        Owner = structure(logical(0), shape = "BundleOwner", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 63L, 
            min = 1L)), shape = "DescribeWorkspaceBundlesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspace_bundles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Bundles = structure(list(structure(list(BundleId = structure(logical(0), 
        shape = "BundleId", type = "string", pattern = "^wsb-[0-9a-z]{8,63}$"), 
        Name = structure(logical(0), shape = "NonEmptyString", 
            type = "string", min = 1L), Owner = structure(logical(0), 
            shape = "BundleOwner", type = "string"), Description = structure(logical(0), 
            shape = "Description", type = "string"), RootStorage = structure(list(Capacity = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L)), 
            shape = "RootStorage", type = "structure"), UserStorage = structure(list(Capacity = structure(logical(0), 
            shape = "NonEmptyString", type = "string", min = 1L)), 
            shape = "UserStorage", type = "structure"), ComputeType = structure(list(Name = structure(logical(0), 
            shape = "Compute", type = "string")), shape = "ComputeType", 
            type = "structure")), shape = "WorkspaceBundle", 
        type = "structure")), shape = "BundleList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 63L, min = 1L)), shape = "DescribeWorkspaceBundlesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspace_directories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryIds = structure(list(structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{8,63}$")), 
        shape = "DirectoryIdList", type = "list", max = 25L, 
        min = 1L), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 63L, min = 1L)), shape = "DescribeWorkspaceDirectoriesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspace_directories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Directories = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        Alias = structure(logical(0), shape = "Alias", type = "string"), 
        DirectoryName = structure(logical(0), shape = "DirectoryName", 
            type = "string"), RegistrationCode = structure(logical(0), 
            shape = "RegistrationCode", type = "string", max = 20L, 
            min = 1L), SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8})$")), 
            shape = "SubnetIds", type = "list"), DnsIpAddresses = structure(list(structure(logical(0), 
            shape = "IpAddress", type = "string")), shape = "DnsIpAddresses", 
            type = "list"), CustomerUserName = structure(logical(0), 
            shape = "UserName", type = "string", max = 63L, min = 1L), 
        IamRoleId = structure(logical(0), shape = "ARN", type = "string", 
            pattern = "^arn:aws:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-za-z0-9_/.-]{0,127}$"), 
        DirectoryType = structure(logical(0), shape = "WorkspaceDirectoryType", 
            type = "string"), WorkspaceSecurityGroupId = structure(logical(0), 
            shape = "SecurityGroupId", type = "string", pattern = "^(sg-[0-9a-f]{8})$"), 
        State = structure(logical(0), shape = "WorkspaceDirectoryState", 
            type = "string"), WorkspaceCreationProperties = structure(list(EnableWorkDocs = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), EnableInternetAccess = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), DefaultOu = structure(logical(0), 
            shape = "DefaultOu", type = "string"), CustomSecurityGroupId = structure(logical(0), 
            shape = "SecurityGroupId", type = "string", pattern = "^(sg-[0-9a-f]{8})$"), 
            UserEnabledAsLocalAdministrator = structure(logical(0), 
                shape = "BooleanObject", type = "boolean")), 
            shape = "DefaultWorkspaceCreationProperties", type = "structure"), 
        IpGroupIds = structure(list(structure(logical(0), shape = "IpGroupId", 
            type = "string", pattern = "wsipg-[0-9a-z]{8,63}$")), 
            shape = "IpGroupIdList", type = "list", locationName = "ipGroupIds")), 
        shape = "WorkspaceDirectory", type = "structure")), shape = "DirectoryList", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 63L, min = 1L)), shape = "DescribeWorkspaceDirectoriesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkspaceIds = structure(list(structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "WorkspaceIdList", type = "list", max = 25L, 
        min = 1L), DirectoryId = structure(logical(0), shape = "DirectoryId", 
        type = "string", pattern = "^d-[0-9a-f]{8,63}$"), UserName = structure(logical(0), 
        shape = "UserName", type = "string", max = 63L, min = 1L), 
        BundleId = structure(logical(0), shape = "BundleId", 
            type = "string", pattern = "^wsb-[0-9a-z]{8,63}$"), 
        Limit = structure(logical(0), shape = "Limit", type = "integer", 
            max = 25L, min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 63L, 
            min = 1L)), shape = "DescribeWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Workspaces = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        DirectoryId = structure(logical(0), shape = "DirectoryId", 
            type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        UserName = structure(logical(0), shape = "UserName", 
            type = "string", max = 63L, min = 1L), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string"), State = structure(logical(0), 
            shape = "WorkspaceState", type = "string"), BundleId = structure(logical(0), 
            shape = "BundleId", type = "string", pattern = "^wsb-[0-9a-z]{8,63}$"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            type = "string", pattern = "^(subnet-[0-9a-f]{8})$"), 
        ErrorMessage = structure(logical(0), shape = "Description", 
            type = "string"), ErrorCode = structure(logical(0), 
            shape = "WorkspaceErrorCode", type = "string"), ComputerName = structure(logical(0), 
            shape = "ComputerName", type = "string"), VolumeEncryptionKey = structure(logical(0), 
            shape = "VolumeEncryptionKey", type = "string"), 
        UserVolumeEncryptionEnabled = structure(logical(0), shape = "BooleanObject", 
            type = "boolean"), RootVolumeEncryptionEnabled = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), WorkspaceProperties = structure(list(RunningMode = structure(logical(0), 
            shape = "RunningMode", type = "string"), RunningModeAutoStopTimeoutInMinutes = structure(logical(0), 
            shape = "RunningModeAutoStopTimeoutInMinutes", type = "integer"), 
            RootVolumeSizeGib = structure(logical(0), shape = "RootVolumeSizeGib", 
                type = "integer"), UserVolumeSizeGib = structure(logical(0), 
                shape = "UserVolumeSizeGib", type = "integer"), 
            ComputeTypeName = structure(logical(0), shape = "Compute", 
                type = "string")), shape = "WorkspaceProperties", 
            type = "structure"), ModificationStates = structure(list(structure(list(Resource = structure(logical(0), 
            shape = "ModificationResourceEnum", type = "string"), 
            State = structure(logical(0), shape = "ModificationStateEnum", 
                type = "string")), shape = "ModificationState", 
            type = "structure")), shape = "ModificationStateList", 
            type = "list")), shape = "Workspace", type = "structure")), 
        shape = "WorkspaceList", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 63L, 
        min = 1L)), shape = "DescribeWorkspacesResult", type = "structure")
    return(populate(args, shape))
}

describe_workspaces_connection_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkspaceIds = structure(list(structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "WorkspaceIdList", type = "list", max = 25L, 
        min = 1L), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 63L, min = 1L)), shape = "DescribeWorkspacesConnectionStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_workspaces_connection_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkspacesConnectionStatus = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string"), ConnectionStateCheckTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastKnownUserConnectionTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "WorkspaceConnectionStatus", 
        type = "structure")), shape = "WorkspaceConnectionStatusList", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 63L, min = 1L)), shape = "DescribeWorkspacesConnectionStatusResult", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_ip_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{8,63}$"), 
        GroupIds = structure(list(structure(logical(0), shape = "IpGroupId", 
            type = "string", pattern = "wsipg-[0-9a-z]{8,63}$")), 
            shape = "IpGroupIdList", type = "list")), shape = "DisassociateIpGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_ip_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateIpGroupsResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_workspace_properties_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        WorkspaceProperties = structure(list(RunningMode = structure(logical(0), 
            shape = "RunningMode", type = "string"), RunningModeAutoStopTimeoutInMinutes = structure(logical(0), 
            shape = "RunningModeAutoStopTimeoutInMinutes", type = "integer"), 
            RootVolumeSizeGib = structure(logical(0), shape = "RootVolumeSizeGib", 
                type = "integer"), UserVolumeSizeGib = structure(logical(0), 
                shape = "UserVolumeSizeGib", type = "integer"), 
            ComputeTypeName = structure(logical(0), shape = "Compute", 
                type = "string")), shape = "WorkspaceProperties", 
            type = "structure")), shape = "ModifyWorkspacePropertiesRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_workspace_properties_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ModifyWorkspacePropertiesResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_workspace_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        WorkspaceState = structure(logical(0), shape = "TargetWorkspaceState", 
            type = "string")), shape = "ModifyWorkspaceStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_workspace_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ModifyWorkspaceStateResult", 
        type = "structure")
    return(populate(args, shape))
}

reboot_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RebootWorkspaceRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "RebootRequest", type = "structure")), shape = "RebootWorkspaceRequests", 
        type = "list", max = 25L, min = 1L)), shape = "RebootWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

reboot_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        ErrorCode = structure(logical(0), shape = "ErrorType", 
            type = "string"), ErrorMessage = structure(logical(0), 
            shape = "Description", type = "string")), shape = "FailedWorkspaceChangeRequest", 
        type = "structure")), shape = "FailedRebootWorkspaceRequests", 
        type = "list")), shape = "RebootWorkspacesResult", type = "structure")
    return(populate(args, shape))
}

rebuild_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RebuildWorkspaceRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "RebuildRequest", type = "structure")), shape = "RebuildWorkspaceRequests", 
        type = "list", max = 1L, min = 1L)), shape = "RebuildWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

rebuild_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        ErrorCode = structure(logical(0), shape = "ErrorType", 
            type = "string"), ErrorMessage = structure(logical(0), 
            shape = "Description", type = "string")), shape = "FailedWorkspaceChangeRequest", 
        type = "structure")), shape = "FailedRebuildWorkspaceRequests", 
        type = "list")), shape = "RebuildWorkspacesResult", type = "structure")
    return(populate(args, shape))
}

revoke_ip_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "IpGroupId", 
        type = "string", pattern = "wsipg-[0-9a-z]{8,63}$"), 
        UserRules = structure(list(structure(logical(0), shape = "IpRule", 
            type = "string")), shape = "IpRevokedRuleList", type = "list")), 
        shape = "RevokeIpRulesRequest", type = "structure")
    return(populate(args, shape))
}

revoke_ip_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RevokeIpRulesResult", 
        type = "structure")
    return(populate(args, shape))
}

start_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartWorkspaceRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "StartRequest", type = "structure")), shape = "StartWorkspaceRequests", 
        type = "list", max = 25L, min = 1L)), shape = "StartWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        ErrorCode = structure(logical(0), shape = "ErrorType", 
            type = "string"), ErrorMessage = structure(logical(0), 
            shape = "Description", type = "string")), shape = "FailedWorkspaceChangeRequest", 
        type = "structure")), shape = "FailedStartWorkspaceRequests", 
        type = "list")), shape = "StartWorkspacesResult", type = "structure")
    return(populate(args, shape))
}

stop_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StopWorkspaceRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "StopRequest", type = "structure")), shape = "StopWorkspaceRequests", 
        type = "list", max = 25L, min = 1L)), shape = "StopWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        ErrorCode = structure(logical(0), shape = "ErrorType", 
            type = "string"), ErrorMessage = structure(logical(0), 
            shape = "Description", type = "string")), shape = "FailedWorkspaceChangeRequest", 
        type = "structure")), shape = "FailedStopWorkspaceRequests", 
        type = "list")), shape = "StopWorkspacesResult", type = "structure")
    return(populate(args, shape))
}

terminate_workspaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TerminateWorkspaceRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$")), 
        shape = "TerminateRequest", type = "structure")), shape = "TerminateWorkspaceRequests", 
        type = "list", max = 25L, min = 1L)), shape = "TerminateWorkspacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

terminate_workspaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRequests = structure(list(structure(list(WorkspaceId = structure(logical(0), 
        shape = "WorkspaceId", type = "string", pattern = "^ws-[0-9a-z]{8,63}$"), 
        ErrorCode = structure(logical(0), shape = "ErrorType", 
            type = "string"), ErrorMessage = structure(logical(0), 
            shape = "Description", type = "string")), shape = "FailedWorkspaceChangeRequest", 
        type = "structure")), shape = "FailedTerminateWorkspaceRequests", 
        type = "list")), shape = "TerminateWorkspacesResult", 
        type = "structure")
    return(populate(args, shape))
}

update_rules_of_ip_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "IpGroupId", 
        type = "string", pattern = "wsipg-[0-9a-z]{8,63}$"), 
        UserRules = structure(list(structure(list(IpRule = structure(logical(0), 
            shape = "IpRule", type = "string", locationName = "ipRule"), 
            RuleDesc = structure(logical(0), shape = "IpRuleDesc", 
                type = "string", locationName = "ruleDesc")), 
            shape = "IpRuleItem", type = "structure")), shape = "IpRuleList", 
            type = "list")), shape = "UpdateRulesOfIpGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_rules_of_ip_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateRulesOfIpGroupResult", 
        type = "structure")
    return(populate(args, shape))
}
