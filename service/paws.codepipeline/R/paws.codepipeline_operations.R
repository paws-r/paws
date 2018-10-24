#' Returns information about a specified job and whether that job has been received by the job worker
#'
#' Returns information about a specified job and whether that job has been received by the job worker. Only used for custom actions.
#'
#' @param jobId The unique system-generated ID of the job for which you want to confirm receipt.
#' @param nonce A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response of the PollForJobs request that returned this job.
#'
#' @examples
#'
#' @export
acknowledge_job <- function (jobId, nonce) 
{
    op <- Operation(name = "AcknowledgeJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- acknowledge_job_input(jobId = jobId, nonce = nonce)
    output <- acknowledge_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Confirms a job worker has received the specified job
#'
#' Confirms a job worker has received the specified job. Only used for partner actions.
#'
#' @param jobId The unique system-generated ID of the job.
#' @param nonce A system-generated random number that AWS CodePipeline uses to ensure that the job is being worked on by only one job worker. Get this number from the response to a GetThirdPartyJobDetails request.
#' @param clientToken The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.
#'
#' @examples
#'
#' @export
acknowledge_third_party_job <- function (jobId, nonce, clientToken) 
{
    op <- Operation(name = "AcknowledgeThirdPartyJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- acknowledge_third_party_job_input(jobId = jobId, 
        nonce = nonce, clientToken = clientToken)
    output <- acknowledge_third_party_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new custom action that can be used in all pipelines associated with the AWS account
#'
#' Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.
#'
#' @param category The category of the custom action, such as a build action or a test action.
#' 
#' Although Source and Approval are listed as valid values, they are not currently functional. These values are reserved for future use.
#' @param provider The provider of the service used in the custom action, such as AWS CodeDeploy.
#' @param version The version identifier of the custom action.
#' @param inputArtifactDetails The details of the input artifact for the action, such as its commit ID.
#' @param outputArtifactDetails The details of the output artifact of the action, such as its commit ID.
#' @param settings Returns information about the settings for an action type.
#' @param configurationProperties The configuration properties for the custom action.
#' 
#' You can refer to a name in the configuration properties of the custom action within the URL templates by following the format of {Config:name}, as long as the configuration property is both required and not secret. For more information, see [Create a Custom Action for a Pipeline](http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html).
#'
#' @examples
#'
#' @export
create_custom_action_type <- function (category, provider, version, 
    inputArtifactDetails, outputArtifactDetails, settings = NULL, 
    configurationProperties = NULL) 
{
    op <- Operation(name = "CreateCustomActionType", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_custom_action_type_input(category = category, 
        provider = provider, version = version, inputArtifactDetails = inputArtifactDetails, 
        outputArtifactDetails = outputArtifactDetails, settings = settings, 
        configurationProperties = configurationProperties)
    output <- create_custom_action_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a pipeline
#'
#' Creates a pipeline.
#'
#' @param pipeline Represents the structure of actions and stages to be performed in the pipeline.
#'
#' @examples
#'
#' @export
create_pipeline <- function (pipeline) 
{
    op <- Operation(name = "CreatePipeline", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_pipeline_input(pipeline = pipeline)
    output <- create_pipeline_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Marks a custom action as deleted
#'
#' Marks a custom action as deleted. PollForJobs for the custom action will fail after the action is marked for deletion. Only used for custom actions.
#' 
#' To re-create a custom action after it has been deleted you must use a string in the version field that has never been used before. This string can be an incremented version number, for example. To restore a deleted custom action, use a JSON file that is identical to the deleted action, including the original string in the version field.
#'
#' @param category The category of the custom action that you want to delete, such as source or deploy.
#' @param provider The provider of the service used in the custom action, such as AWS CodeDeploy.
#' @param version The version of the custom action to delete.
#'
#' @examples
#'
#' @export
delete_custom_action_type <- function (category, provider, version) 
{
    op <- Operation(name = "DeleteCustomActionType", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_custom_action_type_input(category = category, 
        provider = provider, version = version)
    output <- delete_custom_action_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified pipeline
#'
#' Deletes the specified pipeline.
#'
#' @param name The name of the pipeline to be deleted.
#'
#' @examples
#'
#' @export
delete_pipeline <- function (name) 
{
    op <- Operation(name = "DeletePipeline", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_pipeline_input(name = name)
    output <- delete_pipeline_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a previously created webhook by name
#'
#' Deletes a previously created webhook by name. Deleting the webhook stops AWS CodePipeline from starting a pipeline every time an external event occurs. The API will return successfully when trying to delete a webhook that is already deleted. If a deleted webhook is re-created by calling PutWebhook with the same name, it will have a different URL.
#'
#' @param name The name of the webhook you want to delete.
#'
#' @examples
#'
#' @export
delete_webhook <- function (name) 
{
    op <- Operation(name = "DeleteWebhook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_webhook_input(name = name)
    output <- delete_webhook_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected
#'
#' Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently only supported for webhooks that target an action type of GitHub.
#'
#' @param webhookName The name of the webhook you want to deregister.
#'
#' @examples
#'
#' @export
deregister_webhook_with_third_party <- function (webhookName = NULL) 
{
    op <- Operation(name = "DeregisterWebhookWithThirdParty", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- deregister_webhook_with_third_party_input(webhookName = webhookName)
    output <- deregister_webhook_with_third_party_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline
#'
#' Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.
#'
#' @param pipelineName The name of the pipeline in which you want to disable the flow of artifacts from one stage to another.
#' @param stageName The name of the stage where you want to disable the inbound or outbound transition of artifacts.
#' @param transitionType Specifies whether artifacts will be prevented from transitioning into the stage and being processed by the actions in that stage (inbound), or prevented from transitioning from the stage after they have been processed by the actions in that stage (outbound).
#' @param reason The reason given to the user why a stage is disabled, such as waiting for manual approval or manual tests. This message is displayed in the pipeline console UI.
#'
#' @examples
#'
#' @export
disable_stage_transition <- function (pipelineName, stageName, 
    transitionType, reason) 
{
    op <- Operation(name = "DisableStageTransition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_stage_transition_input(pipelineName = pipelineName, 
        stageName = stageName, transitionType = transitionType, 
        reason = reason)
    output <- disable_stage_transition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables artifacts in a pipeline to transition to a stage in a pipeline
#'
#' Enables artifacts in a pipeline to transition to a stage in a pipeline.
#'
#' @param pipelineName The name of the pipeline in which you want to enable the flow of artifacts from one stage to another.
#' @param stageName The name of the stage where you want to enable the transition of artifacts, either into the stage (inbound) or from that stage to the next stage (outbound).
#' @param transitionType Specifies whether artifacts will be allowed to enter the stage and be processed by the actions in that stage (inbound) or whether already-processed artifacts will be allowed to transition to the next stage (outbound).
#'
#' @examples
#'
#' @export
enable_stage_transition <- function (pipelineName, stageName, 
    transitionType) 
{
    op <- Operation(name = "EnableStageTransition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_stage_transition_input(pipelineName = pipelineName, 
        stageName = stageName, transitionType = transitionType)
    output <- enable_stage_transition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a job
#'
#' Returns information about a job. Only used for custom actions.
#' 
#' When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.
#'
#' @param jobId The unique system-generated ID for the job.
#'
#' @examples
#'
#' @export
get_job_details <- function (jobId) 
{
    op <- Operation(name = "GetJobDetails", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_job_details_input(jobId = jobId)
    output <- get_job_details_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the metadata, structure, stages, and actions of a pipeline
#'
#' Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with UpdatePipeline.
#'
#' @param name The name of the pipeline for which you want to get information. Pipeline names must be unique under an Amazon Web Services (AWS) user account.
#' @param version The version number of the pipeline. If you do not specify a version, defaults to the most current version.
#'
#' @examples
#'
#' @export
get_pipeline <- function (name, version = NULL) 
{
    op <- Operation(name = "GetPipeline", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_pipeline_input(name = name, version = version)
    output <- get_pipeline_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline
#'
#' Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.
#'
#' @param pipelineName The name of the pipeline about which you want to get execution details.
#' @param pipelineExecutionId The ID of the pipeline execution about which you want to get execution details.
#'
#' @examples
#'
#' @export
get_pipeline_execution <- function (pipelineName, pipelineExecutionId) 
{
    op <- Operation(name = "GetPipelineExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_pipeline_execution_input(pipelineName = pipelineName, 
        pipelineExecutionId = pipelineExecutionId)
    output <- get_pipeline_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the state of a pipeline, including the stages and actions
#'
#' Returns information about the state of a pipeline, including the stages and actions.
#'
#' @param name The name of the pipeline about which you want to get information.
#'
#' @examples
#'
#' @export
get_pipeline_state <- function (name) 
{
    op <- Operation(name = "GetPipelineState", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_pipeline_state_input(name = name)
    output <- get_pipeline_state_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Requests the details of a job for a third party action
#'
#' Requests the details of a job for a third party action. Only used for partner actions.
#' 
#' When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.
#'
#' @param jobId The unique system-generated ID used for identifying the job.
#' @param clientToken The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.
#'
#' @examples
#'
#' @export
get_third_party_job_details <- function (jobId, clientToken) 
{
    op <- Operation(name = "GetThirdPartyJobDetails", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_third_party_job_details_input(jobId = jobId, 
        clientToken = clientToken)
    output <- get_third_party_job_details_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a summary of all AWS CodePipeline action types associated with your account
#'
#' Gets a summary of all AWS CodePipeline action types associated with your account.
#'
#' @param actionOwnerFilter Filters the list of action types to those created by a specified entity.
#' @param nextToken An identifier that was returned from the previous list action types call, which can be used to return the next set of action types in the list.
#'
#' @examples
#'
#' @export
list_action_types <- function (actionOwnerFilter = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListActionTypes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_action_types_input(actionOwnerFilter = actionOwnerFilter, 
        nextToken = nextToken)
    output <- list_action_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a summary of the most recent executions for a pipeline
#'
#' Gets a summary of the most recent executions for a pipeline.
#'
#' @param pipelineName The name of the pipeline for which you want to get execution summary information.
#' @param maxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value. The available pipeline execution history is limited to the most recent 12 months, based on pipeline execution start times. Default value is 100.
#' @param nextToken The token that was returned from the previous ListPipelineExecutions call, which can be used to return the next set of pipeline executions in the list.
#'
#' @examples
#'
#' @export
list_pipeline_executions <- function (pipelineName, maxResults = NULL, 
    nextToken = NULL) 
{
    op <- Operation(name = "ListPipelineExecutions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_pipeline_executions_input(pipelineName = pipelineName, 
        maxResults = maxResults, nextToken = nextToken)
    output <- list_pipeline_executions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a summary of all of the pipelines associated with your account
#'
#' Gets a summary of all of the pipelines associated with your account.
#'
#' @param nextToken An identifier that was returned from the previous list pipelines call, which can be used to return the next set of pipelines in the list.
#'
#' @examples
#'
#' @export
list_pipelines <- function (nextToken = NULL) 
{
    op <- Operation(name = "ListPipelines", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_pipelines_input(nextToken = nextToken)
    output <- list_pipelines_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a listing of all the webhooks in this region for this account
#'
#' Gets a listing of all the webhooks in this region for this account. The output lists all webhooks and includes the webhook URL and ARN, as well the configuration for each webhook.
#'
#' @param NextToken The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
#'
#' @examples
#'
#' @export
list_webhooks <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListWebhooks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_webhooks_input(NextToken = NextToken, MaxResults = MaxResults)
    output <- list_webhooks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about any jobs for AWS CodePipeline to act upon
#'
#' Returns information about any jobs for AWS CodePipeline to act upon. PollForJobs is only valid for action types with \"Custom\" in the owner field. If the action type contains \"AWS\" or \"ThirdParty\" in the owner field, the PollForJobs action returns an error.
#' 
#' When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.
#'
#' @param actionTypeId Represents information about an action type.
#' @param maxBatchSize The maximum number of jobs to return in a poll for jobs call.
#' @param queryParam A map of property names and values. For an action type with no queryable properties, this value must be null or an empty map. For an action type with a queryable property, you must supply that property as a key in the map. Only jobs whose action configuration matches the mapped value will be returned.
#'
#' @examples
#'
#' @export
poll_for_jobs <- function (actionTypeId, maxBatchSize = NULL, 
    queryParam = NULL) 
{
    op <- Operation(name = "PollForJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- poll_for_jobs_input(actionTypeId = actionTypeId, 
        maxBatchSize = maxBatchSize, queryParam = queryParam)
    output <- poll_for_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Determines whether there are any third party jobs for a job worker to act on
#'
#' Determines whether there are any third party jobs for a job worker to act on. Only used for partner actions.
#' 
#' When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts.
#'
#' @param actionTypeId Represents information about an action type.
#' @param maxBatchSize The maximum number of jobs to return in a poll for jobs call.
#'
#' @examples
#'
#' @export
poll_for_third_party_jobs <- function (actionTypeId, maxBatchSize = NULL) 
{
    op <- Operation(name = "PollForThirdPartyJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- poll_for_third_party_jobs_input(actionTypeId = actionTypeId, 
        maxBatchSize = maxBatchSize)
    output <- poll_for_third_party_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information to AWS CodePipeline about new revisions to a source
#'
#' Provides information to AWS CodePipeline about new revisions to a source.
#'
#' @param pipelineName The name of the pipeline that will start processing the revision to the source.
#' @param stageName The name of the stage that contains the action that will act upon the revision.
#' @param actionName The name of the action that will process the revision.
#' @param actionRevision Represents information about the version (or revision) of an action.
#'
#' @examples
#'
#' @export
put_action_revision <- function (pipelineName, stageName, actionName, 
    actionRevision) 
{
    op <- Operation(name = "PutActionRevision", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_action_revision_input(pipelineName = pipelineName, 
        stageName = stageName, actionName = actionName, actionRevision = actionRevision)
    output <- put_action_revision_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides the response to a manual approval request to AWS CodePipeline
#'
#' Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.
#'
#' @param pipelineName The name of the pipeline that contains the action.
#' @param stageName The name of the stage that contains the action.
#' @param actionName The name of the action for which approval is requested.
#' @param result Represents information about the result of the approval request.
#' @param token The system-generated token used to identify a unique approval request. The token for each open approval request can be obtained using the GetPipelineState action and is used to validate that the approval request corresponding to this token is still valid.
#'
#' @examples
#'
#' @export
put_approval_result <- function (pipelineName, stageName, actionName, 
    result, token) 
{
    op <- Operation(name = "PutApprovalResult", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_approval_result_input(pipelineName = pipelineName, 
        stageName = stageName, actionName = actionName, result = result, 
        token = token)
    output <- put_approval_result_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents the failure of a job as returned to the pipeline by a job worker
#'
#' Represents the failure of a job as returned to the pipeline by a job worker. Only used for custom actions.
#'
#' @param jobId The unique system-generated ID of the job that failed. This is the same ID returned from PollForJobs.
#' @param failureDetails The details about the failure of a job.
#'
#' @examples
#'
#' @export
put_job_failure_result <- function (jobId, failureDetails) 
{
    op <- Operation(name = "PutJobFailureResult", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_job_failure_result_input(jobId = jobId, failureDetails = failureDetails)
    output <- put_job_failure_result_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents the success of a job as returned to the pipeline by a job worker
#'
#' Represents the success of a job as returned to the pipeline by a job worker. Only used for custom actions.
#'
#' @param jobId The unique system-generated ID of the job that succeeded. This is the same ID returned from PollForJobs.
#' @param currentRevision The ID of the current revision of the artifact successfully worked upon by the job.
#' @param continuationToken A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a custom action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the custom action. When the action is complete, no continuation token should be supplied.
#' @param executionDetails The execution details of the successful job, such as the actions taken by the job worker.
#'
#' @examples
#'
#' @export
put_job_success_result <- function (jobId, currentRevision = NULL, 
    continuationToken = NULL, executionDetails = NULL) 
{
    op <- Operation(name = "PutJobSuccessResult", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_job_success_result_input(jobId = jobId, currentRevision = currentRevision, 
        continuationToken = continuationToken, executionDetails = executionDetails)
    output <- put_job_success_result_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents the failure of a third party job as returned to the pipeline by a job worker
#'
#' Represents the failure of a third party job as returned to the pipeline by a job worker. Only used for partner actions.
#'
#' @param jobId The ID of the job that failed. This is the same ID returned from PollForThirdPartyJobs.
#' @param clientToken The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.
#' @param failureDetails Represents information about failure details.
#'
#' @examples
#'
#' @export
put_third_party_job_failure_result <- function (jobId, clientToken, 
    failureDetails) 
{
    op <- Operation(name = "PutThirdPartyJobFailureResult", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_third_party_job_failure_result_input(jobId = jobId, 
        clientToken = clientToken, failureDetails = failureDetails)
    output <- put_third_party_job_failure_result_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Represents the success of a third party job as returned to the pipeline by a job worker
#'
#' Represents the success of a third party job as returned to the pipeline by a job worker. Only used for partner actions.
#'
#' @param jobId The ID of the job that successfully completed. This is the same ID returned from PollForThirdPartyJobs.
#' @param clientToken The clientToken portion of the clientId and clientToken pair used to verify that the calling entity is allowed access to the job and its details.
#' @param currentRevision Represents information about a current revision.
#' @param continuationToken A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a successful job provides to identify a partner action in progress. Future jobs will use this token in order to identify the running instance of the action. It can be reused to return additional information about the progress of the partner action. When the action is complete, no continuation token should be supplied.
#' @param executionDetails The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline.
#'
#' @examples
#'
#' @export
put_third_party_job_success_result <- function (jobId, clientToken, 
    currentRevision = NULL, continuationToken = NULL, executionDetails = NULL) 
{
    op <- Operation(name = "PutThirdPartyJobSuccessResult", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_third_party_job_success_result_input(jobId = jobId, 
        clientToken = clientToken, currentRevision = currentRevision, 
        continuationToken = continuationToken, executionDetails = executionDetails)
    output <- put_third_party_job_success_result_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Defines a webhook and returns a unique webhook URL generated by CodePipeline
#'
#' Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there\'s a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.
#'
#' @param webhook The detail provided in an input file to create the webhook, such as the webhook name, the pipeline name, and the action name. Give the webhook a unique name which identifies the webhook being defined. You may choose to name the webhook after the pipeline and action it targets so that you can easily recognize what it\'s used for later.
#'
#' @examples
#'
#' @export
put_webhook <- function (webhook) 
{
    op <- Operation(name = "PutWebhook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_webhook_input(webhook = webhook)
    output <- put_webhook_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configures a connection between the webhook that was created and the external tool with events to be detected
#'
#' Configures a connection between the webhook that was created and the external tool with events to be detected.
#'
#' @param webhookName The name of an existing webhook created with PutWebhook to register with a supported third party.
#'
#' @examples
#'
#' @export
register_webhook_with_third_party <- function (webhookName = NULL) 
{
    op <- Operation(name = "RegisterWebhookWithThirdParty", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_webhook_with_third_party_input(webhookName = webhookName)
    output <- register_webhook_with_third_party_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resumes the pipeline execution by retrying the last failed actions in a stage
#'
#' Resumes the pipeline execution by retrying the last failed actions in a stage.
#'
#' @param pipelineName The name of the pipeline that contains the failed stage.
#' @param stageName The name of the failed stage to be retried.
#' @param pipelineExecutionId The ID of the pipeline execution in the failed stage to be retried. Use the GetPipelineState action to retrieve the current pipelineExecutionId of the failed stage
#' @param retryMode The scope of the retry attempt. Currently, the only supported value is FAILED\_ACTIONS.
#'
#' @examples
#'
#' @export
retry_stage_execution <- function (pipelineName, stageName, pipelineExecutionId, 
    retryMode) 
{
    op <- Operation(name = "RetryStageExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- retry_stage_execution_input(pipelineName = pipelineName, 
        stageName = stageName, pipelineExecutionId = pipelineExecutionId, 
        retryMode = retryMode)
    output <- retry_stage_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts the specified pipeline
#'
#' Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.
#'
#' @param name The name of the pipeline to start.
#'
#' @examples
#'
#' @export
start_pipeline_execution <- function (name) 
{
    op <- Operation(name = "StartPipelineExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_pipeline_execution_input(name = name)
    output <- start_pipeline_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a specified pipeline with edits or changes to its structure
#'
#' Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure in conjunction with UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.
#'
#' @param pipeline The name of the pipeline to be updated.
#'
#' @examples
#'
#' @export
update_pipeline <- function (pipeline) 
{
    op <- Operation(name = "UpdatePipeline", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_pipeline_input(pipeline = pipeline)
    output <- update_pipeline_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
