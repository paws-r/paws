#' Adds an IAM user to the team for an AWS CodeStar project
#'
#' Adds an IAM user to the team for an AWS CodeStar project.
#'
#' @param projectId The ID of the project to which you will add the IAM user.
#' @param userArn The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar project.
#' @param projectRole The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.
#' @param clientRequestToken A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request.
#' @param remoteAccessAllowed Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.
#'
#' @examples
#'
#' @export
associate_team_member <- function (projectId, userArn, projectRole, 
    clientRequestToken = NULL, remoteAccessAllowed = NULL) 
{
    op <- Operation(name = "AssociateTeamMember", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_team_member_input(projectId = projectId, 
        userArn = userArn, projectRole = projectRole, clientRequestToken = clientRequestToken, 
        remoteAccessAllowed = remoteAccessAllowed)
    output <- associate_team_member_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reserved for future use
#'
#' Reserved for future use. To create a project, use the AWS CodeStar console.
#'
#' @param name Reserved for future use.
#' @param id Reserved for future use.
#' @param description Reserved for future use.
#' @param clientRequestToken Reserved for future use.
#' @param tags The tags created for the project.
#'
#' @examples
#'
#' @export
create_project <- function (name, id, description = NULL, clientRequestToken = NULL, 
    tags = NULL) 
{
    op <- Operation(name = "CreateProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_project_input(name = name, id = id, description = description, 
        clientRequestToken = clientRequestToken, tags = tags)
    output <- create_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar
#'
#' Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user\'s information appears to other users in AWS CodeStar.
#'
#' @param userArn The Amazon Resource Name (ARN) of the user in IAM.
#' @param displayName The name that will be displayed as the friendly name for the user in AWS CodeStar.
#' @param emailAddress The email address that will be displayed as part of the user\'s profile in AWS CodeStar.
#' @param sshPublicKey The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user\'s private key for SSH access.
#'
#' @examples
#'
#' @export
create_user_profile <- function (userArn, displayName, emailAddress, 
    sshPublicKey = NULL) 
{
    op <- Operation(name = "CreateUserProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_profile_input(userArn = userArn, displayName = displayName, 
        emailAddress = emailAddress, sshPublicKey = sshPublicKey)
    output <- create_user_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a project, including project resources
#'
#' Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.
#'
#' @param id The ID of the project to be deleted in AWS CodeStar.
#' @param clientRequestToken A user- or system-generated token that identifies the entity that requested project deletion. This token can be used to repeat the request.
#' @param deleteStack Whether to send a delete request for the primary stack in AWS CloudFormation originally used to generate the project and its resources. This option will delete all AWS resources for the project (except for any buckets in Amazon S3) as well as deleting the project itself. Recommended for most use cases.
#'
#' @examples
#'
#' @export
delete_project <- function (id, clientRequestToken = NULL, deleteStack = NULL) 
{
    op <- Operation(name = "DeleteProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_project_input(id = id, clientRequestToken = clientRequestToken, 
        deleteStack = deleteStack)
    output <- delete_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address
#'
#' Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.
#'
#' @param userArn The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.
#'
#' @examples
#'
#' @export
delete_user_profile <- function (userArn) 
{
    op <- Operation(name = "DeleteUserProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_profile_input(userArn = userArn)
    output <- delete_user_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a project and its resources
#'
#' Describes a project and its resources.
#'
#' @param id The ID of the project.
#'
#' @examples
#'
#' @export
describe_project <- function (id) 
{
    op <- Operation(name = "DescribeProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_project_input(id = id)
    output <- describe_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a user in AWS CodeStar and the user attributes across all projects
#'
#' Describes a user in AWS CodeStar and the user attributes across all projects.
#'
#' @param userArn The Amazon Resource Name (ARN) of the user.
#'
#' @examples
#'
#' @export
describe_user_profile <- function (userArn) 
{
    op <- Operation(name = "DescribeUserProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_user_profile_input(userArn = userArn)
    output <- describe_user_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a user from a project
#'
#' Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user\'s profile from AWS CodeStar. It does not remove the user from IAM.
#'
#' @param projectId The ID of the AWS CodeStar project from which you want to remove a team member.
#' @param userArn The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from the project.
#'
#' @examples
#'
#' @export
disassociate_team_member <- function (projectId, userArn) 
{
    op <- Operation(name = "DisassociateTeamMember", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_team_member_input(projectId = projectId, 
        userArn = userArn)
    output <- disassociate_team_member_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all projects in AWS CodeStar associated with your AWS account
#'
#' Lists all projects in AWS CodeStar associated with your AWS account.
#'
#' @param nextToken The continuation token to be used to return the next set of results, if the results cannot be returned in one response.
#' @param maxResults The maximum amount of data that can be contained in a single set of results.
#'
#' @examples
#'
#' @export
list_projects <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListProjects", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_projects_input(nextToken = nextToken, maxResults = maxResults)
    output <- list_projects_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists resources associated with a project in AWS CodeStar
#'
#' Lists resources associated with a project in AWS CodeStar.
#'
#' @param projectId The ID of the project.
#' @param nextToken The continuation token for the next set of results, if the results cannot be returned in one response.
#' @param maxResults The maximum amount of data that can be contained in a single set of results.
#'
#' @examples
#'
#' @export
list_resources <- function (projectId, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListResources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_resources_input(projectId = projectId, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the tags for a project
#'
#' Gets the tags for a project.
#'
#' @param id The ID of the project to get tags for.
#' @param nextToken Reserved for future use.
#' @param maxResults Reserved for future use.
#'
#' @examples
#'
#' @export
list_tags_for_project <- function (id, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListTagsForProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_for_project_input(id = id, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_tags_for_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all team members associated with a project
#'
#' Lists all team members associated with a project.
#'
#' @param projectId The ID of the project for which you want to list team members.
#' @param nextToken The continuation token for the next set of results, if the results cannot be returned in one response.
#' @param maxResults The maximum number of team members you want returned in a response.
#'
#' @examples
#'
#' @export
list_team_members <- function (projectId, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListTeamMembers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_team_members_input(projectId = projectId, nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_team_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all the user profiles configured for your AWS account in AWS CodeStar
#'
#' Lists all the user profiles configured for your AWS account in AWS CodeStar.
#'
#' @param nextToken The continuation token for the next set of results, if the results cannot be returned in one response.
#' @param maxResults The maximum number of results to return in a response.
#'
#' @examples
#'
#' @export
list_user_profiles <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListUserProfiles", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_user_profiles_input(nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_user_profiles_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds tags to a project
#'
#' Adds tags to a project.
#'
#' @param id The ID of the project you want to add a tag to.
#' @param tags The tags you want to add to the project.
#'
#' @examples
#'
#' @export
tag_project <- function (id, tags) 
{
    op <- Operation(name = "TagProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- tag_project_input(id = id, tags = tags)
    output <- tag_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes tags from a project
#'
#' Removes tags from a project.
#'
#' @param id The ID of the project to remove tags from.
#' @param tags The tags to remove from the project.
#'
#' @examples
#'
#' @export
untag_project <- function (id, tags) 
{
    op <- Operation(name = "UntagProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- untag_project_input(id = id, tags = tags)
    output <- untag_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a project in AWS CodeStar
#'
#' Updates a project in AWS CodeStar.
#'
#' @param id The ID of the project you want to update.
#' @param name The name of the project you want to update.
#' @param description The description of the project, if any.
#'
#' @examples
#'
#' @export
update_project <- function (id, name = NULL, description = NULL) 
{
    op <- Operation(name = "UpdateProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_project_input(id = id, name = name, description = description)
    output <- update_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a team member\'s attributes in an AWS CodeStar project
#'
#' Updates a team member\'s attributes in an AWS CodeStar project. For example, you can change a team member\'s role in the project, or change whether they have remote access to project resources.
#'
#' @param projectId The ID of the project.
#' @param userArn The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.
#' @param projectRole The role assigned to the user in the project. Project roles have different levels of access. For more information, see [Working with Teams](http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html) in the *AWS CodeStar User Guide*.
#' @param remoteAccessAllowed Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user\'s profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.
#'
#' @examples
#'
#' @export
update_team_member <- function (projectId, userArn, projectRole = NULL, 
    remoteAccessAllowed = NULL) 
{
    op <- Operation(name = "UpdateTeamMember", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_team_member_input(projectId = projectId, 
        userArn = userArn, projectRole = projectRole, remoteAccessAllowed = remoteAccessAllowed)
    output <- update_team_member_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a user\'s profile in AWS CodeStar
#'
#' Updates a user\'s profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user\'s information appears to other users in AWS CodeStar.
#'
#' @param userArn The name that will be displayed as the friendly name for the user in AWS CodeStar.
#' @param displayName The name that is displayed as the friendly name for the user in AWS CodeStar.
#' @param emailAddress The email address that is displayed as part of the user\'s profile in AWS CodeStar.
#' @param sshPublicKey The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user\'s private key for SSH access.
#'
#' @examples
#'
#' @export
update_user_profile <- function (userArn, displayName = NULL, 
    emailAddress = NULL, sshPublicKey = NULL) 
{
    op <- Operation(name = "UpdateUserProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_user_profile_input(userArn = userArn, displayName = displayName, 
        emailAddress = emailAddress, sshPublicKey = sshPublicKey)
    output <- update_user_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
