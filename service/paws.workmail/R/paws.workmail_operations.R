#' Adds a member to the resource\'s set of delegates
#'
#' Adds a member to the resource\'s set of delegates.
#'
#' @param OrganizationId The organization under which the resource exists.
#' @param ResourceId The resource for which members are associated.
#' @param EntityId The member (user or group) to associate to the resource.
#'
#' @examples
#'
#' @export
associate_delegate_to_resource <- function (OrganizationId, ResourceId, 
    EntityId) 
{
    op <- Operation(name = "AssociateDelegateToResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_delegate_to_resource_input(OrganizationId = OrganizationId, 
        ResourceId = ResourceId, EntityId = EntityId)
    output <- associate_delegate_to_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a member to the group\'s set
#'
#' Adds a member to the group\'s set.
#'
#' @param OrganizationId The organization under which the group exists.
#' @param GroupId The group for which the member is associated.
#' @param MemberId The member to associate to the group.
#'
#' @examples
#'
#' @export
associate_member_to_group <- function (OrganizationId, GroupId, 
    MemberId) 
{
    op <- Operation(name = "AssociateMemberToGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_member_to_group_input(OrganizationId = OrganizationId, 
        GroupId = GroupId, MemberId = MemberId)
    output <- associate_member_to_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds an alias to the set of a given member of Amazon WorkMail
#'
#' Adds an alias to the set of a given member of Amazon WorkMail.
#'
#' @param OrganizationId The organization under which the member exists.
#' @param EntityId The alias is added to this Amazon WorkMail entity.
#' @param Alias The alias to add to the user.
#'
#' @examples
#'
#' @export
create_alias <- function (OrganizationId, EntityId, Alias) 
{
    op <- Operation(name = "CreateAlias", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_alias_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, Alias = Alias)
    output <- create_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation
#'
#' Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
#'
#' @param OrganizationId The organization under which the group is to be created.
#' @param Name The name of the group.
#'
#' @examples
#'
#' @export
create_group <- function (OrganizationId, Name) 
{
    op <- Operation(name = "CreateGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_group_input(OrganizationId = OrganizationId, 
        Name = Name)
    output <- create_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new Amazon WorkMail resource
#'
#' Creates a new Amazon WorkMail resource. The available types are equipment and room.
#'
#' @param OrganizationId The identifier associated with the organization for which the resource is created.
#' @param Name The name of the created resource.
#' @param Type The type of the created resource.
#'
#' @examples
#'
#' @export
create_resource <- function (OrganizationId, Name, Type) 
{
    op <- Operation(name = "CreateResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_resource_input(OrganizationId = OrganizationId, 
        Name = Name, Type = Type)
    output <- create_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation
#'
#' Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
#'
#' @param OrganizationId The identifier of the organization for which the user is created.
#' @param Name The name for the user to be created.
#' @param DisplayName The display name for the user to be created.
#' @param Password The password for the user to be created.
#'
#' @examples
#'
#' @export
create_user <- function (OrganizationId, Name, DisplayName, Password) 
{
    op <- Operation(name = "CreateUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_input(OrganizationId = OrganizationId, 
        Name = Name, DisplayName = DisplayName, Password = Password)
    output <- create_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Remove the alias from a set of aliases for a given user
#'
#' Remove the alias from a set of aliases for a given user.
#'
#' @param OrganizationId The identifier for the organization under which the user exists.
#' @param EntityId The identifier for the Amazon WorkMail entity to have the aliases removed.
#' @param Alias The aliases to be removed from the user\'s set of aliases. Duplicate entries in the list are collapsed into single entries (the list is transformed into a set).
#'
#' @examples
#'
#' @export
delete_alias <- function (OrganizationId, EntityId, Alias) 
{
    op <- Operation(name = "DeleteAlias", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_alias_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, Alias = Alias)
    output <- delete_alias_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a group from Amazon WorkMail
#'
#' Deletes a group from Amazon WorkMail.
#'
#' @param OrganizationId The organization that contains the group.
#' @param GroupId The identifier of the group to be deleted.
#'
#' @examples
#'
#' @export
delete_group <- function (OrganizationId, GroupId) 
{
    op <- Operation(name = "DeleteGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_group_input(OrganizationId = OrganizationId, 
        GroupId = GroupId)
    output <- delete_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes permissions granted to a user or group
#'
#' Deletes permissions granted to a user or group.
#'
#' @param OrganizationId The identifier of the organization under which the entity (user or group) exists.
#' @param EntityId The identifier of the entity (user or group) for which to delete mailbox permissions.
#' @param GranteeId The identifier of the entity (user or group) for which to delete granted permissions.
#'
#' @examples
#'
#' @export
delete_mailbox_permissions <- function (OrganizationId, EntityId, 
    GranteeId) 
{
    op <- Operation(name = "DeleteMailboxPermissions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_mailbox_permissions_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, GranteeId = GranteeId)
    output <- delete_mailbox_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified resource
#'
#' Deletes the specified resource.
#'
#' @param OrganizationId The identifier associated with the organization for which the resource is deleted.
#' @param ResourceId The identifier of the resource to be deleted.
#'
#' @examples
#'
#' @export
delete_resource <- function (OrganizationId, ResourceId) 
{
    op <- Operation(name = "DeleteResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_resource_input(OrganizationId = OrganizationId, 
        ResourceId = ResourceId)
    output <- delete_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a user from Amazon WorkMail and all subsequent systems
#'
#' Deletes a user from Amazon WorkMail and all subsequent systems. The action can\'t be undone. The mailbox is kept as-is for a minimum of 30 days, without any means to restore it.
#'
#' @param OrganizationId The organization that contains the user.
#' @param UserId The identifier of the user to be deleted.
#'
#' @examples
#'
#' @export
delete_user <- function (OrganizationId, UserId) 
{
    op <- Operation(name = "DeleteUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_input(OrganizationId = OrganizationId, 
        UserId = UserId)
    output <- delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Mark a user, group, or resource as no longer used in Amazon WorkMail
#'
#' Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. Amazon WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is *Disable*.
#'
#' @param OrganizationId The identifier for the organization under which the Amazon WorkMail entity exists.
#' @param EntityId The identifier for the entity to be updated.
#'
#' @examples
#'
#' @export
deregister_from_work_mail <- function (OrganizationId, EntityId) 
{
    op <- Operation(name = "DeregisterFromWorkMail", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- deregister_from_work_mail_input(OrganizationId = OrganizationId, 
        EntityId = EntityId)
    output <- deregister_from_work_mail_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the data available for the group
#'
#' Returns the data available for the group.
#'
#' @param OrganizationId The identifier for the organization under which the group exists.
#' @param GroupId The identifier for the group to be described.
#'
#' @examples
#'
#' @export
describe_group <- function (OrganizationId, GroupId) 
{
    op <- Operation(name = "DescribeGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_group_input(OrganizationId = OrganizationId, 
        GroupId = GroupId)
    output <- describe_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides more information regarding a given organization based on its identifier
#'
#' Provides more information regarding a given organization based on its identifier.
#'
#' @param OrganizationId The identifier for the organization to be described.
#'
#' @examples
#'
#' @export
describe_organization <- function (OrganizationId) 
{
    op <- Operation(name = "DescribeOrganization", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_organization_input(OrganizationId = OrganizationId)
    output <- describe_organization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the data available for the resource
#'
#' Returns the data available for the resource.
#'
#' @param OrganizationId The identifier associated with the organization for which the resource is described.
#' @param ResourceId The identifier of the resource to be described.
#'
#' @examples
#'
#' @export
describe_resource <- function (OrganizationId, ResourceId) 
{
    op <- Operation(name = "DescribeResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_resource_input(OrganizationId = OrganizationId, 
        ResourceId = ResourceId)
    output <- describe_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information regarding the user
#'
#' Provides information regarding the user.
#'
#' @param OrganizationId The identifier for the organization under which the user exists.
#' @param UserId The identifier for the user to be described.
#'
#' @examples
#'
#' @export
describe_user <- function (OrganizationId, UserId) 
{
    op <- Operation(name = "DescribeUser", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_user_input(OrganizationId = OrganizationId, 
        UserId = UserId)
    output <- describe_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a member from the resource\'s set of delegates
#'
#' Removes a member from the resource\'s set of delegates.
#'
#' @param OrganizationId The identifier for the organization under which the resource exists.
#' @param ResourceId The identifier of the resource from which delegates\' set members are removed.
#' @param EntityId The identifier for the member (user, group) to be removed from the resource\'s delegates.
#'
#' @examples
#'
#' @export
disassociate_delegate_from_resource <- function (OrganizationId, 
    ResourceId, EntityId) 
{
    op <- Operation(name = "DisassociateDelegateFromResource", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_delegate_from_resource_input(OrganizationId = OrganizationId, 
        ResourceId = ResourceId, EntityId = EntityId)
    output <- disassociate_delegate_from_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a member from a group
#'
#' Removes a member from a group.
#'
#' @param OrganizationId The identifier for the organization under which the group exists.
#' @param GroupId The identifier for the group from which members are removed.
#' @param MemberId The identifier for the member to be removed to the group.
#'
#' @examples
#'
#' @export
disassociate_member_from_group <- function (OrganizationId, GroupId, 
    MemberId) 
{
    op <- Operation(name = "DisassociateMemberFromGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_member_from_group_input(OrganizationId = OrganizationId, 
        GroupId = GroupId, MemberId = MemberId)
    output <- disassociate_member_from_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a paginated call to list the aliases associated with a given entity
#'
#' Creates a paginated call to list the aliases associated with a given entity.
#'
#' @param OrganizationId The identifier for the organization under which the entity exists.
#' @param EntityId The identifier for the entity for which to list the aliases.
#' @param NextToken The token to use to retrieve the next page of results. The first call does not contain any tokens.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_aliases <- function (OrganizationId, EntityId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListAliases", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_aliases_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, NextToken = NextToken, MaxResults = MaxResults)
    output <- list_aliases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an overview of the members of a group
#'
#' Returns an overview of the members of a group.
#'
#' @param OrganizationId The identifier for the organization under which the group exists.
#' @param GroupId The identifier for the group to which the members are associated.
#' @param NextToken The token to use to retrieve the next page of results. The first call does not contain any tokens.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_group_members <- function (OrganizationId, GroupId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListGroupMembers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_group_members_input(OrganizationId = OrganizationId, 
        GroupId = GroupId, NextToken = NextToken, MaxResults = MaxResults)
    output <- list_group_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summaries of the organization\'s groups
#'
#' Returns summaries of the organization\'s groups.
#'
#' @param OrganizationId The identifier for the organization under which the groups exist.
#' @param NextToken The token to use to retrieve the next page of results. The first call does not contain any tokens.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_groups <- function (OrganizationId, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_groups_input(OrganizationId = OrganizationId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the mailbox permissions associated with a mailbox
#'
#' Lists the mailbox permissions associated with a mailbox.
#'
#' @param OrganizationId The identifier of the organization under which the entity (user or group) exists.
#' @param EntityId The identifier of the entity (user or group) for which to list mailbox permissions.
#' @param NextToken The token to use to retrieve the next page of results. The first call does not contain any tokens.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_mailbox_permissions <- function (OrganizationId, EntityId, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListMailboxPermissions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_mailbox_permissions_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, NextToken = NextToken, MaxResults = MaxResults)
    output <- list_mailbox_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summaries of the customer\'s non-deleted organizations
#'
#' Returns summaries of the customer\'s non-deleted organizations.
#'
#' @param NextToken The token to use to retrieve the next page of results. The first call does not contain any tokens.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_organizations <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListOrganizations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_organizations_input(NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_organizations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the delegates associated with a resource
#'
#' Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
#'
#' @param OrganizationId The identifier for the organization that contains the resource for which delegates are listed.
#' @param ResourceId The identifier for the resource whose delegates are listed.
#' @param NextToken The token used to paginate through the delegates associated with a resource.
#' @param MaxResults The number of maximum results in a page.
#'
#' @examples
#'
#' @export
list_resource_delegates <- function (OrganizationId, ResourceId, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListResourceDelegates", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_resource_delegates_input(OrganizationId = OrganizationId, 
        ResourceId = ResourceId, NextToken = NextToken, MaxResults = MaxResults)
    output <- list_resource_delegates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summaries of the organization\'s resources
#'
#' Returns summaries of the organization\'s resources.
#'
#' @param OrganizationId The identifier for the organization under which the resources exist.
#' @param NextToken The token to use to retrieve the next page of results. The first call does not contain any tokens.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_resources <- function (OrganizationId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListResources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_resources_input(OrganizationId = OrganizationId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns summaries of the organization\'s users
#'
#' Returns summaries of the organization\'s users.
#'
#' @param OrganizationId The identifier for the organization under which the users exist.
#' @param NextToken TBD
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
list_users <- function (OrganizationId, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListUsers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_users_input(OrganizationId = OrganizationId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets permissions for a user or group
#'
#' Sets permissions for a user or group. This replaces any pre-existing permissions set for the entity.
#'
#' @param OrganizationId The identifier of the organization under which the entity (user or group) exists.
#' @param EntityId The identifier of the entity (user or group) for which to update mailbox permissions.
#' @param GranteeId The identifier of the entity (user or group) to which to grant the permissions.
#' @param PermissionValues The permissions granted to the grantee. SEND\_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND\_ON\_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL\_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox.
#'
#' @examples
#'
#' @export
put_mailbox_permissions <- function (OrganizationId, EntityId, 
    GranteeId, PermissionValues) 
{
    op <- Operation(name = "PutMailboxPermissions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_mailbox_permissions_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, GranteeId = GranteeId, PermissionValues = PermissionValues)
    output <- put_mailbox_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers an existing and disabled user, group, or resource/entity for Amazon WorkMail use by associating a mailbox and calendaring capabilities
#'
#' Registers an existing and disabled user, group, or resource/entity for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the entity is enabled and fails if the entity is deleted. This operation results in the accumulation of costs. For more information, see [Pricing](http://aws.amazon.com/workmail/pricing). The equivalent console functionality for this operation is *Enable*. Users can either be created by calling the CreateUser API or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.
#'
#' @param OrganizationId The identifier for the organization under which the Amazon WorkMail entity exists.
#' @param EntityId The identifier for the entity to be updated.
#' @param Email The email for the entity to be updated.
#'
#' @examples
#'
#' @export
register_to_work_mail <- function (OrganizationId, EntityId, 
    Email) 
{
    op <- Operation(name = "RegisterToWorkMail", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_to_work_mail_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, Email = Email)
    output <- register_to_work_mail_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allows the administrator to reset the password for a user
#'
#' Allows the administrator to reset the password for a user.
#'
#' @param OrganizationId The identifier of the organization that contains the user for which the password is reset.
#' @param UserId The identifier of the user for whom the password is reset.
#' @param Password The new password for the user.
#'
#' @examples
#'
#' @export
reset_password <- function (OrganizationId, UserId, Password) 
{
    op <- Operation(name = "ResetPassword", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_password_input(OrganizationId = OrganizationId, 
        UserId = UserId, Password = Password)
    output <- reset_password_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the primary email for an entity
#'
#' Updates the primary email for an entity. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email) and the email provided in the input is promoted as the primary.
#'
#' @param OrganizationId The organization that contains the entity to update.
#' @param EntityId The entity to update (user, group, or resource).
#' @param Email The value of the email to be updated as primary.
#'
#' @examples
#'
#' @export
update_primary_email_address <- function (OrganizationId, EntityId, 
    Email) 
{
    op <- Operation(name = "UpdatePrimaryEmailAddress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_primary_email_address_input(OrganizationId = OrganizationId, 
        EntityId = EntityId, Email = Email)
    output <- update_primary_email_address_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates data for the resource
#'
#' Updates data for the resource. It must be preceded by a describe call in order to have the latest information. The dataset in the request should be the one expected when performing another describe call.
#'
#' @param OrganizationId The identifier associated with the organization for which the resource is updated.
#' @param ResourceId The identifier of the resource to be updated.
#' @param Name The name of the resource to be updated.
#' @param BookingOptions The resource\'s booking options to be updated.
#'
#' @examples
#'
#' @export
update_resource <- function (OrganizationId, ResourceId, Name = NULL, 
    BookingOptions = NULL) 
{
    op <- Operation(name = "UpdateResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_resource_input(OrganizationId = OrganizationId, 
        ResourceId = ResourceId, Name = Name, BookingOptions = BookingOptions)
    output <- update_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
