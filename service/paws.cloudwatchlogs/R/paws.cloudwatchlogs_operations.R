#' Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group
#'
#' Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group.
#' 
#' Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.
#' 
#' Note that it can take up to 5 minutes for this operation to take effect.
#' 
#' If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an `InvalidParameterException` error.
#'
#' @param logGroupName The name of the log group.
#' @param kmsKeyId The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see [Amazon Resource Names - AWS Key Management Service (AWS KMS)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).
#'
#' @examples
#'
#' @export
associate_kms_key <- function (logGroupName, kmsKeyId) 
{
    op <- Operation(name = "AssociateKmsKey", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_kms_key_input(logGroupName = logGroupName, 
        kmsKeyId = kmsKeyId)
    output <- associate_kms_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels the specified export task
#'
#' Cancels the specified export task.
#' 
#' The task must be in the `PENDING` or `RUNNING` state.
#'
#' @param taskId The ID of the export task.
#'
#' @examples
#'
#' @export
cancel_export_task <- function (taskId) 
{
    op <- Operation(name = "CancelExportTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_export_task_input(taskId = taskId)
    output <- cancel_export_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket
#'
#' Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket.
#' 
#' This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use DescribeExportTasks to get the status of the export task. Each account can only have one active (`RUNNING` or `PENDING`) export task at a time. To cancel an export task, use CancelExportTask.
#' 
#' You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.
#'
#' @param logGroupName The name of the log group.
#' @param from The start time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp earlier than this time are not exported.
#' @param to The end time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not exported.
#' @param destination The name of S3 bucket for the exported log data. The bucket must be in the same AWS region.
#' @param taskName The name of the export task.
#' @param logStreamNamePrefix Export only log streams that match the provided prefix. If you don\'t specify a value, no prefix filter is applied.
#' @param destinationPrefix The prefix used as the start of the key for every object exported. If you don\'t specify a value, the default is `exportedlogs`.
#'
#' @examples
#'
#' @export
create_export_task <- function (logGroupName, from, to, destination, 
    taskName = NULL, logStreamNamePrefix = NULL, destinationPrefix = NULL) 
{
    op <- Operation(name = "CreateExportTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_export_task_input(logGroupName = logGroupName, 
        from = from, to = to, destination = destination, taskName = taskName, 
        logStreamNamePrefix = logStreamNamePrefix, destinationPrefix = destinationPrefix)
    output <- create_export_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a log group with the specified name
#'
#' Creates a log group with the specified name.
#' 
#' You can create up to 5000 log groups per account.
#' 
#' You must use the following guidelines when naming a log group:
#' 
#' -   Log group names must be unique within a region for an AWS account.
#' 
#' -   Log group names can be between 1 and 512 characters long.
#' 
#' -   Log group names consist of the following characters: a-z, A-Z, 0-9, \'\_\' (underscore), \'-\' (hyphen), \'/\' (forward slash), and \'.\' (period).
#' 
#' If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.
#' 
#' If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an `InvalidParameterException` error.
#'
#' @param logGroupName The name of the log group.
#' @param kmsKeyId The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see [Amazon Resource Names - AWS Key Management Service (AWS KMS)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).
#' @param tags The key-value pairs to use for the tags.
#'
#' @examples
#'
#' @export
create_log_group <- function (logGroupName, kmsKeyId = NULL, 
    tags = NULL) 
{
    op <- Operation(name = "CreateLogGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_log_group_input(logGroupName = logGroupName, 
        kmsKeyId = kmsKeyId, tags = tags)
    output <- create_log_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a log stream for the specified log group
#'
#' Creates a log stream for the specified log group.
#' 
#' There is no limit on the number of log streams that you can create for a log group.
#' 
#' You must use the following guidelines when naming a log stream:
#' 
#' -   Log stream names must be unique within the log group.
#' 
#' -   Log stream names can be between 1 and 512 characters long.
#' 
#' -   The \':\' (colon) and \'\*\' (asterisk) characters are not allowed.
#'
#' @param logGroupName The name of the log group.
#' @param logStreamName The name of the log stream.
#'
#' @examples
#'
#' @export
create_log_stream <- function (logGroupName, logStreamName) 
{
    op <- Operation(name = "CreateLogStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_log_stream_input(logGroupName = logGroupName, 
        logStreamName = logStreamName)
    output <- create_log_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified destination, and eventually disables all the subscription filters that publish to it
#'
#' Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.
#'
#' @param destinationName The name of the destination.
#'
#' @examples
#'
#' @export
delete_destination <- function (destinationName) 
{
    op <- Operation(name = "DeleteDestination", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_destination_input(destinationName = destinationName)
    output <- delete_destination_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified log group and permanently deletes all the archived log events associated with the log group
#'
#' Deletes the specified log group and permanently deletes all the archived log events associated with the log group.
#'
#' @param logGroupName The name of the log group.
#'
#' @examples
#'
#' @export
delete_log_group <- function (logGroupName) 
{
    op <- Operation(name = "DeleteLogGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_log_group_input(logGroupName = logGroupName)
    output <- delete_log_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream
#'
#' Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.
#'
#' @param logGroupName The name of the log group.
#' @param logStreamName The name of the log stream.
#'
#' @examples
#'
#' @export
delete_log_stream <- function (logGroupName, logStreamName) 
{
    op <- Operation(name = "DeleteLogStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_log_stream_input(logGroupName = logGroupName, 
        logStreamName = logStreamName)
    output <- delete_log_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified metric filter
#'
#' Deletes the specified metric filter.
#'
#' @param logGroupName The name of the log group.
#' @param filterName The name of the metric filter.
#'
#' @examples
#'
#' @export
delete_metric_filter <- function (logGroupName, filterName) 
{
    op <- Operation(name = "DeleteMetricFilter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_metric_filter_input(logGroupName = logGroupName, 
        filterName = filterName)
    output <- delete_metric_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a resource policy from this account
#'
#' Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.
#'
#' @param policyName The name of the policy to be revoked. This parameter is required.
#'
#' @examples
#'
#' @export
delete_resource_policy <- function (policyName = NULL) 
{
    op <- Operation(name = "DeleteResourcePolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_resource_policy_input(policyName = policyName)
    output <- delete_resource_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified retention policy
#'
#' Deletes the specified retention policy.
#' 
#' Log events do not expire if they belong to log groups without a retention policy.
#'
#' @param logGroupName The name of the log group.
#'
#' @examples
#'
#' @export
delete_retention_policy <- function (logGroupName) 
{
    op <- Operation(name = "DeleteRetentionPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_retention_policy_input(logGroupName = logGroupName)
    output <- delete_retention_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified subscription filter
#'
#' Deletes the specified subscription filter.
#'
#' @param logGroupName The name of the log group.
#' @param filterName The name of the subscription filter.
#'
#' @examples
#'
#' @export
delete_subscription_filter <- function (logGroupName, filterName) 
{
    op <- Operation(name = "DeleteSubscriptionFilter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_subscription_filter_input(logGroupName = logGroupName, 
        filterName = filterName)
    output <- delete_subscription_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all your destinations
#'
#' Lists all your destinations. The results are ASCII-sorted by destination name.
#'
#' @param DestinationNamePrefix The prefix to match. If you don\'t specify a value, no prefix filter is applied.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of items returned. If you don\'t specify a value, the default is up to 50 items.
#'
#' @examples
#'
#' @export
describe_destinations <- function (DestinationNamePrefix = NULL, 
    nextToken = NULL, limit = NULL) 
{
    op <- Operation(name = "DescribeDestinations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_destinations_input(DestinationNamePrefix = DestinationNamePrefix, 
        nextToken = nextToken, limit = limit)
    output <- describe_destinations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the specified export tasks
#'
#' Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
#'
#' @param taskId The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.
#' @param statusCode The status code of the export task. Specifying a status code filters the results to zero or more export tasks.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of items returned. If you don\'t specify a value, the default is up to 50 items.
#'
#' @examples
#'
#' @export
describe_export_tasks <- function (taskId = NULL, statusCode = NULL, 
    nextToken = NULL, limit = NULL) 
{
    op <- Operation(name = "DescribeExportTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_export_tasks_input(taskId = taskId, statusCode = statusCode, 
        nextToken = nextToken, limit = limit)
    output <- describe_export_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the specified log groups
#'
#' Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
#'
#' @param logGroupNamePrefix The prefix to match.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of items returned. If you don\'t specify a value, the default is up to 50 items.
#'
#' @examples
#'
#' @export
describe_log_groups <- function (logGroupNamePrefix = NULL, nextToken = NULL, 
    limit = NULL) 
{
    op <- Operation(name = "DescribeLogGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_log_groups_input(logGroupNamePrefix = logGroupNamePrefix, 
        nextToken = nextToken, limit = limit)
    output <- describe_log_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the log streams for the specified log group
#'
#' Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.
#' 
#' This operation has a limit of five transactions per second, after which transactions are throttled.
#'
#' @param logGroupName The name of the log group.
#' @param logStreamNamePrefix The prefix to match.
#' 
#' If `orderBy` is `LastEventTime`,you cannot specify this parameter.
#' @param orderBy If the value is `LogStreamName`, the results are ordered by log stream name. If the value is `LastEventTime`, the results are ordered by the event time. The default value is `LogStreamName`.
#' 
#' If you order the results by event time, you cannot specify the `logStreamNamePrefix` parameter.
#' 
#' lastEventTimestamp represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. lastEventTimeStamp updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.
#' @param descending If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of items returned. If you don\'t specify a value, the default is up to 50 items.
#'
#' @examples
#'
#' @export
describe_log_streams <- function (logGroupName, logStreamNamePrefix = NULL, 
    orderBy = NULL, descending = NULL, nextToken = NULL, limit = NULL) 
{
    op <- Operation(name = "DescribeLogStreams", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_log_streams_input(logGroupName = logGroupName, 
        logStreamNamePrefix = logStreamNamePrefix, orderBy = orderBy, 
        descending = descending, nextToken = nextToken, limit = limit)
    output <- describe_log_streams_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the specified metric filters
#'
#' Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
#'
#' @param logGroupName The name of the log group.
#' @param filterNamePrefix The prefix to match.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of items returned. If you don\'t specify a value, the default is up to 50 items.
#' @param metricName Filters results to include only those with the specified metric name. If you include this parameter in your request, you must also include the `metricNamespace` parameter.
#' @param metricNamespace Filters results to include only those in the specified namespace. If you include this parameter in your request, you must also include the `metricName` parameter.
#'
#' @examples
#'
#' @export
describe_metric_filters <- function (logGroupName = NULL, filterNamePrefix = NULL, 
    nextToken = NULL, limit = NULL, metricName = NULL, metricNamespace = NULL) 
{
    op <- Operation(name = "DescribeMetricFilters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_metric_filters_input(logGroupName = logGroupName, 
        filterNamePrefix = filterNamePrefix, nextToken = nextToken, 
        limit = limit, metricName = metricName, metricNamespace = metricNamespace)
    output <- describe_metric_filters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the resource policies in this account
#'
#' Lists the resource policies in this account.
#'
#' @param nextToken 
#' @param limit The maximum number of resource policies to be displayed with one call of this API.
#'
#' @examples
#'
#' @export
describe_resource_policies <- function (nextToken = NULL, limit = NULL) 
{
    op <- Operation(name = "DescribeResourcePolicies", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_resource_policies_input(nextToken = nextToken, 
        limit = limit)
    output <- describe_resource_policies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the subscription filters for the specified log group
#'
#' Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
#'
#' @param logGroupName The name of the log group.
#' @param filterNamePrefix The prefix to match. If you don\'t specify a value, no prefix filter is applied.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of items returned. If you don\'t specify a value, the default is up to 50 items.
#'
#' @examples
#'
#' @export
describe_subscription_filters <- function (logGroupName, filterNamePrefix = NULL, 
    nextToken = NULL, limit = NULL) 
{
    op <- Operation(name = "DescribeSubscriptionFilters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_subscription_filters_input(logGroupName = logGroupName, 
        filterNamePrefix = filterNamePrefix, nextToken = nextToken, 
        limit = limit)
    output <- describe_subscription_filters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group
#'
#' Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group.
#' 
#' After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested.
#' 
#' Note that it can take up to 5 minutes for this operation to take effect.
#'
#' @param logGroupName The name of the log group.
#'
#' @examples
#'
#' @export
disassociate_kms_key <- function (logGroupName) 
{
    op <- Operation(name = "DisassociateKmsKey", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_kms_key_input(logGroupName = logGroupName)
    output <- disassociate_kms_key_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists log events from the specified log group
#'
#' Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.
#' 
#' By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.
#'
#' @param logGroupName The name of the log group to search.
#' @param logStreamNames Filters the results to only logs from the log streams in this list.
#' 
#' If you specify a value for both `logStreamNamePrefix` and `logStreamNames`, but the value for `logStreamNamePrefix` does not match any log stream names specified in `logStreamNames`, the action returns an `InvalidParameterException` error.
#' @param logStreamNamePrefix Filters the results to include only events from log streams that have names starting with this prefix.
#' 
#' If you specify a value for both `logStreamNamePrefix` and `logStreamNames`, but the value for `logStreamNamePrefix` does not match any log stream names specified in `logStreamNames`, the action returns an `InvalidParameterException` error.
#' @param startTime The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp before this time are not returned.
#' @param endTime The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not returned.
#' @param filterPattern The filter pattern to use. For more information, see [Filter and Pattern Syntax](http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
#' 
#' If not provided, all the events are matched.
#' @param nextToken The token for the next set of events to return. (You received this token from a previous call.)
#' @param limit The maximum number of events to return. The default is 10,000 events.
#' @param interleaved If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.
#'
#' @examples
#'
#' @export
filter_log_events <- function (logGroupName, logStreamNames = NULL, 
    logStreamNamePrefix = NULL, startTime = NULL, endTime = NULL, 
    filterPattern = NULL, nextToken = NULL, limit = NULL, interleaved = NULL) 
{
    op <- Operation(name = "FilterLogEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- filter_log_events_input(logGroupName = logGroupName, 
        logStreamNames = logStreamNames, logStreamNamePrefix = logStreamNamePrefix, 
        startTime = startTime, endTime = endTime, filterPattern = filterPattern, 
        nextToken = nextToken, limit = limit, interleaved = interleaved)
    output <- filter_log_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists log events from the specified log stream
#'
#' Lists log events from the specified log stream. You can list all the log events or filter using a time range.
#' 
#' By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.
#'
#' @param logGroupName The name of the log group.
#' @param logStreamName The name of the log stream.
#' @param startTime The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp equal to this time or later than this time are included. Events with a time stamp earlier than this time are not included.
#' @param endTime The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp equal to or later than this time are not included.
#' @param nextToken The token for the next set of items to return. (You received this token from a previous call.)
#' @param limit The maximum number of log events returned. If you don\'t specify a value, the maximum is as many log events as can fit in a response size of 1 MB, up to 10,000 log events.
#' @param startFromHead If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false.
#'
#' @examples
#'
#' @export
get_log_events <- function (logGroupName, logStreamName, startTime = NULL, 
    endTime = NULL, nextToken = NULL, limit = NULL, startFromHead = NULL) 
{
    op <- Operation(name = "GetLogEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_log_events_input(logGroupName = logGroupName, 
        logStreamName = logStreamName, startTime = startTime, 
        endTime = endTime, nextToken = nextToken, limit = limit, 
        startFromHead = startFromHead)
    output <- get_log_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the tags for the specified log group
#'
#' Lists the tags for the specified log group.
#'
#' @param logGroupName The name of the log group.
#'
#' @examples
#'
#' @export
list_tags_log_group <- function (logGroupName) 
{
    op <- Operation(name = "ListTagsLogGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_log_group_input(logGroupName = logGroupName)
    output <- list_tags_log_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates a destination
#'
#' Creates or updates a destination. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using PutLogEvents. Currently, the only supported physical resource is a Kinesis stream belonging to the same account as the destination.
#' 
#' Through an access policy, a destination controls what is written to its Kinesis stream. By default, `PutDestination` does not set any access policy with the destination, which means a cross-account user cannot call PutSubscriptionFilter against this destination. To enable this, the destination owner must call PutDestinationPolicy after `PutDestination`.
#'
#' @param destinationName A name for the destination.
#' @param targetArn The ARN of an Amazon Kinesis stream to which to deliver matching log events.
#' @param roleArn The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon Kinesis PutRecord operation on the destination stream.
#'
#' @examples
#'
#' @export
put_destination <- function (destinationName, targetArn, roleArn) 
{
    op <- Operation(name = "PutDestination", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_destination_input(destinationName = destinationName, 
        targetArn = targetArn, roleArn = roleArn)
    output <- put_destination_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates an access policy associated with an existing destination
#'
#' Creates or updates an access policy associated with an existing destination. An access policy is an [IAM policy document](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html) that is used to authorize claims to register a subscription filter against a given destination.
#'
#' @param destinationName A name for an existing destination.
#' @param accessPolicy An IAM policy document that authorizes cross-account users to deliver their log events to the associated destination.
#'
#' @examples
#'
#' @export
put_destination_policy <- function (destinationName, accessPolicy) 
{
    op <- Operation(name = "PutDestinationPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_destination_policy_input(destinationName = destinationName, 
        accessPolicy = accessPolicy)
    output <- put_destination_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Uploads a batch of log events to the specified log stream
#'
#' Uploads a batch of log events to the specified log stream.
#' 
#' You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using DescribeLogStreams. If you call `PutLogEvents` twice within a narrow time period using the same value for `sequenceToken`, both calls may be successful, or one may be rejected.
#' 
#' The batch of events must satisfy the following constraints:
#' 
#' -   The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.
#' 
#' -   None of the log events in the batch can be more than 2 hours in the future.
#' 
#' -   None of the log events in the batch can be older than 14 days or the retention period of the log group.
#' 
#' -   The log events in the batch must be in chronological ordered by their time stamp. The time stamp is the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)
#' 
#' -   The maximum number of log events in a batch is 10,000.
#' 
#' -   A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.
#' 
#' If a call to PutLogEvents returns \"UnrecognizedClientException\" the most likely cause is an invalid AWS access key ID or secret key.
#'
#' @param logGroupName The name of the log group.
#' @param logStreamName The name of the log stream.
#' @param logEvents The log events.
#' @param sequenceToken The sequence token obtained from the response of the previous `PutLogEvents` call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using DescribeLogStreams. If you call `PutLogEvents` twice within a narrow time period using the same value for `sequenceToken`, both calls may be successful, or one may be rejected.
#'
#' @examples
#'
#' @export
put_log_events <- function (logGroupName, logStreamName, logEvents, 
    sequenceToken = NULL) 
{
    op <- Operation(name = "PutLogEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_log_events_input(logGroupName = logGroupName, 
        logStreamName = logStreamName, logEvents = logEvents, 
        sequenceToken = sequenceToken)
    output <- put_log_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates a metric filter and associates it with the specified log group
#'
#' Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through PutLogEvents.
#' 
#' The maximum number of metric filters that can be associated with a log group is 100.
#'
#' @param logGroupName The name of the log group.
#' @param filterName A name for the metric filter.
#' @param filterPattern A filter pattern for extracting metric data out of ingested log events.
#' @param metricTransformations A collection of information that defines how metric data gets emitted.
#'
#' @examples
#'
#' @export
put_metric_filter <- function (logGroupName, filterName, filterPattern, 
    metricTransformations) 
{
    op <- Operation(name = "PutMetricFilter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_metric_filter_input(logGroupName = logGroupName, 
        filterName = filterName, filterPattern = filterPattern, 
        metricTransformations = metricTransformations)
    output <- put_metric_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53
#'
#' Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 10 resource policies per region.
#'
#' @param policyName Name of the new policy. This parameter is required.
#' @param policyDocument Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.
#' 
#' The following example creates a resource policy enabling the Route 53 service to put DNS query logs in to the specified log group. Replace \"logArn\" with the ARN of your CloudWatch Logs resource, such as a log group or log stream.
#' 
#' `{ "Version": "2012-10-17", "Statement": [ { "Sid": "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": { "Service": [ "route53.amazonaws.com" ] }, "Action":"logs:PutLogEvents", "Resource": "logArn" } ] } `
#'
#' @examples
#'
#' @export
put_resource_policy <- function (policyName = NULL, policyDocument = NULL) 
{
    op <- Operation(name = "PutResourcePolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_resource_policy_input(policyName = policyName, 
        policyDocument = policyDocument)
    output <- put_resource_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the retention of the specified log group
#'
#' Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.
#'
#' @param logGroupName The name of the log group.
#' @param retentionInDays 
#'
#' @examples
#'
#' @export
put_retention_policy <- function (logGroupName, retentionInDays) 
{
    op <- Operation(name = "PutRetentionPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_retention_policy_input(logGroupName = logGroupName, 
        retentionInDays = retentionInDays)
    output <- put_retention_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates a subscription filter and associates it with the specified log group
#'
#' Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through PutLogEvents and have them delivered to a specific destination. Currently, the supported destinations are:
#' 
#' -   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.
#' 
#' -   A logical destination that belongs to a different account, for cross-account delivery.
#' 
#' -   An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.
#' 
#' -   An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.
#' 
#' There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in `filterName`. Otherwise, the call fails because you cannot associate a second filter with a log group.
#'
#' @param logGroupName The name of the log group.
#' @param filterName A name for the subscription filter. If you are updating an existing filter, you must specify the correct name in `filterName`. Otherwise, the call fails because you cannot associate a second filter with a log group. To find the name of the filter currently associated with a log group, use DescribeSubscriptionFilters.
#' @param filterPattern A filter pattern for subscribing to a filtered stream of log events.
#' @param destinationArn The ARN of the destination to deliver matching log events to. Currently, the supported destinations are:
#' 
#' -   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.
#' 
#' -   A logical destination (specified using an ARN) belonging to a different account, for cross-account delivery.
#' 
#' -   An Amazon Kinesis Firehose delivery stream belonging to the same account as the subscription filter, for same-account delivery.
#' 
#' -   An AWS Lambda function belonging to the same account as the subscription filter, for same-account delivery.
#' @param roleArn The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don\'t need to provide the ARN when you are working with a logical destination for cross-account delivery.
#' @param distribution The method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream.
#'
#' @examples
#'
#' @export
put_subscription_filter <- function (logGroupName, filterName, 
    filterPattern, destinationArn, roleArn = NULL, distribution = NULL) 
{
    op <- Operation(name = "PutSubscriptionFilter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_subscription_filter_input(logGroupName = logGroupName, 
        filterName = filterName, filterPattern = filterPattern, 
        destinationArn = destinationArn, roleArn = roleArn, distribution = distribution)
    output <- put_subscription_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or updates the specified tags for the specified log group
#'
#' Adds or updates the specified tags for the specified log group.
#' 
#' To list the tags for a log group, use ListTagsLogGroup. To remove tags, use UntagLogGroup.
#' 
#' For more information about tags, see [Tag Log Groups in Amazon CloudWatch Logs](http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html) in the *Amazon CloudWatch Logs User Guide*.
#'
#' @param logGroupName The name of the log group.
#' @param tags The key-value pairs to use for the tags.
#'
#' @examples
#'
#' @export
tag_log_group <- function (logGroupName, tags) 
{
    op <- Operation(name = "TagLogGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- tag_log_group_input(logGroupName = logGroupName, 
        tags = tags)
    output <- tag_log_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tests the filter pattern of a metric filter against a sample of log event messages
#'
#' Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.
#'
#' @param filterPattern 
#' @param logEventMessages The log event messages to test.
#'
#' @examples
#'
#' @export
test_metric_filter <- function (filterPattern, logEventMessages) 
{
    op <- Operation(name = "TestMetricFilter", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- test_metric_filter_input(filterPattern = filterPattern, 
        logEventMessages = logEventMessages)
    output <- test_metric_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified tags from the specified log group
#'
#' Removes the specified tags from the specified log group.
#' 
#' To list the tags for a log group, use ListTagsLogGroup. To add tags, use UntagLogGroup.
#'
#' @param logGroupName The name of the log group.
#' @param tags The tag keys. The corresponding tags are removed from the log group.
#'
#' @examples
#'
#' @export
untag_log_group <- function (logGroupName, tags) 
{
    op <- Operation(name = "UntagLogGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- untag_log_group_input(logGroupName = logGroupName, 
        tags = tags)
    output <- untag_log_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
