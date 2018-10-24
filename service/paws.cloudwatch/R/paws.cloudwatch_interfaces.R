delete_alarms_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmNames = structure(list(structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L)), 
        shape = "AlarmNames", type = "list", max = 100L)), shape = "DeleteAlarmsInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_alarms_output <- function () 
{
    return(list())
}

delete_dashboards_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardNames = structure(list(structure(logical(0), 
        shape = "DashboardName", type = "string")), shape = "DashboardNames", 
        type = "list")), shape = "DeleteDashboardsInput", type = "structure")
    return(populate(args, shape))
}

delete_dashboards_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDashboardsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_alarm_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmName = structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L), 
        HistoryItemType = structure(logical(0), shape = "HistoryItemType", 
            type = "string"), StartDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), MaxRecords = structure(logical(0), 
            shape = "MaxRecords", type = "integer", max = 100L, 
            min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 0L)), shape = "DescribeAlarmHistoryInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_alarm_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmHistoryItems = structure(list(structure(list(AlarmName = structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L), 
        Timestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), HistoryItemType = structure(logical(0), 
            shape = "HistoryItemType", type = "string"), HistorySummary = structure(logical(0), 
            shape = "HistorySummary", type = "string", max = 255L, 
            min = 1L), HistoryData = structure(logical(0), shape = "HistoryData", 
            type = "string", max = 4095L, min = 1L)), shape = "AlarmHistoryItem", 
        type = "structure")), shape = "AlarmHistoryItems", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 0L)), shape = "DescribeAlarmHistoryOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_alarms_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmNames = structure(list(structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L)), 
        shape = "AlarmNames", type = "list", max = 100L), AlarmNamePrefix = structure(logical(0), 
        shape = "AlarmNamePrefix", type = "string", max = 255L, 
        min = 1L), StateValue = structure(logical(0), shape = "StateValue", 
        type = "string"), ActionPrefix = structure(logical(0), 
        shape = "ActionPrefix", type = "string", max = 1024L, 
        min = 1L), MaxRecords = structure(logical(0), shape = "MaxRecords", 
        type = "integer", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 0L)), 
        shape = "DescribeAlarmsInput", type = "structure")
    return(populate(args, shape))
}

describe_alarms_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricAlarms = structure(list(structure(list(AlarmName = structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L), 
        AlarmArn = structure(logical(0), shape = "AlarmArn", 
            type = "string", max = 1600L, min = 1L), AlarmDescription = structure(logical(0), 
            shape = "AlarmDescription", type = "string", max = 1024L, 
            min = 0L), AlarmConfigurationUpdatedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ActionsEnabled = structure(logical(0), 
            shape = "ActionsEnabled", type = "boolean"), OKActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), AlarmActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), InsufficientDataActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), StateValue = structure(logical(0), shape = "StateValue", 
            type = "string"), StateReason = structure(logical(0), 
            shape = "StateReason", type = "string", max = 1023L, 
            min = 0L), StateReasonData = structure(logical(0), 
            shape = "StateReasonData", type = "string", max = 4000L, 
            min = 0L), StateUpdatedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string", max = 255L, 
            min = 1L), Namespace = structure(logical(0), shape = "Namespace", 
            type = "string", max = 255L, min = 1L, pattern = "[^:].*"), 
        Statistic = structure(logical(0), shape = "Statistic", 
            type = "string"), ExtendedStatistic = structure(logical(0), 
            shape = "ExtendedStatistic", type = "string", pattern = "p(\\d{1,2}(\\.\\d{0,2})?|100)"), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L), Period = structure(logical(0), shape = "Period", 
            type = "integer", min = 1L), Unit = structure(logical(0), 
            shape = "StandardUnit", type = "string"), EvaluationPeriods = structure(logical(0), 
            shape = "EvaluationPeriods", type = "integer", min = 1L), 
        DatapointsToAlarm = structure(logical(0), shape = "DatapointsToAlarm", 
            type = "integer", min = 1L), Threshold = structure(logical(0), 
            shape = "Threshold", type = "double"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), TreatMissingData = structure(logical(0), 
            shape = "TreatMissingData", type = "string", max = 255L, 
            min = 1L), EvaluateLowSampleCountPercentile = structure(logical(0), 
            shape = "EvaluateLowSampleCountPercentile", type = "string", 
            max = 255L, min = 1L)), shape = "MetricAlarm", type = "structure")), 
        shape = "MetricAlarms", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 0L)), 
        shape = "DescribeAlarmsOutput", type = "structure")
    return(populate(args, shape))
}

describe_alarms_for_metric_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricName = structure(logical(0), 
        shape = "MetricName", type = "string", max = 255L, min = 1L), 
        Namespace = structure(logical(0), shape = "Namespace", 
            type = "string", max = 255L, min = 1L, pattern = "[^:].*"), 
        Statistic = structure(logical(0), shape = "Statistic", 
            type = "string"), ExtendedStatistic = structure(logical(0), 
            shape = "ExtendedStatistic", type = "string", pattern = "p(\\d{1,2}(\\.\\d{0,2})?|100)"), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L), Period = structure(logical(0), shape = "Period", 
            type = "integer", min = 1L), Unit = structure(logical(0), 
            shape = "StandardUnit", type = "string")), shape = "DescribeAlarmsForMetricInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_alarms_for_metric_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricAlarms = structure(list(structure(list(AlarmName = structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L), 
        AlarmArn = structure(logical(0), shape = "AlarmArn", 
            type = "string", max = 1600L, min = 1L), AlarmDescription = structure(logical(0), 
            shape = "AlarmDescription", type = "string", max = 1024L, 
            min = 0L), AlarmConfigurationUpdatedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ActionsEnabled = structure(logical(0), 
            shape = "ActionsEnabled", type = "boolean"), OKActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), AlarmActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), InsufficientDataActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), StateValue = structure(logical(0), shape = "StateValue", 
            type = "string"), StateReason = structure(logical(0), 
            shape = "StateReason", type = "string", max = 1023L, 
            min = 0L), StateReasonData = structure(logical(0), 
            shape = "StateReasonData", type = "string", max = 4000L, 
            min = 0L), StateUpdatedTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string", max = 255L, 
            min = 1L), Namespace = structure(logical(0), shape = "Namespace", 
            type = "string", max = 255L, min = 1L, pattern = "[^:].*"), 
        Statistic = structure(logical(0), shape = "Statistic", 
            type = "string"), ExtendedStatistic = structure(logical(0), 
            shape = "ExtendedStatistic", type = "string", pattern = "p(\\d{1,2}(\\.\\d{0,2})?|100)"), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L), Period = structure(logical(0), shape = "Period", 
            type = "integer", min = 1L), Unit = structure(logical(0), 
            shape = "StandardUnit", type = "string"), EvaluationPeriods = structure(logical(0), 
            shape = "EvaluationPeriods", type = "integer", min = 1L), 
        DatapointsToAlarm = structure(logical(0), shape = "DatapointsToAlarm", 
            type = "integer", min = 1L), Threshold = structure(logical(0), 
            shape = "Threshold", type = "double"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), TreatMissingData = structure(logical(0), 
            shape = "TreatMissingData", type = "string", max = 255L, 
            min = 1L), EvaluateLowSampleCountPercentile = structure(logical(0), 
            shape = "EvaluateLowSampleCountPercentile", type = "string", 
            max = 255L, min = 1L)), shape = "MetricAlarm", type = "structure")), 
        shape = "MetricAlarms", type = "list")), shape = "DescribeAlarmsForMetricOutput", 
        type = "structure")
    return(populate(args, shape))
}

disable_alarm_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmNames = structure(list(structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L)), 
        shape = "AlarmNames", type = "list", max = 100L)), shape = "DisableAlarmActionsInput", 
        type = "structure")
    return(populate(args, shape))
}

disable_alarm_actions_output <- function () 
{
    return(list())
}

enable_alarm_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmNames = structure(list(structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L)), 
        shape = "AlarmNames", type = "list", max = 100L)), shape = "EnableAlarmActionsInput", 
        type = "structure")
    return(populate(args, shape))
}

enable_alarm_actions_output <- function () 
{
    return(list())
}

get_dashboard_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardName = structure(logical(0), 
        shape = "DashboardName", type = "string")), shape = "GetDashboardInput", 
        type = "structure")
    return(populate(args, shape))
}

get_dashboard_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardArn = structure(logical(0), 
        shape = "DashboardArn", type = "string"), DashboardBody = structure(logical(0), 
        shape = "DashboardBody", type = "string"), DashboardName = structure(logical(0), 
        shape = "DashboardName", type = "string")), shape = "GetDashboardOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_metric_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricDataQueries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "MetricId", type = "string", max = 255L, min = 1L), 
        MetricStat = structure(list(Metric = structure(list(Namespace = structure(logical(0), 
            shape = "Namespace", type = "string", max = 255L, 
            min = 1L, pattern = "[^:].*"), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string", max = 255L, 
            min = 1L), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L)), shape = "Metric", type = "structure"), 
            Period = structure(logical(0), shape = "Period", 
                type = "integer", min = 1L), Stat = structure(logical(0), 
                shape = "Stat", type = "string"), Unit = structure(logical(0), 
                shape = "StandardUnit", type = "string")), shape = "MetricStat", 
            type = "structure"), Expression = structure(logical(0), 
            shape = "MetricExpression", type = "string", max = 1024L, 
            min = 1L), Label = structure(logical(0), shape = "MetricLabel", 
            type = "string"), ReturnData = structure(logical(0), 
            shape = "ReturnData", type = "boolean")), shape = "MetricDataQuery", 
        type = "structure")), shape = "MetricDataQueries", type = "list"), 
        StartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 0L), ScanBy = structure(logical(0), shape = "ScanBy", 
            type = "string"), MaxDatapoints = structure(logical(0), 
            shape = "GetMetricDataMaxDatapoints", type = "integer")), 
        shape = "GetMetricDataInput", type = "structure")
    return(populate(args, shape))
}

get_metric_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricDataResults = structure(list(structure(list(Id = structure(logical(0), 
        shape = "MetricId", type = "string", max = 255L, min = 1L), 
        Label = structure(logical(0), shape = "MetricLabel", 
            type = "string"), Timestamps = structure(list(structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Timestamps", 
            type = "list"), Values = structure(list(structure(logical(0), 
            shape = "DatapointValue", type = "double")), shape = "DatapointValues", 
            type = "list"), StatusCode = structure(logical(0), 
            shape = "StatusCode", type = "string"), Messages = structure(list(structure(list(Code = structure(logical(0), 
            shape = "MessageDataCode", type = "string"), Value = structure(logical(0), 
            shape = "MessageDataValue", type = "string")), shape = "MessageData", 
            type = "structure")), shape = "MetricDataResultMessages", 
            type = "list")), shape = "MetricDataResult", type = "structure")), 
        shape = "MetricDataResults", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 0L)), 
        shape = "GetMetricDataOutput", type = "structure")
    return(populate(args, shape))
}

get_metric_statistics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Namespace = structure(logical(0), 
        shape = "Namespace", type = "string", max = 255L, min = 1L, 
        pattern = "[^:].*"), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string", max = 255L, min = 1L), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L), StartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Period = structure(logical(0), 
            shape = "Period", type = "integer", min = 1L), Statistics = structure(list(structure(logical(0), 
            shape = "Statistic", type = "string")), shape = "Statistics", 
            type = "list", max = 5L, min = 1L), ExtendedStatistics = structure(list(structure(logical(0), 
            shape = "ExtendedStatistic", type = "string", pattern = "p(\\d{1,2}(\\.\\d{0,2})?|100)")), 
            shape = "ExtendedStatistics", type = "list", max = 10L, 
            min = 1L), Unit = structure(logical(0), shape = "StandardUnit", 
            type = "string")), shape = "GetMetricStatisticsInput", 
        type = "structure")
    return(populate(args, shape))
}

get_metric_statistics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Label = structure(logical(0), shape = "MetricLabel", 
        type = "string"), Datapoints = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SampleCount = structure(logical(0), 
        shape = "DatapointValue", type = "double"), Average = structure(logical(0), 
        shape = "DatapointValue", type = "double"), Sum = structure(logical(0), 
        shape = "DatapointValue", type = "double"), Minimum = structure(logical(0), 
        shape = "DatapointValue", type = "double"), Maximum = structure(logical(0), 
        shape = "DatapointValue", type = "double"), Unit = structure(logical(0), 
        shape = "StandardUnit", type = "string"), ExtendedStatistics = structure(list(structure(logical(0), 
        shape = "DatapointValue", type = "double")), shape = "DatapointValueMap", 
        type = "map")), shape = "Datapoint", type = "structure")), 
        shape = "Datapoints", type = "list")), shape = "GetMetricStatisticsOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_metric_widget_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricWidget = structure(logical(0), 
        shape = "MetricWidget", type = "string"), OutputFormat = structure(logical(0), 
        shape = "OutputFormat", type = "string")), shape = "GetMetricWidgetImageInput", 
        type = "structure")
    return(populate(args, shape))
}

get_metric_widget_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricWidgetImage = structure(logical(0), 
        shape = "MetricWidgetImage", type = "blob")), shape = "GetMetricWidgetImageOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_dashboards_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardNamePrefix = structure(logical(0), 
        shape = "DashboardNamePrefix", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 0L)), 
        shape = "ListDashboardsInput", type = "structure")
    return(populate(args, shape))
}

list_dashboards_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardEntries = structure(list(structure(list(DashboardName = structure(logical(0), 
        shape = "DashboardName", type = "string"), DashboardArn = structure(logical(0), 
        shape = "DashboardArn", type = "string"), LastModified = structure(logical(0), 
        shape = "LastModified", type = "timestamp"), Size = structure(logical(0), 
        shape = "Size", type = "long")), shape = "DashboardEntry", 
        type = "structure")), shape = "DashboardEntries", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 0L)), shape = "ListDashboardsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_metrics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Namespace = structure(logical(0), 
        shape = "Namespace", type = "string", max = 255L, min = 1L, 
        pattern = "[^:].*"), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string", max = 255L, min = 1L), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "DimensionFilter", 
            type = "structure")), shape = "DimensionFilters", 
            type = "list", max = 10L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 0L)), shape = "ListMetricsInput", type = "structure")
    return(populate(args, shape))
}

list_metrics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metrics = structure(list(structure(list(Namespace = structure(logical(0), 
        shape = "Namespace", type = "string", max = 255L, min = 1L, 
        pattern = "[^:].*"), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string", max = 255L, min = 1L), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L)), shape = "Metric", type = "structure")), 
        shape = "Metrics", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 0L)), 
        shape = "ListMetricsOutput", type = "structure")
    return(populate(args, shape))
}

put_dashboard_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardName = structure(logical(0), 
        shape = "DashboardName", type = "string"), DashboardBody = structure(logical(0), 
        shape = "DashboardBody", type = "string")), shape = "PutDashboardInput", 
        type = "structure")
    return(populate(args, shape))
}

put_dashboard_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DashboardValidationMessages = structure(list(structure(list(DataPath = structure(logical(0), 
        shape = "DataPath", type = "string"), Message = structure(logical(0), 
        shape = "Message", type = "string")), shape = "DashboardValidationMessage", 
        type = "structure")), shape = "DashboardValidationMessages", 
        type = "list")), shape = "PutDashboardOutput", type = "structure")
    return(populate(args, shape))
}

put_metric_alarm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmName = structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L), 
        AlarmDescription = structure(logical(0), shape = "AlarmDescription", 
            type = "string", max = 1024L, min = 0L), ActionsEnabled = structure(logical(0), 
            shape = "ActionsEnabled", type = "boolean"), OKActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), AlarmActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), InsufficientDataActions = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1024L, 
            min = 1L)), shape = "ResourceList", type = "list", 
            max = 5L), MetricName = structure(logical(0), shape = "MetricName", 
            type = "string", max = 255L, min = 1L), Namespace = structure(logical(0), 
            shape = "Namespace", type = "string", max = 255L, 
            min = 1L, pattern = "[^:].*"), Statistic = structure(logical(0), 
            shape = "Statistic", type = "string"), ExtendedStatistic = structure(logical(0), 
            shape = "ExtendedStatistic", type = "string", pattern = "p(\\d{1,2}(\\.\\d{0,2})?|100)"), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L), Period = structure(logical(0), shape = "Period", 
            type = "integer", min = 1L), Unit = structure(logical(0), 
            shape = "StandardUnit", type = "string"), EvaluationPeriods = structure(logical(0), 
            shape = "EvaluationPeriods", type = "integer", min = 1L), 
        DatapointsToAlarm = structure(logical(0), shape = "DatapointsToAlarm", 
            type = "integer", min = 1L), Threshold = structure(logical(0), 
            shape = "Threshold", type = "double"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), TreatMissingData = structure(logical(0), 
            shape = "TreatMissingData", type = "string", max = 255L, 
            min = 1L), EvaluateLowSampleCountPercentile = structure(logical(0), 
            shape = "EvaluateLowSampleCountPercentile", type = "string", 
            max = 255L, min = 1L)), shape = "PutMetricAlarmInput", 
        type = "structure")
    return(populate(args, shape))
}

put_metric_alarm_output <- function () 
{
    return(list())
}

put_metric_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Namespace = structure(logical(0), 
        shape = "Namespace", type = "string", max = 255L, min = 1L, 
        pattern = "[^:].*"), MetricData = structure(list(structure(list(MetricName = structure(logical(0), 
        shape = "MetricName", type = "string", max = 255L, min = 1L), 
        Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "DimensionName", type = "string", max = 255L, 
            min = 1L), Value = structure(logical(0), shape = "DimensionValue", 
            type = "string", max = 255L, min = 1L)), shape = "Dimension", 
            type = "structure")), shape = "Dimensions", type = "list", 
            max = 10L), Timestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), Value = structure(logical(0), 
            shape = "DatapointValue", type = "double"), StatisticValues = structure(list(SampleCount = structure(logical(0), 
            shape = "DatapointValue", type = "double"), Sum = structure(logical(0), 
            shape = "DatapointValue", type = "double"), Minimum = structure(logical(0), 
            shape = "DatapointValue", type = "double"), Maximum = structure(logical(0), 
            shape = "DatapointValue", type = "double")), shape = "StatisticSet", 
            type = "structure"), Values = structure(list(structure(logical(0), 
            shape = "DatapointValue", type = "double")), shape = "Values", 
            type = "list"), Counts = structure(list(structure(logical(0), 
            shape = "DatapointValue", type = "double")), shape = "Counts", 
            type = "list"), Unit = structure(logical(0), shape = "StandardUnit", 
            type = "string"), StorageResolution = structure(logical(0), 
            shape = "StorageResolution", type = "integer", min = 1L)), 
        shape = "MetricDatum", type = "structure")), shape = "MetricData", 
        type = "list")), shape = "PutMetricDataInput", type = "structure")
    return(populate(args, shape))
}

put_metric_data_output <- function () 
{
    return(list())
}

set_alarm_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AlarmName = structure(logical(0), 
        shape = "AlarmName", type = "string", max = 255L, min = 1L), 
        StateValue = structure(logical(0), shape = "StateValue", 
            type = "string"), StateReason = structure(logical(0), 
            shape = "StateReason", type = "string", max = 1023L, 
            min = 0L), StateReasonData = structure(logical(0), 
            shape = "StateReasonData", type = "string", max = 4000L, 
            min = 0L)), shape = "SetAlarmStateInput", type = "structure")
    return(populate(args, shape))
}

set_alarm_state_output <- function () 
{
    return(list())
}
