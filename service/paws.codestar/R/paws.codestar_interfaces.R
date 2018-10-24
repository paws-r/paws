associate_team_member_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "projectId"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 256L, min = 1L, pattern = "^[\\w:/-]+$", 
            locationName = "clientRequestToken"), UserArn = structure(logical(0), 
            shape = "UserArn", type = "string", max = 95L, min = 32L, 
            pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
            locationName = "userArn"), ProjectRole = structure(logical(0), 
            shape = "Role", type = "string", pattern = "^(Owner|Viewer|Contributor)$", 
            locationName = "projectRole"), RemoteAccessAllowed = structure(logical(0), 
            shape = "RemoteAccessAllowed", box = TRUE, type = "boolean", 
            locationName = "remoteAccessAllowed")), shape = "AssociateTeamMemberRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_team_member_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 256L, 
        min = 1L, pattern = "^[\\w:/-]+$", locationName = "clientRequestToken")), 
        shape = "AssociateTeamMemberResult", type = "structure")
    return(populate(args, shape))
}

create_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ProjectName", 
        type = "string", max = 100L, min = 1L, pattern = "^\\S(.*\\S)?$", 
        sensitive = TRUE, locationName = "name"), Id = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "id"), 
        Description = structure(logical(0), shape = "ProjectDescription", 
            type = "string", max = 1024L, pattern = "^$|^\\S(.*\\S)?$", 
            sensitive = TRUE, locationName = "description"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 256L, min = 1L, pattern = "^[\\w:/-]+$", 
            locationName = "clientRequestToken"), Tags = structure(list(structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map", locationName = "tags")), 
        shape = "CreateProjectRequest", type = "structure")
    return(populate(args, shape))
}

create_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id"), Arn = structure(logical(0), shape = "ProjectArn", 
        type = "string", pattern = "^arn:aws[^:\\s]*:codestar:[^:\\s]+:[0-9]{12}:project\\/[a-z]([a-z0-9|-])+$", 
        locationName = "arn"), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 256L, 
        min = 1L, pattern = "^[\\w:/-]+$", locationName = "clientRequestToken"), 
        ProjectTemplateId = structure(logical(0), shape = "ProjectTemplateId", 
            type = "string", min = 1L, pattern = "^arn:aws[^:\\s]{0,5}:codestar:[^:\\s]+::project-template(\\/(github|codecommit))?\\/[a-z0-9-]+$", 
            locationName = "projectTemplateId")), shape = "CreateProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

create_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), DisplayName = structure(logical(0), 
        shape = "UserProfileDisplayName", type = "string", max = 64L, 
        min = 1L, pattern = "^\\S(.*\\S)?$", sensitive = TRUE, 
        locationName = "displayName"), EmailAddress = structure(logical(0), 
        shape = "Email", type = "string", max = 128L, min = 3L, 
        pattern = "^[\\w-.+]+@[\\w-.+]+$", sensitive = TRUE, 
        locationName = "emailAddress"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 16384L, 
        pattern = "^[\\t\\r\\n\\u0020-\\u00FF]*$", locationName = "sshPublicKey")), 
        shape = "CreateUserProfileRequest", type = "structure")
    return(populate(args, shape))
}

create_user_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), DisplayName = structure(logical(0), 
        shape = "UserProfileDisplayName", type = "string", max = 64L, 
        min = 1L, pattern = "^\\S(.*\\S)?$", sensitive = TRUE, 
        locationName = "displayName"), EmailAddress = structure(logical(0), 
        shape = "Email", type = "string", max = 128L, min = 3L, 
        pattern = "^[\\w-.+]+@[\\w-.+]+$", sensitive = TRUE, 
        locationName = "emailAddress"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 16384L, 
        pattern = "^[\\t\\r\\n\\u0020-\\u00FF]*$", locationName = "sshPublicKey"), 
        CreatedTimestamp = structure(logical(0), shape = "CreatedTimestamp", 
            type = "timestamp", locationName = "createdTimestamp"), 
        LastModifiedTimestamp = structure(logical(0), shape = "LastModifiedTimestamp", 
            type = "timestamp", locationName = "lastModifiedTimestamp")), 
        shape = "CreateUserProfileResult", type = "structure")
    return(populate(args, shape))
}

delete_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id"), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 256L, 
        min = 1L, pattern = "^[\\w:/-]+$", locationName = "clientRequestToken"), 
        DeleteStack = structure(logical(0), shape = "DeleteStack", 
            type = "boolean", locationName = "deleteStack")), 
        shape = "DeleteProjectRequest", type = "structure")
    return(populate(args, shape))
}

delete_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "StackId", 
        type = "string", pattern = "^arn:aws[^:\\s]*:cloudformation:[^:\\s]+:[0-9]{12}:stack\\/[^:\\s]+\\/[^:\\s]+$", 
        locationName = "stackId"), ProjectArn = structure(logical(0), 
        shape = "ProjectArn", type = "string", pattern = "^arn:aws[^:\\s]*:codestar:[^:\\s]+:[0-9]{12}:project\\/[a-z]([a-z0-9|-])+$", 
        locationName = "projectArn")), shape = "DeleteProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn")), shape = "DeleteUserProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn")), shape = "DeleteUserProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id")), shape = "DescribeProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ProjectName", 
        type = "string", max = 100L, min = 1L, pattern = "^\\S(.*\\S)?$", 
        sensitive = TRUE, locationName = "name"), Id = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "id"), 
        Arn = structure(logical(0), shape = "ProjectArn", type = "string", 
            pattern = "^arn:aws[^:\\s]*:codestar:[^:\\s]+:[0-9]{12}:project\\/[a-z]([a-z0-9|-])+$", 
            locationName = "arn"), Description = structure(logical(0), 
            shape = "ProjectDescription", type = "string", max = 1024L, 
            pattern = "^$|^\\S(.*\\S)?$", sensitive = TRUE, locationName = "description"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 256L, min = 1L, pattern = "^[\\w:/-]+$", 
            locationName = "clientRequestToken"), CreatedTimeStamp = structure(logical(0), 
            shape = "CreatedTimestamp", type = "timestamp", locationName = "createdTimeStamp"), 
        StackId = structure(logical(0), shape = "StackId", type = "string", 
            pattern = "^arn:aws[^:\\s]*:cloudformation:[^:\\s]+:[0-9]{12}:stack\\/[^:\\s]+\\/[^:\\s]+$", 
            locationName = "stackId"), ProjectTemplateId = structure(logical(0), 
            shape = "ProjectTemplateId", type = "string", min = 1L, 
            pattern = "^arn:aws[^:\\s]{0,5}:codestar:[^:\\s]+::project-template(\\/(github|codecommit))?\\/[a-z0-9-]+$", 
            locationName = "projectTemplateId"), Status = structure(list(State = structure(logical(0), 
            shape = "State", type = "string", pattern = "^(CreateInProgress|CreateComplete|CreateFailed|DeleteComplete|DeleteFailed|DeleteInProgress|UpdateComplete|UpdateInProgress|UpdateFailed|Unknown)$", 
            locationName = "state"), Reason = structure(logical(0), 
            shape = "Reason", type = "string", max = 1024L, pattern = "^$|^\\S(.*\\S)?$", 
            locationName = "reason")), shape = "ProjectStatus", 
            type = "structure", locationName = "status")), shape = "DescribeProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn")), shape = "DescribeUserProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), DisplayName = structure(logical(0), 
        shape = "UserProfileDisplayName", type = "string", max = 64L, 
        min = 1L, pattern = "^\\S(.*\\S)?$", sensitive = TRUE, 
        locationName = "displayName"), EmailAddress = structure(logical(0), 
        shape = "Email", type = "string", max = 128L, min = 3L, 
        pattern = "^[\\w-.+]+@[\\w-.+]+$", sensitive = TRUE, 
        locationName = "emailAddress"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 16384L, 
        pattern = "^[\\t\\r\\n\\u0020-\\u00FF]*$", locationName = "sshPublicKey"), 
        CreatedTimestamp = structure(logical(0), shape = "CreatedTimestamp", 
            type = "timestamp", locationName = "createdTimestamp"), 
        LastModifiedTimestamp = structure(logical(0), shape = "LastModifiedTimestamp", 
            type = "timestamp", locationName = "lastModifiedTimestamp")), 
        shape = "DescribeUserProfileResult", type = "structure")
    return(populate(args, shape))
}

disassociate_team_member_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "projectId"), 
        UserArn = structure(logical(0), shape = "UserArn", type = "string", 
            max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
            locationName = "userArn")), shape = "DisassociateTeamMemberRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_team_member_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateTeamMemberResult", 
        type = "structure")
    return(populate(args, shape))
}

list_projects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 512L, 
        min = 1L, pattern = "^[\\w/+=]+$", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 100L, min = 1L, 
            locationName = "maxResults")), shape = "ListProjectsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_projects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Projects = structure(list(structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "projectId"), 
        ProjectArn = structure(logical(0), shape = "ProjectArn", 
            type = "string", pattern = "^arn:aws[^:\\s]*:codestar:[^:\\s]+:[0-9]{12}:project\\/[a-z]([a-z0-9|-])+$", 
            locationName = "projectArn")), shape = "ProjectSummary", 
        type = "structure")), shape = "ProjectsList", type = "list", 
        locationName = "projects"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 512L, 
        min = 1L, pattern = "^[\\w/+=]+$", locationName = "nextToken")), 
        shape = "ListProjectsResult", type = "structure")
    return(populate(args, shape))
}

list_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "projectId"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 512L, min = 1L, pattern = "^[\\w/+=]+$", 
            locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 100L, min = 1L, locationName = "maxResults")), 
        shape = "ListResourcesRequest", type = "structure")
    return(populate(args, shape))
}

list_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resources = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", min = 11L, pattern = "^arn\\:aws\\:\\S.*\\:.*", 
        locationName = "id")), shape = "Resource", type = "structure")), 
        shape = "ResourcesResult", type = "list", locationName = "resources"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 512L, min = 1L, pattern = "^[\\w/+=]+$", 
            locationName = "nextToken")), shape = "ListResourcesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 512L, 
        min = 1L, pattern = "^[\\w/+=]+$", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 100L, min = 1L, 
            locationName = "maxResults")), shape = "ListTagsForProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tags", type = "map", locationName = "tags"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 512L, min = 1L, pattern = "^[\\w/+=]+$", 
            locationName = "nextToken")), shape = "ListTagsForProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

list_team_members_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "projectId"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 512L, min = 1L, pattern = "^[\\w/+=]+$", 
            locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", box = TRUE, type = "integer", 
            max = 100L, min = 1L, locationName = "maxResults")), 
        shape = "ListTeamMembersRequest", type = "structure")
    return(populate(args, shape))
}

list_team_members_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TeamMembers = structure(list(structure(list(UserArn = structure(logical(0), 
        shape = "UserArn", type = "string", max = 95L, min = 32L, 
        pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), ProjectRole = structure(logical(0), 
        shape = "Role", type = "string", pattern = "^(Owner|Viewer|Contributor)$", 
        locationName = "projectRole"), RemoteAccessAllowed = structure(logical(0), 
        shape = "RemoteAccessAllowed", box = TRUE, type = "boolean", 
        locationName = "remoteAccessAllowed")), shape = "TeamMember", 
        type = "structure")), shape = "TeamMemberResult", type = "list", 
        locationName = "teamMembers"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 512L, 
        min = 1L, pattern = "^[\\w/+=]+$", locationName = "nextToken")), 
        shape = "ListTeamMembersResult", type = "structure")
    return(populate(args, shape))
}

list_user_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 512L, 
        min = 1L, pattern = "^[\\w/+=]+$", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 100L, min = 1L, 
            locationName = "maxResults")), shape = "ListUserProfilesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_user_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserProfiles = structure(list(structure(list(UserArn = structure(logical(0), 
        shape = "UserArn", type = "string", max = 95L, min = 32L, 
        pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), DisplayName = structure(logical(0), 
        shape = "UserProfileDisplayName", type = "string", max = 64L, 
        min = 1L, pattern = "^\\S(.*\\S)?$", sensitive = TRUE, 
        locationName = "displayName"), EmailAddress = structure(logical(0), 
        shape = "Email", type = "string", max = 128L, min = 3L, 
        pattern = "^[\\w-.+]+@[\\w-.+]+$", sensitive = TRUE, 
        locationName = "emailAddress"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 16384L, 
        pattern = "^[\\t\\r\\n\\u0020-\\u00FF]*$", locationName = "sshPublicKey")), 
        shape = "UserProfileSummary", type = "structure")), shape = "UserProfilesList", 
        type = "list", locationName = "userProfiles"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 512L, 
        min = 1L, pattern = "^[\\w/+=]+$", locationName = "nextToken")), 
        shape = "ListUserProfilesResult", type = "structure")
    return(populate(args, shape))
}

tag_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id"), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tags", type = "map", locationName = "tags")), 
        shape = "TagProjectRequest", type = "structure")
    return(populate(args, shape))
}

tag_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tags", type = "map", locationName = "tags")), 
        shape = "TagProjectResult", type = "structure")
    return(populate(args, shape))
}

untag_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id"), Tags = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "TagKeys", 
        type = "list", locationName = "tags")), shape = "UntagProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

update_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ProjectId", 
        type = "string", max = 15L, min = 2L, pattern = "^[a-z][a-z0-9-]+$", 
        locationName = "id"), Name = structure(logical(0), shape = "ProjectName", 
        type = "string", max = 100L, min = 1L, pattern = "^\\S(.*\\S)?$", 
        sensitive = TRUE, locationName = "name"), Description = structure(logical(0), 
        shape = "ProjectDescription", type = "string", max = 1024L, 
        pattern = "^$|^\\S(.*\\S)?$", sensitive = TRUE, locationName = "description")), 
        shape = "UpdateProjectRequest", type = "structure")
    return(populate(args, shape))
}

update_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

update_team_member_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", type = "string", max = 15L, min = 2L, 
        pattern = "^[a-z][a-z0-9-]+$", locationName = "projectId"), 
        UserArn = structure(logical(0), shape = "UserArn", type = "string", 
            max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
            locationName = "userArn"), ProjectRole = structure(logical(0), 
            shape = "Role", type = "string", pattern = "^(Owner|Viewer|Contributor)$", 
            locationName = "projectRole"), RemoteAccessAllowed = structure(logical(0), 
            shape = "RemoteAccessAllowed", box = TRUE, type = "boolean", 
            locationName = "remoteAccessAllowed")), shape = "UpdateTeamMemberRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_team_member_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), ProjectRole = structure(logical(0), 
        shape = "Role", type = "string", pattern = "^(Owner|Viewer|Contributor)$", 
        locationName = "projectRole"), RemoteAccessAllowed = structure(logical(0), 
        shape = "RemoteAccessAllowed", box = TRUE, type = "boolean", 
        locationName = "remoteAccessAllowed")), shape = "UpdateTeamMemberResult", 
        type = "structure")
    return(populate(args, shape))
}

update_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), DisplayName = structure(logical(0), 
        shape = "UserProfileDisplayName", type = "string", max = 64L, 
        min = 1L, pattern = "^\\S(.*\\S)?$", sensitive = TRUE, 
        locationName = "displayName"), EmailAddress = structure(logical(0), 
        shape = "Email", type = "string", max = 128L, min = 3L, 
        pattern = "^[\\w-.+]+@[\\w-.+]+$", sensitive = TRUE, 
        locationName = "emailAddress"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 16384L, 
        pattern = "^[\\t\\r\\n\\u0020-\\u00FF]*$", locationName = "sshPublicKey")), 
        shape = "UpdateUserProfileRequest", type = "structure")
    return(populate(args, shape))
}

update_user_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", max = 95L, min = 32L, pattern = "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$", 
        locationName = "userArn"), DisplayName = structure(logical(0), 
        shape = "UserProfileDisplayName", type = "string", max = 64L, 
        min = 1L, pattern = "^\\S(.*\\S)?$", sensitive = TRUE, 
        locationName = "displayName"), EmailAddress = structure(logical(0), 
        shape = "Email", type = "string", max = 128L, min = 3L, 
        pattern = "^[\\w-.+]+@[\\w-.+]+$", sensitive = TRUE, 
        locationName = "emailAddress"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 16384L, 
        pattern = "^[\\t\\r\\n\\u0020-\\u00FF]*$", locationName = "sshPublicKey"), 
        CreatedTimestamp = structure(logical(0), shape = "CreatedTimestamp", 
            type = "timestamp", locationName = "createdTimestamp"), 
        LastModifiedTimestamp = structure(logical(0), shape = "LastModifiedTimestamp", 
            type = "timestamp", locationName = "lastModifiedTimestamp")), 
        shape = "UpdateUserProfileResult", type = "structure")
    return(populate(args, shape))
}
