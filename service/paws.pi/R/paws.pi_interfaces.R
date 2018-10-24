describe_dimension_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceType = structure(logical(0), 
        shape = "ServiceType", type = "string"), Identifier = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), Metric = structure(logical(0), 
        shape = "String", type = "string"), PeriodInSeconds = structure(logical(0), 
        shape = "Integer", type = "integer"), GroupBy = structure(list(Group = structure(logical(0), 
        shape = "String", type = "string"), Dimensions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", max = 10L, min = 1L), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 10L, min = 1L)), 
        shape = "DimensionGroup", type = "structure"), PartitionBy = structure(list(Group = structure(logical(0), 
        shape = "String", type = "string"), Dimensions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", max = 10L, min = 1L), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 10L, min = 1L)), 
        shape = "DimensionGroup", type = "structure"), Filter = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MetricQueryFilterMap", 
        type = "map"), MaxResults = structure(logical(0), shape = "MaxResults", 
        type = "integer", max = 20L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeDimensionKeysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_dimension_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlignedStartTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), AlignedEndTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), PartitionKeys = structure(list(structure(list(Dimensions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DimensionMap", 
        type = "map")), shape = "ResponsePartitionKey", type = "structure")), 
        shape = "ResponsePartitionKeyList", type = "list"), Keys = structure(list(structure(list(Dimensions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DimensionMap", 
        type = "map"), Total = structure(logical(0), shape = "Double", 
        type = "double"), Partitions = structure(list(structure(logical(0), 
        shape = "Double", type = "double")), shape = "MetricValuesList", 
        type = "list")), shape = "DimensionKeyDescription", type = "structure")), 
        shape = "DimensionKeyDescriptionList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "DescribeDimensionKeysResponse", type = "structure")
    return(populate(args, shape))
}

get_resource_metrics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceType = structure(logical(0), 
        shape = "ServiceType", type = "string"), Identifier = structure(logical(0), 
        shape = "String", type = "string"), MetricQueries = structure(list(structure(list(Metric = structure(logical(0), 
        shape = "String", type = "string"), GroupBy = structure(list(Group = structure(logical(0), 
        shape = "String", type = "string"), Dimensions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", max = 10L, min = 1L), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 10L, min = 1L)), 
        shape = "DimensionGroup", type = "structure"), Filter = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MetricQueryFilterMap", 
        type = "map")), shape = "MetricQuery", type = "structure")), 
        shape = "MetricQueryList", type = "list", max = 15L, 
        min = 1L), StartTime = structure(logical(0), shape = "ISOTimestamp", 
        type = "timestamp"), EndTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), PeriodInSeconds = structure(logical(0), 
        shape = "Integer", type = "integer"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 20L, min = 0L), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "GetResourceMetricsRequest", type = "structure")
    return(populate(args, shape))
}

get_resource_metrics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlignedStartTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), AlignedEndTime = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), Identifier = structure(logical(0), 
        shape = "String", type = "string"), MetricList = structure(list(structure(list(Key = structure(list(Metric = structure(logical(0), 
        shape = "String", type = "string"), Dimensions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DimensionMap", 
        type = "map")), shape = "ResponseResourceMetricKey", 
        type = "structure"), DataPoints = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "ISOTimestamp", type = "timestamp"), Value = structure(logical(0), 
        shape = "Double", type = "double")), shape = "DataPoint", 
        type = "structure")), shape = "DataPointsList", type = "list")), 
        shape = "MetricKeyDataPoints", type = "structure")), 
        shape = "MetricKeyDataPointsList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetResourceMetricsResponse", 
        type = "structure")
    return(populate(args, shape))
}
