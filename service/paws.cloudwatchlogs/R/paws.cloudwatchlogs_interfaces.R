associate_kms_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 256L, locationName = "kmsKeyId")), 
        shape = "AssociateKmsKeyRequest", type = "structure")
    return(populate(args, shape))
}

associate_kms_key_output <- function () 
{
    return(list())
}

cancel_export_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "ExportTaskId", 
        type = "string", max = 512L, min = 1L, locationName = "taskId")), 
        shape = "CancelExportTaskRequest", type = "structure")
    return(populate(args, shape))
}

cancel_export_task_output <- function () 
{
    return(list())
}

create_export_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskName = structure(logical(0), 
        shape = "ExportTaskName", type = "string", max = 512L, 
        min = 1L, locationName = "taskName"), LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamNamePrefix = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamNamePrefix"), From = structure(logical(0), 
            shape = "Timestamp", type = "long", min = 0L, locationName = "from"), 
        To = structure(logical(0), shape = "Timestamp", type = "long", 
            min = 0L, locationName = "to"), Destination = structure(logical(0), 
            shape = "ExportDestinationBucket", type = "string", 
            max = 512L, min = 1L, locationName = "destination"), 
        DestinationPrefix = structure(logical(0), shape = "ExportDestinationPrefix", 
            type = "string", locationName = "destinationPrefix")), 
        shape = "CreateExportTaskRequest", type = "structure")
    return(populate(args, shape))
}

create_export_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "ExportTaskId", 
        type = "string", max = 512L, min = 1L, locationName = "taskId")), 
        shape = "CreateExportTaskResponse", type = "structure")
    return(populate(args, shape))
}

create_log_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 256L, locationName = "kmsKeyId"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map", max = 50L, min = 1L, 
            locationName = "tags")), shape = "CreateLogGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_log_group_output <- function () 
{
    return(list())
}

create_log_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamName = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamName")), shape = "CreateLogStreamRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_log_stream_output <- function () 
{
    return(list())
}

delete_destination_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationName = structure(logical(0), 
        shape = "DestinationName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "destinationName")), 
        shape = "DeleteDestinationRequest", type = "structure")
    return(populate(args, shape))
}

delete_destination_output <- function () 
{
    return(list())
}

delete_log_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName")), 
        shape = "DeleteLogGroupRequest", type = "structure")
    return(populate(args, shape))
}

delete_log_group_output <- function () 
{
    return(list())
}

delete_log_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamName = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamName")), shape = "DeleteLogStreamRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_log_stream_output <- function () 
{
    return(list())
}

delete_metric_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterName = structure(logical(0), shape = "FilterName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "filterName")), shape = "DeleteMetricFilterRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_metric_filter_output <- function () 
{
    return(list())
}

delete_resource_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", locationName = "policyName")), 
        shape = "DeleteResourcePolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_resource_policy_output <- function () 
{
    return(list())
}

delete_retention_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName")), 
        shape = "DeleteRetentionPolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_retention_policy_output <- function () 
{
    return(list())
}

delete_subscription_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterName = structure(logical(0), shape = "FilterName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "filterName")), shape = "DeleteSubscriptionFilterRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_subscription_filter_output <- function () 
{
    return(list())
}

describe_destinations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationNamePrefix = structure(logical(0), 
        shape = "DestinationName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit")), 
        shape = "DescribeDestinationsRequest", type = "structure")
    return(populate(args, shape))
}

describe_destinations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Destinations = structure(list(structure(list(DestinationName = structure(logical(0), 
        shape = "DestinationName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "destinationName"), 
        TargetArn = structure(logical(0), shape = "TargetArn", 
            type = "string", min = 1L, locationName = "targetArn"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            min = 1L, locationName = "roleArn"), AccessPolicy = structure(logical(0), 
            shape = "AccessPolicy", type = "string", min = 1L, 
            locationName = "accessPolicy"), Arn = structure(logical(0), 
            shape = "Arn", type = "string", locationName = "arn"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "creationTime")), 
        shape = "Destination", type = "structure")), shape = "Destinations", 
        type = "list", locationName = "destinations"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeDestinationsResponse", type = "structure")
    return(populate(args, shape))
}

describe_export_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "ExportTaskId", 
        type = "string", max = 512L, min = 1L, locationName = "taskId"), 
        StatusCode = structure(logical(0), shape = "ExportTaskStatusCode", 
            type = "string", locationName = "statusCode"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit")), 
        shape = "DescribeExportTasksRequest", type = "structure")
    return(populate(args, shape))
}

describe_export_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportTasks = structure(list(structure(list(TaskId = structure(logical(0), 
        shape = "ExportTaskId", type = "string", max = 512L, 
        min = 1L, locationName = "taskId"), TaskName = structure(logical(0), 
        shape = "ExportTaskName", type = "string", max = 512L, 
        min = 1L, locationName = "taskName"), LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        From = structure(logical(0), shape = "Timestamp", type = "long", 
            min = 0L, locationName = "from"), To = structure(logical(0), 
            shape = "Timestamp", type = "long", min = 0L, locationName = "to"), 
        Destination = structure(logical(0), shape = "ExportDestinationBucket", 
            type = "string", max = 512L, min = 1L, locationName = "destination"), 
        DestinationPrefix = structure(logical(0), shape = "ExportDestinationPrefix", 
            type = "string", locationName = "destinationPrefix"), 
        Status = structure(list(Code = structure(logical(0), 
            shape = "ExportTaskStatusCode", type = "string", 
            locationName = "code"), Message = structure(logical(0), 
            shape = "ExportTaskStatusMessage", type = "string", 
            locationName = "message")), shape = "ExportTaskStatus", 
            type = "structure", locationName = "status"), ExecutionInfo = structure(list(CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "long", min = 0L, locationName = "creationTime"), 
            CompletionTime = structure(logical(0), shape = "Timestamp", 
                type = "long", min = 0L, locationName = "completionTime")), 
            shape = "ExportTaskExecutionInfo", type = "structure", 
            locationName = "executionInfo")), shape = "ExportTask", 
        type = "structure")), shape = "ExportTasks", type = "list", 
        locationName = "exportTasks"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeExportTasksResponse", type = "structure")
    return(populate(args, shape))
}

describe_log_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupNamePrefix = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupNamePrefix"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit")), 
        shape = "DescribeLogGroupsRequest", type = "structure")
    return(populate(args, shape))
}

describe_log_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroups = structure(list(structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "creationTime"), 
        RetentionInDays = structure(logical(0), shape = "Days", 
            type = "integer", locationName = "retentionInDays"), 
        MetricFilterCount = structure(logical(0), shape = "FilterCount", 
            type = "integer", locationName = "metricFilterCount"), 
        Arn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "arn"), StoredBytes = structure(logical(0), 
            shape = "StoredBytes", type = "long", min = 0L, locationName = "storedBytes"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 256L, locationName = "kmsKeyId")), 
        shape = "LogGroup", type = "structure")), shape = "LogGroups", 
        type = "list", locationName = "logGroups"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeLogGroupsResponse", type = "structure")
    return(populate(args, shape))
}

describe_log_streams_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamNamePrefix = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamNamePrefix"), OrderBy = structure(logical(0), 
            shape = "OrderBy", type = "string", locationName = "orderBy"), 
        Descending = structure(logical(0), shape = "Descending", 
            type = "boolean", locationName = "descending"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit")), 
        shape = "DescribeLogStreamsRequest", type = "structure")
    return(populate(args, shape))
}

describe_log_streams_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogStreams = structure(list(structure(list(LogStreamName = structure(logical(0), 
        shape = "LogStreamName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "logStreamName"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "creationTime"), 
        FirstEventTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "firstEventTimestamp"), 
        LastEventTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "lastEventTimestamp"), 
        LastIngestionTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "lastIngestionTime"), 
        UploadSequenceToken = structure(logical(0), shape = "SequenceToken", 
            type = "string", min = 1L, locationName = "uploadSequenceToken"), 
        Arn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "arn"), StoredBytes = structure(logical(0), 
            shape = "StoredBytes", type = "long", min = 0L, locationName = "storedBytes")), 
        shape = "LogStream", type = "structure")), shape = "LogStreams", 
        type = "list", locationName = "logStreams"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeLogStreamsResponse", type = "structure")
    return(populate(args, shape))
}

describe_metric_filters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterNamePrefix = structure(logical(0), shape = "FilterName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "filterNamePrefix"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit"), 
        MetricName = structure(logical(0), shape = "MetricName", 
            type = "string", max = 255L, pattern = "[^:*$]*", 
            locationName = "metricName"), MetricNamespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string", max = 255L, 
            pattern = "[^:*$]*", locationName = "metricNamespace")), 
        shape = "DescribeMetricFiltersRequest", type = "structure")
    return(populate(args, shape))
}

describe_metric_filters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricFilters = structure(list(structure(list(FilterName = structure(logical(0), 
        shape = "FilterName", type = "string", max = 512L, min = 1L, 
        pattern = "[^:*]*", locationName = "filterName"), FilterPattern = structure(logical(0), 
        shape = "FilterPattern", type = "string", max = 1024L, 
        min = 0L, locationName = "filterPattern"), MetricTransformations = structure(list(structure(list(MetricName = structure(logical(0), 
        shape = "MetricName", type = "string", max = 255L, pattern = "[^:*$]*", 
        locationName = "metricName"), MetricNamespace = structure(logical(0), 
        shape = "MetricNamespace", type = "string", max = 255L, 
        pattern = "[^:*$]*", locationName = "metricNamespace"), 
        MetricValue = structure(logical(0), shape = "MetricValue", 
            type = "string", max = 100L, locationName = "metricValue"), 
        DefaultValue = structure(logical(0), shape = "DefaultValue", 
            type = "double", locationName = "defaultValue")), 
        shape = "MetricTransformation", type = "structure")), 
        shape = "MetricTransformations", type = "list", max = 1L, 
        min = 1L, locationName = "metricTransformations"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "long", min = 0L, locationName = "creationTime"), 
        LogGroupName = structure(logical(0), shape = "LogGroupName", 
            type = "string", max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", 
            locationName = "logGroupName")), shape = "MetricFilter", 
        type = "structure")), shape = "MetricFilters", type = "list", 
        locationName = "metricFilters"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeMetricFiltersResponse", type = "structure")
    return(populate(args, shape))
}

describe_resource_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit")), 
        shape = "DescribeResourcePoliciesRequest", type = "structure")
    return(populate(args, shape))
}

describe_resource_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourcePolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", locationName = "policyName"), 
        PolicyDocument = structure(logical(0), shape = "PolicyDocument", 
            type = "string", max = 5120L, min = 1L, locationName = "policyDocument"), 
        LastUpdatedTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "lastUpdatedTime")), 
        shape = "ResourcePolicy", type = "structure")), shape = "ResourcePolicies", 
        type = "list", locationName = "resourcePolicies"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeResourcePoliciesResponse", type = "structure")
    return(populate(args, shape))
}

describe_subscription_filters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterNamePrefix = structure(logical(0), shape = "FilterName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "filterNamePrefix"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "DescribeLimit", 
            type = "integer", max = 50L, min = 1L, locationName = "limit")), 
        shape = "DescribeSubscriptionFiltersRequest", type = "structure")
    return(populate(args, shape))
}

describe_subscription_filters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionFilters = structure(list(structure(list(FilterName = structure(logical(0), 
        shape = "FilterName", type = "string", max = 512L, min = 1L, 
        pattern = "[^:*]*", locationName = "filterName"), LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterPattern = structure(logical(0), shape = "FilterPattern", 
            type = "string", max = 1024L, min = 0L, locationName = "filterPattern"), 
        DestinationArn = structure(logical(0), shape = "DestinationArn", 
            type = "string", min = 1L, locationName = "destinationArn"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            min = 1L, locationName = "roleArn"), Distribution = structure(logical(0), 
            shape = "Distribution", type = "string", locationName = "distribution"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "creationTime")), 
        shape = "SubscriptionFilter", type = "structure")), shape = "SubscriptionFilters", 
        type = "list", locationName = "subscriptionFilters"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", min = 1L, locationName = "nextToken")), 
        shape = "DescribeSubscriptionFiltersResponse", type = "structure")
    return(populate(args, shape))
}

disassociate_kms_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName")), 
        shape = "DisassociateKmsKeyRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_kms_key_output <- function () 
{
    return(list())
}

filter_log_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamNames = structure(list(structure(logical(0), 
            shape = "LogStreamName", type = "string", max = 512L, 
            min = 1L, pattern = "[^:*]*")), shape = "InputLogStreamNames", 
            type = "list", max = 100L, min = 1L, locationName = "logStreamNames"), 
        LogStreamNamePrefix = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamNamePrefix"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "long", min = 0L, locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "endTime"), 
        FilterPattern = structure(logical(0), shape = "FilterPattern", 
            type = "string", max = 1024L, min = 0L, locationName = "filterPattern"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "EventsLimit", 
            type = "integer", max = 10000L, min = 1L, locationName = "limit"), 
        Interleaved = structure(logical(0), shape = "Interleaved", 
            type = "boolean", locationName = "interleaved")), 
        shape = "FilterLogEventsRequest", type = "structure")
    return(populate(args, shape))
}

filter_log_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(LogStreamName = structure(logical(0), 
        shape = "LogStreamName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "logStreamName"), 
        Timestamp = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "timestamp"), 
        Message = structure(logical(0), shape = "EventMessage", 
            type = "string", min = 1L, locationName = "message"), 
        IngestionTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "ingestionTime"), 
        EventId = structure(logical(0), shape = "EventId", type = "string", 
            locationName = "eventId")), shape = "FilteredLogEvent", 
        type = "structure")), shape = "FilteredLogEvents", type = "list", 
        locationName = "events"), SearchedLogStreams = structure(list(structure(list(LogStreamName = structure(logical(0), 
        shape = "LogStreamName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "logStreamName"), 
        SearchedCompletely = structure(logical(0), shape = "LogStreamSearchedCompletely", 
            type = "boolean", locationName = "searchedCompletely")), 
        shape = "SearchedLogStream", type = "structure")), shape = "SearchedLogStreams", 
        type = "list", locationName = "searchedLogStreams"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", min = 1L, locationName = "nextToken")), 
        shape = "FilterLogEventsResponse", type = "structure")
    return(populate(args, shape))
}

get_log_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamName = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamName"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "long", min = 0L, locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "endTime"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", min = 1L, locationName = "nextToken"), 
        Limit = structure(logical(0), shape = "EventsLimit", 
            type = "integer", max = 10000L, min = 1L, locationName = "limit"), 
        StartFromHead = structure(logical(0), shape = "StartFromHead", 
            type = "boolean", locationName = "startFromHead")), 
        shape = "GetLogEventsRequest", type = "structure")
    return(populate(args, shape))
}

get_log_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "long", min = 0L, locationName = "timestamp"), 
        Message = structure(logical(0), shape = "EventMessage", 
            type = "string", min = 1L, locationName = "message"), 
        IngestionTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "ingestionTime")), 
        shape = "OutputLogEvent", type = "structure")), shape = "OutputLogEvents", 
        type = "list", locationName = "events"), NextForwardToken = structure(logical(0), 
        shape = "NextToken", type = "string", min = 1L, locationName = "nextForwardToken"), 
        NextBackwardToken = structure(logical(0), shape = "NextToken", 
            type = "string", min = 1L, locationName = "nextBackwardToken")), 
        shape = "GetLogEventsResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_log_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName")), 
        shape = "ListTagsLogGroupRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_log_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tags", type = "map", max = 50L, min = 1L, locationName = "tags")), 
        shape = "ListTagsLogGroupResponse", type = "structure")
    return(populate(args, shape))
}

put_destination_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationName = structure(logical(0), 
        shape = "DestinationName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "destinationName"), 
        TargetArn = structure(logical(0), shape = "TargetArn", 
            type = "string", min = 1L, locationName = "targetArn"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            min = 1L, locationName = "roleArn")), shape = "PutDestinationRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_destination_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Destination = structure(list(DestinationName = structure(logical(0), 
        shape = "DestinationName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "destinationName"), 
        TargetArn = structure(logical(0), shape = "TargetArn", 
            type = "string", min = 1L, locationName = "targetArn"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            min = 1L, locationName = "roleArn"), AccessPolicy = structure(logical(0), 
            shape = "AccessPolicy", type = "string", min = 1L, 
            locationName = "accessPolicy"), Arn = structure(logical(0), 
            shape = "Arn", type = "string", locationName = "arn"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "creationTime")), 
        shape = "Destination", type = "structure", locationName = "destination")), 
        shape = "PutDestinationResponse", type = "structure")
    return(populate(args, shape))
}

put_destination_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationName = structure(logical(0), 
        shape = "DestinationName", type = "string", max = 512L, 
        min = 1L, pattern = "[^:*]*", locationName = "destinationName"), 
        AccessPolicy = structure(logical(0), shape = "AccessPolicy", 
            type = "string", min = 1L, locationName = "accessPolicy")), 
        shape = "PutDestinationPolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_destination_policy_output <- function () 
{
    return(list())
}

put_log_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        LogStreamName = structure(logical(0), shape = "LogStreamName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "logStreamName"), LogEvents = structure(list(structure(list(Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "long", min = 0L, locationName = "timestamp"), 
            Message = structure(logical(0), shape = "EventMessage", 
                type = "string", min = 1L, locationName = "message")), 
            shape = "InputLogEvent", type = "structure")), shape = "InputLogEvents", 
            type = "list", max = 10000L, min = 1L, locationName = "logEvents"), 
        SequenceToken = structure(logical(0), shape = "SequenceToken", 
            type = "string", min = 1L, locationName = "sequenceToken")), 
        shape = "PutLogEventsRequest", type = "structure")
    return(populate(args, shape))
}

put_log_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextSequenceToken = structure(logical(0), 
        shape = "SequenceToken", type = "string", min = 1L, locationName = "nextSequenceToken"), 
        RejectedLogEventsInfo = structure(list(TooNewLogEventStartIndex = structure(logical(0), 
            shape = "LogEventIndex", type = "integer", locationName = "tooNewLogEventStartIndex"), 
            TooOldLogEventEndIndex = structure(logical(0), shape = "LogEventIndex", 
                type = "integer", locationName = "tooOldLogEventEndIndex"), 
            ExpiredLogEventEndIndex = structure(logical(0), shape = "LogEventIndex", 
                type = "integer", locationName = "expiredLogEventEndIndex")), 
            shape = "RejectedLogEventsInfo", type = "structure", 
            locationName = "rejectedLogEventsInfo")), shape = "PutLogEventsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_metric_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterName = structure(logical(0), shape = "FilterName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "filterName"), FilterPattern = structure(logical(0), 
            shape = "FilterPattern", type = "string", max = 1024L, 
            min = 0L, locationName = "filterPattern"), MetricTransformations = structure(list(structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string", max = 255L, 
            pattern = "[^:*$]*", locationName = "metricName"), 
            MetricNamespace = structure(logical(0), shape = "MetricNamespace", 
                type = "string", max = 255L, pattern = "[^:*$]*", 
                locationName = "metricNamespace"), MetricValue = structure(logical(0), 
                shape = "MetricValue", type = "string", max = 100L, 
                locationName = "metricValue"), DefaultValue = structure(logical(0), 
                shape = "DefaultValue", type = "double", locationName = "defaultValue")), 
            shape = "MetricTransformation", type = "structure")), 
            shape = "MetricTransformations", type = "list", max = 1L, 
            min = 1L, locationName = "metricTransformations")), 
        shape = "PutMetricFilterRequest", type = "structure")
    return(populate(args, shape))
}

put_metric_filter_output <- function () 
{
    return(list())
}

put_resource_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", locationName = "policyName"), 
        PolicyDocument = structure(logical(0), shape = "PolicyDocument", 
            type = "string", max = 5120L, min = 1L, locationName = "policyDocument")), 
        shape = "PutResourcePolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_resource_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourcePolicy = structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", locationName = "policyName"), 
        PolicyDocument = structure(logical(0), shape = "PolicyDocument", 
            type = "string", max = 5120L, min = 1L, locationName = "policyDocument"), 
        LastUpdatedTime = structure(logical(0), shape = "Timestamp", 
            type = "long", min = 0L, locationName = "lastUpdatedTime")), 
        shape = "ResourcePolicy", type = "structure", locationName = "resourcePolicy")), 
        shape = "PutResourcePolicyResponse", type = "structure")
    return(populate(args, shape))
}

put_retention_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        RetentionInDays = structure(logical(0), shape = "Days", 
            type = "integer", locationName = "retentionInDays")), 
        shape = "PutRetentionPolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_retention_policy_output <- function () 
{
    return(list())
}

put_subscription_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        FilterName = structure(logical(0), shape = "FilterName", 
            type = "string", max = 512L, min = 1L, pattern = "[^:*]*", 
            locationName = "filterName"), FilterPattern = structure(logical(0), 
            shape = "FilterPattern", type = "string", max = 1024L, 
            min = 0L, locationName = "filterPattern"), DestinationArn = structure(logical(0), 
            shape = "DestinationArn", type = "string", min = 1L, 
            locationName = "destinationArn"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", min = 1L, locationName = "roleArn"), 
        Distribution = structure(logical(0), shape = "Distribution", 
            type = "string", locationName = "distribution")), 
        shape = "PutSubscriptionFilterRequest", type = "structure")
    return(populate(args, shape))
}

put_subscription_filter_output <- function () 
{
    return(list())
}

tag_log_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map", max = 50L, min = 1L, 
            locationName = "tags")), shape = "TagLogGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

tag_log_group_output <- function () 
{
    return(list())
}

test_metric_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterPattern = structure(logical(0), 
        shape = "FilterPattern", type = "string", max = 1024L, 
        min = 0L, locationName = "filterPattern"), LogEventMessages = structure(list(structure(logical(0), 
        shape = "EventMessage", type = "string", min = 1L)), 
        shape = "TestEventMessages", type = "list", max = 50L, 
        min = 1L, locationName = "logEventMessages")), shape = "TestMetricFilterRequest", 
        type = "structure")
    return(populate(args, shape))
}

test_metric_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Matches = structure(list(structure(list(EventNumber = structure(logical(0), 
        shape = "EventNumber", type = "long", locationName = "eventNumber"), 
        EventMessage = structure(logical(0), shape = "EventMessage", 
            type = "string", min = 1L, locationName = "eventMessage"), 
        ExtractedValues = structure(list(structure(logical(0), 
            shape = "Value", type = "string")), shape = "ExtractedValues", 
            type = "map", locationName = "extractedValues")), 
        shape = "MetricFilterMatchRecord", type = "structure")), 
        shape = "MetricFilterMatches", type = "list", locationName = "matches")), 
        shape = "TestMetricFilterResponse", type = "structure")
    return(populate(args, shape))
}

untag_log_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogGroupName = structure(logical(0), 
        shape = "LogGroupName", type = "string", max = 512L, 
        min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+", locationName = "logGroupName"), 
        Tags = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$")), 
            shape = "TagList", type = "list", min = 1L, locationName = "tags")), 
        shape = "UntagLogGroupRequest", type = "structure")
    return(populate(args, shape))
}

untag_log_group_output <- function () 
{
    return(list())
}
