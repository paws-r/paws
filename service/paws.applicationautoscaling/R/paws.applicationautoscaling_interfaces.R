delete_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ServiceNamespace = structure(logical(0), shape = "ServiceNamespace", 
            type = "string"), ResourceId = structure(logical(0), 
            shape = "ResourceIdMaxLen1600", type = "string", 
            max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string")), shape = "DeleteScalingPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_scaling_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteScalingPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_scheduled_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ScheduledActionName = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ResourceId = structure(logical(0), shape = "ResourceIdMaxLen1600", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string")), shape = "DeleteScheduledActionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_scheduled_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteScheduledActionResponse", 
        type = "structure")
    return(populate(args, shape))
}

deregister_scalable_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string")), shape = "DeregisterScalableTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_scalable_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterScalableTargetResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_scalable_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceIds = structure(list(structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ResourceIdsMaxLen1600", type = "list"), ScalableDimension = structure(logical(0), 
        shape = "ScalableDimension", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalableTargetsRequest", type = "structure")
    return(populate(args, shape))
}

describe_scalable_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalableTargets = structure(list(structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), RoleARN = structure(logical(0), 
            shape = "ResourceIdMaxLen1600", type = "string", 
            max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        CreationTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp")), shape = "ScalableTarget", type = "structure")), 
        shape = "ScalableTargets", type = "list"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalableTargetsResponse", type = "structure")
    return(populate(args, shape))
}

describe_scaling_activities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalingActivitiesRequest", type = "structure")
    return(populate(args, shape))
}

describe_scaling_activities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingActivities = structure(list(structure(list(ActivityId = structure(logical(0), 
        shape = "ResourceId", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ServiceNamespace = structure(logical(0), shape = "ServiceNamespace", 
            type = "string"), ResourceId = structure(logical(0), 
            shape = "ResourceIdMaxLen1600", type = "string", 
            max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), Description = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Cause = structure(logical(0), shape = "XmlString", type = "string", 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "ScalingActivityStatusCode", type = "string"), 
        StatusMessage = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Details = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ScalingActivity", type = "structure")), shape = "ScalingActivities", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalingActivitiesResponse", type = "structure")
    return(populate(args, shape))
}

describe_scaling_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyNames = structure(list(structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ResourceIdsMaxLen1600", type = "list"), ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalingPoliciesRequest", type = "structure")
    return(populate(args, shape))
}

describe_scaling_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPolicies = structure(list(structure(list(PolicyARN = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyName = structure(logical(0), shape = "PolicyName", 
            type = "string", max = 256L, min = 1L, pattern = "\\p{Print}+"), 
        ServiceNamespace = structure(logical(0), shape = "ServiceNamespace", 
            type = "string"), ResourceId = structure(logical(0), 
            shape = "ResourceIdMaxLen1600", type = "string", 
            max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), PolicyType = structure(logical(0), 
            shape = "PolicyType", type = "string"), StepScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
            shape = "AdjustmentType", type = "string"), StepAdjustments = structure(list(structure(list(MetricIntervalLowerBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), MetricIntervalUpperBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), ScalingAdjustment = structure(logical(0), 
            shape = "ScalingAdjustment", type = "integer")), 
            shape = "StepAdjustment", type = "structure")), shape = "StepAdjustments", 
            type = "list"), MinAdjustmentMagnitude = structure(logical(0), 
            shape = "MinAdjustmentMagnitude", type = "integer"), 
            Cooldown = structure(logical(0), shape = "Cooldown", 
                type = "integer"), MetricAggregationType = structure(logical(0), 
                shape = "MetricAggregationType", type = "string")), 
            shape = "StepScalingPolicyConfiguration", type = "structure"), 
        TargetTrackingScalingPolicyConfiguration = structure(list(TargetValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), PredefinedMetricSpecification = structure(list(PredefinedMetricType = structure(logical(0), 
            shape = "MetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "ResourceLabel", type = "string", max = 1023L, 
            min = 1L)), shape = "PredefinedMetricSpecification", 
            type = "structure"), CustomizedMetricSpecification = structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string"), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MetricDimensionName", type = "string"), 
            Value = structure(logical(0), shape = "MetricDimensionValue", 
                type = "string")), shape = "MetricDimension", 
            type = "structure")), shape = "MetricDimensions", 
            type = "list"), Statistic = structure(logical(0), 
            shape = "MetricStatistic", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "CustomizedMetricSpecification", 
            type = "structure"), ScaleOutCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), ScaleInCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), DisableScaleIn = structure(logical(0), 
            shape = "DisableScaleIn", type = "boolean")), shape = "TargetTrackingScalingPolicyConfiguration", 
            type = "structure"), Alarms = structure(list(structure(list(AlarmName = structure(logical(0), 
            shape = "ResourceId", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            AlarmARN = structure(logical(0), shape = "ResourceId", 
                type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Alarm", type = "structure")), shape = "Alarms", 
            type = "list"), CreationTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp")), shape = "ScalingPolicy", 
        type = "structure")), shape = "ScalingPolicies", type = "list"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalingPoliciesResponse", type = "structure")
    return(populate(args, shape))
}

describe_scheduled_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledActionNames = structure(list(structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ResourceIdsMaxLen1600", type = "list"), ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScheduledActionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_scheduled_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledActions = structure(list(structure(list(ScheduledActionName = structure(logical(0), 
        shape = "ScheduledActionName", type = "string", max = 256L, 
        min = 1L, pattern = "(?!((^[ ]+.*)|(.*([\\u0000-\\u001f]|[\\u007f-\\u009f]|[:/|])+.*)|(.*[ ]+$))).+"), 
        ScheduledActionARN = structure(logical(0), shape = "ResourceIdMaxLen1600", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ServiceNamespace = structure(logical(0), shape = "ServiceNamespace", 
            type = "string"), Schedule = structure(logical(0), 
            shape = "ResourceIdMaxLen1600", type = "string", 
            max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ResourceId = structure(logical(0), shape = "ResourceIdMaxLen1600", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), StartTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ScalableTargetAction = structure(list(MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer")), shape = "ScalableTargetAction", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp")), shape = "ScheduledAction", 
        type = "structure")), shape = "ScheduledActions", type = "list"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScheduledActionsResponse", type = "structure")
    return(populate(args, shape))
}

put_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 256L, min = 1L, 
        pattern = "\\p{Print}+"), ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), PolicyType = structure(logical(0), 
            shape = "PolicyType", type = "string"), StepScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
            shape = "AdjustmentType", type = "string"), StepAdjustments = structure(list(structure(list(MetricIntervalLowerBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), MetricIntervalUpperBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), ScalingAdjustment = structure(logical(0), 
            shape = "ScalingAdjustment", type = "integer")), 
            shape = "StepAdjustment", type = "structure")), shape = "StepAdjustments", 
            type = "list"), MinAdjustmentMagnitude = structure(logical(0), 
            shape = "MinAdjustmentMagnitude", type = "integer"), 
            Cooldown = structure(logical(0), shape = "Cooldown", 
                type = "integer"), MetricAggregationType = structure(logical(0), 
                shape = "MetricAggregationType", type = "string")), 
            shape = "StepScalingPolicyConfiguration", type = "structure"), 
        TargetTrackingScalingPolicyConfiguration = structure(list(TargetValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), PredefinedMetricSpecification = structure(list(PredefinedMetricType = structure(logical(0), 
            shape = "MetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "ResourceLabel", type = "string", max = 1023L, 
            min = 1L)), shape = "PredefinedMetricSpecification", 
            type = "structure"), CustomizedMetricSpecification = structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string"), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MetricDimensionName", type = "string"), 
            Value = structure(logical(0), shape = "MetricDimensionValue", 
                type = "string")), shape = "MetricDimension", 
            type = "structure")), shape = "MetricDimensions", 
            type = "list"), Statistic = structure(logical(0), 
            shape = "MetricStatistic", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "CustomizedMetricSpecification", 
            type = "structure"), ScaleOutCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), ScaleInCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), DisableScaleIn = structure(logical(0), 
            shape = "DisableScaleIn", type = "boolean")), shape = "TargetTrackingScalingPolicyConfiguration", 
            type = "structure")), shape = "PutScalingPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_scaling_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyARN = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Alarms = structure(list(structure(list(AlarmName = structure(logical(0), 
            shape = "ResourceId", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            AlarmARN = structure(logical(0), shape = "ResourceId", 
                type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Alarm", type = "structure")), shape = "Alarms", 
            type = "list")), shape = "PutScalingPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_scheduled_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), Schedule = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionName = structure(logical(0), shape = "ScheduledActionName", 
            type = "string", max = 256L, min = 1L, pattern = "(?!((^[ ]+.*)|(.*([\\u0000-\\u001f]|[\\u007f-\\u009f]|[:/|])+.*)|(.*[ ]+$))).+"), 
        ResourceId = structure(logical(0), shape = "ResourceIdMaxLen1600", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), StartTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ScalableTargetAction = structure(list(MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer")), shape = "ScalableTargetAction", 
            type = "structure")), shape = "PutScheduledActionRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_scheduled_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutScheduledActionResponse", 
        type = "structure")
    return(populate(args, shape))
}

register_scalable_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), RoleARN = structure(logical(0), 
            shape = "ResourceIdMaxLen1600", type = "string", 
            max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "RegisterScalableTargetRequest", type = "structure")
    return(populate(args, shape))
}

register_scalable_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RegisterScalableTargetResponse", 
        type = "structure")
    return(populate(args, shape))
}
