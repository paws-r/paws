cancel_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "String", 
        type = "string", locationName = "jobId"), Reason = structure(logical(0), 
        shape = "String", type = "string", locationName = "reason")), 
        shape = "CancelJobRequest", type = "structure")
    return(populate(args, shape))
}

cancel_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelJobResponse", type = "structure")
    return(populate(args, shape))
}

create_compute_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironmentName = structure(logical(0), 
        shape = "String", type = "string", locationName = "computeEnvironmentName"), 
        Type = structure(logical(0), shape = "CEType", type = "string", 
            locationName = "type"), State = structure(logical(0), 
            shape = "CEState", type = "string", locationName = "state"), 
        ComputeResources = structure(list(Type = structure(logical(0), 
            shape = "CRType", type = "string", locationName = "type"), 
            MinvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "minvCpus"), 
            MaxvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "maxvCpus"), 
            DesiredvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "desiredvCpus"), 
            InstanceTypes = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "instanceTypes"), 
            ImageId = structure(logical(0), shape = "String", 
                type = "string", locationName = "imageId"), Subnets = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "subnets"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "securityGroupIds"), 
            Ec2KeyPair = structure(logical(0), shape = "String", 
                type = "string", locationName = "ec2KeyPair"), 
            InstanceRole = structure(logical(0), shape = "String", 
                type = "string", locationName = "instanceRole"), 
            Tags = structure(list(structure(logical(0), shape = "String", 
                type = "string")), shape = "TagsMap", type = "map", 
                locationName = "tags"), BidPercentage = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "bidPercentage"), 
            SpotIamFleetRole = structure(logical(0), shape = "String", 
                type = "string", locationName = "spotIamFleetRole")), 
            shape = "ComputeResource", type = "structure", locationName = "computeResources"), 
        ServiceRole = structure(logical(0), shape = "String", 
            type = "string", locationName = "serviceRole")), 
        shape = "CreateComputeEnvironmentRequest", type = "structure")
    return(populate(args, shape))
}

create_compute_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironmentName = structure(logical(0), 
        shape = "String", type = "string", locationName = "computeEnvironmentName"), 
        ComputeEnvironmentArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "computeEnvironmentArn")), 
        shape = "CreateComputeEnvironmentResponse", type = "structure")
    return(populate(args, shape))
}

create_job_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueueName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueueName"), 
        State = structure(logical(0), shape = "JQState", type = "string", 
            locationName = "state"), Priority = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "priority"), 
        ComputeEnvironmentOrder = structure(list(structure(list(Order = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "order"), 
            ComputeEnvironment = structure(logical(0), shape = "String", 
                type = "string", locationName = "computeEnvironment")), 
            shape = "ComputeEnvironmentOrder", type = "structure")), 
            shape = "ComputeEnvironmentOrders", type = "list", 
            locationName = "computeEnvironmentOrder")), shape = "CreateJobQueueRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_job_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueueName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueueName"), 
        JobQueueArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "jobQueueArn")), 
        shape = "CreateJobQueueResponse", type = "structure")
    return(populate(args, shape))
}

delete_compute_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironment = structure(logical(0), 
        shape = "String", type = "string", locationName = "computeEnvironment")), 
        shape = "DeleteComputeEnvironmentRequest", type = "structure")
    return(populate(args, shape))
}

delete_compute_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteComputeEnvironmentResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_job_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueue = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueue")), 
        shape = "DeleteJobQueueRequest", type = "structure")
    return(populate(args, shape))
}

delete_job_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteJobQueueResponse", 
        type = "structure")
    return(populate(args, shape))
}

deregister_job_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDefinition = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobDefinition")), 
        shape = "DeregisterJobDefinitionRequest", type = "structure")
    return(populate(args, shape))
}

deregister_job_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterJobDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_compute_environments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironments = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "computeEnvironments"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "String", type = "string", locationName = "nextToken")), 
        shape = "DescribeComputeEnvironmentsRequest", type = "structure")
    return(populate(args, shape))
}

describe_compute_environments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironments = structure(list(structure(list(ComputeEnvironmentName = structure(logical(0), 
        shape = "String", type = "string", locationName = "computeEnvironmentName"), 
        ComputeEnvironmentArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "computeEnvironmentArn"), 
        EcsClusterArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "ecsClusterArn"), 
        Type = structure(logical(0), shape = "CEType", type = "string", 
            locationName = "type"), State = structure(logical(0), 
            shape = "CEState", type = "string", locationName = "state"), 
        Status = structure(logical(0), shape = "CEStatus", type = "string", 
            locationName = "status"), StatusReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "statusReason"), 
        ComputeResources = structure(list(Type = structure(logical(0), 
            shape = "CRType", type = "string", locationName = "type"), 
            MinvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "minvCpus"), 
            MaxvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "maxvCpus"), 
            DesiredvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "desiredvCpus"), 
            InstanceTypes = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "instanceTypes"), 
            ImageId = structure(logical(0), shape = "String", 
                type = "string", locationName = "imageId"), Subnets = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "subnets"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "securityGroupIds"), 
            Ec2KeyPair = structure(logical(0), shape = "String", 
                type = "string", locationName = "ec2KeyPair"), 
            InstanceRole = structure(logical(0), shape = "String", 
                type = "string", locationName = "instanceRole"), 
            Tags = structure(list(structure(logical(0), shape = "String", 
                type = "string")), shape = "TagsMap", type = "map", 
                locationName = "tags"), BidPercentage = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "bidPercentage"), 
            SpotIamFleetRole = structure(logical(0), shape = "String", 
                type = "string", locationName = "spotIamFleetRole")), 
            shape = "ComputeResource", type = "structure", locationName = "computeResources"), 
        ServiceRole = structure(logical(0), shape = "String", 
            type = "string", locationName = "serviceRole")), 
        shape = "ComputeEnvironmentDetail", type = "structure")), 
        shape = "ComputeEnvironmentDetailList", type = "list", 
        locationName = "computeEnvironments"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "DescribeComputeEnvironmentsResponse", type = "structure")
    return(populate(args, shape))
}

describe_job_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDefinitions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "jobDefinitions"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "maxResults"), 
        JobDefinitionName = structure(logical(0), shape = "String", 
            type = "string", locationName = "jobDefinitionName"), 
        Status = structure(logical(0), shape = "String", type = "string", 
            locationName = "status"), NextToken = structure(logical(0), 
            shape = "String", type = "string", locationName = "nextToken")), 
        shape = "DescribeJobDefinitionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_job_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDefinitions = structure(list(structure(list(JobDefinitionName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobDefinitionName"), 
        JobDefinitionArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "jobDefinitionArn"), 
        Revision = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "revision"), Status = structure(logical(0), 
            shape = "String", type = "string", locationName = "status"), 
        Type = structure(logical(0), shape = "String", type = "string", 
            locationName = "type"), Parameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ParametersMap", 
            type = "map", locationName = "parameters"), RetryStrategy = structure(list(Attempts = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attempts")), 
            shape = "RetryStrategy", type = "structure", locationName = "retryStrategy"), 
        ContainerProperties = structure(list(Image = structure(logical(0), 
            shape = "String", type = "string", locationName = "image"), 
            Vcpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "vcpus"), Memory = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "memory"), 
            Command = structure(list(structure(logical(0), shape = "String", 
                type = "string")), shape = "StringList", type = "list", 
                locationName = "command"), JobRoleArn = structure(logical(0), 
                shape = "String", type = "string", locationName = "jobRoleArn"), 
            Volumes = structure(list(structure(list(Host = structure(list(SourcePath = structure(logical(0), 
                shape = "String", type = "string", locationName = "sourcePath")), 
                shape = "Host", type = "structure", locationName = "host"), 
                Name = structure(logical(0), shape = "String", 
                  type = "string", locationName = "name")), shape = "Volume", 
                type = "structure")), shape = "Volumes", type = "list", 
                locationName = "volumes"), Environment = structure(list(structure(list(Name = structure(logical(0), 
                shape = "String", type = "string", locationName = "name"), 
                Value = structure(logical(0), shape = "String", 
                  type = "string", locationName = "value")), 
                shape = "KeyValuePair", type = "structure")), 
                shape = "EnvironmentVariables", type = "list", 
                locationName = "environment"), MountPoints = structure(list(structure(list(ContainerPath = structure(logical(0), 
                shape = "String", type = "string", locationName = "containerPath"), 
                ReadOnly = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "readOnly"), 
                SourceVolume = structure(logical(0), shape = "String", 
                  type = "string", locationName = "sourceVolume")), 
                shape = "MountPoint", type = "structure")), shape = "MountPoints", 
                type = "list", locationName = "mountPoints"), 
            ReadonlyRootFilesystem = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "readonlyRootFilesystem"), 
            Privileged = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "privileged"), 
            Ulimits = structure(list(structure(list(HardLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "hardLimit"), 
                Name = structure(logical(0), shape = "String", 
                  type = "string", locationName = "name"), SoftLimit = structure(logical(0), 
                  shape = "Integer", type = "integer", locationName = "softLimit")), 
                shape = "Ulimit", type = "structure")), shape = "Ulimits", 
                type = "list", locationName = "ulimits"), User = structure(logical(0), 
                shape = "String", type = "string", locationName = "user")), 
            shape = "ContainerProperties", type = "structure", 
            locationName = "containerProperties"), Timeout = structure(list(AttemptDurationSeconds = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attemptDurationSeconds")), 
            shape = "JobTimeout", type = "structure", locationName = "timeout")), 
        shape = "JobDefinition", type = "structure")), shape = "JobDefinitionList", 
        type = "list", locationName = "jobDefinitions"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "DescribeJobDefinitionsResponse", type = "structure")
    return(populate(args, shape))
}

describe_job_queues_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueues = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "jobQueues"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            locationName = "nextToken")), shape = "DescribeJobQueuesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_job_queues_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueues = structure(list(structure(list(JobQueueName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueueName"), 
        JobQueueArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "jobQueueArn"), State = structure(logical(0), 
            shape = "JQState", type = "string", locationName = "state"), 
        Status = structure(logical(0), shape = "JQStatus", type = "string", 
            locationName = "status"), StatusReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "statusReason"), 
        Priority = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "priority"), ComputeEnvironmentOrder = structure(list(structure(list(Order = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "order"), 
            ComputeEnvironment = structure(logical(0), shape = "String", 
                type = "string", locationName = "computeEnvironment")), 
            shape = "ComputeEnvironmentOrder", type = "structure")), 
            shape = "ComputeEnvironmentOrders", type = "list", 
            locationName = "computeEnvironmentOrder")), shape = "JobQueueDetail", 
        type = "structure")), shape = "JobQueueDetailList", type = "list", 
        locationName = "jobQueues"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "DescribeJobQueuesResponse", type = "structure")
    return(populate(args, shape))
}

describe_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "jobs")), shape = "DescribeJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(JobName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobName"), 
        JobId = structure(logical(0), shape = "String", type = "string", 
            locationName = "jobId"), JobQueue = structure(logical(0), 
            shape = "String", type = "string", locationName = "jobQueue"), 
        Status = structure(logical(0), shape = "JobStatus", type = "string", 
            locationName = "status"), Attempts = structure(list(structure(list(Container = structure(list(ContainerInstanceArn = structure(logical(0), 
            shape = "String", type = "string", locationName = "containerInstanceArn"), 
            TaskArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "taskArn"), ExitCode = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "exitCode"), 
            Reason = structure(logical(0), shape = "String", 
                type = "string", locationName = "reason"), LogStreamName = structure(logical(0), 
                shape = "String", type = "string", locationName = "logStreamName")), 
            shape = "AttemptContainerDetail", type = "structure", 
            locationName = "container"), StartedAt = structure(logical(0), 
            shape = "Long", type = "long", locationName = "startedAt"), 
            StoppedAt = structure(logical(0), shape = "Long", 
                type = "long", locationName = "stoppedAt"), StatusReason = structure(logical(0), 
                shape = "String", type = "string", locationName = "statusReason")), 
            shape = "AttemptDetail", type = "structure")), shape = "AttemptDetails", 
            type = "list", locationName = "attempts"), StatusReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "statusReason"), 
        CreatedAt = structure(logical(0), shape = "Long", type = "long", 
            locationName = "createdAt"), RetryStrategy = structure(list(Attempts = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attempts")), 
            shape = "RetryStrategy", type = "structure", locationName = "retryStrategy"), 
        StartedAt = structure(logical(0), shape = "Long", type = "long", 
            locationName = "startedAt"), StoppedAt = structure(logical(0), 
            shape = "Long", type = "long", locationName = "stoppedAt"), 
        DependsOn = structure(list(structure(list(JobId = structure(logical(0), 
            shape = "String", type = "string", locationName = "jobId"), 
            Type = structure(logical(0), shape = "ArrayJobDependency", 
                type = "string", locationName = "type")), shape = "JobDependency", 
            type = "structure")), shape = "JobDependencyList", 
            type = "list", locationName = "dependsOn"), JobDefinition = structure(logical(0), 
            shape = "String", type = "string", locationName = "jobDefinition"), 
        Parameters = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ParametersMap", type = "map", 
            locationName = "parameters"), Container = structure(list(Image = structure(logical(0), 
            shape = "String", type = "string", locationName = "image"), 
            Vcpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "vcpus"), Memory = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "memory"), 
            Command = structure(list(structure(logical(0), shape = "String", 
                type = "string")), shape = "StringList", type = "list", 
                locationName = "command"), JobRoleArn = structure(logical(0), 
                shape = "String", type = "string", locationName = "jobRoleArn"), 
            Volumes = structure(list(structure(list(Host = structure(list(SourcePath = structure(logical(0), 
                shape = "String", type = "string", locationName = "sourcePath")), 
                shape = "Host", type = "structure", locationName = "host"), 
                Name = structure(logical(0), shape = "String", 
                  type = "string", locationName = "name")), shape = "Volume", 
                type = "structure")), shape = "Volumes", type = "list", 
                locationName = "volumes"), Environment = structure(list(structure(list(Name = structure(logical(0), 
                shape = "String", type = "string", locationName = "name"), 
                Value = structure(logical(0), shape = "String", 
                  type = "string", locationName = "value")), 
                shape = "KeyValuePair", type = "structure")), 
                shape = "EnvironmentVariables", type = "list", 
                locationName = "environment"), MountPoints = structure(list(structure(list(ContainerPath = structure(logical(0), 
                shape = "String", type = "string", locationName = "containerPath"), 
                ReadOnly = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "readOnly"), 
                SourceVolume = structure(logical(0), shape = "String", 
                  type = "string", locationName = "sourceVolume")), 
                shape = "MountPoint", type = "structure")), shape = "MountPoints", 
                type = "list", locationName = "mountPoints"), 
            ReadonlyRootFilesystem = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "readonlyRootFilesystem"), 
            Ulimits = structure(list(structure(list(HardLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "hardLimit"), 
                Name = structure(logical(0), shape = "String", 
                  type = "string", locationName = "name"), SoftLimit = structure(logical(0), 
                  shape = "Integer", type = "integer", locationName = "softLimit")), 
                shape = "Ulimit", type = "structure")), shape = "Ulimits", 
                type = "list", locationName = "ulimits"), Privileged = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "privileged"), 
            User = structure(logical(0), shape = "String", type = "string", 
                locationName = "user"), ExitCode = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "exitCode"), 
            Reason = structure(logical(0), shape = "String", 
                type = "string", locationName = "reason"), ContainerInstanceArn = structure(logical(0), 
                shape = "String", type = "string", locationName = "containerInstanceArn"), 
            TaskArn = structure(logical(0), shape = "String", 
                type = "string", locationName = "taskArn"), LogStreamName = structure(logical(0), 
                shape = "String", type = "string", locationName = "logStreamName")), 
            shape = "ContainerDetail", type = "structure", locationName = "container"), 
        ArrayProperties = structure(list(StatusSummary = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ArrayJobStatusSummary", 
            type = "map", locationName = "statusSummary"), Size = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "size"), 
            Index = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "index")), shape = "ArrayPropertiesDetail", 
            type = "structure", locationName = "arrayProperties"), 
        Timeout = structure(list(AttemptDurationSeconds = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attemptDurationSeconds")), 
            shape = "JobTimeout", type = "structure", locationName = "timeout")), 
        shape = "JobDetail", type = "structure")), shape = "JobDetailList", 
        type = "list", locationName = "jobs")), shape = "DescribeJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueue = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueue"), 
        ArrayJobId = structure(logical(0), shape = "String", 
            type = "string", locationName = "arrayJobId"), JobStatus = structure(logical(0), 
            shape = "JobStatus", type = "string", locationName = "jobStatus"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "maxResults"), NextToken = structure(logical(0), 
            shape = "String", type = "string", locationName = "nextToken")), 
        shape = "ListJobsRequest", type = "structure")
    return(populate(args, shape))
}

list_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobSummaryList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobId"), 
        JobName = structure(logical(0), shape = "String", type = "string", 
            locationName = "jobName"), CreatedAt = structure(logical(0), 
            shape = "Long", type = "long", locationName = "createdAt"), 
        Status = structure(logical(0), shape = "JobStatus", type = "string", 
            locationName = "status"), StatusReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "statusReason"), 
        StartedAt = structure(logical(0), shape = "Long", type = "long", 
            locationName = "startedAt"), StoppedAt = structure(logical(0), 
            shape = "Long", type = "long", locationName = "stoppedAt"), 
        Container = structure(list(ExitCode = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "exitCode"), 
            Reason = structure(logical(0), shape = "String", 
                type = "string", locationName = "reason")), shape = "ContainerSummary", 
            type = "structure", locationName = "container"), 
        ArrayProperties = structure(list(Size = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "size"), 
            Index = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "index")), shape = "ArrayPropertiesSummary", 
            type = "structure", locationName = "arrayProperties")), 
        shape = "JobSummary", type = "structure")), shape = "JobSummaryList", 
        type = "list", locationName = "jobSummaryList"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "ListJobsResponse", type = "structure")
    return(populate(args, shape))
}

register_job_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDefinitionName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobDefinitionName"), 
        Type = structure(logical(0), shape = "JobDefinitionType", 
            type = "string", locationName = "type"), Parameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ParametersMap", 
            type = "map", locationName = "parameters"), ContainerProperties = structure(list(Image = structure(logical(0), 
            shape = "String", type = "string", locationName = "image"), 
            Vcpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "vcpus"), Memory = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "memory"), 
            Command = structure(list(structure(logical(0), shape = "String", 
                type = "string")), shape = "StringList", type = "list", 
                locationName = "command"), JobRoleArn = structure(logical(0), 
                shape = "String", type = "string", locationName = "jobRoleArn"), 
            Volumes = structure(list(structure(list(Host = structure(list(SourcePath = structure(logical(0), 
                shape = "String", type = "string", locationName = "sourcePath")), 
                shape = "Host", type = "structure", locationName = "host"), 
                Name = structure(logical(0), shape = "String", 
                  type = "string", locationName = "name")), shape = "Volume", 
                type = "structure")), shape = "Volumes", type = "list", 
                locationName = "volumes"), Environment = structure(list(structure(list(Name = structure(logical(0), 
                shape = "String", type = "string", locationName = "name"), 
                Value = structure(logical(0), shape = "String", 
                  type = "string", locationName = "value")), 
                shape = "KeyValuePair", type = "structure")), 
                shape = "EnvironmentVariables", type = "list", 
                locationName = "environment"), MountPoints = structure(list(structure(list(ContainerPath = structure(logical(0), 
                shape = "String", type = "string", locationName = "containerPath"), 
                ReadOnly = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "readOnly"), 
                SourceVolume = structure(logical(0), shape = "String", 
                  type = "string", locationName = "sourceVolume")), 
                shape = "MountPoint", type = "structure")), shape = "MountPoints", 
                type = "list", locationName = "mountPoints"), 
            ReadonlyRootFilesystem = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "readonlyRootFilesystem"), 
            Privileged = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "privileged"), 
            Ulimits = structure(list(structure(list(HardLimit = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "hardLimit"), 
                Name = structure(logical(0), shape = "String", 
                  type = "string", locationName = "name"), SoftLimit = structure(logical(0), 
                  shape = "Integer", type = "integer", locationName = "softLimit")), 
                shape = "Ulimit", type = "structure")), shape = "Ulimits", 
                type = "list", locationName = "ulimits"), User = structure(logical(0), 
                shape = "String", type = "string", locationName = "user")), 
            shape = "ContainerProperties", type = "structure", 
            locationName = "containerProperties"), RetryStrategy = structure(list(Attempts = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attempts")), 
            shape = "RetryStrategy", type = "structure", locationName = "retryStrategy"), 
        Timeout = structure(list(AttemptDurationSeconds = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attemptDurationSeconds")), 
            shape = "JobTimeout", type = "structure", locationName = "timeout")), 
        shape = "RegisterJobDefinitionRequest", type = "structure")
    return(populate(args, shape))
}

register_job_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobDefinitionName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobDefinitionName"), 
        JobDefinitionArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "jobDefinitionArn"), 
        Revision = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "revision")), shape = "RegisterJobDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

submit_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "String", 
        type = "string", locationName = "jobName"), JobQueue = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueue"), 
        ArrayProperties = structure(list(Size = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "size")), 
            shape = "ArrayProperties", type = "structure", locationName = "arrayProperties"), 
        DependsOn = structure(list(structure(list(JobId = structure(logical(0), 
            shape = "String", type = "string", locationName = "jobId"), 
            Type = structure(logical(0), shape = "ArrayJobDependency", 
                type = "string", locationName = "type")), shape = "JobDependency", 
            type = "structure")), shape = "JobDependencyList", 
            type = "list", locationName = "dependsOn"), JobDefinition = structure(logical(0), 
            shape = "String", type = "string", locationName = "jobDefinition"), 
        Parameters = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "ParametersMap", type = "map", 
            locationName = "parameters"), ContainerOverrides = structure(list(Vcpus = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "vcpus"), 
            Memory = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "memory"), Command = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list", locationName = "command"), Environment = structure(list(structure(list(Name = structure(logical(0), 
                shape = "String", type = "string", locationName = "name"), 
                Value = structure(logical(0), shape = "String", 
                  type = "string", locationName = "value")), 
                shape = "KeyValuePair", type = "structure")), 
                shape = "EnvironmentVariables", type = "list", 
                locationName = "environment")), shape = "ContainerOverrides", 
            type = "structure", locationName = "containerOverrides"), 
        RetryStrategy = structure(list(Attempts = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attempts")), 
            shape = "RetryStrategy", type = "structure", locationName = "retryStrategy"), 
        Timeout = structure(list(AttemptDurationSeconds = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "attemptDurationSeconds")), 
            shape = "JobTimeout", type = "structure", locationName = "timeout")), 
        shape = "SubmitJobRequest", type = "structure")
    return(populate(args, shape))
}

submit_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "String", 
        type = "string", locationName = "jobName"), JobId = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobId")), 
        shape = "SubmitJobResponse", type = "structure")
    return(populate(args, shape))
}

terminate_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "String", 
        type = "string", locationName = "jobId"), Reason = structure(logical(0), 
        shape = "String", type = "string", locationName = "reason")), 
        shape = "TerminateJobRequest", type = "structure")
    return(populate(args, shape))
}

terminate_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TerminateJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_compute_environment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironment = structure(logical(0), 
        shape = "String", type = "string", locationName = "computeEnvironment"), 
        State = structure(logical(0), shape = "CEState", type = "string", 
            locationName = "state"), ComputeResources = structure(list(MinvCpus = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "minvCpus"), 
            MaxvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "maxvCpus"), 
            DesiredvCpus = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "desiredvCpus")), 
            shape = "ComputeResourceUpdate", type = "structure", 
            locationName = "computeResources"), ServiceRole = structure(logical(0), 
            shape = "String", type = "string", locationName = "serviceRole")), 
        shape = "UpdateComputeEnvironmentRequest", type = "structure")
    return(populate(args, shape))
}

update_compute_environment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComputeEnvironmentName = structure(logical(0), 
        shape = "String", type = "string", locationName = "computeEnvironmentName"), 
        ComputeEnvironmentArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "computeEnvironmentArn")), 
        shape = "UpdateComputeEnvironmentResponse", type = "structure")
    return(populate(args, shape))
}

update_job_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueue = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueue"), 
        State = structure(logical(0), shape = "JQState", type = "string", 
            locationName = "state"), Priority = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "priority"), 
        ComputeEnvironmentOrder = structure(list(structure(list(Order = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "order"), 
            ComputeEnvironment = structure(logical(0), shape = "String", 
                type = "string", locationName = "computeEnvironment")), 
            shape = "ComputeEnvironmentOrder", type = "structure")), 
            shape = "ComputeEnvironmentOrders", type = "list", 
            locationName = "computeEnvironmentOrder")), shape = "UpdateJobQueueRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_job_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobQueueName = structure(logical(0), 
        shape = "String", type = "string", locationName = "jobQueueName"), 
        JobQueueArn = structure(logical(0), shape = "String", 
            type = "string", locationName = "jobQueueArn")), 
        shape = "UpdateJobQueueResponse", type = "structure")
    return(populate(args, shape))
}
