associate_delegate_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", pattern = "^r-[0-9a-f]{32}$"), EntityId = structure(logical(0), 
            shape = "WorkMailIdentifier", type = "string", max = 256L, 
            min = 12L)), shape = "AssociateDelegateToResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_delegate_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateDelegateToResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_member_to_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), MemberId = structure(logical(0), 
            shape = "WorkMailIdentifier", type = "string", max = 256L, 
            min = 12L)), shape = "AssociateMemberToGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_member_to_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateMemberToGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), Alias = structure(logical(0), 
            shape = "EmailAddress", type = "string", max = 254L, 
            min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "CreateAliasRequest", type = "structure")
    return(populate(args, shape))
}

create_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateAliasResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 256L, min = 1L, pattern = "[\\u0020-\\u00FF]+")), 
        shape = "CreateGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
        type = "string", max = 256L, min = 12L)), shape = "CreateGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 20L, min = 1L, pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        Type = structure(logical(0), shape = "ResourceType", 
            type = "string")), shape = "CreateResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string", pattern = "^r-[0-9a-f]{32}$")), 
        shape = "CreateResourceResponse", type = "structure")
    return(populate(args, shape))
}

create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        Name = structure(logical(0), shape = "UserName", type = "string", 
            max = 64L, min = 1L, pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        DisplayName = structure(logical(0), shape = "String", 
            type = "string", max = 256L), Password = structure(logical(0), 
            shape = "Password", type = "string", max = 256L, 
            pattern = "[\\u0020-\\u00FF]+", sensitive = TRUE)), 
        shape = "CreateUserRequest", type = "structure")
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "WorkMailIdentifier", 
        type = "string", max = 256L, min = 12L)), shape = "CreateUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), Alias = structure(logical(0), 
            shape = "EmailAddress", type = "string", max = 254L, 
            min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "DeleteAliasRequest", type = "structure")
    return(populate(args, shape))
}

delete_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteAliasResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L)), shape = "DeleteGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_mailbox_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), GranteeId = structure(logical(0), 
            shape = "WorkMailIdentifier", type = "string", max = 256L, 
            min = 12L)), shape = "DeleteMailboxPermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_mailbox_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteMailboxPermissionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", pattern = "^r-[0-9a-f]{32}$")), 
        shape = "DeleteResourceRequest", type = "structure")
    return(populate(args, shape))
}

delete_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        UserId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L)), shape = "DeleteUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

deregister_from_work_mail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L)), shape = "DeregisterFromWorkMailRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_from_work_mail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterFromWorkMailResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L)), shape = "DescribeGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
        type = "string", max = 256L, min = 12L), Name = structure(logical(0), 
        shape = "GroupName", type = "string", max = 256L, min = 1L, 
        pattern = "[\\u0020-\\u00FF]+"), Email = structure(logical(0), 
        shape = "EmailAddress", type = "string", max = 254L, 
        min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        State = structure(logical(0), shape = "EntityState", 
            type = "string"), EnabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "DescribeGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_organization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$")), 
        shape = "DescribeOrganizationRequest", type = "structure")
    return(populate(args, shape))
}

describe_organization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        Alias = structure(logical(0), shape = "OrganizationName", 
            type = "string", max = 62L, min = 1L, pattern = "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*"), 
        State = structure(logical(0), shape = "String", type = "string", 
            max = 256L), DirectoryId = structure(logical(0), 
            shape = "String", type = "string", max = 256L), DirectoryType = structure(logical(0), 
            shape = "String", type = "string", max = 256L), DefaultMailDomain = structure(logical(0), 
            shape = "String", type = "string", max = 256L), CompletedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", max = 256L)), 
        shape = "DescribeOrganizationResponse", type = "structure")
    return(populate(args, shape))
}

describe_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", pattern = "^r-[0-9a-f]{32}$")), 
        shape = "DescribeResourceRequest", type = "structure")
    return(populate(args, shape))
}

describe_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string", pattern = "^r-[0-9a-f]{32}$"), 
        Email = structure(logical(0), shape = "EmailAddress", 
            type = "string", max = 254L, min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 20L, min = 1L, pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        Type = structure(logical(0), shape = "ResourceType", 
            type = "string"), BookingOptions = structure(list(AutoAcceptRequests = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoDeclineRecurringRequests = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoDeclineConflictingRequests = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "BookingOptions", 
            type = "structure"), State = structure(logical(0), 
            shape = "EntityState", type = "string"), EnabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "DescribeResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        UserId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L)), shape = "DescribeUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "WorkMailIdentifier", 
        type = "string", max = 256L, min = 12L), Name = structure(logical(0), 
        shape = "UserName", type = "string", max = 64L, min = 1L, 
        pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        Email = structure(logical(0), shape = "EmailAddress", 
            type = "string", max = 254L, min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        DisplayName = structure(logical(0), shape = "String", 
            type = "string", max = 256L), State = structure(logical(0), 
            shape = "EntityState", type = "string"), UserRole = structure(logical(0), 
            shape = "UserRole", type = "string"), EnabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "DescribeUserResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_delegate_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", pattern = "^r-[0-9a-f]{32}$"), EntityId = structure(logical(0), 
            shape = "WorkMailIdentifier", type = "string", max = 256L, 
            min = 12L)), shape = "DisassociateDelegateFromResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_delegate_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDelegateFromResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_member_from_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), MemberId = structure(logical(0), 
            shape = "WorkMailIdentifier", type = "string", max = 256L, 
            min = 12L)), shape = "DisassociateMemberFromGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_member_from_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateMemberFromGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L)), 
        shape = "ListAliasesRequest", type = "structure")
    return(populate(args, shape))
}

list_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Aliases = structure(list(structure(logical(0), 
        shape = "EmailAddress", type = "string", max = 254L, 
        min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "Aliases", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListAliasesResponse", type = "structure")
    return(populate(args, shape))
}

list_group_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        GroupId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L)), 
        shape = "ListGroupMembersRequest", type = "structure")
    return(populate(args, shape))
}

list_group_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Members = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", max = 256L), Name = structure(logical(0), 
        shape = "String", type = "string", max = 256L), Type = structure(logical(0), 
        shape = "MemberType", type = "string"), State = structure(logical(0), 
        shape = "EntityState", type = "string"), EnabledDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "Member", 
        type = "structure")), shape = "Members", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListGroupMembersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 100L, min = 1L)), shape = "ListGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(Id = structure(logical(0), 
        shape = "WorkMailIdentifier", type = "string", max = 256L, 
        min = 12L), Email = structure(logical(0), shape = "EmailAddress", 
        type = "string", max = 254L, min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 256L, min = 1L, pattern = "[\\u0020-\\u00FF]+"), 
        State = structure(logical(0), shape = "EntityState", 
            type = "string"), EnabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Group", 
        type = "structure")), shape = "Groups", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_mailbox_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L)), 
        shape = "ListMailboxPermissionsRequest", type = "structure")
    return(populate(args, shape))
}

list_mailbox_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Permissions = structure(list(structure(list(GranteeId = structure(logical(0), 
        shape = "WorkMailIdentifier", type = "string", max = 256L, 
        min = 12L), GranteeType = structure(logical(0), shape = "MemberType", 
        type = "string"), PermissionValues = structure(list(structure(logical(0), 
        shape = "PermissionType", type = "string")), shape = "PermissionValues", 
        type = "list")), shape = "Permission", type = "structure")), 
        shape = "Permissions", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListMailboxPermissionsResponse", type = "structure")
    return(populate(args, shape))
}

list_organizations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L)), 
        shape = "ListOrganizationsRequest", type = "structure")
    return(populate(args, shape))
}

list_organizations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationSummaries = structure(list(structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        Alias = structure(logical(0), shape = "OrganizationName", 
            type = "string", max = 62L, min = 1L, pattern = "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*"), 
        ErrorMessage = structure(logical(0), shape = "String", 
            type = "string", max = 256L), State = structure(logical(0), 
            shape = "String", type = "string", max = 256L)), 
        shape = "OrganizationSummary", type = "structure")), 
        shape = "OrganizationSummaries", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListOrganizationsResponse", type = "structure")
    return(populate(args, shape))
}

list_resource_delegates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        ResourceId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 100L, min = 1L)), 
        shape = "ListResourceDelegatesRequest", type = "structure")
    return(populate(args, shape))
}

list_resource_delegates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Delegates = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", max = 256L), Type = structure(logical(0), 
        shape = "MemberType", type = "string")), shape = "Delegate", 
        type = "structure")), shape = "ResourceDelegates", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListResourceDelegatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 100L, min = 1L)), shape = "ListResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resources = structure(list(structure(list(Id = structure(logical(0), 
        shape = "WorkMailIdentifier", type = "string", max = 256L, 
        min = 12L), Email = structure(logical(0), shape = "EmailAddress", 
        type = "string", max = 254L, min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 20L, min = 1L, pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        Type = structure(logical(0), shape = "ResourceType", 
            type = "string"), State = structure(logical(0), shape = "EntityState", 
            type = "string"), EnabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Resource", 
        type = "structure")), shape = "Resources", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListResourcesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", box = TRUE, 
            max = 100L, min = 1L)), shape = "ListUsersRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Users = structure(list(structure(list(Id = structure(logical(0), 
        shape = "WorkMailIdentifier", type = "string", max = 256L, 
        min = 12L), Email = structure(logical(0), shape = "EmailAddress", 
        type = "string", max = 254L, min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        Name = structure(logical(0), shape = "UserName", type = "string", 
            max = 64L, min = 1L, pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        DisplayName = structure(logical(0), shape = "String", 
            type = "string", max = 256L), State = structure(logical(0), 
            shape = "EntityState", type = "string"), UserRole = structure(logical(0), 
            shape = "UserRole", type = "string"), EnabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DisabledDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "User", 
        type = "structure")), shape = "Users", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListUsersResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_mailbox_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), GranteeId = structure(logical(0), 
            shape = "WorkMailIdentifier", type = "string", max = 256L, 
            min = 12L), PermissionValues = structure(list(structure(logical(0), 
            shape = "PermissionType", type = "string")), shape = "PermissionValues", 
            type = "list")), shape = "PutMailboxPermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_mailbox_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutMailboxPermissionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

register_to_work_mail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), Email = structure(logical(0), 
            shape = "EmailAddress", type = "string", max = 254L, 
            min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "RegisterToWorkMailRequest", type = "structure")
    return(populate(args, shape))
}

register_to_work_mail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RegisterToWorkMailResponse", 
        type = "structure")
    return(populate(args, shape))
}

reset_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        UserId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), Password = structure(logical(0), 
            shape = "Password", type = "string", max = 256L, 
            pattern = "[\\u0020-\\u00FF]+", sensitive = TRUE)), 
        shape = "ResetPasswordRequest", type = "structure")
    return(populate(args, shape))
}

reset_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ResetPasswordResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_primary_email_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        EntityId = structure(logical(0), shape = "WorkMailIdentifier", 
            type = "string", max = 256L, min = 12L), Email = structure(logical(0), 
            shape = "EmailAddress", type = "string", max = 254L, 
            min = 1L, pattern = "[a-zA-Z0-9._%+-]{1,64}@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "UpdatePrimaryEmailAddressRequest", type = "structure")
    return(populate(args, shape))
}

update_primary_email_address_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdatePrimaryEmailAddressResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "OrganizationId", type = "string", pattern = "^m-[0-9a-f]{32}$"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", pattern = "^r-[0-9a-f]{32}$"), Name = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 20L, 
            min = 1L, pattern = "[\\w\\-.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z0-9]{2,})?"), 
        BookingOptions = structure(list(AutoAcceptRequests = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoDeclineRecurringRequests = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoDeclineConflictingRequests = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "BookingOptions", 
            type = "structure")), shape = "UpdateResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}
