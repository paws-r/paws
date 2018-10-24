#' Associates the specified IP access control group with the specified directory
#'
#' Associates the specified IP access control group with the specified directory.
#'
#' @param DirectoryId The ID of the directory.
#' @param GroupIds The IDs of one or more IP access control groups.
#'
#' @examples
#'
#' @export
associate_ip_groups <- function (DirectoryId, GroupIds) 
{
    op <- Operation(name = "AssociateIpGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_ip_groups_input(DirectoryId = DirectoryId, 
        GroupIds = GroupIds)
    output <- associate_ip_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds one or more rules to the specified IP access control group
#'
#' Adds one or more rules to the specified IP access control group.
#' 
#' This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.
#'
#' @param GroupId The ID of the group.
#' @param UserRules The rules to add to the group.
#'
#' @examples
#'
#' @export
authorize_ip_rules <- function (GroupId, UserRules) 
{
    op <- Operation(name = "AuthorizeIpRules", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- authorize_ip_rules_input(GroupId = GroupId, UserRules = UserRules)
    output <- authorize_ip_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an IP access control group
#'
#' Creates an IP access control group.
#' 
#' An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using AuthorizeIpRules.
#' 
#' There is a default IP access control group associated with your directory. If you don\'t associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.
#'
#' @param GroupName The name of the group.
#' @param GroupDesc The description of the group.
#' @param UserRules The rules to add to the group.
#'
#' @examples
#'
#' @export
create_ip_group <- function (GroupName, GroupDesc = NULL, UserRules = NULL) 
{
    op <- Operation(name = "CreateIpGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_ip_group_input(GroupName = GroupName, GroupDesc = GroupDesc, 
        UserRules = UserRules)
    output <- create_ip_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates the specified tags for the specified WorkSpace
#'
#' Creates the specified tags for the specified WorkSpace.
#'
#' @param ResourceId The ID of the WorkSpace. To find this ID, use DescribeWorkspaces.
#' @param Tags The tags. Each WorkSpace can have a maximum of 50 tags.
#'
#' @examples
#'
#' @export
create_tags <- function (ResourceId, Tags) 
{
    op <- Operation(name = "CreateTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_tags_input(ResourceId = ResourceId, Tags = Tags)
    output <- create_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates one or more WorkSpaces
#'
#' Creates one or more WorkSpaces.
#' 
#' This operation is asynchronous and returns before the WorkSpaces are created.
#'
#' @param Workspaces The WorkSpaces to create. You can specify up to 25 WorkSpaces.
#'
#' @examples
#'
#' @export
create_workspaces <- function (Workspaces) 
{
    op <- Operation(name = "CreateWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_workspaces_input(Workspaces = Workspaces)
    output <- create_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified IP access control group
#'
#' Deletes the specified IP access control group.
#' 
#' You cannot delete an IP access control group that is associated with a directory.
#'
#' @param GroupId The ID of the IP access control group.
#'
#' @examples
#'
#' @export
delete_ip_group <- function (GroupId) 
{
    op <- Operation(name = "DeleteIpGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_ip_group_input(GroupId = GroupId)
    output <- delete_ip_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified tags from the specified WorkSpace
#'
#' Deletes the specified tags from the specified WorkSpace.
#'
#' @param ResourceId The ID of the WorkSpace. To find this ID, use DescribeWorkspaces.
#' @param TagKeys The tag keys.
#'
#' @examples
#'
#' @export
delete_tags <- function (ResourceId, TagKeys) 
{
    op <- Operation(name = "DeleteTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_tags_input(ResourceId = ResourceId, TagKeys = TagKeys)
    output <- delete_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your IP access control groups
#'
#' Describes one or more of your IP access control groups.
#'
#' @param GroupIds The IDs of one or more IP access control groups.
#' @param NextToken The token for the next set of results. (You received this token from a previous call.)
#' @param MaxResults The maximum number of items to return.
#'
#' @examples
#'
#' @export
describe_ip_groups <- function (GroupIds = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "DescribeIpGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_ip_groups_input(GroupIds = GroupIds, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- describe_ip_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified tags for the specified WorkSpace
#'
#' Describes the specified tags for the specified WorkSpace.
#'
#' @param ResourceId The ID of the WorkSpace. To find this ID, use DescribeWorkspaces.
#'
#' @examples
#'
#' @export
describe_tags <- function (ResourceId) 
{
    op <- Operation(name = "DescribeTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_tags_input(ResourceId = ResourceId)
    output <- describe_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the available WorkSpace bundles
#'
#' Describes the available WorkSpace bundles.
#' 
#' You can filter the results using either bundle ID or owner, but not both.
#'
#' @param BundleIds The IDs of the bundles. This parameter cannot be combined with any other filter.
#' @param Owner The owner of the bundles. This parameter cannot be combined with any other filter.
#' 
#' Specify `AMAZON` to describe the bundles provided by AWS or null to describe the bundles that belong to your account.
#' @param NextToken The token for the next set of results. (You received this token from a previous call.)
#'
#' @examples
#'
#' @export
describe_workspace_bundles <- function (BundleIds = NULL, Owner = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeWorkspaceBundles", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_workspace_bundles_input(BundleIds = BundleIds, 
        Owner = Owner, NextToken = NextToken)
    output <- describe_workspace_bundles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the available AWS Directory Service directories that are registered with Amazon WorkSpaces
#'
#' Describes the available AWS Directory Service directories that are registered with Amazon WorkSpaces.
#'
#' @param DirectoryIds The identifiers of the directories. If the value is null, all directories are retrieved.
#' @param NextToken The token for the next set of results. (You received this token from a previous call.)
#'
#' @examples
#'
#' @export
describe_workspace_directories <- function (DirectoryIds = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeWorkspaceDirectories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_workspace_directories_input(DirectoryIds = DirectoryIds, 
        NextToken = NextToken)
    output <- describe_workspace_directories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified WorkSpaces
#'
#' Describes the specified WorkSpaces.
#' 
#' You can filter the results using bundle ID, directory ID, or owner, but you can specify only one filter at a time.
#'
#' @param WorkspaceIds The IDs of the WorkSpaces. This parameter cannot be combined with any other filter.
#' 
#' Because the CreateWorkspaces operation is asynchronous, the identifier it returns is not immediately available. If you immediately call DescribeWorkspaces with this identifier, no information is returned.
#' @param DirectoryId The ID of the directory. In addition, you can optionally specify a specific directory user (see `UserName`). This parameter cannot be combined with any other filter.
#' @param UserName The name of the directory user. You must specify this parameter with `DirectoryId`.
#' @param BundleId The ID of the bundle. All WorkSpaces that are created from this bundle are retrieved. This parameter cannot be combined with any other filter.
#' @param Limit The maximum number of items to return.
#' @param NextToken The token for the next set of results. (You received this token from a previous call.)
#'
#' @examples
#'
#' @export
describe_workspaces <- function (WorkspaceIds = NULL, DirectoryId = NULL, 
    UserName = NULL, BundleId = NULL, Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_workspaces_input(WorkspaceIds = WorkspaceIds, 
        DirectoryId = DirectoryId, UserName = UserName, BundleId = BundleId, 
        Limit = Limit, NextToken = NextToken)
    output <- describe_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the connection status of the specified WorkSpaces
#'
#' Describes the connection status of the specified WorkSpaces.
#'
#' @param WorkspaceIds The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.
#' @param NextToken The token for the next set of results. (You received this token from a previous call.)
#'
#' @examples
#'
#' @export
describe_workspaces_connection_status <- function (WorkspaceIds = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeWorkspacesConnectionStatus", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_workspaces_connection_status_input(WorkspaceIds = WorkspaceIds, 
        NextToken = NextToken)
    output <- describe_workspaces_connection_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the specified IP access control group from the specified directory
#'
#' Disassociates the specified IP access control group from the specified directory.
#'
#' @param DirectoryId The ID of the directory.
#' @param GroupIds The IDs of one or more IP access control groups.
#'
#' @examples
#'
#' @export
disassociate_ip_groups <- function (DirectoryId, GroupIds) 
{
    op <- Operation(name = "DisassociateIpGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_ip_groups_input(DirectoryId = DirectoryId, 
        GroupIds = GroupIds)
    output <- disassociate_ip_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified WorkSpace properties
#'
#' Modifies the specified WorkSpace properties.
#'
#' @param WorkspaceId The ID of the WorkSpace.
#' @param WorkspaceProperties The properties of the WorkSpace.
#'
#' @examples
#'
#' @export
modify_workspace_properties <- function (WorkspaceId, WorkspaceProperties) 
{
    op <- Operation(name = "ModifyWorkspaceProperties", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_workspace_properties_input(WorkspaceId = WorkspaceId, 
        WorkspaceProperties = WorkspaceProperties)
    output <- modify_workspace_properties_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the state of the specified WorkSpace
#'
#' Sets the state of the specified WorkSpace.
#' 
#' To maintain a WorkSpace without being interrupted, set the WorkSpace state to `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond to requests to reboot, stop, start, or rebuild. An AutoStop WorkSpace in this state is not stopped. Users can log into a WorkSpace in the `ADMIN_MAINTENANCE` state.
#'
#' @param WorkspaceId The ID of the WorkSpace.
#' @param WorkspaceState The WorkSpace state.
#'
#' @examples
#'
#' @export
modify_workspace_state <- function (WorkspaceId, WorkspaceState) 
{
    op <- Operation(name = "ModifyWorkspaceState", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_workspace_state_input(WorkspaceId = WorkspaceId, 
        WorkspaceState = WorkspaceState)
    output <- modify_workspace_state_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reboots the specified WorkSpaces
#'
#' Reboots the specified WorkSpaces.
#' 
#' You cannot reboot a WorkSpace unless its state is `AVAILABLE` or `UNHEALTHY`.
#' 
#' This operation is asynchronous and returns before the WorkSpaces have rebooted.
#'
#' @param RebootWorkspaceRequests The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
#'
#' @examples
#'
#' @export
reboot_workspaces <- function (RebootWorkspaceRequests) 
{
    op <- Operation(name = "RebootWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reboot_workspaces_input(RebootWorkspaceRequests = RebootWorkspaceRequests)
    output <- reboot_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rebuilds the specified WorkSpace
#'
#' Rebuilds the specified WorkSpace.
#' 
#' You cannot rebuild a WorkSpace unless its state is `AVAILABLE`, `ERROR`, or `UNHEALTHY`.
#' 
#' Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see [Rebuild a WorkSpace](http://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).
#' 
#' This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.
#'
#' @param RebuildWorkspaceRequests The WorkSpace to rebuild. You can specify a single WorkSpace.
#'
#' @examples
#'
#' @export
rebuild_workspaces <- function (RebuildWorkspaceRequests) 
{
    op <- Operation(name = "RebuildWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- rebuild_workspaces_input(RebuildWorkspaceRequests = RebuildWorkspaceRequests)
    output <- rebuild_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes one or more rules from the specified IP access control group
#'
#' Removes one or more rules from the specified IP access control group.
#'
#' @param GroupId The ID of the group.
#' @param UserRules The rules to remove from the group.
#'
#' @examples
#'
#' @export
revoke_ip_rules <- function (GroupId, UserRules) 
{
    op <- Operation(name = "RevokeIpRules", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- revoke_ip_rules_input(GroupId = GroupId, UserRules = UserRules)
    output <- revoke_ip_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts the specified WorkSpaces
#'
#' Starts the specified WorkSpaces.
#' 
#' You cannot start a WorkSpace unless it has a running mode of `AutoStop` and a state of `STOPPED`.
#'
#' @param StartWorkspaceRequests The WorkSpaces to start. You can specify up to 25 WorkSpaces.
#'
#' @examples
#'
#' @export
start_workspaces <- function (StartWorkspaceRequests) 
{
    op <- Operation(name = "StartWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_workspaces_input(StartWorkspaceRequests = StartWorkspaceRequests)
    output <- start_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops the specified WorkSpaces
#'
#' Stops the specified WorkSpaces.
#' 
#' You cannot stop a WorkSpace unless it has a running mode of `AutoStop` and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.
#'
#' @param StopWorkspaceRequests The WorkSpaces to stop. You can specify up to 25 WorkSpaces.
#'
#' @examples
#'
#' @export
stop_workspaces <- function (StopWorkspaceRequests) 
{
    op <- Operation(name = "StopWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_workspaces_input(StopWorkspaceRequests = StopWorkspaceRequests)
    output <- stop_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Terminates the specified WorkSpaces
#'
#' Terminates the specified WorkSpaces.
#' 
#' Terminating a WorkSpace is a permanent action and cannot be undone. The user\'s data is destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace.
#' 
#' You can terminate a WorkSpace that is in any state except `SUSPENDED`.
#' 
#' This operation is asynchronous and returns before the WorkSpaces have been completely terminated.
#'
#' @param TerminateWorkspaceRequests The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.
#'
#' @examples
#'
#' @export
terminate_workspaces <- function (TerminateWorkspaceRequests) 
{
    op <- Operation(name = "TerminateWorkspaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- terminate_workspaces_input(TerminateWorkspaceRequests = TerminateWorkspaceRequests)
    output <- terminate_workspaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the current rules of the specified IP access control group with the specified rules
#'
#' Replaces the current rules of the specified IP access control group with the specified rules.
#'
#' @param GroupId The ID of the group.
#' @param UserRules One or more rules.
#'
#' @examples
#'
#' @export
update_rules_of_ip_group <- function (GroupId, UserRules) 
{
    op <- Operation(name = "UpdateRulesOfIpGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_rules_of_ip_group_input(GroupId = GroupId, 
        UserRules = UserRules)
    output <- update_rules_of_ip_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
