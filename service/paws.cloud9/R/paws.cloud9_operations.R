#' Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment
#'
#' Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
#'
#' @param name The name of the environment to create.
#' 
#' This name is visible to other AWS IAM users in the same AWS account.
#' @param instanceType The type of instance to connect to the environment (for example, `t2.micro`).
#' @param description The description of the environment to create.
#' @param clientRequestToken A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time.
#' 
#' For more information, see [Client Tokens](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html) in the *Amazon EC2 API Reference*.
#' @param subnetId The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
#' @param automaticStopTimeMinutes The number of minutes until the running instance is shut down after the environment has last been used.
#' @param ownerArn The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment\'s creator.
#'
#' @examples
#' # 
#' create_environment_ec2(
#'   name = "my-demo-environment",
#'   automaticStopTimeMinutes = 60L,
#'   description = "This is my demonstration environment.",
#'   instanceType = "t2.micro",
#'   ownerArn = "arn:aws:iam::123456789012:user/MyDemoUser",
#'   subnetId = "subnet-1fab8aEX"
#' )
#'
#' @export
create_environment_ec2 <- function (name, instanceType, description = NULL, 
    clientRequestToken = NULL, subnetId = NULL, automaticStopTimeMinutes = NULL, 
    ownerArn = NULL) 
{
    op <- Operation(name = "CreateEnvironmentEC2", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_environment_ec2_input(name = name, instanceType = instanceType, 
        description = description, clientRequestToken = clientRequestToken, 
        subnetId = subnetId, automaticStopTimeMinutes = automaticStopTimeMinutes, 
        ownerArn = ownerArn)
    output <- create_environment_ec2_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds an environment member to an AWS Cloud9 development environment
#'
#' Adds an environment member to an AWS Cloud9 development environment.
#'
#' @param environmentId The ID of the environment that contains the environment member you want to add.
#' @param userArn The Amazon Resource Name (ARN) of the environment member you want to add.
#' @param permissions The type of environment member permissions you want to associate with this environment member. Available values include:
#' 
#' -   `read-only`: Has read-only access to the environment.
#' 
#' -   `read-write`: Has read-write access to the environment.
#'
#' @examples
#' # 
#' create_environment_membership(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
#'   permissions = "read-write",
#'   userArn = "arn:aws:iam::123456789012:user/AnotherDemoUser"
#' )
#'
#' @export
create_environment_membership <- function (environmentId, userArn, 
    permissions) 
{
    op <- Operation(name = "CreateEnvironmentMembership", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_environment_membership_input(environmentId = environmentId, 
        userArn = userArn, permissions = permissions)
    output <- create_environment_membership_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an AWS Cloud9 development environment
#'
#' Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
#'
#' @param environmentId The ID of the environment to delete.
#'
#' @examples
#' # 
#' delete_environment(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
#' )
#'
#' @export
delete_environment <- function (environmentId) 
{
    op <- Operation(name = "DeleteEnvironment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_environment_input(environmentId = environmentId)
    output <- delete_environment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an environment member from an AWS Cloud9 development environment
#'
#' Deletes an environment member from an AWS Cloud9 development environment.
#'
#' @param environmentId The ID of the environment to delete the environment member from.
#' @param userArn The Amazon Resource Name (ARN) of the environment member to delete from the environment.
#'
#' @examples
#' # 
#' delete_environment_membership(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
#'   userArn = "arn:aws:iam::123456789012:user/AnotherDemoUser"
#' )
#'
#' @export
delete_environment_membership <- function (environmentId, userArn) 
{
    op <- Operation(name = "DeleteEnvironmentMembership", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_environment_membership_input(environmentId = environmentId, 
        userArn = userArn)
    output <- delete_environment_membership_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about environment members for an AWS Cloud9 development environment
#'
#' Gets information about environment members for an AWS Cloud9 development environment.
#'
#' @param userArn The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.
#' @param environmentId The ID of the environment to get environment member information about.
#' @param permissions The type of environment member permissions to get information about. Available values include:
#' 
#' -   `owner`: Owns the environment.
#' 
#' -   `read-only`: Has read-only access to the environment.
#' 
#' -   `read-write`: Has read-write access to the environment.
#' 
#' If no value is specified, information about all environment members are returned.
#' @param nextToken During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
#' @param maxResults The maximum number of environment members to get information about.
#'
#' @examples
#' # The following example gets information about all of the environment
#' # members for the specified AWS Cloud9 development environment.
#' describe_environment_memberships(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
#' )
#' 
#' # The following example gets information about the owner of the specified
#' # AWS Cloud9 development environment.
#' describe_environment_memberships(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
#'   permissions = list(
#'     "owner"
#'   )
#' )
#' 
#' # The following example gets AWS Cloud9 development environment membership
#' # information for the specified user.
#' describe_environment_memberships(
#'   userArn = "arn:aws:iam::123456789012:user/MyDemoUser"
#' )
#'
#' @export
describe_environment_memberships <- function (userArn = NULL, 
    environmentId = NULL, permissions = NULL, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "DescribeEnvironmentMemberships", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_environment_memberships_input(userArn = userArn, 
        environmentId = environmentId, permissions = permissions, 
        nextToken = nextToken, maxResults = maxResults)
    output <- describe_environment_memberships_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets status information for an AWS Cloud9 development environment
#'
#' Gets status information for an AWS Cloud9 development environment.
#'
#' @param environmentId The ID of the environment to get status information about.
#'
#' @examples
#' # 
#' describe_environment_status(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
#' )
#'
#' @export
describe_environment_status <- function (environmentId) 
{
    op <- Operation(name = "DescribeEnvironmentStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_environment_status_input(environmentId = environmentId)
    output <- describe_environment_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about AWS Cloud9 development environments
#'
#' Gets information about AWS Cloud9 development environments.
#'
#' @param environmentIds The IDs of individual environments to get information about.
#'
#' @examples
#' # 
#' describe_environments(
#'   environmentIds = list(
#'     "8d9967e2f0624182b74e7690ad69ebEX",
#'     "349c86d4579e4e7298d500ff57a6b2EX"
#'   )
#' )
#'
#' @export
describe_environments <- function (environmentIds) 
{
    op <- Operation(name = "DescribeEnvironments", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_environments_input(environmentIds = environmentIds)
    output <- describe_environments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of AWS Cloud9 development environment identifiers
#'
#' Gets a list of AWS Cloud9 development environment identifiers.
#'
#' @param nextToken During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
#' @param maxResults The maximum number of environments to get identifiers for.
#'
#' @examples
#' # 
#' list_environments()
#'
#' @export
list_environments <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListEnvironments", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_environments_input(nextToken = nextToken, maxResults = maxResults)
    output <- list_environments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the settings of an existing AWS Cloud9 development environment
#'
#' Changes the settings of an existing AWS Cloud9 development environment.
#'
#' @param environmentId The ID of the environment to change settings.
#' @param name A replacement name for the environment.
#' @param description Any new or replacement description for the environment.
#'
#' @examples
#' # 
#' update_environment(
#'   name = "my-changed-demo-environment",
#'   description = "This is my changed demonstration environment.",
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
#' )
#'
#' @export
update_environment <- function (environmentId, name = NULL, description = NULL) 
{
    op <- Operation(name = "UpdateEnvironment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_environment_input(environmentId = environmentId, 
        name = name, description = description)
    output <- update_environment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the settings of an existing environment member for an AWS Cloud9 development environment
#'
#' Changes the settings of an existing environment member for an AWS Cloud9 development environment.
#'
#' @param environmentId The ID of the environment for the environment member whose settings you want to change.
#' @param userArn The Amazon Resource Name (ARN) of the environment member whose settings you want to change.
#' @param permissions The replacement type of environment member permissions you want to associate with this environment member. Available values include:
#' 
#' -   `read-only`: Has read-only access to the environment.
#' 
#' -   `read-write`: Has read-write access to the environment.
#'
#' @examples
#' # 
#' update_environment_membership(
#'   environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
#'   permissions = "read-only",
#'   userArn = "arn:aws:iam::123456789012:user/AnotherDemoUser"
#' )
#'
#' @export
update_environment_membership <- function (environmentId, userArn, 
    permissions) 
{
    op <- Operation(name = "UpdateEnvironmentMembership", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_environment_membership_input(environmentId = environmentId, 
        userArn = userArn, permissions = permissions)
    output <- update_environment_membership_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
