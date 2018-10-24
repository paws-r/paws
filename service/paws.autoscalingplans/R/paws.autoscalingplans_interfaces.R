create_scaling_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlanName = structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+"), ApplicationSource = structure(list(CloudFormationStackARN = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "XmlStringMaxLen128", type = "string", max = 128L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Values = structure(list(structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "TagValues", type = "list")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilters", type = "list")), 
        shape = "ApplicationSource", type = "structure"), ScalingInstructions = structure(list(structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), TargetTrackingConfigurations = structure(list(structure(list(PredefinedScalingMetricSpecification = structure(list(PredefinedScalingMetricType = structure(logical(0), 
            shape = "ScalingMetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "ResourceLabel", type = "string", max = 1023L, 
            min = 1L)), shape = "PredefinedScalingMetricSpecification", 
            type = "structure"), CustomizedScalingMetricSpecification = structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string"), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MetricDimensionName", type = "string"), 
            Value = structure(logical(0), shape = "MetricDimensionValue", 
                type = "string")), shape = "MetricDimension", 
            type = "structure")), shape = "MetricDimensions", 
            type = "list"), Statistic = structure(logical(0), 
            shape = "MetricStatistic", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "CustomizedScalingMetricSpecification", 
            type = "structure"), TargetValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), DisableScaleIn = structure(logical(0), 
            shape = "DisableScaleIn", type = "boolean"), ScaleOutCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), ScaleInCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), EstimatedInstanceWarmup = structure(logical(0), 
            shape = "Cooldown", type = "integer")), shape = "TargetTrackingConfiguration", 
            type = "structure")), shape = "TargetTrackingConfigurations", 
            type = "list")), shape = "ScalingInstruction", type = "structure")), 
        shape = "ScalingInstructions", type = "list")), shape = "CreateScalingPlanRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_scaling_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long")), shape = "CreateScalingPlanResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_scaling_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlanName = structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+"), ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long")), shape = "DeleteScalingPlanRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_scaling_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteScalingPlanResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_plan_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlanName = structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+"), ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeScalingPlanResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_plan_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlanResources = structure(list(structure(list(ScalingPlanName = structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+"), ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long"), ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), ScalingPolicies = structure(list(structure(list(PolicyName = structure(logical(0), 
            shape = "PolicyName", type = "string", max = 256L, 
            min = 1L, pattern = "\\p{Print}+"), PolicyType = structure(logical(0), 
            shape = "PolicyType", type = "string"), TargetTrackingConfiguration = structure(list(PredefinedScalingMetricSpecification = structure(list(PredefinedScalingMetricType = structure(logical(0), 
            shape = "ScalingMetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "ResourceLabel", type = "string", max = 1023L, 
            min = 1L)), shape = "PredefinedScalingMetricSpecification", 
            type = "structure"), CustomizedScalingMetricSpecification = structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string"), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MetricDimensionName", type = "string"), 
            Value = structure(logical(0), shape = "MetricDimensionValue", 
                type = "string")), shape = "MetricDimension", 
            type = "structure")), shape = "MetricDimensions", 
            type = "list"), Statistic = structure(logical(0), 
            shape = "MetricStatistic", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "CustomizedScalingMetricSpecification", 
            type = "structure"), TargetValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), DisableScaleIn = structure(logical(0), 
            shape = "DisableScaleIn", type = "boolean"), ScaleOutCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), ScaleInCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), EstimatedInstanceWarmup = structure(logical(0), 
            shape = "Cooldown", type = "integer")), shape = "TargetTrackingConfiguration", 
            type = "structure")), shape = "ScalingPolicy", type = "structure")), 
            shape = "ScalingPolicies", type = "list"), ScalingStatusCode = structure(logical(0), 
            shape = "ScalingStatusCode", type = "string"), ScalingStatusMessage = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ScalingPlanResource", type = "structure")), 
        shape = "ScalingPlanResources", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeScalingPlanResourcesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_plans_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlanNames = structure(list(structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+")), shape = "ScalingPlanNames", 
        type = "list"), ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long"), ApplicationSources = structure(list(structure(list(CloudFormationStackARN = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "XmlStringMaxLen128", type = "string", max = 128L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Values = structure(list(structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "TagValues", type = "list")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilters", type = "list")), 
        shape = "ApplicationSource", type = "structure")), shape = "ApplicationSources", 
        type = "list"), MaxResults = structure(logical(0), shape = "MaxResults", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeScalingPlansRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_scaling_plans_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPlans = structure(list(structure(list(ScalingPlanName = structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+"), ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long"), ApplicationSource = structure(list(CloudFormationStackARN = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "XmlStringMaxLen128", type = "string", max = 128L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Values = structure(list(structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "TagValues", type = "list")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilters", type = "list")), 
        shape = "ApplicationSource", type = "structure"), ScalingInstructions = structure(list(structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), TargetTrackingConfigurations = structure(list(structure(list(PredefinedScalingMetricSpecification = structure(list(PredefinedScalingMetricType = structure(logical(0), 
            shape = "ScalingMetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "ResourceLabel", type = "string", max = 1023L, 
            min = 1L)), shape = "PredefinedScalingMetricSpecification", 
            type = "structure"), CustomizedScalingMetricSpecification = structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string"), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MetricDimensionName", type = "string"), 
            Value = structure(logical(0), shape = "MetricDimensionValue", 
                type = "string")), shape = "MetricDimension", 
            type = "structure")), shape = "MetricDimensions", 
            type = "list"), Statistic = structure(logical(0), 
            shape = "MetricStatistic", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "CustomizedScalingMetricSpecification", 
            type = "structure"), TargetValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), DisableScaleIn = structure(logical(0), 
            shape = "DisableScaleIn", type = "boolean"), ScaleOutCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), ScaleInCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), EstimatedInstanceWarmup = structure(logical(0), 
            shape = "Cooldown", type = "integer")), shape = "TargetTrackingConfiguration", 
            type = "structure")), shape = "TargetTrackingConfigurations", 
            type = "list")), shape = "ScalingInstruction", type = "structure")), 
        shape = "ScalingInstructions", type = "list"), StatusCode = structure(logical(0), 
        shape = "ScalingPlanStatusCode", type = "string"), StatusMessage = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StatusStartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), CreationTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp")), shape = "ScalingPlan", 
        type = "structure")), shape = "ScalingPlans", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeScalingPlansResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_scaling_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationSource = structure(list(CloudFormationStackARN = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "XmlStringMaxLen128", type = "string", max = 128L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Values = structure(list(structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "TagValues", type = "list")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilters", type = "list")), 
        shape = "ApplicationSource", type = "structure"), ScalingPlanName = structure(logical(0), 
        shape = "ScalingPlanName", type = "string", max = 128L, 
        min = 1L, pattern = "[\\p{Print}&&[^|:/]]+"), ScalingInstructions = structure(list(structure(list(ServiceNamespace = structure(logical(0), 
        shape = "ServiceNamespace", type = "string"), ResourceId = structure(logical(0), 
        shape = "ResourceIdMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalableDimension = structure(logical(0), shape = "ScalableDimension", 
            type = "string"), MinCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "ResourceCapacity", type = "integer"), TargetTrackingConfigurations = structure(list(structure(list(PredefinedScalingMetricSpecification = structure(list(PredefinedScalingMetricType = structure(logical(0), 
            shape = "ScalingMetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "ResourceLabel", type = "string", max = 1023L, 
            min = 1L)), shape = "PredefinedScalingMetricSpecification", 
            type = "structure"), CustomizedScalingMetricSpecification = structure(list(MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
            shape = "MetricNamespace", type = "string"), Dimensions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MetricDimensionName", type = "string"), 
            Value = structure(logical(0), shape = "MetricDimensionValue", 
                type = "string")), shape = "MetricDimension", 
            type = "structure")), shape = "MetricDimensions", 
            type = "list"), Statistic = structure(logical(0), 
            shape = "MetricStatistic", type = "string"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string")), shape = "CustomizedScalingMetricSpecification", 
            type = "structure"), TargetValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), DisableScaleIn = structure(logical(0), 
            shape = "DisableScaleIn", type = "boolean"), ScaleOutCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), ScaleInCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), EstimatedInstanceWarmup = structure(logical(0), 
            shape = "Cooldown", type = "integer")), shape = "TargetTrackingConfiguration", 
            type = "structure")), shape = "TargetTrackingConfigurations", 
            type = "list")), shape = "ScalingInstruction", type = "structure")), 
        shape = "ScalingInstructions", type = "list"), ScalingPlanVersion = structure(logical(0), 
        shape = "ScalingPlanVersion", type = "long")), shape = "UpdateScalingPlanRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_scaling_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateScalingPlanResponse", 
        type = "structure")
    return(populate(args, shape))
}
