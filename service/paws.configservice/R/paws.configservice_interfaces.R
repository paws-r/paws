batch_get_resource_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceKeys = structure(list(structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", max = 768L, min = 1L, locationName = "resourceId")), 
        shape = "ResourceKey", type = "structure")), shape = "ResourceKeys", 
        type = "list", max = 100L, min = 1L, locationName = "resourceKeys")), 
        shape = "BatchGetResourceConfigRequest", type = "structure")
    return(populate(args, shape))
}

batch_get_resource_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BaseConfigurationItems = structure(list(structure(list(Version = structure(logical(0), 
        shape = "Version", type = "string", locationName = "version"), 
        AccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "\\d{12}", locationName = "accountId"), 
        ConfigurationItemCaptureTime = structure(logical(0), 
            shape = "ConfigurationItemCaptureTime", type = "timestamp", 
            locationName = "configurationItemCaptureTime"), ConfigurationItemStatus = structure(logical(0), 
            shape = "ConfigurationItemStatus", type = "string", 
            locationName = "configurationItemStatus"), ConfigurationStateId = structure(logical(0), 
            shape = "ConfigurationStateId", type = "string", 
            locationName = "configurationStateId"), Arn = structure(logical(0), 
            shape = "ARN", type = "string", locationName = "arn"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", max = 768L, min = 1L, locationName = "resourceId"), 
        ResourceName = structure(logical(0), shape = "ResourceName", 
            type = "string", locationName = "resourceName"), 
        AwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L, locationName = "awsRegion"), 
        AvailabilityZone = structure(logical(0), shape = "AvailabilityZone", 
            type = "string", locationName = "availabilityZone"), 
        ResourceCreationTime = structure(logical(0), shape = "ResourceCreationTime", 
            type = "timestamp", locationName = "resourceCreationTime"), 
        Configuration = structure(logical(0), shape = "Configuration", 
            type = "string", locationName = "configuration"), 
        SupplementaryConfiguration = structure(list(structure(logical(0), 
            shape = "SupplementaryConfigurationValue", type = "string")), 
            shape = "SupplementaryConfiguration", type = "map", 
            locationName = "supplementaryConfiguration")), shape = "BaseConfigurationItem", 
        type = "structure")), shape = "BaseConfigurationItems", 
        type = "list", locationName = "baseConfigurationItems"), 
        UnprocessedResourceKeys = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "resourceType"), 
            ResourceId = structure(logical(0), shape = "ResourceId", 
                type = "string", max = 768L, min = 1L, locationName = "resourceId")), 
            shape = "ResourceKey", type = "structure")), shape = "ResourceKeys", 
            type = "list", max = 100L, min = 1L, locationName = "unprocessedResourceKeys")), 
        shape = "BatchGetResourceConfigResponse", type = "structure")
    return(populate(args, shape))
}

delete_aggregation_authorization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizedAccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        AuthorizedAwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L)), shape = "DeleteAggregationAuthorizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_aggregation_authorization_output <- function () 
{
    return(list())
}

delete_config_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L)), shape = "DeleteConfigRuleRequest", type = "structure")
    return(populate(args, shape))
}

delete_config_rule_output <- function () 
{
    return(list())
}

delete_configuration_aggregator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+")), shape = "DeleteConfigurationAggregatorRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_aggregator_output <- function () 
{
    return(list())
}

delete_configuration_recorder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorderName = structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L)), shape = "DeleteConfigurationRecorderRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_recorder_output <- function () 
{
    return(list())
}

delete_delivery_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 256L, min = 1L)), 
        shape = "DeleteDeliveryChannelRequest", type = "structure")
    return(populate(args, shape))
}

delete_delivery_channel_output <- function () 
{
    return(list())
}

delete_evaluation_results_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L)), shape = "DeleteEvaluationResultsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_evaluation_results_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteEvaluationResultsResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_pending_aggregation_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RequesterAccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        RequesterAwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L)), shape = "DeletePendingAggregationRequestRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_pending_aggregation_request_output <- function () 
{
    return(list())
}

delete_retention_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RetentionConfigurationName = structure(logical(0), 
        shape = "RetentionConfigurationName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+")), shape = "DeleteRetentionConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_retention_configuration_output <- function () 
{
    return(list())
}

deliver_config_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 256L, min = 1L, 
        locationName = "deliveryChannelName")), shape = "DeliverConfigSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

deliver_config_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigSnapshotId = structure(logical(0), 
        shape = "String", type = "string", locationName = "configSnapshotId")), 
        shape = "DeliverConfigSnapshotResponse", type = "structure")
    return(populate(args, shape))
}

describe_aggregate_compliance_by_config_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), Filters = structure(list(ConfigRuleName = structure(logical(0), 
        shape = "ConfigRuleName", type = "string", max = 64L, 
        min = 1L), ComplianceType = structure(logical(0), shape = "ComplianceType", 
        type = "string"), AccountId = structure(logical(0), shape = "AccountId", 
        type = "string", pattern = "\\d{12}"), AwsRegion = structure(logical(0), 
        shape = "AwsRegion", type = "string", max = 64L, min = 1L)), 
        shape = "ConfigRuleComplianceFilters", type = "structure"), 
        Limit = structure(logical(0), shape = "GroupByAPILimit", 
            type = "integer", max = 1000L, min = 0L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "DescribeAggregateComplianceByConfigRulesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_aggregate_compliance_by_config_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AggregateComplianceByConfigRules = structure(list(structure(list(ConfigRuleName = structure(logical(0), 
        shape = "ConfigRuleName", type = "string", max = 64L, 
        min = 1L), Compliance = structure(list(ComplianceType = structure(logical(0), 
        shape = "ComplianceType", type = "string"), ComplianceContributorCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure")), shape = "Compliance", type = "structure"), 
        AccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "\\d{12}"), AwsRegion = structure(logical(0), 
            shape = "AwsRegion", type = "string", max = 64L, 
            min = 1L)), shape = "AggregateComplianceByConfigRule", 
        type = "structure")), shape = "AggregateComplianceByConfigRuleList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeAggregateComplianceByConfigRulesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_aggregation_authorizations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "Limit", 
        type = "integer", max = 100L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeAggregationAuthorizationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_aggregation_authorizations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AggregationAuthorizations = structure(list(structure(list(AggregationAuthorizationArn = structure(logical(0), 
        shape = "String", type = "string"), AuthorizedAccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        AuthorizedAwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L), CreationTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "AggregationAuthorization", 
        type = "structure")), shape = "AggregationAuthorizationList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeAggregationAuthorizationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_compliance_by_config_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleNames = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L)), shape = "ConfigRuleNames", type = "list", 
        max = 25L, min = 0L), ComplianceTypes = structure(list(structure(logical(0), 
        shape = "ComplianceType", type = "string")), shape = "ComplianceTypes", 
        type = "list", max = 3L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeComplianceByConfigRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_compliance_by_config_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComplianceByConfigRules = structure(list(structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), Compliance = structure(list(ComplianceType = structure(logical(0), 
        shape = "ComplianceType", type = "string"), ComplianceContributorCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure")), shape = "Compliance", type = "structure")), 
        shape = "ComplianceByConfigRule", type = "structure")), 
        shape = "ComplianceByConfigRules", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeComplianceByConfigRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_compliance_by_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ResourceId = structure(logical(0), shape = "BaseResourceId", 
        type = "string", max = 768L, min = 1L), ComplianceTypes = structure(list(structure(logical(0), 
        shape = "ComplianceType", type = "string")), shape = "ComplianceTypes", 
        type = "list", max = 3L, min = 0L), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 100L, min = 0L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeComplianceByResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_compliance_by_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComplianceByResources = structure(list(structure(list(ResourceType = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ResourceId = structure(logical(0), shape = "BaseResourceId", 
        type = "string", max = 768L, min = 1L), Compliance = structure(list(ComplianceType = structure(logical(0), 
        shape = "ComplianceType", type = "string"), ComplianceContributorCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure")), shape = "Compliance", type = "structure")), 
        shape = "ComplianceByResource", type = "structure")), 
        shape = "ComplianceByResources", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeComplianceByResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_config_rule_evaluation_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleNames = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L)), shape = "ConfigRuleNames", type = "list", 
        max = 25L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string"), Limit = structure(logical(0), 
        shape = "RuleLimit", type = "integer", max = 50L, min = 0L)), 
        shape = "DescribeConfigRuleEvaluationStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_config_rule_evaluation_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRulesEvaluationStatus = structure(list(structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ConfigRuleArn = structure(logical(0), shape = "String", 
        type = "string"), ConfigRuleId = structure(logical(0), 
        shape = "String", type = "string"), LastSuccessfulInvocationTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastFailedInvocationTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastSuccessfulEvaluationTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastFailedEvaluationTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), FirstActivatedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastErrorCode = structure(logical(0), 
        shape = "String", type = "string"), LastErrorMessage = structure(logical(0), 
        shape = "String", type = "string"), FirstEvaluationStarted = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ConfigRuleEvaluationStatus", 
        type = "structure")), shape = "ConfigRuleEvaluationStatusList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeConfigRuleEvaluationStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_config_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleNames = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L)), shape = "ConfigRuleNames", type = "list", 
        max = 25L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeConfigRulesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_config_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRules = structure(list(structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ConfigRuleArn = structure(logical(0), shape = "String", 
        type = "string"), ConfigRuleId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "EmptiableStringWithCharLimit256", type = "string", 
        max = 256L, min = 0L), Scope = structure(list(ComplianceResourceTypes = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L)), shape = "ComplianceResourceTypes", type = "list", 
        max = 100L, min = 0L), TagKey = structure(logical(0), 
        shape = "StringWithCharLimit128", type = "string", max = 128L, 
        min = 1L), TagValue = structure(logical(0), shape = "StringWithCharLimit256", 
        type = "string", max = 256L, min = 1L), ComplianceResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L)), shape = "Scope", type = "structure"), Source = structure(list(Owner = structure(logical(0), 
        shape = "Owner", type = "string"), SourceIdentifier = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), SourceDetails = structure(list(structure(list(EventSource = structure(logical(0), 
        shape = "EventSource", type = "string"), MessageType = structure(logical(0), 
        shape = "MessageType", type = "string"), MaximumExecutionFrequency = structure(logical(0), 
        shape = "MaximumExecutionFrequency", type = "string")), 
        shape = "SourceDetail", type = "structure")), shape = "SourceDetails", 
        type = "list", max = 25L, min = 0L)), shape = "Source", 
        type = "structure"), InputParameters = structure(logical(0), 
        shape = "StringWithCharLimit1024", type = "string", max = 1024L, 
        min = 1L), MaximumExecutionFrequency = structure(logical(0), 
        shape = "MaximumExecutionFrequency", type = "string"), 
        ConfigRuleState = structure(logical(0), shape = "ConfigRuleState", 
            type = "string"), CreatedBy = structure(logical(0), 
            shape = "StringWithCharLimit256", type = "string", 
            max = 256L, min = 1L)), shape = "ConfigRule", type = "structure")), 
        shape = "ConfigRules", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeConfigRulesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_aggregator_sources_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), UpdateStatus = structure(list(structure(logical(0), 
        shape = "AggregatedSourceStatusType", type = "string")), 
        shape = "AggregatedSourceStatusTypeList", type = "list", 
        min = 1L), NextToken = structure(logical(0), shape = "String", 
        type = "string"), Limit = structure(logical(0), shape = "Limit", 
        type = "integer", max = 100L, min = 0L)), shape = "DescribeConfigurationAggregatorSourcesStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_aggregator_sources_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AggregatedSourceStatusList = structure(list(structure(list(SourceId = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "AggregatedSourceType", type = "string"), AwsRegion = structure(logical(0), 
        shape = "AwsRegion", type = "string", max = 64L, min = 1L), 
        LastUpdateStatus = structure(logical(0), shape = "AggregatedSourceStatusType", 
            type = "string"), LastUpdateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), LastErrorCode = structure(logical(0), 
            shape = "String", type = "string"), LastErrorMessage = structure(logical(0), 
            shape = "String", type = "string")), shape = "AggregatedSourceStatus", 
        type = "structure")), shape = "AggregatedSourceStatusList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeConfigurationAggregatorSourcesStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_aggregators_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorNames = structure(list(structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+")), shape = "ConfigurationAggregatorNameList", 
        type = "list", max = 10L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string"), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 100L, min = 0L)), 
        shape = "DescribeConfigurationAggregatorsRequest", type = "structure")
    return(populate(args, shape))
}

describe_configuration_aggregators_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregators = structure(list(structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), ConfigurationAggregatorArn = structure(logical(0), 
        shape = "ConfigurationAggregatorArn", type = "string", 
        pattern = "arn:aws[a-z\\-]*:config:[a-z\\-\\d]+:\\d+:config-aggregator/config-aggregator-[a-z\\d]+"), 
        AccountAggregationSources = structure(list(structure(list(AccountIds = structure(list(structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "\\d{12}")), 
            shape = "AccountAggregationSourceAccountList", type = "list", 
            min = 1L), AllAwsRegions = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AwsRegions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AggregatorRegionList", 
            type = "list", min = 1L)), shape = "AccountAggregationSource", 
            type = "structure")), shape = "AccountAggregationSourceList", 
            type = "list", max = 1L, min = 0L), OrganizationAggregationSource = structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), AwsRegions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AggregatorRegionList", 
            type = "list", min = 1L), AllAwsRegions = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "OrganizationAggregationSource", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "ConfigurationAggregator", 
        type = "structure")), shape = "ConfigurationAggregatorList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeConfigurationAggregatorsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_recorder_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorderNames = structure(list(structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L)), shape = "ConfigurationRecorderNameList", 
        type = "list")), shape = "DescribeConfigurationRecorderStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_recorder_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecordersStatus = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        LastStartTime = structure(logical(0), shape = "Date", 
            type = "timestamp", locationName = "lastStartTime"), 
        LastStopTime = structure(logical(0), shape = "Date", 
            type = "timestamp", locationName = "lastStopTime"), 
        Recording = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "recording"), LastStatus = structure(logical(0), 
            shape = "RecorderStatus", type = "string", locationName = "lastStatus"), 
        LastErrorCode = structure(logical(0), shape = "String", 
            type = "string", locationName = "lastErrorCode"), 
        LastErrorMessage = structure(logical(0), shape = "String", 
            type = "string", locationName = "lastErrorMessage"), 
        LastStatusChangeTime = structure(logical(0), shape = "Date", 
            type = "timestamp", locationName = "lastStatusChangeTime")), 
        shape = "ConfigurationRecorderStatus", type = "structure")), 
        shape = "ConfigurationRecorderStatusList", type = "list")), 
        shape = "DescribeConfigurationRecorderStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_recorders_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorderNames = structure(list(structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L)), shape = "ConfigurationRecorderNameList", 
        type = "list")), shape = "DescribeConfigurationRecordersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_configuration_recorders_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorders = structure(list(structure(list(Name = structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L, locationName = "name"), RoleARN = structure(logical(0), 
        shape = "String", type = "string", locationName = "roleARN"), 
        RecordingGroup = structure(list(AllSupported = structure(logical(0), 
            shape = "AllSupported", type = "boolean", locationName = "allSupported"), 
            IncludeGlobalResourceTypes = structure(logical(0), 
                shape = "IncludeGlobalResourceTypes", type = "boolean", 
                locationName = "includeGlobalResourceTypes"), 
            ResourceTypes = structure(list(structure(logical(0), 
                shape = "ResourceType", type = "string")), shape = "ResourceTypeList", 
                type = "list", locationName = "resourceTypes")), 
            shape = "RecordingGroup", type = "structure", locationName = "recordingGroup")), 
        shape = "ConfigurationRecorder", type = "structure")), 
        shape = "ConfigurationRecorderList", type = "list")), 
        shape = "DescribeConfigurationRecordersResponse", type = "structure")
    return(populate(args, shape))
}

describe_delivery_channel_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannelNames = structure(list(structure(logical(0), 
        shape = "ChannelName", type = "string", max = 256L, min = 1L)), 
        shape = "DeliveryChannelNameList", type = "list")), shape = "DescribeDeliveryChannelStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_delivery_channel_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannelsStatus = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string", locationName = "name"), 
        ConfigSnapshotDeliveryInfo = structure(list(LastStatus = structure(logical(0), 
            shape = "DeliveryStatus", type = "string", locationName = "lastStatus"), 
            LastErrorCode = structure(logical(0), shape = "String", 
                type = "string", locationName = "lastErrorCode"), 
            LastErrorMessage = structure(logical(0), shape = "String", 
                type = "string", locationName = "lastErrorMessage"), 
            LastAttemptTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "lastAttemptTime"), 
            LastSuccessfulTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "lastSuccessfulTime"), 
            NextDeliveryTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "nextDeliveryTime")), 
            shape = "ConfigExportDeliveryInfo", type = "structure", 
            locationName = "configSnapshotDeliveryInfo"), ConfigHistoryDeliveryInfo = structure(list(LastStatus = structure(logical(0), 
            shape = "DeliveryStatus", type = "string", locationName = "lastStatus"), 
            LastErrorCode = structure(logical(0), shape = "String", 
                type = "string", locationName = "lastErrorCode"), 
            LastErrorMessage = structure(logical(0), shape = "String", 
                type = "string", locationName = "lastErrorMessage"), 
            LastAttemptTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "lastAttemptTime"), 
            LastSuccessfulTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "lastSuccessfulTime"), 
            NextDeliveryTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "nextDeliveryTime")), 
            shape = "ConfigExportDeliveryInfo", type = "structure", 
            locationName = "configHistoryDeliveryInfo"), ConfigStreamDeliveryInfo = structure(list(LastStatus = structure(logical(0), 
            shape = "DeliveryStatus", type = "string", locationName = "lastStatus"), 
            LastErrorCode = structure(logical(0), shape = "String", 
                type = "string", locationName = "lastErrorCode"), 
            LastErrorMessage = structure(logical(0), shape = "String", 
                type = "string", locationName = "lastErrorMessage"), 
            LastStatusChangeTime = structure(logical(0), shape = "Date", 
                type = "timestamp", locationName = "lastStatusChangeTime")), 
            shape = "ConfigStreamDeliveryInfo", type = "structure", 
            locationName = "configStreamDeliveryInfo")), shape = "DeliveryChannelStatus", 
        type = "structure")), shape = "DeliveryChannelStatusList", 
        type = "list")), shape = "DescribeDeliveryChannelStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_delivery_channels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannelNames = structure(list(structure(logical(0), 
        shape = "ChannelName", type = "string", max = 256L, min = 1L)), 
        shape = "DeliveryChannelNameList", type = "list")), shape = "DescribeDeliveryChannelsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_delivery_channels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannels = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 256L, min = 1L, 
        locationName = "name"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string", locationName = "s3BucketName"), 
        S3KeyPrefix = structure(logical(0), shape = "String", 
            type = "string", locationName = "s3KeyPrefix"), SnsTopicARN = structure(logical(0), 
            shape = "String", type = "string", locationName = "snsTopicARN"), 
        ConfigSnapshotDeliveryProperties = structure(list(DeliveryFrequency = structure(logical(0), 
            shape = "MaximumExecutionFrequency", type = "string", 
            locationName = "deliveryFrequency")), shape = "ConfigSnapshotDeliveryProperties", 
            type = "structure", locationName = "configSnapshotDeliveryProperties")), 
        shape = "DeliveryChannel", type = "structure")), shape = "DeliveryChannelList", 
        type = "list")), shape = "DescribeDeliveryChannelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_pending_aggregation_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "DescribePendingAggregationRequestsLimit", 
        type = "integer", max = 20L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribePendingAggregationRequestsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_pending_aggregation_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PendingAggregationRequests = structure(list(structure(list(RequesterAccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        RequesterAwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L)), shape = "PendingAggregationRequest", 
        type = "structure")), shape = "PendingAggregationRequestList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribePendingAggregationRequestsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_retention_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RetentionConfigurationNames = structure(list(structure(logical(0), 
        shape = "RetentionConfigurationName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+")), shape = "RetentionConfigurationNameList", 
        type = "list", max = 1L, min = 0L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeRetentionConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_retention_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RetentionConfigurations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "RetentionConfigurationName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), RetentionPeriodInDays = structure(logical(0), 
        shape = "RetentionPeriodInDays", type = "integer", max = 2557L, 
        min = 30L)), shape = "RetentionConfiguration", type = "structure")), 
        shape = "RetentionConfigurationList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeRetentionConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_aggregate_compliance_details_by_config_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), ConfigRuleName = structure(logical(0), 
        shape = "ConfigRuleName", type = "string", max = 64L, 
        min = 1L), AccountId = structure(logical(0), shape = "AccountId", 
        type = "string", pattern = "\\d{12}"), AwsRegion = structure(logical(0), 
        shape = "AwsRegion", type = "string", max = 64L, min = 1L), 
        ComplianceType = structure(logical(0), shape = "ComplianceType", 
            type = "string"), Limit = structure(logical(0), shape = "Limit", 
            type = "integer", max = 100L, min = 0L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "GetAggregateComplianceDetailsByConfigRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_aggregate_compliance_details_by_config_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AggregateEvaluationResults = structure(list(structure(list(EvaluationResultIdentifier = structure(list(EvaluationResultQualifier = structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ResourceType = structure(logical(0), shape = "StringWithCharLimit256", 
        type = "string", max = 256L, min = 1L), ResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L)), shape = "EvaluationResultQualifier", type = "structure"), 
        OrderingTimestamp = structure(logical(0), shape = "Date", 
            type = "timestamp")), shape = "EvaluationResultIdentifier", 
        type = "structure"), ComplianceType = structure(logical(0), 
        shape = "ComplianceType", type = "string"), ResultRecordedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), ConfigRuleInvokedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), Annotation = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), AccountId = structure(logical(0), shape = "AccountId", 
        type = "string", pattern = "\\d{12}"), AwsRegion = structure(logical(0), 
        shape = "AwsRegion", type = "string", max = 64L, min = 1L)), 
        shape = "AggregateEvaluationResult", type = "structure")), 
        shape = "AggregateEvaluationResultList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "GetAggregateComplianceDetailsByConfigRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_aggregate_config_rule_compliance_summary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), Filters = structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        AwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L)), shape = "ConfigRuleComplianceSummaryFilters", 
        type = "structure"), GroupByKey = structure(logical(0), 
        shape = "ConfigRuleComplianceSummaryGroupKey", type = "string"), 
        Limit = structure(logical(0), shape = "GroupByAPILimit", 
            type = "integer", max = 1000L, min = 0L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string")), shape = "GetAggregateConfigRuleComplianceSummaryRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_aggregate_config_rule_compliance_summary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupByKey = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), AggregateComplianceCounts = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ComplianceSummary = structure(list(CompliantResourceCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure"), NonCompliantResourceCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure"), ComplianceSummaryTimestamp = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "ComplianceSummary", 
        type = "structure")), shape = "AggregateComplianceCount", 
        type = "structure")), shape = "AggregateComplianceCountList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "GetAggregateConfigRuleComplianceSummaryResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_details_by_config_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ComplianceTypes = structure(list(structure(logical(0), 
        shape = "ComplianceType", type = "string")), shape = "ComplianceTypes", 
        type = "list", max = 3L, min = 0L), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 100L, min = 0L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "GetComplianceDetailsByConfigRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_details_by_config_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationResults = structure(list(structure(list(EvaluationResultIdentifier = structure(list(EvaluationResultQualifier = structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ResourceType = structure(logical(0), shape = "StringWithCharLimit256", 
        type = "string", max = 256L, min = 1L), ResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L)), shape = "EvaluationResultQualifier", type = "structure"), 
        OrderingTimestamp = structure(logical(0), shape = "Date", 
            type = "timestamp")), shape = "EvaluationResultIdentifier", 
        type = "structure"), ComplianceType = structure(logical(0), 
        shape = "ComplianceType", type = "string"), ResultRecordedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), ConfigRuleInvokedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), Annotation = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ResultToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "EvaluationResult", type = "structure")), 
        shape = "EvaluationResults", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "GetComplianceDetailsByConfigRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_details_by_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ResourceId = structure(logical(0), shape = "BaseResourceId", 
        type = "string", max = 768L, min = 1L), ComplianceTypes = structure(list(structure(logical(0), 
        shape = "ComplianceType", type = "string")), shape = "ComplianceTypes", 
        type = "list", max = 3L, min = 0L), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetComplianceDetailsByResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_details_by_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationResults = structure(list(structure(list(EvaluationResultIdentifier = structure(list(EvaluationResultQualifier = structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ResourceType = structure(logical(0), shape = "StringWithCharLimit256", 
        type = "string", max = 256L, min = 1L), ResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L)), shape = "EvaluationResultQualifier", type = "structure"), 
        OrderingTimestamp = structure(logical(0), shape = "Date", 
            type = "timestamp")), shape = "EvaluationResultIdentifier", 
        type = "structure"), ComplianceType = structure(logical(0), 
        shape = "ComplianceType", type = "string"), ResultRecordedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), ConfigRuleInvokedTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), Annotation = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ResultToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "EvaluationResult", type = "structure")), 
        shape = "EvaluationResults", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetComplianceDetailsByResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_summary_by_config_rule_input <- function () 
{
    return(list())
}

get_compliance_summary_by_config_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComplianceSummary = structure(list(CompliantResourceCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure"), NonCompliantResourceCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure"), ComplianceSummaryTimestamp = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "ComplianceSummary", 
        type = "structure")), shape = "GetComplianceSummaryByConfigRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_summary_by_resource_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceTypes = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L)), shape = "ResourceTypes", type = "list", max = 20L, 
        min = 0L)), shape = "GetComplianceSummaryByResourceTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_compliance_summary_by_resource_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ComplianceSummariesByResourceType = structure(list(structure(list(ResourceType = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ComplianceSummary = structure(list(CompliantResourceCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure"), NonCompliantResourceCount = structure(list(CappedCount = structure(logical(0), 
        shape = "Integer", type = "integer"), CapExceeded = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ComplianceContributorCount", 
        type = "structure"), ComplianceSummaryTimestamp = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "ComplianceSummary", 
        type = "structure")), shape = "ComplianceSummaryByResourceType", 
        type = "structure")), shape = "ComplianceSummariesByResourceType", 
        type = "list")), shape = "GetComplianceSummaryByResourceTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_discovered_resource_counts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceTypes = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L)), shape = "ResourceTypes", type = "list", max = 20L, 
        min = 0L, locationName = "resourceTypes"), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", max = 100L, min = 0L, 
        locationName = "limit"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetDiscoveredResourceCountsRequest", type = "structure")
    return(populate(args, shape))
}

get_discovered_resource_counts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TotalDiscoveredResources = structure(logical(0), 
        shape = "Long", type = "long", locationName = "totalDiscoveredResources"), 
        ResourceCounts = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "resourceType"), 
            Count = structure(logical(0), shape = "Long", type = "long", 
                locationName = "count")), shape = "ResourceCount", 
            type = "structure")), shape = "ResourceCounts", type = "list", 
            locationName = "resourceCounts"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetDiscoveredResourceCountsResponse", type = "structure")
    return(populate(args, shape))
}

get_resource_config_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", max = 768L, min = 1L, locationName = "resourceId"), 
        LaterTime = structure(logical(0), shape = "LaterTime", 
            type = "timestamp", locationName = "laterTime"), 
        EarlierTime = structure(logical(0), shape = "EarlierTime", 
            type = "timestamp", locationName = "earlierTime"), 
        ChronologicalOrder = structure(logical(0), shape = "ChronologicalOrder", 
            type = "string", locationName = "chronologicalOrder"), 
        Limit = structure(logical(0), shape = "Limit", type = "integer", 
            max = 100L, min = 0L, locationName = "limit"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetResourceConfigHistoryRequest", type = "structure")
    return(populate(args, shape))
}

get_resource_config_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationItems = structure(list(structure(list(Version = structure(logical(0), 
        shape = "Version", type = "string", locationName = "version"), 
        AccountId = structure(logical(0), shape = "AccountId", 
            type = "string", pattern = "\\d{12}", locationName = "accountId"), 
        ConfigurationItemCaptureTime = structure(logical(0), 
            shape = "ConfigurationItemCaptureTime", type = "timestamp", 
            locationName = "configurationItemCaptureTime"), ConfigurationItemStatus = structure(logical(0), 
            shape = "ConfigurationItemStatus", type = "string", 
            locationName = "configurationItemStatus"), ConfigurationStateId = structure(logical(0), 
            shape = "ConfigurationStateId", type = "string", 
            locationName = "configurationStateId"), ConfigurationItemMD5Hash = structure(logical(0), 
            shape = "ConfigurationItemMD5Hash", type = "string", 
            locationName = "configurationItemMD5Hash"), Arn = structure(logical(0), 
            shape = "ARN", type = "string", locationName = "arn"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", max = 768L, min = 1L, locationName = "resourceId"), 
        ResourceName = structure(logical(0), shape = "ResourceName", 
            type = "string", locationName = "resourceName"), 
        AwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L, locationName = "awsRegion"), 
        AvailabilityZone = structure(logical(0), shape = "AvailabilityZone", 
            type = "string", locationName = "availabilityZone"), 
        ResourceCreationTime = structure(logical(0), shape = "ResourceCreationTime", 
            type = "timestamp", locationName = "resourceCreationTime"), 
        Tags = structure(list(structure(logical(0), shape = "Value", 
            type = "string")), shape = "Tags", type = "map", 
            locationName = "tags"), RelatedEvents = structure(list(structure(logical(0), 
            shape = "RelatedEvent", type = "string")), shape = "RelatedEventList", 
            type = "list", locationName = "relatedEvents"), Relationships = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "resourceType"), 
            ResourceId = structure(logical(0), shape = "ResourceId", 
                type = "string", max = 768L, min = 1L, locationName = "resourceId"), 
            ResourceName = structure(logical(0), shape = "ResourceName", 
                type = "string", locationName = "resourceName"), 
            RelationshipName = structure(logical(0), shape = "RelationshipName", 
                type = "string", locationName = "relationshipName")), 
            shape = "Relationship", type = "structure")), shape = "RelationshipList", 
            type = "list", locationName = "relationships"), Configuration = structure(logical(0), 
            shape = "Configuration", type = "string", locationName = "configuration"), 
        SupplementaryConfiguration = structure(list(structure(logical(0), 
            shape = "SupplementaryConfigurationValue", type = "string")), 
            shape = "SupplementaryConfiguration", type = "map", 
            locationName = "supplementaryConfiguration")), shape = "ConfigurationItem", 
        type = "structure")), shape = "ConfigurationItemList", 
        type = "list", locationName = "configurationItems"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetResourceConfigHistoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_discovered_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        ResourceIds = structure(list(structure(logical(0), shape = "ResourceId", 
            type = "string", max = 768L, min = 1L)), shape = "ResourceIdList", 
            type = "list", locationName = "resourceIds"), ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", locationName = "resourceName"), 
        Limit = structure(logical(0), shape = "Limit", type = "integer", 
            max = 100L, min = 0L, locationName = "limit"), IncludeDeletedResources = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "includeDeletedResources"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListDiscoveredResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_discovered_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceIdentifiers = structure(list(structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        ResourceId = structure(logical(0), shape = "ResourceId", 
            type = "string", max = 768L, min = 1L, locationName = "resourceId"), 
        ResourceName = structure(logical(0), shape = "ResourceName", 
            type = "string", locationName = "resourceName"), 
        ResourceDeletionTime = structure(logical(0), shape = "ResourceDeletionTime", 
            type = "timestamp", locationName = "resourceDeletionTime")), 
        shape = "ResourceIdentifier", type = "structure")), shape = "ResourceIdentifierList", 
        type = "list", locationName = "resourceIdentifiers"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListDiscoveredResourcesResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_aggregation_authorization_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizedAccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        AuthorizedAwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L)), shape = "PutAggregationAuthorizationRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_aggregation_authorization_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AggregationAuthorization = structure(list(AggregationAuthorizationArn = structure(logical(0), 
        shape = "String", type = "string"), AuthorizedAccountId = structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}"), 
        AuthorizedAwsRegion = structure(logical(0), shape = "AwsRegion", 
            type = "string", max = 64L, min = 1L), CreationTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "AggregationAuthorization", 
        type = "structure")), shape = "PutAggregationAuthorizationResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_config_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRule = structure(list(ConfigRuleName = structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L), ConfigRuleArn = structure(logical(0), shape = "String", 
        type = "string"), ConfigRuleId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "EmptiableStringWithCharLimit256", type = "string", 
        max = 256L, min = 0L), Scope = structure(list(ComplianceResourceTypes = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L)), shape = "ComplianceResourceTypes", type = "list", 
        max = 100L, min = 0L), TagKey = structure(logical(0), 
        shape = "StringWithCharLimit128", type = "string", max = 128L, 
        min = 1L), TagValue = structure(logical(0), shape = "StringWithCharLimit256", 
        type = "string", max = 256L, min = 1L), ComplianceResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L)), shape = "Scope", type = "structure"), Source = structure(list(Owner = structure(logical(0), 
        shape = "Owner", type = "string"), SourceIdentifier = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), SourceDetails = structure(list(structure(list(EventSource = structure(logical(0), 
        shape = "EventSource", type = "string"), MessageType = structure(logical(0), 
        shape = "MessageType", type = "string"), MaximumExecutionFrequency = structure(logical(0), 
        shape = "MaximumExecutionFrequency", type = "string")), 
        shape = "SourceDetail", type = "structure")), shape = "SourceDetails", 
        type = "list", max = 25L, min = 0L)), shape = "Source", 
        type = "structure"), InputParameters = structure(logical(0), 
        shape = "StringWithCharLimit1024", type = "string", max = 1024L, 
        min = 1L), MaximumExecutionFrequency = structure(logical(0), 
        shape = "MaximumExecutionFrequency", type = "string"), 
        ConfigRuleState = structure(logical(0), shape = "ConfigRuleState", 
            type = "string"), CreatedBy = structure(logical(0), 
            shape = "StringWithCharLimit256", type = "string", 
            max = 256L, min = 1L)), shape = "ConfigRule", type = "structure")), 
        shape = "PutConfigRuleRequest", type = "structure")
    return(populate(args, shape))
}

put_config_rule_output <- function () 
{
    return(list())
}

put_configuration_aggregator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), AccountAggregationSources = structure(list(structure(list(AccountIds = structure(list(structure(logical(0), 
        shape = "AccountId", type = "string", pattern = "\\d{12}")), 
        shape = "AccountAggregationSourceAccountList", type = "list", 
        min = 1L), AllAwsRegions = structure(logical(0), shape = "Boolean", 
        type = "boolean"), AwsRegions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "AggregatorRegionList", 
        type = "list", min = 1L)), shape = "AccountAggregationSource", 
        type = "structure")), shape = "AccountAggregationSourceList", 
        type = "list", max = 1L, min = 0L), OrganizationAggregationSource = structure(list(RoleArn = structure(logical(0), 
        shape = "String", type = "string"), AwsRegions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "AggregatorRegionList", 
        type = "list", min = 1L), AllAwsRegions = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OrganizationAggregationSource", 
        type = "structure")), shape = "PutConfigurationAggregatorRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_configuration_aggregator_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationAggregator = structure(list(ConfigurationAggregatorName = structure(logical(0), 
        shape = "ConfigurationAggregatorName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), ConfigurationAggregatorArn = structure(logical(0), 
        shape = "ConfigurationAggregatorArn", type = "string", 
        pattern = "arn:aws[a-z\\-]*:config:[a-z\\-\\d]+:\\d+:config-aggregator/config-aggregator-[a-z\\d]+"), 
        AccountAggregationSources = structure(list(structure(list(AccountIds = structure(list(structure(logical(0), 
            shape = "AccountId", type = "string", pattern = "\\d{12}")), 
            shape = "AccountAggregationSourceAccountList", type = "list", 
            min = 1L), AllAwsRegions = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AwsRegions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AggregatorRegionList", 
            type = "list", min = 1L)), shape = "AccountAggregationSource", 
            type = "structure")), shape = "AccountAggregationSourceList", 
            type = "list", max = 1L, min = 0L), OrganizationAggregationSource = structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), AwsRegions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AggregatorRegionList", 
            type = "list", min = 1L), AllAwsRegions = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "OrganizationAggregationSource", 
            type = "structure"), CreationTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "ConfigurationAggregator", 
        type = "structure")), shape = "PutConfigurationAggregatorResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_configuration_recorder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorder = structure(list(Name = structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L, locationName = "name"), RoleARN = structure(logical(0), 
        shape = "String", type = "string", locationName = "roleARN"), 
        RecordingGroup = structure(list(AllSupported = structure(logical(0), 
            shape = "AllSupported", type = "boolean", locationName = "allSupported"), 
            IncludeGlobalResourceTypes = structure(logical(0), 
                shape = "IncludeGlobalResourceTypes", type = "boolean", 
                locationName = "includeGlobalResourceTypes"), 
            ResourceTypes = structure(list(structure(logical(0), 
                shape = "ResourceType", type = "string")), shape = "ResourceTypeList", 
                type = "list", locationName = "resourceTypes")), 
            shape = "RecordingGroup", type = "structure", locationName = "recordingGroup")), 
        shape = "ConfigurationRecorder", type = "structure")), 
        shape = "PutConfigurationRecorderRequest", type = "structure")
    return(populate(args, shape))
}

put_configuration_recorder_output <- function () 
{
    return(list())
}

put_delivery_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeliveryChannel = structure(list(Name = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 256L, min = 1L, 
        locationName = "name"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string", locationName = "s3BucketName"), 
        S3KeyPrefix = structure(logical(0), shape = "String", 
            type = "string", locationName = "s3KeyPrefix"), SnsTopicARN = structure(logical(0), 
            shape = "String", type = "string", locationName = "snsTopicARN"), 
        ConfigSnapshotDeliveryProperties = structure(list(DeliveryFrequency = structure(logical(0), 
            shape = "MaximumExecutionFrequency", type = "string", 
            locationName = "deliveryFrequency")), shape = "ConfigSnapshotDeliveryProperties", 
            type = "structure", locationName = "configSnapshotDeliveryProperties")), 
        shape = "DeliveryChannel", type = "structure")), shape = "PutDeliveryChannelRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_delivery_channel_output <- function () 
{
    return(list())
}

put_evaluations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Evaluations = structure(list(structure(list(ComplianceResourceType = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ComplianceResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L), ComplianceType = structure(logical(0), shape = "ComplianceType", 
        type = "string"), Annotation = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), OrderingTimestamp = structure(logical(0), 
        shape = "OrderingTimestamp", type = "timestamp")), shape = "Evaluation", 
        type = "structure")), shape = "Evaluations", type = "list", 
        max = 100L, min = 0L), ResultToken = structure(logical(0), 
        shape = "String", type = "string"), TestMode = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "PutEvaluationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_evaluations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedEvaluations = structure(list(structure(list(ComplianceResourceType = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), ComplianceResourceId = structure(logical(0), 
        shape = "BaseResourceId", type = "string", max = 768L, 
        min = 1L), ComplianceType = structure(logical(0), shape = "ComplianceType", 
        type = "string"), Annotation = structure(logical(0), 
        shape = "StringWithCharLimit256", type = "string", max = 256L, 
        min = 1L), OrderingTimestamp = structure(logical(0), 
        shape = "OrderingTimestamp", type = "timestamp")), shape = "Evaluation", 
        type = "structure")), shape = "Evaluations", type = "list", 
        max = 100L, min = 0L)), shape = "PutEvaluationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_retention_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RetentionPeriodInDays = structure(logical(0), 
        shape = "RetentionPeriodInDays", type = "integer", max = 2557L, 
        min = 30L)), shape = "PutRetentionConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_retention_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RetentionConfiguration = structure(list(Name = structure(logical(0), 
        shape = "RetentionConfigurationName", type = "string", 
        max = 256L, min = 1L, pattern = "[\\w\\-]+"), RetentionPeriodInDays = structure(logical(0), 
        shape = "RetentionPeriodInDays", type = "integer", max = 2557L, 
        min = 30L)), shape = "RetentionConfiguration", type = "structure")), 
        shape = "PutRetentionConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

start_config_rules_evaluation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigRuleNames = structure(list(structure(logical(0), 
        shape = "StringWithCharLimit64", type = "string", max = 64L, 
        min = 1L)), shape = "ReevaluateConfigRuleNames", type = "list", 
        max = 25L, min = 1L)), shape = "StartConfigRulesEvaluationRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_config_rules_evaluation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartConfigRulesEvaluationResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_configuration_recorder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorderName = structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L)), shape = "StartConfigurationRecorderRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_configuration_recorder_output <- function () 
{
    return(list())
}

stop_configuration_recorder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationRecorderName = structure(logical(0), 
        shape = "RecorderName", type = "string", max = 256L, 
        min = 1L)), shape = "StopConfigurationRecorderRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_configuration_recorder_output <- function () 
{
    return(list())
}
