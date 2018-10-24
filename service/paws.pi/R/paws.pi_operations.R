#' For a specific time period, retrieve the top `N` dimension keys for a metric
#'
#' For a specific time period, retrieve the top `N` dimension keys for a metric.
#'
#' @param ServiceType The AWS service for which Performance Insights will return metrics. The only valid value for *ServiceType* is: `RDS`
#' @param Identifier An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.
#' 
#' To use an Amazon RDS instance as a data source, you specify its `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`
#' @param StartTime The date and time specifying the beginning of the requested time series data. You can\'t specify a `StartTime` that\'s earlier than 7 days ago. The value specified is *inclusive* - data points equal to or greater than `StartTime` will be returned.
#' 
#' The value for `StartTime` must be earlier than the value for `EndTime`.
#' @param EndTime The date and time specifying the end of the requested time series data. The value specified is *exclusive* - data points less than (but not equal to) `EndTime` will be returned.
#' 
#' The value for `EndTime` must be later than the value for `StartTime`.
#' @param Metric The name of a Performance Insights metric to be measured.
#' 
#' Valid values for `Metric` are:
#' 
#' -   `db.load.avg` - a scaled representation of the number of active sessions for the database engine.
#' 
#' -   `db.sampledload.avg` - the raw number of active sessions for the database engine.
#' @param GroupBy A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.
#' @param PeriodInSeconds The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:
#' 
#' -   `1` (one second)
#' 
#' -   `60` (one minute)
#' 
#' -   `300` (five minutes)
#' 
#' -   `3600` (one hour)
#' 
#' -   `86400` (twenty-four hours)
#' 
#' If you don\'t specify `PeriodInSeconds`, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.
#' @param PartitionBy For each dimension specified in `GroupBy`, specify a secondary dimension to further subdivide the partition keys in the response.
#' @param Filter One or more filters to apply in the request. Restrictions:
#' 
#' -   Any number of filters by the same dimension, as specified in the `GroupBy` or `Partition` parameters.
#' 
#' -   A single filter for any other dimension in this dimension group.
#' @param MaxResults The maximum number of items to return in the response. If more items exist than the specified `MaxRecords` value, a pagination token is included in the response so that the remaining results can be retrieved.
#' @param NextToken An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_dimension_keys <- function (ServiceType, Identifier, 
    StartTime, EndTime, Metric, GroupBy, PeriodInSeconds = NULL, 
    PartitionBy = NULL, Filter = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeDimensionKeys", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_dimension_keys_input(ServiceType = ServiceType, 
        Identifier = Identifier, StartTime = StartTime, EndTime = EndTime, 
        Metric = Metric, GroupBy = GroupBy, PeriodInSeconds = PeriodInSeconds, 
        PartitionBy = PartitionBy, Filter = Filter, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_dimension_keys_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve Performance Insights metrics for a set of data sources, over a time period
#'
#' Retrieve Performance Insights metrics for a set of data sources, over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.
#'
#' @param ServiceType The AWS service for which Performance Insights will return metrics. The only valid value for *ServiceType* is: `RDS`
#' @param Identifier An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.
#' 
#' To use an Amazon RDS instance as a data source, you specify its `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`
#' @param MetricQueries An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering criteria.
#' @param StartTime The date and time specifying the beginning of the requested time series data. You can\'t specify a `StartTime` that\'s earlier than 7 days ago. The value specified is *inclusive* - data points equal to or greater than `StartTime` will be returned.
#' 
#' The value for `StartTime` must be earlier than the value for `EndTime`.
#' @param EndTime The date and time specifiying the end of the requested time series data. The value specified is *exclusive* - data points less than (but not equal to) `EndTime` will be returned.
#' 
#' The value for `EndTime` must be later than the value for `StartTime`.
#' @param PeriodInSeconds The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:
#' 
#' -   `1` (one second)
#' 
#' -   `60` (one minute)
#' 
#' -   `300` (five minutes)
#' 
#' -   `3600` (one hour)
#' 
#' -   `86400` (twenty-four hours)
#' 
#' If you don\'t specify `PeriodInSeconds`, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.
#' @param MaxResults The maximum number of items to return in the response. If more items exist than the specified `MaxRecords` value, a pagination token is included in the response so that the remaining results can be retrieved.
#' @param NextToken An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
get_resource_metrics <- function (ServiceType, Identifier, MetricQueries, 
    StartTime, EndTime, PeriodInSeconds = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "GetResourceMetrics", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_resource_metrics_input(ServiceType = ServiceType, 
        Identifier = Identifier, MetricQueries = MetricQueries, 
        StartTime = StartTime, EndTime = EndTime, PeriodInSeconds = PeriodInSeconds, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- get_resource_metrics_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
