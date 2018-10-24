describe_job_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "DescribeJobExecutionJobId", 
        location = "uri", locationName = "jobId", type = "string", 
        pattern = "[a-zA-Z0-9_-]+|^\\$next"), ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        IncludeJobDocument = structure(logical(0), shape = "IncludeJobDocument", 
            location = "querystring", locationName = "includeJobDocument", 
            type = "boolean"), ExecutionNumber = structure(logical(0), 
            shape = "ExecutionNumber", location = "querystring", 
            locationName = "executionNumber", type = "long")), 
        shape = "DescribeJobExecutionRequest", type = "structure")
    return(populate(args, shape))
}

describe_job_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Execution = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), Status = structure(logical(0), 
            shape = "JobExecutionStatus", type = "string", locationName = "status"), 
        StatusDetails = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "statusDetails"), QueuedAt = structure(logical(0), 
            shape = "QueuedAt", type = "long", locationName = "queuedAt"), 
        StartedAt = structure(logical(0), shape = "StartedAt", 
            type = "long", locationName = "startedAt"), LastUpdatedAt = structure(logical(0), 
            shape = "LastUpdatedAt", type = "long", locationName = "lastUpdatedAt"), 
        ApproximateSecondsBeforeTimedOut = structure(logical(0), 
            shape = "ApproximateSecondsBeforeTimedOut", type = "long", 
            locationName = "approximateSecondsBeforeTimedOut"), 
        VersionNumber = structure(logical(0), shape = "VersionNumber", 
            type = "long", locationName = "versionNumber"), ExecutionNumber = structure(logical(0), 
            shape = "ExecutionNumber", type = "long", locationName = "executionNumber"), 
        JobDocument = structure(logical(0), shape = "JobDocument", 
            type = "string", max = 32768L, locationName = "jobDocument")), 
        shape = "JobExecution", type = "structure", locationName = "execution")), 
        shape = "DescribeJobExecutionResponse", type = "structure")
    return(populate(args, shape))
}

get_pending_job_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+")), 
        shape = "GetPendingJobExecutionsRequest", type = "structure")
    return(populate(args, shape))
}

get_pending_job_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InProgressJobs = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        QueuedAt = structure(logical(0), shape = "QueuedAt", 
            type = "long", locationName = "queuedAt"), StartedAt = structure(logical(0), 
            shape = "StartedAt", type = "long", locationName = "startedAt"), 
        LastUpdatedAt = structure(logical(0), shape = "LastUpdatedAt", 
            type = "long", locationName = "lastUpdatedAt"), VersionNumber = structure(logical(0), 
            shape = "VersionNumber", type = "long", locationName = "versionNumber"), 
        ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
            type = "long", locationName = "executionNumber")), 
        shape = "JobExecutionSummary", type = "structure")), 
        shape = "JobExecutionSummaryList", type = "list", locationName = "inProgressJobs"), 
        QueuedJobs = structure(list(structure(list(JobId = structure(logical(0), 
            shape = "JobId", type = "string", max = 64L, min = 1L, 
            pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
            QueuedAt = structure(logical(0), shape = "QueuedAt", 
                type = "long", locationName = "queuedAt"), StartedAt = structure(logical(0), 
                shape = "StartedAt", type = "long", locationName = "startedAt"), 
            LastUpdatedAt = structure(logical(0), shape = "LastUpdatedAt", 
                type = "long", locationName = "lastUpdatedAt"), 
            VersionNumber = structure(logical(0), shape = "VersionNumber", 
                type = "long", locationName = "versionNumber"), 
            ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
                type = "long", locationName = "executionNumber")), 
            shape = "JobExecutionSummary", type = "structure")), 
            shape = "JobExecutionSummaryList", type = "list", 
            locationName = "queuedJobs")), shape = "GetPendingJobExecutionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_next_pending_job_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        StatusDetails = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "statusDetails"), StepTimeoutInMinutes = structure(logical(0), 
            shape = "StepTimeoutInMinutes", type = "long", locationName = "stepTimeoutInMinutes")), 
        shape = "StartNextPendingJobExecutionRequest", type = "structure")
    return(populate(args, shape))
}

start_next_pending_job_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Execution = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9_-]+", locationName = "jobId"), 
        ThingName = structure(logical(0), shape = "ThingName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+", 
            locationName = "thingName"), Status = structure(logical(0), 
            shape = "JobExecutionStatus", type = "string", locationName = "status"), 
        StatusDetails = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "statusDetails"), QueuedAt = structure(logical(0), 
            shape = "QueuedAt", type = "long", locationName = "queuedAt"), 
        StartedAt = structure(logical(0), shape = "StartedAt", 
            type = "long", locationName = "startedAt"), LastUpdatedAt = structure(logical(0), 
            shape = "LastUpdatedAt", type = "long", locationName = "lastUpdatedAt"), 
        ApproximateSecondsBeforeTimedOut = structure(logical(0), 
            shape = "ApproximateSecondsBeforeTimedOut", type = "long", 
            locationName = "approximateSecondsBeforeTimedOut"), 
        VersionNumber = structure(logical(0), shape = "VersionNumber", 
            type = "long", locationName = "versionNumber"), ExecutionNumber = structure(logical(0), 
            shape = "ExecutionNumber", type = "long", locationName = "executionNumber"), 
        JobDocument = structure(logical(0), shape = "JobDocument", 
            type = "string", max = 32768L, locationName = "jobDocument")), 
        shape = "JobExecution", type = "structure", locationName = "execution")), 
        shape = "StartNextPendingJobExecutionResponse", type = "structure")
    return(populate(args, shape))
}

update_job_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string", 
        max = 64L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9:_-]+"), 
        Status = structure(logical(0), shape = "JobExecutionStatus", 
            type = "string", locationName = "status"), StatusDetails = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "statusDetails"), StepTimeoutInMinutes = structure(logical(0), 
            shape = "StepTimeoutInMinutes", type = "long", locationName = "stepTimeoutInMinutes"), 
        ExpectedVersion = structure(logical(0), shape = "ExpectedVersion", 
            type = "long", locationName = "expectedVersion"), 
        IncludeJobExecutionState = structure(logical(0), shape = "IncludeExecutionState", 
            type = "boolean", locationName = "includeJobExecutionState"), 
        IncludeJobDocument = structure(logical(0), shape = "IncludeJobDocument", 
            type = "boolean", locationName = "includeJobDocument"), 
        ExecutionNumber = structure(logical(0), shape = "ExecutionNumber", 
            type = "long", locationName = "executionNumber")), 
        shape = "UpdateJobExecutionRequest", type = "structure")
    return(populate(args, shape))
}

update_job_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionState = structure(list(Status = structure(logical(0), 
        shape = "JobExecutionStatus", type = "string", locationName = "status"), 
        StatusDetails = structure(list(structure(logical(0), 
            shape = "DetailsValue", type = "string", max = 1024L, 
            min = 1L, pattern = "[^\\p{C}]*+")), shape = "DetailsMap", 
            type = "map", locationName = "statusDetails"), VersionNumber = structure(logical(0), 
            shape = "VersionNumber", type = "long", locationName = "versionNumber")), 
        shape = "JobExecutionState", type = "structure", locationName = "executionState"), 
        JobDocument = structure(logical(0), shape = "JobDocument", 
            type = "string", max = 32768L, locationName = "jobDocument")), 
        shape = "UpdateJobExecutionResponse", type = "structure")
    return(populate(args, shape))
}
