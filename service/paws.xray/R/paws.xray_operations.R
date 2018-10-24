#' Retrieves a list of traces specified by ID
#'
#' Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use `GetTraceSummaries` to get a list of trace IDs.
#'
#' @param TraceIds Specify the trace IDs of requests for which to retrieve segments.
#' @param NextToken Pagination token. Not used.
#'
#' @examples
#'
#' @export
batch_get_traces <- function (TraceIds, NextToken = NULL) 
{
    op <- Operation(name = "BatchGetTraces", http_method = "POST", 
        http_path = "/Traces", paginator = list())
    input <- batch_get_traces_input(TraceIds = TraceIds, NextToken = NextToken)
    output <- batch_get_traces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a rule to control sampling behavior for instrumented applications
#'
#' Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with GetSamplingRules, and evaluate each rule in ascending order of *priority* for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with GetSamplingTargets to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.
#'
#' @param SamplingRule The rule definition.
#'
#' @examples
#'
#' @export
create_sampling_rule <- function (SamplingRule) 
{
    op <- Operation(name = "CreateSamplingRule", http_method = "POST", 
        http_path = "/CreateSamplingRule", paginator = list())
    input <- create_sampling_rule_input(SamplingRule = SamplingRule)
    output <- create_sampling_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a sampling rule
#'
#' Deletes a sampling rule.
#'
#' @param RuleName The name of the sampling rule. Specify a rule by either name or ARN, but not both.
#' @param RuleARN The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.
#'
#' @examples
#'
#' @export
delete_sampling_rule <- function (RuleName = NULL, RuleARN = NULL) 
{
    op <- Operation(name = "DeleteSamplingRule", http_method = "POST", 
        http_path = "/DeleteSamplingRule", paginator = list())
    input <- delete_sampling_rule_input(RuleName = RuleName, 
        RuleARN = RuleARN)
    output <- delete_sampling_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the current encryption configuration for X-Ray data
#'
#' Retrieves the current encryption configuration for X-Ray data.
#'
#' @examples
#'
#' @export
get_encryption_config <- function () 
{
    op <- Operation(name = "GetEncryptionConfig", http_method = "POST", 
        http_path = "/EncryptionConfig", paginator = list())
    input <- get_encryption_config_input()
    output <- get_encryption_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves all sampling rules
#'
#' Retrieves all sampling rules.
#'
#' @param NextToken Pagination token. Not used.
#'
#' @examples
#'
#' @export
get_sampling_rules <- function (NextToken = NULL) 
{
    op <- Operation(name = "GetSamplingRules", http_method = "POST", 
        http_path = "/GetSamplingRules", paginator = list())
    input <- get_sampling_rules_input(NextToken = NextToken)
    output <- get_sampling_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about recent sampling results for all sampling rules
#'
#' Retrieves information about recent sampling results for all sampling rules.
#'
#' @param NextToken Pagination token. Not used.
#'
#' @examples
#'
#' @export
get_sampling_statistic_summaries <- function (NextToken = NULL) 
{
    op <- Operation(name = "GetSamplingStatisticSummaries", http_method = "POST", 
        http_path = "/SamplingStatisticSummaries", paginator = list())
    input <- get_sampling_statistic_summaries_input(NextToken = NextToken)
    output <- get_sampling_statistic_summaries_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Requests a sampling quota for rules that the service is using to sample requests
#'
#' Requests a sampling quota for rules that the service is using to sample requests.
#'
#' @param SamplingStatisticsDocuments Information about rules that the service is using to sample requests.
#'
#' @examples
#'
#' @export
get_sampling_targets <- function (SamplingStatisticsDocuments) 
{
    op <- Operation(name = "GetSamplingTargets", http_method = "POST", 
        http_path = "/SamplingTargets", paginator = list())
    input <- get_sampling_targets_input(SamplingStatisticsDocuments = SamplingStatisticsDocuments)
    output <- get_sampling_targets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result
#'
#' Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
#'
#' @param StartTime The start of the time frame for which to generate a graph.
#' @param EndTime The end of the time frame for which to generate a graph.
#' @param NextToken Pagination token. Not used.
#'
#' @examples
#'
#' @export
get_service_graph <- function (StartTime, EndTime, NextToken = NULL) 
{
    op <- Operation(name = "GetServiceGraph", http_method = "POST", 
        http_path = "/ServiceGraph", paginator = list())
    input <- get_service_graph_input(StartTime = StartTime, EndTime = EndTime, 
        NextToken = NextToken)
    output <- get_service_graph_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a service graph for one or more specific trace IDs
#'
#' Retrieves a service graph for one or more specific trace IDs.
#'
#' @param TraceIds Trace IDs of requests for which to generate a service graph.
#' @param NextToken Pagination token. Not used.
#'
#' @examples
#'
#' @export
get_trace_graph <- function (TraceIds, NextToken = NULL) 
{
    op <- Operation(name = "GetTraceGraph", http_method = "POST", 
        http_path = "/TraceGraph", paginator = list())
    input <- get_trace_graph_input(TraceIds = TraceIds, NextToken = NextToken)
    output <- get_trace_graph_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves IDs and metadata for traces available for a specified time frame using an optional filter
#'
#' Retrieves IDs and metadata for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to `BatchGetTraces`.
#' 
#' A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through `api.example.com`:
#' 
#' `service("api.example.com")`
#' 
#' This filter expression finds traces that have an annotation named `account` with the value `12345`:
#' 
#' `annotation.account = "12345"`
#' 
#' For a full list of indexed fields and keywords that you can use in filter expressions, see [Using Filter Expressions](http://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html) in the *AWS X-Ray Developer Guide*.
#'
#' @param StartTime The start of the time frame for which to retrieve traces.
#' @param EndTime The end of the time frame for which to retrieve traces.
#' @param Sampling Set to `true` to get summaries for only a subset of available traces.
#' @param FilterExpression Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.
#' @param NextToken Specify the pagination token returned by a previous request to retrieve the next page of results.
#'
#' @examples
#'
#' @export
get_trace_summaries <- function (StartTime, EndTime, Sampling = NULL, 
    FilterExpression = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetTraceSummaries", http_method = "POST", 
        http_path = "/TraceSummaries", paginator = list())
    input <- get_trace_summaries_input(StartTime = StartTime, 
        EndTime = EndTime, Sampling = Sampling, FilterExpression = FilterExpression, 
        NextToken = NextToken)
    output <- get_trace_summaries_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the encryption configuration for X-Ray data
#'
#' Updates the encryption configuration for X-Ray data.
#'
#' @param Type The type of encryption. Set to `KMS` to use your own key for encryption. Set to `NONE` for default encryption.
#' @param KeyId An AWS KMS customer master key (CMK) in one of the following formats:
#' 
#' -   **Alias** - The name of the key. For example, `alias/MyKey`.
#' 
#' -   **Key ID** - The KMS key ID of the key. For example, `ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.
#' 
#' -   **ARN** - The full Amazon Resource Name of the key ID or alias. For example, `arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`. Use this format to specify a key in a different account.
#' 
#' Omit this key if you set `Type` to `NONE`.
#'
#' @examples
#'
#' @export
put_encryption_config <- function (Type, KeyId = NULL) 
{
    op <- Operation(name = "PutEncryptionConfig", http_method = "POST", 
        http_path = "/PutEncryptionConfig", paginator = list())
    input <- put_encryption_config_input(Type = Type, KeyId = KeyId)
    output <- put_encryption_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used by the AWS X-Ray daemon to upload telemetry
#'
#' Used by the AWS X-Ray daemon to upload telemetry.
#'
#' @param TelemetryRecords 
#' @param EC2InstanceId 
#' @param Hostname 
#' @param ResourceARN 
#'
#' @examples
#'
#' @export
put_telemetry_records <- function (TelemetryRecords, EC2InstanceId = NULL, 
    Hostname = NULL, ResourceARN = NULL) 
{
    op <- Operation(name = "PutTelemetryRecords", http_method = "POST", 
        http_path = "/TelemetryRecords", paginator = list())
    input <- put_telemetry_records_input(TelemetryRecords = TelemetryRecords, 
        EC2InstanceId = EC2InstanceId, Hostname = Hostname, ResourceARN = ResourceARN)
    output <- put_telemetry_records_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Uploads segment documents to AWS X-Ray
#'
#' Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments.
#' 
#' Segments must include the following fields. For the full segment document schema, see [AWS X-Ray Segment Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html) in the *AWS X-Ray Developer Guide*.
#' 
#' **Required Segment Document Fields**
#' 
#' -   `name` - The name of the service that handled the request.
#' 
#' -   `id` - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.
#' 
#' -   `trace_id` - A unique identifier that connects all segments and subsegments originating from a single client request.
#' 
#' -   `start_time` - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, `1480615200.010` or `1.480615200010E9`.
#' 
#' -   `end_time` - Time the segment or subsegment was closed. For example, `1480615200.090` or `1.480615200090E9`. Specify either an `end_time` or `in_progress`.
#' 
#' -   `in_progress` - Set to `true` instead of specifying an `end_time` to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.
#' 
#' A `trace_id` consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:
#' 
#' **Trace ID Format**
#' 
#' -   The version number, i.e. `1`.
#' 
#' -   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is `1480615200` seconds, or `58406520` in hexadecimal.
#' 
#' -   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.
#'
#' @param TraceSegmentDocuments A string containing a JSON document defining one or more segments or subsegments.
#'
#' @examples
#'
#' @export
put_trace_segments <- function (TraceSegmentDocuments) 
{
    op <- Operation(name = "PutTraceSegments", http_method = "POST", 
        http_path = "/TraceSegments", paginator = list())
    input <- put_trace_segments_input(TraceSegmentDocuments = TraceSegmentDocuments)
    output <- put_trace_segments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies a sampling rule\'s configuration
#'
#' Modifies a sampling rule\'s configuration.
#'
#' @param SamplingRuleUpdate The rule and fields to change.
#'
#' @examples
#'
#' @export
update_sampling_rule <- function (SamplingRuleUpdate) 
{
    op <- Operation(name = "UpdateSamplingRule", http_method = "POST", 
        http_path = "/UpdateSamplingRule", paginator = list())
    input <- update_sampling_rule_input(SamplingRuleUpdate = SamplingRuleUpdate)
    output <- update_sampling_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
