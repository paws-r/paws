batch_get_traces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TraceIds = structure(list(structure(logical(0), 
        shape = "TraceId", type = "string", max = 35L, min = 1L)), 
        shape = "TraceIdList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "BatchGetTracesRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_traces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Traces = structure(list(structure(list(Id = structure(logical(0), 
        shape = "TraceId", type = "string", max = 35L, min = 1L), 
        Duration = structure(logical(0), shape = "NullableDouble", 
            type = "double"), Segments = structure(list(structure(list(Id = structure(logical(0), 
            shape = "SegmentId", type = "string"), Document = structure(logical(0), 
            shape = "SegmentDocument", type = "string", min = 1L)), 
            shape = "Segment", type = "structure")), shape = "SegmentList", 
            type = "list")), shape = "Trace", type = "structure")), 
        shape = "TraceList", type = "list"), UnprocessedTraceIds = structure(list(structure(logical(0), 
        shape = "TraceId", type = "string", max = 35L, min = 1L)), 
        shape = "UnprocessedTraceIdList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "BatchGetTracesResult", 
        type = "structure")
    return(populate(args, shape))
}

create_sampling_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingRule = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        RuleARN = structure(logical(0), shape = "String", type = "string"), 
        ResourceARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 500L), Priority = structure(logical(0), 
            shape = "Priority", type = "integer", max = 9999L, 
            min = 1L), FixedRate = structure(logical(0), shape = "FixedRate", 
            type = "double", max = 1L, min = 0L), ReservoirSize = structure(logical(0), 
            shape = "ReservoirSize", type = "integer", min = 0L), 
        ServiceName = structure(logical(0), shape = "ServiceName", 
            type = "string", max = 64L), ServiceType = structure(logical(0), 
            shape = "ServiceType", type = "string", max = 64L), 
        Host = structure(logical(0), shape = "Host", type = "string", 
            max = 64L), HTTPMethod = structure(logical(0), shape = "HTTPMethod", 
            type = "string", max = 10L), URLPath = structure(logical(0), 
            shape = "URLPath", type = "string", max = 128L), 
        Version = structure(logical(0), shape = "Version", type = "integer", 
            min = 1L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32L, 
            min = 1L)), shape = "AttributeMap", type = "map", 
            max = 5L)), shape = "SamplingRule", type = "structure")), 
        shape = "CreateSamplingRuleRequest", type = "structure")
    return(populate(args, shape))
}

create_sampling_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingRuleRecord = structure(list(SamplingRule = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        RuleARN = structure(logical(0), shape = "String", type = "string"), 
        ResourceARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 500L), Priority = structure(logical(0), 
            shape = "Priority", type = "integer", max = 9999L, 
            min = 1L), FixedRate = structure(logical(0), shape = "FixedRate", 
            type = "double", max = 1L, min = 0L), ReservoirSize = structure(logical(0), 
            shape = "ReservoirSize", type = "integer", min = 0L), 
        ServiceName = structure(logical(0), shape = "ServiceName", 
            type = "string", max = 64L), ServiceType = structure(logical(0), 
            shape = "ServiceType", type = "string", max = 64L), 
        Host = structure(logical(0), shape = "Host", type = "string", 
            max = 64L), HTTPMethod = structure(logical(0), shape = "HTTPMethod", 
            type = "string", max = 10L), URLPath = structure(logical(0), 
            shape = "URLPath", type = "string", max = 128L), 
        Version = structure(logical(0), shape = "Version", type = "integer", 
            min = 1L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32L, 
            min = 1L)), shape = "AttributeMap", type = "map", 
            max = 5L)), shape = "SamplingRule", type = "structure"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), ModifiedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "SamplingRuleRecord", 
        type = "structure")), shape = "CreateSamplingRuleResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_sampling_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleName = structure(logical(0), 
        shape = "String", type = "string"), RuleARN = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteSamplingRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_sampling_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingRuleRecord = structure(list(SamplingRule = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        RuleARN = structure(logical(0), shape = "String", type = "string"), 
        ResourceARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 500L), Priority = structure(logical(0), 
            shape = "Priority", type = "integer", max = 9999L, 
            min = 1L), FixedRate = structure(logical(0), shape = "FixedRate", 
            type = "double", max = 1L, min = 0L), ReservoirSize = structure(logical(0), 
            shape = "ReservoirSize", type = "integer", min = 0L), 
        ServiceName = structure(logical(0), shape = "ServiceName", 
            type = "string", max = 64L), ServiceType = structure(logical(0), 
            shape = "ServiceType", type = "string", max = 64L), 
        Host = structure(logical(0), shape = "Host", type = "string", 
            max = 64L), HTTPMethod = structure(logical(0), shape = "HTTPMethod", 
            type = "string", max = 10L), URLPath = structure(logical(0), 
            shape = "URLPath", type = "string", max = 128L), 
        Version = structure(logical(0), shape = "Version", type = "integer", 
            min = 1L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32L, 
            min = 1L)), shape = "AttributeMap", type = "map", 
            max = 5L)), shape = "SamplingRule", type = "structure"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), ModifiedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "SamplingRuleRecord", 
        type = "structure")), shape = "DeleteSamplingRuleResult", 
        type = "structure")
    return(populate(args, shape))
}

get_encryption_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetEncryptionConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_encryption_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EncryptionConfig = structure(list(KeyId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "EncryptionStatus", type = "string"), Type = structure(logical(0), 
        shape = "EncryptionType", type = "string")), shape = "EncryptionConfig", 
        type = "structure")), shape = "GetEncryptionConfigResult", 
        type = "structure")
    return(populate(args, shape))
}

get_sampling_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetSamplingRulesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_sampling_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingRuleRecords = structure(list(structure(list(SamplingRule = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        RuleARN = structure(logical(0), shape = "String", type = "string"), 
        ResourceARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 500L), Priority = structure(logical(0), 
            shape = "Priority", type = "integer", max = 9999L, 
            min = 1L), FixedRate = structure(logical(0), shape = "FixedRate", 
            type = "double", max = 1L, min = 0L), ReservoirSize = structure(logical(0), 
            shape = "ReservoirSize", type = "integer", min = 0L), 
        ServiceName = structure(logical(0), shape = "ServiceName", 
            type = "string", max = 64L), ServiceType = structure(logical(0), 
            shape = "ServiceType", type = "string", max = 64L), 
        Host = structure(logical(0), shape = "Host", type = "string", 
            max = 64L), HTTPMethod = structure(logical(0), shape = "HTTPMethod", 
            type = "string", max = 10L), URLPath = structure(logical(0), 
            shape = "URLPath", type = "string", max = 128L), 
        Version = structure(logical(0), shape = "Version", type = "integer", 
            min = 1L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32L, 
            min = 1L)), shape = "AttributeMap", type = "map", 
            max = 5L)), shape = "SamplingRule", type = "structure"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), ModifiedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "SamplingRuleRecord", 
        type = "structure")), shape = "SamplingRuleRecordList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetSamplingRulesResult", 
        type = "structure")
    return(populate(args, shape))
}

get_sampling_statistic_summaries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetSamplingStatisticSummariesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_sampling_statistic_summaries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingStatisticSummaries = structure(list(structure(list(RuleName = structure(logical(0), 
        shape = "String", type = "string"), Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), RequestCount = structure(logical(0), 
        shape = "Integer", type = "integer"), BorrowCount = structure(logical(0), 
        shape = "Integer", type = "integer"), SampledCount = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "SamplingStatisticSummary", 
        type = "structure")), shape = "SamplingStatisticSummaryList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetSamplingStatisticSummariesResult", 
        type = "structure")
    return(populate(args, shape))
}

get_sampling_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingStatisticsDocuments = structure(list(structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        ClientID = structure(logical(0), shape = "ClientID", 
            type = "string", max = 24L, min = 24L), Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), RequestCount = structure(logical(0), 
            shape = "RequestCount", type = "integer", min = 0L), 
        SampledCount = structure(logical(0), shape = "SampledCount", 
            type = "integer", min = 0L), BorrowCount = structure(logical(0), 
            shape = "BorrowCount", type = "integer", min = 0L)), 
        shape = "SamplingStatisticsDocument", type = "structure")), 
        shape = "SamplingStatisticsDocumentList", type = "list", 
        max = 25L)), shape = "GetSamplingTargetsRequest", type = "structure")
    return(populate(args, shape))
}

get_sampling_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingTargetDocuments = structure(list(structure(list(RuleName = structure(logical(0), 
        shape = "String", type = "string"), FixedRate = structure(logical(0), 
        shape = "Double", type = "double"), ReservoirQuota = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), ReservoirQuotaTTL = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Interval = structure(logical(0), 
        shape = "NullableInteger", type = "integer")), shape = "SamplingTargetDocument", 
        type = "structure")), shape = "SamplingTargetDocumentList", 
        type = "list"), LastRuleModification = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), UnprocessedStatistics = structure(list(structure(list(RuleName = structure(logical(0), 
        shape = "String", type = "string"), ErrorCode = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string")), shape = "UnprocessedStatistics", 
        type = "structure")), shape = "UnprocessedStatisticsList", 
        type = "list")), shape = "GetSamplingTargetsResult", 
        type = "structure")
    return(populate(args, shape))
}

get_service_graph_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetServiceGraphRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_service_graph_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Services = structure(list(structure(list(ReferenceId = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), Name = structure(logical(0), 
        shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ServiceNames", 
        type = "list"), Root = structure(logical(0), shape = "NullableBoolean", 
        type = "boolean"), AccountId = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string"), State = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Edges = structure(list(structure(list(ReferenceId = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SummaryStatistics = structure(list(OkCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), ErrorStatistics = structure(list(ThrottleCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), OtherCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
        shape = "NullableLong", type = "long")), shape = "ErrorStatistics", 
        type = "structure"), FaultStatistics = structure(list(OtherCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
        shape = "NullableLong", type = "long")), shape = "FaultStatistics", 
        type = "structure"), TotalCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), TotalResponseTime = structure(logical(0), 
        shape = "NullableDouble", type = "double")), shape = "EdgeStatistics", 
        type = "structure"), ResponseTimeHistogram = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Double", type = "double"), Count = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "HistogramEntry", 
        type = "structure")), shape = "Histogram", type = "list"), 
        Aliases = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AliasNames", 
            type = "list"), Type = structure(logical(0), shape = "String", 
            type = "string")), shape = "Alias", type = "structure")), 
            shape = "AliasList", type = "list")), shape = "Edge", 
        type = "structure")), shape = "EdgeList", type = "list"), 
        SummaryStatistics = structure(list(OkCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), ErrorStatistics = structure(list(ThrottleCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), OtherCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
            shape = "NullableLong", type = "long")), shape = "ErrorStatistics", 
            type = "structure"), FaultStatistics = structure(list(OtherCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
            shape = "NullableLong", type = "long")), shape = "FaultStatistics", 
            type = "structure"), TotalCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), TotalResponseTime = structure(logical(0), 
            shape = "NullableDouble", type = "double")), shape = "ServiceStatistics", 
            type = "structure"), DurationHistogram = structure(list(structure(list(Value = structure(logical(0), 
            shape = "Double", type = "double"), Count = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HistogramEntry", 
            type = "structure")), shape = "Histogram", type = "list"), 
        ResponseTimeHistogram = structure(list(structure(list(Value = structure(logical(0), 
            shape = "Double", type = "double"), Count = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HistogramEntry", 
            type = "structure")), shape = "Histogram", type = "list")), 
        shape = "Service", type = "structure")), shape = "ServiceList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetServiceGraphResult", type = "structure")
    return(populate(args, shape))
}

get_trace_graph_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TraceIds = structure(list(structure(logical(0), 
        shape = "TraceId", type = "string", max = 35L, min = 1L)), 
        shape = "TraceIdList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetTraceGraphRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_trace_graph_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Services = structure(list(structure(list(ReferenceId = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), Name = structure(logical(0), 
        shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ServiceNames", 
        type = "list"), Root = structure(logical(0), shape = "NullableBoolean", 
        type = "boolean"), AccountId = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string"), State = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Edges = structure(list(structure(list(ReferenceId = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SummaryStatistics = structure(list(OkCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), ErrorStatistics = structure(list(ThrottleCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), OtherCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
        shape = "NullableLong", type = "long")), shape = "ErrorStatistics", 
        type = "structure"), FaultStatistics = structure(list(OtherCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
        shape = "NullableLong", type = "long")), shape = "FaultStatistics", 
        type = "structure"), TotalCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), TotalResponseTime = structure(logical(0), 
        shape = "NullableDouble", type = "double")), shape = "EdgeStatistics", 
        type = "structure"), ResponseTimeHistogram = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Double", type = "double"), Count = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "HistogramEntry", 
        type = "structure")), shape = "Histogram", type = "list"), 
        Aliases = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AliasNames", 
            type = "list"), Type = structure(logical(0), shape = "String", 
            type = "string")), shape = "Alias", type = "structure")), 
            shape = "AliasList", type = "list")), shape = "Edge", 
        type = "structure")), shape = "EdgeList", type = "list"), 
        SummaryStatistics = structure(list(OkCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), ErrorStatistics = structure(list(ThrottleCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), OtherCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
            shape = "NullableLong", type = "long")), shape = "ErrorStatistics", 
            type = "structure"), FaultStatistics = structure(list(OtherCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), TotalCount = structure(logical(0), 
            shape = "NullableLong", type = "long")), shape = "FaultStatistics", 
            type = "structure"), TotalCount = structure(logical(0), 
            shape = "NullableLong", type = "long"), TotalResponseTime = structure(logical(0), 
            shape = "NullableDouble", type = "double")), shape = "ServiceStatistics", 
            type = "structure"), DurationHistogram = structure(list(structure(list(Value = structure(logical(0), 
            shape = "Double", type = "double"), Count = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HistogramEntry", 
            type = "structure")), shape = "Histogram", type = "list"), 
        ResponseTimeHistogram = structure(list(structure(list(Value = structure(logical(0), 
            shape = "Double", type = "double"), Count = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HistogramEntry", 
            type = "structure")), shape = "Histogram", type = "list")), 
        shape = "Service", type = "structure")), shape = "ServiceList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetTraceGraphResult", type = "structure")
    return(populate(args, shape))
}

get_trace_summaries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Sampling = structure(logical(0), 
        shape = "NullableBoolean", type = "boolean"), FilterExpression = structure(logical(0), 
        shape = "FilterExpression", type = "string", max = 2000L, 
        min = 1L), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetTraceSummariesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_trace_summaries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TraceSummaries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "TraceId", type = "string", max = 35L, min = 1L), 
        Duration = structure(logical(0), shape = "NullableDouble", 
            type = "double"), ResponseTime = structure(logical(0), 
            shape = "NullableDouble", type = "double"), HasFault = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean"), HasError = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean"), HasThrottle = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean"), IsPartial = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean"), Http = structure(list(HttpURL = structure(logical(0), 
            shape = "String", type = "string"), HttpStatus = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), HttpMethod = structure(logical(0), 
            shape = "String", type = "string"), UserAgent = structure(logical(0), 
            shape = "String", type = "string"), ClientIp = structure(logical(0), 
            shape = "String", type = "string")), shape = "Http", 
            type = "structure"), Annotations = structure(list(structure(list(structure(list(AnnotationValue = structure(list(NumberValue = structure(logical(0), 
            shape = "NullableDouble", type = "double"), BooleanValue = structure(logical(0), 
            shape = "NullableBoolean", type = "boolean"), StringValue = structure(logical(0), 
            shape = "String", type = "string")), shape = "AnnotationValue", 
            type = "structure"), ServiceIds = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ServiceNames", 
            type = "list"), AccountId = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string")), shape = "ServiceId", 
            type = "structure")), shape = "ServiceIds", type = "list")), 
            shape = "ValueWithServiceIds", type = "structure")), 
            shape = "ValuesWithServiceIds", type = "list")), 
            shape = "Annotations", type = "map"), Users = structure(list(structure(list(UserName = structure(logical(0), 
            shape = "String", type = "string"), ServiceIds = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ServiceNames", 
            type = "list"), AccountId = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string")), shape = "ServiceId", 
            type = "structure")), shape = "ServiceIds", type = "list")), 
            shape = "TraceUser", type = "structure")), shape = "TraceUsers", 
            type = "list"), ServiceIds = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Names = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ServiceNames", 
            type = "list"), AccountId = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string")), shape = "ServiceId", 
            type = "structure")), shape = "ServiceIds", type = "list")), 
        shape = "TraceSummary", type = "structure")), shape = "TraceSummaryList", 
        type = "list"), ApproximateTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), TracesProcessedCount = structure(logical(0), 
        shape = "NullableLong", type = "long"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetTraceSummariesResult", 
        type = "structure")
    return(populate(args, shape))
}

put_encryption_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyId = structure(logical(0), shape = "EncryptionKeyId", 
        type = "string", max = 3000L, min = 1L), Type = structure(logical(0), 
        shape = "EncryptionType", type = "string")), shape = "PutEncryptionConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_encryption_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EncryptionConfig = structure(list(KeyId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "EncryptionStatus", type = "string"), Type = structure(logical(0), 
        shape = "EncryptionType", type = "string")), shape = "EncryptionConfig", 
        type = "structure")), shape = "PutEncryptionConfigResult", 
        type = "structure")
    return(populate(args, shape))
}

put_telemetry_records_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TelemetryRecords = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SegmentsReceivedCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), SegmentsSentCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), SegmentsSpilloverCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), SegmentsRejectedCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), BackendConnectionErrors = structure(list(TimeoutCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), ConnectionRefusedCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), HTTPCode4XXCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), HTTPCode5XXCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), UnknownHostCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer"), OtherCount = structure(logical(0), 
        shape = "NullableInteger", type = "integer")), shape = "BackendConnectionErrors", 
        type = "structure")), shape = "TelemetryRecord", type = "structure")), 
        shape = "TelemetryRecordList", type = "list"), EC2InstanceId = structure(logical(0), 
        shape = "EC2InstanceId", type = "string", max = 20L), 
        Hostname = structure(logical(0), shape = "Hostname", 
            type = "string", max = 255L), ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 500L)), 
        shape = "PutTelemetryRecordsRequest", type = "structure")
    return(populate(args, shape))
}

put_telemetry_records_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutTelemetryRecordsResult", 
        type = "structure")
    return(populate(args, shape))
}

put_trace_segments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TraceSegmentDocuments = structure(list(structure(logical(0), 
        shape = "TraceSegmentDocument", type = "string")), shape = "TraceSegmentDocumentList", 
        type = "list")), shape = "PutTraceSegmentsRequest", type = "structure")
    return(populate(args, shape))
}

put_trace_segments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UnprocessedTraceSegments = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), ErrorCode = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string")), shape = "UnprocessedTraceSegment", 
        type = "structure")), shape = "UnprocessedTraceSegmentList", 
        type = "list")), shape = "PutTraceSegmentsResult", type = "structure")
    return(populate(args, shape))
}

update_sampling_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingRuleUpdate = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        RuleARN = structure(logical(0), shape = "String", type = "string"), 
        ResourceARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 500L), Priority = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), FixedRate = structure(logical(0), 
            shape = "NullableDouble", type = "double"), ReservoirSize = structure(logical(0), 
            shape = "NullableInteger", type = "integer"), Host = structure(logical(0), 
            shape = "Host", type = "string", max = 64L), ServiceName = structure(logical(0), 
            shape = "ServiceName", type = "string", max = 64L), 
        ServiceType = structure(logical(0), shape = "ServiceType", 
            type = "string", max = 64L), HTTPMethod = structure(logical(0), 
            shape = "HTTPMethod", type = "string", max = 10L), 
        URLPath = structure(logical(0), shape = "URLPath", type = "string", 
            max = 128L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32L, 
            min = 1L)), shape = "AttributeMap", type = "map", 
            max = 5L)), shape = "SamplingRuleUpdate", type = "structure")), 
        shape = "UpdateSamplingRuleRequest", type = "structure")
    return(populate(args, shape))
}

update_sampling_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SamplingRuleRecord = structure(list(SamplingRule = structure(list(RuleName = structure(logical(0), 
        shape = "RuleName", type = "string", max = 32L, min = 1L), 
        RuleARN = structure(logical(0), shape = "String", type = "string"), 
        ResourceARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 500L), Priority = structure(logical(0), 
            shape = "Priority", type = "integer", max = 9999L, 
            min = 1L), FixedRate = structure(logical(0), shape = "FixedRate", 
            type = "double", max = 1L, min = 0L), ReservoirSize = structure(logical(0), 
            shape = "ReservoirSize", type = "integer", min = 0L), 
        ServiceName = structure(logical(0), shape = "ServiceName", 
            type = "string", max = 64L), ServiceType = structure(logical(0), 
            shape = "ServiceType", type = "string", max = 64L), 
        Host = structure(logical(0), shape = "Host", type = "string", 
            max = 64L), HTTPMethod = structure(logical(0), shape = "HTTPMethod", 
            type = "string", max = 10L), URLPath = structure(logical(0), 
            shape = "URLPath", type = "string", max = 128L), 
        Version = structure(logical(0), shape = "Version", type = "integer", 
            min = 1L), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 32L, 
            min = 1L)), shape = "AttributeMap", type = "map", 
            max = 5L)), shape = "SamplingRule", type = "structure"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), ModifiedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "SamplingRuleRecord", 
        type = "structure")), shape = "UpdateSamplingRuleResult", 
        type = "structure")
    return(populate(args, shape))
}
