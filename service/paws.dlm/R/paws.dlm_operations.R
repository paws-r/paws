#' Creates a policy to manage the lifecycle of the specified AWS resources
#'
#' Creates a policy to manage the lifecycle of the specified AWS resources. You can create up to 100 lifecycle policies.
#'
#' @param ExecutionRoleArn The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.
#' @param Description A description of the lifecycle policy. The characters \^&#91;0-9A-Za-z \_-&#93;+\$ are supported.
#' @param State The desired activation state of the lifecycle policy after creation.
#' @param PolicyDetails The configuration details of the lifecycle policy.
#' 
#' Target tags cannot be re-used across lifecycle policies.
#'
#' @examples
#'
#' @export
create_lifecycle_policy <- function (ExecutionRoleArn, Description, 
    State, PolicyDetails) 
{
    op <- Operation(name = "CreateLifecyclePolicy", http_method = "POST", 
        http_path = "/policies", paginator = list())
    input <- create_lifecycle_policy_input(ExecutionRoleArn = ExecutionRoleArn, 
        Description = Description, State = State, PolicyDetails = PolicyDetails)
    output <- create_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified lifecycle policy and halts the automated operations that the policy specified
#'
#' Deletes the specified lifecycle policy and halts the automated operations that the policy specified.
#'
#' @param PolicyId The identifier of the lifecycle policy.
#'
#' @examples
#'
#' @export
delete_lifecycle_policy <- function (PolicyId) 
{
    op <- Operation(name = "DeleteLifecyclePolicy", http_method = "DELETE", 
        http_path = "/policies/{policyId}/", paginator = list())
    input <- delete_lifecycle_policy_input(PolicyId = PolicyId)
    output <- delete_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets summary information about all or the specified data lifecycle policies
#'
#' Gets summary information about all or the specified data lifecycle policies.
#' 
#' To get complete information about a policy, use GetLifecyclePolicy.
#'
#' @param PolicyIds The identifiers of the data lifecycle policies.
#' @param State The activation state.
#' @param ResourceTypes The resource type.
#' @param TargetTags The target tag for a policy.
#' 
#' Tags are strings in the format `key=value`.
#' @param TagsToAdd The tags to add to objects created by the policy.
#' 
#' Tags are strings in the format `key=value`.
#' 
#' These user-defined tags are added in addition to the AWS-added lifecycle tags.
#'
#' @examples
#'
#' @export
get_lifecycle_policies <- function (PolicyIds = NULL, State = NULL, 
    ResourceTypes = NULL, TargetTags = NULL, TagsToAdd = NULL) 
{
    op <- Operation(name = "GetLifecyclePolicies", http_method = "GET", 
        http_path = "/policies", paginator = list())
    input <- get_lifecycle_policies_input(PolicyIds = PolicyIds, 
        State = State, ResourceTypes = ResourceTypes, TargetTags = TargetTags, 
        TagsToAdd = TagsToAdd)
    output <- get_lifecycle_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets detailed information about the specified lifecycle policy
#'
#' Gets detailed information about the specified lifecycle policy.
#'
#' @param PolicyId The identifier of the lifecycle policy.
#'
#' @examples
#'
#' @export
get_lifecycle_policy <- function (PolicyId) 
{
    op <- Operation(name = "GetLifecyclePolicy", http_method = "GET", 
        http_path = "/policies/{policyId}/", paginator = list())
    input <- get_lifecycle_policy_input(PolicyId = PolicyId)
    output <- get_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified lifecycle policy
#'
#' Updates the specified lifecycle policy.
#'
#' @param PolicyId The identifier of the lifecycle policy.
#' @param ExecutionRoleArn The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by the lifecycle policy.
#' @param State The desired activation state of the lifecycle policy after creation.
#' @param Description A description of the lifecycle policy.
#' @param PolicyDetails The configuration of the lifecycle policy.
#' 
#' Target tags cannot be re-used across policies.
#'
#' @examples
#'
#' @export
update_lifecycle_policy <- function (PolicyId, ExecutionRoleArn = NULL, 
    State = NULL, Description = NULL, PolicyDetails = NULL) 
{
    op <- Operation(name = "UpdateLifecyclePolicy", http_method = "PATCH", 
        http_path = "/policies/{policyId}", paginator = list())
    input <- update_lifecycle_policy_input(PolicyId = PolicyId, 
        ExecutionRoleArn = ExecutionRoleArn, State = State, Description = Description, 
        PolicyDetails = PolicyDetails)
    output <- update_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
