create_environment_ec2_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "EnvironmentName", 
        type = "string", max = 60L, min = 1L, locationName = "name"), 
        Description = structure(logical(0), shape = "EnvironmentDescription", 
            type = "string", max = 200L, locationName = "description"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", pattern = "[\\x20-\\x7E]{10,128}", 
            locationName = "clientRequestToken"), InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string", max = 20L, 
            min = 5L, pattern = "^[a-z][1-9][.][a-z0-9]+$", locationName = "instanceType"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            type = "string", max = 30L, min = 5L, locationName = "subnetId"), 
        AutomaticStopTimeMinutes = structure(logical(0), shape = "AutomaticStopTimeMinutes", 
            type = "integer", box = TRUE, max = 20160L, locationName = "automaticStopTimeMinutes"), 
        OwnerArn = structure(logical(0), shape = "UserArn", type = "string", 
            pattern = "arn:aws:(iam|sts)::\\d+:\\S+", locationName = "ownerArn")), 
        shape = "CreateEnvironmentEC2Request", type = "structure")
    return(populate(args, shape))
}

create_environment_ec2_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId")), shape = "CreateEnvironmentEC2Result", 
        type = "structure")
    return(populate(args, shape))
}

create_environment_membership_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId"), UserArn = structure(logical(0), 
        shape = "UserArn", type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
        locationName = "userArn"), Permissions = structure(logical(0), 
        shape = "MemberPermissions", type = "string", locationName = "permissions")), 
        shape = "CreateEnvironmentMembershipRequest", type = "structure")
    return(populate(args, shape))
}

create_environment_membership_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Membership = structure(list(Permissions = structure(logical(0), 
        shape = "Permissions", type = "string", locationName = "permissions"), 
        UserId = structure(logical(0), shape = "String", type = "string", 
            locationName = "userId"), UserArn = structure(logical(0), 
            shape = "UserArn", type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
            locationName = "userArn"), EnvironmentId = structure(logical(0), 
            shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
            locationName = "environmentId"), LastAccess = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastAccess")), 
        shape = "EnvironmentMember", type = "structure", locationName = "membership")), 
        shape = "CreateEnvironmentMembershipResult", type = "structure")
    return(populate(args, shape))
}

delete_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId")), shape = "DeleteEnvironmentRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteEnvironmentResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_environment_membership_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId"), UserArn = structure(logical(0), 
        shape = "UserArn", type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
        locationName = "userArn")), shape = "DeleteEnvironmentMembershipRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_environment_membership_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteEnvironmentMembershipResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_memberships_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserArn = structure(logical(0), shape = "UserArn", 
        type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
        locationName = "userArn"), EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId"), Permissions = structure(list(structure(logical(0), 
        shape = "Permissions", type = "string")), shape = "PermissionsList", 
        type = "list", locationName = "permissions"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 25L, min = 0L, 
            locationName = "maxResults")), shape = "DescribeEnvironmentMembershipsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_memberships_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Memberships = structure(list(structure(list(Permissions = structure(logical(0), 
        shape = "Permissions", type = "string", locationName = "permissions"), 
        UserId = structure(logical(0), shape = "String", type = "string", 
            locationName = "userId"), UserArn = structure(logical(0), 
            shape = "UserArn", type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
            locationName = "userArn"), EnvironmentId = structure(logical(0), 
            shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
            locationName = "environmentId"), LastAccess = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastAccess")), 
        shape = "EnvironmentMember", type = "structure")), shape = "EnvironmentMembersList", 
        type = "list", locationName = "memberships"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "DescribeEnvironmentMembershipsResult", type = "structure")
    return(populate(args, shape))
}

describe_environment_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId")), shape = "DescribeEnvironmentStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_environment_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "EnvironmentStatus", 
        type = "string", locationName = "status"), Message = structure(logical(0), 
        shape = "String", type = "string", locationName = "message")), 
        shape = "DescribeEnvironmentStatusResult", type = "structure")
    return(populate(args, shape))
}

describe_environments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentIds = structure(list(structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$")), 
        shape = "BoundedEnvironmentIdList", type = "list", max = 25L, 
        min = 1L, locationName = "environmentIds")), shape = "DescribeEnvironmentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_environments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Environments = structure(list(structure(list(Id = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "id"), Name = structure(logical(0), shape = "EnvironmentName", 
        type = "string", max = 60L, min = 1L, locationName = "name"), 
        Description = structure(logical(0), shape = "EnvironmentDescription", 
            type = "string", max = 200L, locationName = "description"), 
        Type = structure(logical(0), shape = "EnvironmentType", 
            type = "string", locationName = "type"), Arn = structure(logical(0), 
            shape = "String", type = "string", locationName = "arn"), 
        OwnerArn = structure(logical(0), shape = "String", type = "string", 
            locationName = "ownerArn")), shape = "Environment", 
        type = "structure")), shape = "EnvironmentList", type = "list", 
        locationName = "environments")), shape = "DescribeEnvironmentsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_environments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 25L, min = 0L, 
            locationName = "maxResults")), shape = "ListEnvironmentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_environments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken"), 
        EnvironmentIds = structure(list(structure(logical(0), 
            shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$")), 
            shape = "EnvironmentIdList", type = "list", locationName = "environmentIds")), 
        shape = "ListEnvironmentsResult", type = "structure")
    return(populate(args, shape))
}

update_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId"), Name = structure(logical(0), 
        shape = "EnvironmentName", type = "string", max = 60L, 
        min = 1L, locationName = "name"), Description = structure(logical(0), 
        shape = "EnvironmentDescription", type = "string", max = 200L, 
        locationName = "description")), shape = "UpdateEnvironmentRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateEnvironmentResult", 
        type = "structure")
    return(populate(args, shape))
}

update_environment_membership_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnvironmentId = structure(logical(0), 
        shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
        locationName = "environmentId"), UserArn = structure(logical(0), 
        shape = "UserArn", type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
        locationName = "userArn"), Permissions = structure(logical(0), 
        shape = "MemberPermissions", type = "string", locationName = "permissions")), 
        shape = "UpdateEnvironmentMembershipRequest", type = "structure")
    return(populate(args, shape))
}

update_environment_membership_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Membership = structure(list(Permissions = structure(logical(0), 
        shape = "Permissions", type = "string", locationName = "permissions"), 
        UserId = structure(logical(0), shape = "String", type = "string", 
            locationName = "userId"), UserArn = structure(logical(0), 
            shape = "UserArn", type = "string", pattern = "arn:aws:(iam|sts)::\\d+:\\S+", 
            locationName = "userArn"), EnvironmentId = structure(logical(0), 
            shape = "EnvironmentId", type = "string", pattern = "^[a-zA-Z0-9]{8,32}$", 
            locationName = "environmentId"), LastAccess = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastAccess")), 
        shape = "EnvironmentMember", type = "structure", locationName = "membership")), 
        shape = "UpdateEnvironmentMembershipResult", type = "structure")
    return(populate(args, shape))
}
