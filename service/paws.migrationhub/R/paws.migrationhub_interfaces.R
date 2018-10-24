associate_created_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), CreatedArtifact = structure(list(Name = structure(logical(0), 
        shape = "CreatedArtifactName", type = "string", max = 1600L, 
        min = 1L, pattern = "arn:[a-z-]+:[a-z0-9-]+:(?:[a-z0-9-]+|):(?:[0-9]{12}|):.*"), 
        Description = structure(logical(0), shape = "CreatedArtifactDescription", 
            type = "string", max = 500L, min = 0L)), shape = "CreatedArtifact", 
        type = "structure"), DryRun = structure(logical(0), shape = "DryRun", 
        type = "boolean")), shape = "AssociateCreatedArtifactRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_created_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateCreatedArtifactResult", 
        type = "structure")
    return(populate(args, shape))
}

associate_discovered_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), DiscoveredResource = structure(list(ConfigurationId = structure(logical(0), 
        shape = "ConfigurationId", type = "string", min = 1L), 
        Description = structure(logical(0), shape = "DiscoveredResourceDescription", 
            type = "string", max = 500L, min = 0L)), shape = "DiscoveredResource", 
        type = "structure"), DryRun = structure(logical(0), shape = "DryRun", 
        type = "boolean")), shape = "AssociateDiscoveredResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_discovered_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateDiscoveredResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

create_progress_update_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStreamName = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), DryRun = structure(logical(0), 
        shape = "DryRun", type = "boolean")), shape = "CreateProgressUpdateStreamRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_progress_update_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateProgressUpdateStreamResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_progress_update_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStreamName = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), DryRun = structure(logical(0), 
        shape = "DryRun", type = "boolean")), shape = "DeleteProgressUpdateStreamRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_progress_update_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProgressUpdateStreamResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_application_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", max = 1600L, 
        min = 1L)), shape = "DescribeApplicationStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_application_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationStatus = structure(logical(0), 
        shape = "ApplicationStatus", type = "string"), LastUpdatedTime = structure(logical(0), 
        shape = "UpdateDateTime", type = "timestamp")), shape = "DescribeApplicationStateResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_migration_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+")), shape = "DescribeMigrationTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_migration_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MigrationTask = structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), Task = structure(list(Status = structure(logical(0), 
        shape = "Status", type = "string"), StatusDetail = structure(logical(0), 
        shape = "StatusDetail", type = "string", max = 500L, 
        min = 0L), ProgressPercent = structure(logical(0), shape = "ProgressPercent", 
        type = "integer", box = TRUE, max = 100L, min = 0L)), 
        shape = "Task", type = "structure"), UpdateDateTime = structure(logical(0), 
        shape = "UpdateDateTime", type = "timestamp"), ResourceAttributeList = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ResourceAttributeType", type = "string"), Value = structure(logical(0), 
        shape = "ResourceAttributeValue", type = "string", max = 256L, 
        min = 1L)), shape = "ResourceAttribute", type = "structure")), 
        shape = "LatestResourceAttributeList", type = "list", 
        max = 100L, min = 0L)), shape = "MigrationTask", type = "structure")), 
        shape = "DescribeMigrationTaskResult", type = "structure")
    return(populate(args, shape))
}

disassociate_created_artifact_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), CreatedArtifactName = structure(logical(0), 
        shape = "CreatedArtifactName", type = "string", max = 1600L, 
        min = 1L, pattern = "arn:[a-z-]+:[a-z0-9-]+:(?:[a-z0-9-]+|):(?:[0-9]{12}|):.*"), 
        DryRun = structure(logical(0), shape = "DryRun", type = "boolean")), 
        shape = "DisassociateCreatedArtifactRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_created_artifact_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateCreatedArtifactResult", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_discovered_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), ConfigurationId = structure(logical(0), 
        shape = "ConfigurationId", type = "string", min = 1L), 
        DryRun = structure(logical(0), shape = "DryRun", type = "boolean")), 
        shape = "DisassociateDiscoveredResourceRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_discovered_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDiscoveredResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

import_migration_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), DryRun = structure(logical(0), 
        shape = "DryRun", type = "boolean")), shape = "ImportMigrationTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_migration_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ImportMigrationTaskResult", 
        type = "structure")
    return(populate(args, shape))
}

list_created_artifacts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResultsCreatedArtifacts", type = "integer", 
        box = TRUE, max = 10L, min = 1L)), shape = "ListCreatedArtifactsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_created_artifacts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), CreatedArtifactList = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CreatedArtifactName", type = "string", max = 1600L, 
        min = 1L, pattern = "arn:[a-z-]+:[a-z0-9-]+:(?:[a-z0-9-]+|):(?:[0-9]{12}|):.*"), 
        Description = structure(logical(0), shape = "CreatedArtifactDescription", 
            type = "string", max = 500L, min = 0L)), shape = "CreatedArtifact", 
        type = "structure")), shape = "CreatedArtifactList", 
        type = "list")), shape = "ListCreatedArtifactsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_discovered_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResultsResources", type = "integer", box = TRUE, 
        max = 10L, min = 1L)), shape = "ListDiscoveredResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_discovered_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), DiscoveredResourceList = structure(list(structure(list(ConfigurationId = structure(logical(0), 
        shape = "ConfigurationId", type = "string", min = 1L), 
        Description = structure(logical(0), shape = "DiscoveredResourceDescription", 
            type = "string", max = 500L, min = 0L)), shape = "DiscoveredResource", 
        type = "structure")), shape = "DiscoveredResourceList", 
        type = "list")), shape = "ListDiscoveredResourcesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_migration_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 100L, 
        min = 1L), ResourceName = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 1600L, min = 1L)), shape = "ListMigrationTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_migration_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MigrationTaskSummaryList = structure(list(structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), Status = structure(logical(0), 
        shape = "Status", type = "string"), ProgressPercent = structure(logical(0), 
        shape = "ProgressPercent", type = "integer", box = TRUE, 
        max = 100L, min = 0L), StatusDetail = structure(logical(0), 
        shape = "StatusDetail", type = "string", max = 500L, 
        min = 0L), UpdateDateTime = structure(logical(0), shape = "UpdateDateTime", 
        type = "timestamp")), shape = "MigrationTaskSummary", 
        type = "structure")), shape = "MigrationTaskSummaryList", 
        type = "list")), shape = "ListMigrationTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

list_progress_update_streams_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 100L, 
        min = 1L)), shape = "ListProgressUpdateStreamsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_progress_update_streams_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStreamSummaryList = structure(list(structure(list(ProgressUpdateStreamName = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+")), shape = "ProgressUpdateStreamSummary", 
        type = "structure")), shape = "ProgressUpdateStreamSummaryList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "ListProgressUpdateStreamsResult", 
        type = "structure")
    return(populate(args, shape))
}

notify_application_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", max = 1600L, 
        min = 1L), Status = structure(logical(0), shape = "ApplicationStatus", 
        type = "string"), DryRun = structure(logical(0), shape = "DryRun", 
        type = "boolean")), shape = "NotifyApplicationStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

notify_application_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "NotifyApplicationStateResult", 
        type = "structure")
    return(populate(args, shape))
}

notify_migration_task_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), Task = structure(list(Status = structure(logical(0), 
        shape = "Status", type = "string"), StatusDetail = structure(logical(0), 
        shape = "StatusDetail", type = "string", max = 500L, 
        min = 0L), ProgressPercent = structure(logical(0), shape = "ProgressPercent", 
        type = "integer", box = TRUE, max = 100L, min = 0L)), 
        shape = "Task", type = "structure"), UpdateDateTime = structure(logical(0), 
        shape = "UpdateDateTime", type = "timestamp"), NextUpdateSeconds = structure(logical(0), 
        shape = "NextUpdateSeconds", type = "integer", min = 0L), 
        DryRun = structure(logical(0), shape = "DryRun", type = "boolean")), 
        shape = "NotifyMigrationTaskStateRequest", type = "structure")
    return(populate(args, shape))
}

notify_migration_task_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "NotifyMigrationTaskStateResult", 
        type = "structure")
    return(populate(args, shape))
}

put_resource_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProgressUpdateStream = structure(logical(0), 
        shape = "ProgressUpdateStream", type = "string", max = 50L, 
        min = 1L, pattern = "[^/:|\\000-\\037]+"), MigrationTaskName = structure(logical(0), 
        shape = "MigrationTaskName", type = "string", max = 256L, 
        min = 1L, pattern = "[^:|]+"), ResourceAttributeList = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ResourceAttributeType", type = "string"), Value = structure(logical(0), 
        shape = "ResourceAttributeValue", type = "string", max = 256L, 
        min = 1L)), shape = "ResourceAttribute", type = "structure")), 
        shape = "ResourceAttributeList", type = "list", max = 100L, 
        min = 1L), DryRun = structure(logical(0), shape = "DryRun", 
        type = "boolean")), shape = "PutResourceAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_resource_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutResourceAttributesResult", 
        type = "structure")
    return(populate(args, shape))
}
