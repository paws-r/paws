#' Creates a scaling plan
#'
#' Creates a scaling plan.
#' 
#' A scaling plan contains a set of instructions used to configure dynamic scaling for the scalable resources in your application. AWS Auto Scaling creates target tracking scaling policies based on the scaling instructions in your scaling plan.
#'
#' @param ScalingPlanName The name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
#' @param ApplicationSource A CloudFormation stack or set of tags. You can create one scaling plan per application source.
#' @param ScalingInstructions The scaling instructions.
#'
#' @examples
#'
#' @export
create_scaling_plan <- function (ScalingPlanName, ApplicationSource, 
    ScalingInstructions) 
{
    op <- Operation(name = "CreateScalingPlan", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_scaling_plan_input(ScalingPlanName = ScalingPlanName, 
        ApplicationSource = ApplicationSource, ScalingInstructions = ScalingInstructions)
    output <- create_scaling_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified scaling plan
#'
#' Deletes the specified scaling plan.
#'
#' @param ScalingPlanName The name of the scaling plan.
#' @param ScalingPlanVersion The version of the scaling plan.
#'
#' @examples
#'
#' @export
delete_scaling_plan <- function (ScalingPlanName, ScalingPlanVersion) 
{
    op <- Operation(name = "DeleteScalingPlan", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_scaling_plan_input(ScalingPlanName = ScalingPlanName, 
        ScalingPlanVersion = ScalingPlanVersion)
    output <- delete_scaling_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the scalable resources in the specified scaling plan
#'
#' Describes the scalable resources in the specified scaling plan.
#'
#' @param ScalingPlanName The name of the scaling plan.
#' @param ScalingPlanVersion The version of the scaling plan.
#' @param MaxResults The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.
#' @param NextToken The token for the next set of results.
#'
#' @examples
#'
#' @export
describe_scaling_plan_resources <- function (ScalingPlanName, 
    ScalingPlanVersion, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeScalingPlanResources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_scaling_plan_resources_input(ScalingPlanName = ScalingPlanName, 
        ScalingPlanVersion = ScalingPlanVersion, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_scaling_plan_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified scaling plans or all of your scaling plans
#'
#' Describes the specified scaling plans or all of your scaling plans.
#'
#' @param ScalingPlanNames The names of the scaling plans (up to 10). If you specify application sources, you cannot specify scaling plan names.
#' @param ScalingPlanVersion The version of the scaling plan. If you specify a scaling plan version, you must also specify a scaling plan name.
#' @param ApplicationSources The sources for the applications (up to 10). If you specify scaling plan names, you cannot specify application sources.
#' @param MaxResults The maximum number of scalable resources to return. This value can be between 1 and 50. The default value is 50.
#' @param NextToken The token for the next set of results.
#'
#' @examples
#'
#' @export
describe_scaling_plans <- function (ScalingPlanNames = NULL, 
    ScalingPlanVersion = NULL, ApplicationSources = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeScalingPlans", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_scaling_plans_input(ScalingPlanNames = ScalingPlanNames, 
        ScalingPlanVersion = ScalingPlanVersion, ApplicationSources = ApplicationSources, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_scaling_plans_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the scaling plan for the specified scaling plan
#'
#' Updates the scaling plan for the specified scaling plan.
#' 
#' You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
#'
#' @param ScalingPlanName The name of the scaling plan.
#' @param ScalingPlanVersion The version number.
#' @param ApplicationSource A CloudFormation stack or set of tags.
#' @param ScalingInstructions The scaling instructions.
#'
#' @examples
#'
#' @export
update_scaling_plan <- function (ScalingPlanName, ScalingPlanVersion, 
    ApplicationSource = NULL, ScalingInstructions = NULL) 
{
    op <- Operation(name = "UpdateScalingPlan", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_scaling_plan_input(ScalingPlanName = ScalingPlanName, 
        ScalingPlanVersion = ScalingPlanVersion, ApplicationSource = ApplicationSource, 
        ScalingInstructions = ScalingInstructions)
    output <- update_scaling_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
