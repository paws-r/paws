#' Cancels a job in an AWS Batch job queue
#'
#' Cancels a job in an AWS Batch job queue. Jobs that are in the `SUBMITTED`, `PENDING`, or `RUNNABLE` state are cancelled. Jobs that have progressed to `STARTING` or `RUNNING` are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the TerminateJob operation.
#'
#' @param jobId The AWS Batch job ID of the job to cancel.
#' @param reason A message to attach to the job that explains the reason for canceling it. This message is returned by future DescribeJobs operations on the job. This message is also recorded in the AWS Batch activity logs.
#'
#' @examples
#' # This example cancels a job with the specified job ID.
#' cancel_job(
#'   jobId = "1d828f65-7a4d-42e8-996d-3b900ed59dc4",
#'   reason = "Cancelling job."
#' )
#'
#' @export
cancel_job <- function (jobId, reason) 
{
    op <- Operation(name = "CancelJob", http_method = "POST", 
        http_path = "/v1/canceljob", paginator = list())
    input <- cancel_job_input(jobId = jobId, reason = reason)
    output <- cancel_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS Batch compute environment
#'
#' Creates an AWS Batch compute environment. You can create `MANAGED` or `UNMANAGED` compute environments.
#' 
#' In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use a recent, approved version of the Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand Instances in your managed compute environment, or you can use Amazon EC2 Spot Instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price.
#' 
#' In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see [Container Instance AMIs](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html) in the *Amazon Elastic Container Service Developer Guide*. After you have created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see [Launching an Amazon ECS Container Instance](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html) in the *Amazon Elastic Container Service Developer Guide*.
#'
#' @param computeEnvironmentName The name for your compute environment. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
#' @param type The type of the compute environment.
#' @param serviceRole The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
#' 
#' If your specified role has a path other than `/`, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.
#' 
#' Depending on how you created your AWS Batch service role, its ARN may contain the `service-role` path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the `service-role` path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments.
#' @param state The state of the compute environment. If the state is `ENABLED`, then the compute environment accepts jobs from a queue and can scale out automatically based on queues.
#' @param computeResources Details of the compute resources managed by the compute environment. This parameter is required for managed compute environments.
#'
#' @examples
#' # This example creates a managed compute environment with specific C4
#' # instance types that are launched on demand. The compute environment is
#' # called C4OnDemand.
#' create_compute_environment(
#'   type = "MANAGED",
#'   computeEnvironmentName = "C4OnDemand",
#'   computeResources = list(
#'     type = "EC2",
#'     desiredvCpus = 48L,
#'     ec2KeyPair = "id_rsa",
#'     instanceRole = "ecsInstanceRole",
#'     instanceTypes = list(
#'       "c4.large",
#'       "c4.xlarge",
#'       "c4.2xlarge",
#'       "c4.4xlarge",
#'       "c4.8xlarge"
#'     ),
#'     maxvCpus = 128L,
#'     minvCpus = 0L,
#'     securityGroupIds = list(
#'       "sg-cf5093b2"
#'     ),
#'     subnets = list(
#'       "subnet-220c0e0a",
#'       "subnet-1a95556d",
#'       "subnet-978f6dce"
#'     ),
#'     tags = list(
#'       Name = "Batch Instance - C4OnDemand"
#'     )
#'   ),
#'   serviceRole = "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
#'   state = "ENABLED"
#' )
#' 
#' # This example creates a managed compute environment with the M4 instance
#' # type that is launched when the Spot bid price is at or below 20% of the
#' # On-Demand price for the instance type. The compute environment is called
#' # M4Spot.
#' create_compute_environment(
#'   type = "MANAGED",
#'   computeEnvironmentName = "M4Spot",
#'   computeResources = list(
#'     type = "SPOT",
#'     bidPercentage = 20L,
#'     desiredvCpus = 4L,
#'     ec2KeyPair = "id_rsa",
#'     instanceRole = "ecsInstanceRole",
#'     instanceTypes = list(
#'       "m4"
#'     ),
#'     maxvCpus = 128L,
#'     minvCpus = 0L,
#'     securityGroupIds = list(
#'       "sg-cf5093b2"
#'     ),
#'     spotIamFleetRole = "arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role",
#'     subnets = list(
#'       "subnet-220c0e0a",
#'       "subnet-1a95556d",
#'       "subnet-978f6dce"
#'     ),
#'     tags = list(
#'       Name = "Batch Instance - M4Spot"
#'     )
#'   ),
#'   serviceRole = "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
#'   state = "ENABLED"
#' )
#'
#' @export
create_compute_environment <- function (computeEnvironmentName, 
    type, serviceRole, state = NULL, computeResources = NULL) 
{
    op <- Operation(name = "CreateComputeEnvironment", http_method = "POST", 
        http_path = "/v1/createcomputeenvironment", paginator = list())
    input <- create_compute_environment_input(computeEnvironmentName = computeEnvironmentName, 
        type = type, serviceRole = serviceRole, state = state, 
        computeResources = computeResources)
    output <- create_compute_environment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS Batch job queue
#'
#' Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.
#' 
#' You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
#'
#' @param jobQueueName The name of the job queue.
#' @param priority The priority of the job queue. Job queues with a higher priority (or a higher integer value for the `priority` parameter) are evaluated first when associated with same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of `10` is given scheduling preference over a job queue with a priority value of `1`.
#' @param computeEnvironmentOrder The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler uses this parameter to determine which compute environment should execute a given job. Compute environments must be in the `VALID` state before you can associate them with a job queue. You can associate up to three compute environments with a job queue.
#' @param state The state of the job queue. If the job queue state is `ENABLED`, it is able to accept jobs.
#'
#' @examples
#' # This example creates a job queue called LowPriority that uses the M4Spot
#' # compute environment.
#' create_job_queue(
#'   computeEnvironmentOrder = list(
#'     list(
#'       computeEnvironment = "M4Spot",
#'       order = 1L
#'     )
#'   ),
#'   jobQueueName = "LowPriority",
#'   priority = 1L,
#'   state = "ENABLED"
#' )
#' 
#' # This example creates a job queue called HighPriority that uses the
#' # C4OnDemand compute environment with an order of 1 and the M4Spot compute
#' # environment with an order of 2.
#' create_job_queue(
#'   computeEnvironmentOrder = list(
#'     list(
#'       computeEnvironment = "C4OnDemand",
#'       order = 1L
#'     ),
#'     list(
#'       computeEnvironment = "M4Spot",
#'       order = 2L
#'     )
#'   ),
#'   jobQueueName = "HighPriority",
#'   priority = 10L,
#'   state = "ENABLED"
#' )
#'
#' @export
create_job_queue <- function (jobQueueName, priority, computeEnvironmentOrder, 
    state = NULL) 
{
    op <- Operation(name = "CreateJobQueue", http_method = "POST", 
        http_path = "/v1/createjobqueue", paginator = list())
    input <- create_job_queue_input(jobQueueName = jobQueueName, 
        priority = priority, computeEnvironmentOrder = computeEnvironmentOrder, 
        state = state)
    output <- create_job_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an AWS Batch compute environment
#'
#' Deletes an AWS Batch compute environment.
#' 
#' Before you can delete a compute environment, you must set its state to `DISABLED` with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation.
#'
#' @param computeEnvironment The name or Amazon Resource Name (ARN) of the compute environment to delete.
#'
#' @examples
#' # This example deletes the P2OnDemand compute environment.
#' delete_compute_environment(
#'   computeEnvironment = "P2OnDemand"
#' )
#'
#' @export
delete_compute_environment <- function (computeEnvironment) 
{
    op <- Operation(name = "DeleteComputeEnvironment", http_method = "POST", 
        http_path = "/v1/deletecomputeenvironment", paginator = list())
    input <- delete_compute_environment_input(computeEnvironment = computeEnvironment)
    output <- delete_compute_environment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified job queue
#'
#' Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation. All jobs in the queue are terminated when you delete a job queue.
#' 
#' It is not necessary to disassociate compute environments from a queue before submitting a `DeleteJobQueue` request.
#'
#' @param jobQueue The short name or full Amazon Resource Name (ARN) of the queue to delete.
#'
#' @examples
#' # This example deletes the GPGPU job queue.
#' delete_job_queue(
#'   jobQueue = "GPGPU"
#' )
#'
#' @export
delete_job_queue <- function (jobQueue) 
{
    op <- Operation(name = "DeleteJobQueue", http_method = "POST", 
        http_path = "/v1/deletejobqueue", paginator = list())
    input <- delete_job_queue_input(jobQueue = jobQueue)
    output <- delete_job_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deregisters an AWS Batch job definition
#'
#' Deregisters an AWS Batch job definition.
#'
#' @param jobDefinition The name and revision (`name:revision`) or full Amazon Resource Name (ARN) of the job definition to deregister.
#'
#' @examples
#' # This example deregisters a job definition called sleep10.
#' deregister_job_definition(
#'   jobDefinition = "sleep10"
#' )
#'
#' @export
deregister_job_definition <- function (jobDefinition) 
{
    op <- Operation(name = "DeregisterJobDefinition", http_method = "POST", 
        http_path = "/v1/deregisterjobdefinition", paginator = list())
    input <- deregister_job_definition_input(jobDefinition = jobDefinition)
    output <- deregister_job_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your compute environments
#'
#' Describes one or more of your compute environments.
#' 
#' If you are using an unmanaged compute environment, you can use the `DescribeComputeEnvironment` operation to determine the `ecsClusterArn` that you should launch your Amazon ECS container instances into.
#'
#' @param computeEnvironments A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.
#' @param maxResults The maximum number of cluster results returned by `DescribeComputeEnvironments` in paginated output. When this parameter is used, `DescribeComputeEnvironments` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeComputeEnvironments` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeComputeEnvironments` returns up to 100 results and a `nextToken` value if applicable.
#' @param nextToken The `nextToken` value returned from a previous paginated `DescribeComputeEnvironments` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.
#' 
#' This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.
#'
#' @examples
#' # This example describes the P2OnDemand compute environment.
#' describe_compute_environments(
#'   computeEnvironments = list(
#'     "P2OnDemand"
#'   )
#' )
#'
#' @export
describe_compute_environments <- function (computeEnvironments = NULL, 
    maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "DescribeComputeEnvironments", http_method = "POST", 
        http_path = "/v1/describecomputeenvironments", paginator = list())
    input <- describe_compute_environments_input(computeEnvironments = computeEnvironments, 
        maxResults = maxResults, nextToken = nextToken)
    output <- describe_compute_environments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a list of job definitions
#'
#' Describes a list of job definitions. You can specify a `status` (such as `ACTIVE`) to only return job definitions that match that status.
#'
#' @param jobDefinitions A space-separated list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.
#' @param maxResults The maximum number of results returned by `DescribeJobDefinitions` in paginated output. When this parameter is used, `DescribeJobDefinitions` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeJobDefinitions` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeJobDefinitions` returns up to 100 results and a `nextToken` value if applicable.
#' @param jobDefinitionName The name of the job definition to describe.
#' @param status The status with which to filter job definitions.
#' @param nextToken The `nextToken` value returned from a previous paginated `DescribeJobDefinitions` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.
#' 
#' This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.
#'
#' @examples
#' # This example describes all of your active job definitions.
#' describe_job_definitions(
#'   status = "ACTIVE"
#' )
#'
#' @export
describe_job_definitions <- function (jobDefinitions = NULL, 
    maxResults = NULL, jobDefinitionName = NULL, status = NULL, 
    nextToken = NULL) 
{
    op <- Operation(name = "DescribeJobDefinitions", http_method = "POST", 
        http_path = "/v1/describejobdefinitions", paginator = list())
    input <- describe_job_definitions_input(jobDefinitions = jobDefinitions, 
        maxResults = maxResults, jobDefinitionName = jobDefinitionName, 
        status = status, nextToken = nextToken)
    output <- describe_job_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your job queues
#'
#' Describes one or more of your job queues.
#'
#' @param jobQueues A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.
#' @param maxResults The maximum number of results returned by `DescribeJobQueues` in paginated output. When this parameter is used, `DescribeJobQueues` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeJobQueues` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeJobQueues` returns up to 100 results and a `nextToken` value if applicable.
#' @param nextToken The `nextToken` value returned from a previous paginated `DescribeJobQueues` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.
#' 
#' This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.
#'
#' @examples
#' # This example describes the HighPriority job queue.
#' describe_job_queues(
#'   jobQueues = list(
#'     "HighPriority"
#'   )
#' )
#'
#' @export
describe_job_queues <- function (jobQueues = NULL, maxResults = NULL, 
    nextToken = NULL) 
{
    op <- Operation(name = "DescribeJobQueues", http_method = "POST", 
        http_path = "/v1/describejobqueues", paginator = list())
    input <- describe_job_queues_input(jobQueues = jobQueues, 
        maxResults = maxResults, nextToken = nextToken)
    output <- describe_job_queues_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a list of AWS Batch jobs
#'
#' Describes a list of AWS Batch jobs.
#'
#' @param jobs A space-separated list of up to 100 job IDs.
#'
#' @examples
#' # This example describes a job with the specified job ID.
#' describe_jobs(
#'   jobs = list(
#'     "24fa2d7a-64c4-49d2-8b47-f8da4fbde8e9"
#'   )
#' )
#'
#' @export
describe_jobs <- function (jobs) 
{
    op <- Operation(name = "DescribeJobs", http_method = "POST", 
        http_path = "/v1/describejobs", paginator = list())
    input <- describe_jobs_input(jobs = jobs)
    output <- describe_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of task jobs for a specified job queue
#'
#' Returns a list of task jobs for a specified job queue. You can filter the results by job status with the `jobStatus` parameter. If you do not specify a status, only `RUNNING` jobs are returned.
#'
#' @param jobQueue The name or full Amazon Resource Name (ARN) of the job queue with which to list jobs.
#' @param arrayJobId The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.
#' @param jobStatus The job status with which to filter jobs in the specified queue. If you do not specify a status, only `RUNNING` jobs are returned.
#' @param maxResults The maximum number of results returned by `ListJobs` in paginated output. When this parameter is used, `ListJobs` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListJobs` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListJobs` returns up to 100 results and a `nextToken` value if applicable.
#' @param nextToken The `nextToken` value returned from a previous paginated `ListJobs` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.
#' 
#' This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.
#'
#' @examples
#' # This example lists the running jobs in the HighPriority job queue.
#' list_jobs(
#'   jobQueue = "HighPriority"
#' )
#' 
#' # This example lists jobs in the HighPriority job queue that are in the
#' # SUBMITTED job status.
#' list_jobs(
#'   jobQueue = "HighPriority",
#'   jobStatus = "SUBMITTED"
#' )
#'
#' @export
list_jobs <- function (jobQueue = NULL, arrayJobId = NULL, jobStatus = NULL, 
    maxResults = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListJobs", http_method = "POST", 
        http_path = "/v1/listjobs", paginator = list())
    input <- list_jobs_input(jobQueue = jobQueue, arrayJobId = arrayJobId, 
        jobStatus = jobStatus, maxResults = maxResults, nextToken = nextToken)
    output <- list_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers an AWS Batch job definition
#'
#' Registers an AWS Batch job definition.
#'
#' @param jobDefinitionName The name of the job definition to register. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
#' @param type The type of job definition.
#' @param parameters Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a `SubmitJob` request override any corresponding parameter defaults from the job definition.
#' @param containerProperties An object with various properties specific for container-based jobs. This parameter is required if the `type` parameter is `container`.
#' @param retryStrategy The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that is specified during a SubmitJob operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it is not retried.
#' @param timeout The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. Any timeout configuration that is specified during a SubmitJob operation overrides the timeout configuration defined here. For more information, see [Job Timeouts](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html) in the *Amazon Elastic Container Service Developer Guide*.
#'
#' @examples
#' # This example registers a job definition for a simple container job.
#' register_job_definition(
#'   type = "container",
#'   containerProperties = list(
#'     command = list(
#'       "sleep",
#'       "10"
#'     ),
#'     image = "busybox",
#'     memory = 128L,
#'     vcpus = 1L
#'   ),
#'   jobDefinitionName = "sleep10"
#' )
#'
#' @export
register_job_definition <- function (jobDefinitionName, type, 
    parameters = NULL, containerProperties = NULL, retryStrategy = NULL, 
    timeout = NULL) 
{
    op <- Operation(name = "RegisterJobDefinition", http_method = "POST", 
        http_path = "/v1/registerjobdefinition", paginator = list())
    input <- register_job_definition_input(jobDefinitionName = jobDefinitionName, 
        type = type, parameters = parameters, containerProperties = containerProperties, 
        retryStrategy = retryStrategy, timeout = timeout)
    output <- register_job_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Submits an AWS Batch job from a job definition
#'
#' Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob override parameters defined in the job definition.
#'
#' @param jobName The name of the job. The first character must be alphanumeric, and up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
#' @param jobQueue The job queue into which the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue.
#' @param jobDefinition The job definition used by this job. This value can be either a `name:revision` or the Amazon Resource Name (ARN) for the job definition.
#' @param arrayProperties The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. For more information, see [Array Jobs](http://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html) in the *AWS Batch User Guide*.
#' @param dependsOn A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a `SEQUENTIAL` type dependency without specifying a job ID for array jobs so that each child array job completes sequentially, starting at index 0. You can also specify an `N_TO_N` type dependency with a job ID for array jobs so that each index child of this job must wait for the corresponding index child of each dependency to complete before it can begin.
#' @param parameters Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job definition. Parameters are specified as a key and value pair mapping. Parameters in a `SubmitJob` request override any corresponding parameter defaults from the job definition.
#' @param containerOverrides A list of container overrides in JSON format that specify the name of a container in the specified job definition and the overrides it should receive. You can override the default command for a container (that is specified in the job definition or the Docker image) with a `command` override. You can also override existing environment variables (that are specified in the job definition or Docker image) on a container or add new environment variables to it with an `environment` override.
#' @param retryStrategy The retry strategy to use for failed jobs from this SubmitJob operation. When a retry strategy is specified here, it overrides the retry strategy defined in the job definition.
#' @param timeout The timeout configuration for this SubmitJob operation. You can specify a timeout duration after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it is not retried. The minimum value for the timeout is 60 seconds. This configuration overrides any timeout configuration specified in the job definition. For array jobs, child jobs have the same timeout configuration as the parent job. For more information, see [Job Timeouts](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html) in the *Amazon Elastic Container Service Developer Guide*.
#'
#' @examples
#' # This example submits a simple container job called example to the
#' # HighPriority job queue.
#' submit_job(
#'   jobDefinition = "sleep60",
#'   jobName = "example",
#'   jobQueue = "HighPriority"
#' )
#'
#' @export
submit_job <- function (jobName, jobQueue, jobDefinition, arrayProperties = NULL, 
    dependsOn = NULL, parameters = NULL, containerOverrides = NULL, 
    retryStrategy = NULL, timeout = NULL) 
{
    op <- Operation(name = "SubmitJob", http_method = "POST", 
        http_path = "/v1/submitjob", paginator = list())
    input <- submit_job_input(jobName = jobName, jobQueue = jobQueue, 
        jobDefinition = jobDefinition, arrayProperties = arrayProperties, 
        dependsOn = dependsOn, parameters = parameters, containerOverrides = containerOverrides, 
        retryStrategy = retryStrategy, timeout = timeout)
    output <- submit_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Terminates a job in a job queue
#'
#' Terminates a job in a job queue. Jobs that are in the `STARTING` or `RUNNING` state are terminated, which causes them to transition to `FAILED`. Jobs that have not progressed to the `STARTING` state are cancelled.
#'
#' @param jobId The AWS Batch job ID of the job to terminate.
#' @param reason A message to attach to the job that explains the reason for canceling it. This message is returned by future DescribeJobs operations on the job. This message is also recorded in the AWS Batch activity logs.
#'
#' @examples
#' # This example terminates a job with the specified job ID.
#' terminate_job(
#'   jobId = "61e743ed-35e4-48da-b2de-5c8333821c84",
#'   reason = "Terminating job."
#' )
#'
#' @export
terminate_job <- function (jobId, reason) 
{
    op <- Operation(name = "TerminateJob", http_method = "POST", 
        http_path = "/v1/terminatejob", paginator = list())
    input <- terminate_job_input(jobId = jobId, reason = reason)
    output <- terminate_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an AWS Batch compute environment
#'
#' Updates an AWS Batch compute environment.
#'
#' @param computeEnvironment The name or full Amazon Resource Name (ARN) of the compute environment to update.
#' @param state The state of the compute environment. Compute environments in the `ENABLED` state can accept jobs from a queue and scale in or out automatically based on the workload demand of its associated queues.
#' @param computeResources Details of the compute resources managed by the compute environment. Required for a managed compute environment.
#' @param serviceRole The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf.
#' 
#' If your specified role has a path other than `/`, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path.
#' 
#' Depending on how you created your AWS Batch service role, its ARN may contain the `service-role` path prefix. When you only specify the name of the service role, AWS Batch assumes that your ARN does not use the `service-role` path prefix. Because of this, we recommend that you specify the full ARN of your service role when you create compute environments.
#'
#' @examples
#' # This example disables the P2OnDemand compute environment so it can be
#' # deleted.
#' update_compute_environment(
#'   computeEnvironment = "P2OnDemand",
#'   state = "DISABLED"
#' )
#'
#' @export
update_compute_environment <- function (computeEnvironment, state = NULL, 
    computeResources = NULL, serviceRole = NULL) 
{
    op <- Operation(name = "UpdateComputeEnvironment", http_method = "POST", 
        http_path = "/v1/updatecomputeenvironment", paginator = list())
    input <- update_compute_environment_input(computeEnvironment = computeEnvironment, 
        state = state, computeResources = computeResources, serviceRole = serviceRole)
    output <- update_compute_environment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a job queue
#'
#' Updates a job queue.
#'
#' @param jobQueue The name or the Amazon Resource Name (ARN) of the job queue.
#' @param state Describes the queue\'s ability to accept new jobs.
#' @param priority The priority of the job queue. Job queues with a higher priority (or a higher integer value for the `priority` parameter) are evaluated first when associated with same compute environment. Priority is determined in descending order, for example, a job queue with a priority value of `10` is given scheduling preference over a job queue with a priority value of `1`.
#' @param computeEnvironmentOrder Details the set of compute environments mapped to a job queue and their order relative to each other. This is one of the parameters used by the job scheduler to determine which compute environment should execute a given job.
#'
#' @examples
#' # This example disables a job queue so that it can be deleted.
#' update_job_queue(
#'   jobQueue = "GPGPU",
#'   state = "DISABLED"
#' )
#'
#' @export
update_job_queue <- function (jobQueue, state = NULL, priority = NULL, 
    computeEnvironmentOrder = NULL) 
{
    op <- Operation(name = "UpdateJobQueue", http_method = "POST", 
        http_path = "/v1/updatejobqueue", paginator = list())
    input <- update_job_queue_input(jobQueue = jobQueue, state = state, 
        priority = priority, computeEnvironmentOrder = computeEnvironmentOrder)
    output <- update_job_queue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
