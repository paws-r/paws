#' Returns the current configuration for one or more requested resources
#'
#' Returns the current configuration for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list.
#' 
#' -   The API does not return results for deleted resources.
#' 
#' -   The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.
#'
#' @param resourceKeys A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.
#'
#' @examples
#'
#' @export
batch_get_resource_config <- function (resourceKeys) 
{
    op <- Operation(name = "BatchGetResourceConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_resource_config_input(resourceKeys = resourceKeys)
    output <- batch_get_resource_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the authorization granted to the specified configuration aggregator account in a specified region
#'
#' Deletes the authorization granted to the specified configuration aggregator account in a specified region.
#'
#' @param AuthorizedAccountId The 12-digit account ID of the account authorized to aggregate data.
#' @param AuthorizedAwsRegion The region authorized to collect aggregated data.
#'
#' @examples
#'
#' @export
delete_aggregation_authorization <- function (AuthorizedAccountId, 
    AuthorizedAwsRegion) 
{
    op <- Operation(name = "DeleteAggregationAuthorization", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_aggregation_authorization_input(AuthorizedAccountId = AuthorizedAccountId, 
        AuthorizedAwsRegion = AuthorizedAwsRegion)
    output <- delete_aggregation_authorization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified AWS Config rule and all of its evaluation results
#'
#' Deletes the specified AWS Config rule and all of its evaluation results.
#' 
#' AWS Config sets the state of a rule to `DELETING` until the deletion is complete. You cannot update a rule while it is in this state. If you make a `PutConfigRule` or `DeleteConfigRule` request for the rule, you will receive a `ResourceInUseException`.
#' 
#' You can check the state of a rule by using the `DescribeConfigRules` request.
#'
#' @param ConfigRuleName The name of the AWS Config rule that you want to delete.
#'
#' @examples
#'
#' @export
delete_config_rule <- function (ConfigRuleName) 
{
    op <- Operation(name = "DeleteConfigRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_config_rule_input(ConfigRuleName = ConfigRuleName)
    output <- delete_config_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified configuration aggregator and the aggregated data associated with the aggregator
#'
#' Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.
#'
#' @param ConfigurationAggregatorName The name of the configuration aggregator.
#'
#' @examples
#'
#' @export
delete_configuration_aggregator <- function (ConfigurationAggregatorName) 
{
    op <- Operation(name = "DeleteConfigurationAggregator", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_configuration_aggregator_input(ConfigurationAggregatorName = ConfigurationAggregatorName)
    output <- delete_configuration_aggregator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the configuration recorder
#'
#' Deletes the configuration recorder.
#' 
#' After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder.
#' 
#' This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the `GetResourceConfigHistory` action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.
#'
#' @param ConfigurationRecorderName The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the `DescribeConfigurationRecorders` action.
#'
#' @examples
#'
#' @export
delete_configuration_recorder <- function (ConfigurationRecorderName) 
{
    op <- Operation(name = "DeleteConfigurationRecorder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_configuration_recorder_input(ConfigurationRecorderName = ConfigurationRecorderName)
    output <- delete_configuration_recorder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the delivery channel
#'
#' Deletes the delivery channel.
#' 
#' Before you can delete the delivery channel, you must stop the configuration recorder by using the StopConfigurationRecorder action.
#'
#' @param DeliveryChannelName The name of the delivery channel to delete.
#'
#' @examples
#'
#' @export
delete_delivery_channel <- function (DeliveryChannelName) 
{
    op <- Operation(name = "DeleteDeliveryChannel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_delivery_channel_input(DeliveryChannelName = DeliveryChannelName)
    output <- delete_delivery_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the evaluation results for the specified AWS Config rule
#'
#' Deletes the evaluation results for the specified AWS Config rule. You can specify one AWS Config rule per request. After you delete the evaluation results, you can call the StartConfigRulesEvaluation API to start evaluating your AWS resources against the rule.
#'
#' @param ConfigRuleName The name of the AWS Config rule for which you want to delete the evaluation results.
#'
#' @examples
#'
#' @export
delete_evaluation_results <- function (ConfigRuleName) 
{
    op <- Operation(name = "DeleteEvaluationResults", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_evaluation_results_input(ConfigRuleName = ConfigRuleName)
    output <- delete_evaluation_results_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes pending authorization requests for a specified aggregator account in a specified region
#'
#' Deletes pending authorization requests for a specified aggregator account in a specified region.
#'
#' @param RequesterAccountId The 12-digit account ID of the account requesting to aggregate data.
#' @param RequesterAwsRegion The region requesting to aggregate data.
#'
#' @examples
#'
#' @export
delete_pending_aggregation_request <- function (RequesterAccountId, 
    RequesterAwsRegion) 
{
    op <- Operation(name = "DeletePendingAggregationRequest", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_pending_aggregation_request_input(RequesterAccountId = RequesterAccountId, 
        RequesterAwsRegion = RequesterAwsRegion)
    output <- delete_pending_aggregation_request_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the retention configuration
#'
#' Deletes the retention configuration.
#'
#' @param RetentionConfigurationName The name of the retention configuration to delete.
#'
#' @examples
#'
#' @export
delete_retention_configuration <- function (RetentionConfigurationName) 
{
    op <- Operation(name = "DeleteRetentionConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_retention_configuration_input(RetentionConfigurationName = RetentionConfigurationName)
    output <- delete_retention_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel
#'
#' Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends the following notifications using an Amazon SNS topic that you have specified.
#' 
#' -   Notification of the start of the delivery.
#' 
#' -   Notification of the completion of the delivery, if the delivery was successfully completed.
#' 
#' -   Notification of delivery failure, if the delivery failed.
#'
#' @param deliveryChannelName The name of the delivery channel through which the snapshot is delivered.
#'
#' @examples
#'
#' @export
deliver_config_snapshot <- function (deliveryChannelName) 
{
    op <- Operation(name = "DeliverConfigSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- deliver_config_snapshot_input(deliveryChannelName = deliveryChannelName)
    output <- deliver_config_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules
#'
#' Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules.
#' 
#' The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.
#'
#' @param ConfigurationAggregatorName The name of the configuration aggregator.
#' @param Filters Filters the results by ConfigRuleComplianceFilters object.
#' @param Limit The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_aggregate_compliance_by_config_rules <- function (ConfigurationAggregatorName, 
    Filters = NULL, Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeAggregateComplianceByConfigRules", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_aggregate_compliance_by_config_rules_input(ConfigurationAggregatorName = ConfigurationAggregatorName, 
        Filters = Filters, Limit = Limit, NextToken = NextToken)
    output <- describe_aggregate_compliance_by_config_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of authorizations granted to various aggregator accounts and regions
#'
#' Returns a list of authorizations granted to various aggregator accounts and regions.
#'
#' @param Limit The maximum number of AggregationAuthorizations returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_aggregation_authorizations <- function (Limit = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeAggregationAuthorizations", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_aggregation_authorizations_input(Limit = Limit, 
        NextToken = NextToken)
    output <- describe_aggregation_authorizations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Indicates whether the specified AWS Config rules are compliant
#'
#' Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.
#' 
#' A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.
#' 
#' If AWS Config has no current evaluation results for the rule, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions:
#' 
#' -   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.
#' 
#' -   The rule\'s AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the `config:PutEvaluations` permission.
#' 
#' -   The rule\'s AWS Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule\'s scope.
#'
#' @param ConfigRuleNames Specify one or more AWS Config rule names to filter the results by rule.
#' @param ComplianceTypes Filters the results by compliance.
#' 
#' The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `INSUFFICIENT_DATA`.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_compliance_by_config_rule <- function (ConfigRuleNames = NULL, 
    ComplianceTypes = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeComplianceByConfigRule", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_compliance_by_config_rule_input(ConfigRuleNames = ConfigRuleNames, 
        ComplianceTypes = ComplianceTypes, NextToken = NextToken)
    output <- describe_compliance_by_config_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Indicates whether the specified AWS resources are compliant
#'
#' Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.
#' 
#' A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.
#' 
#' If AWS Config has no current evaluation results for the resource, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions about the rules that evaluate the resource:
#' 
#' -   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.
#' 
#' -   The rule\'s AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the `config:PutEvaluations` permission.
#' 
#' -   The rule\'s AWS Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule\'s scope.
#'
#' @param ResourceType The types of AWS resources for which you want compliance information (for example, `AWS::EC2::Instance`). For this action, you can specify that the resource type is an AWS account by specifying `AWS::::Account`.
#' @param ResourceId The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for `ResourceType`.
#' @param ComplianceTypes Filters the results by compliance.
#' 
#' The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
#' @param Limit The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_compliance_by_resource <- function (ResourceType = NULL, 
    ResourceId = NULL, ComplianceTypes = NULL, Limit = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeComplianceByResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_compliance_by_resource_input(ResourceType = ResourceType, 
        ResourceId = ResourceId, ComplianceTypes = ComplianceTypes, 
        Limit = Limit, NextToken = NextToken)
    output <- describe_compliance_by_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns status information for each of your AWS managed Config rules
#'
#' Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.
#'
#' @param ConfigRuleNames The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#' @param Limit The number of rule evaluation results that you want returned.
#' 
#' This parameter is required if the rule limit for your account is more than the default of 50 rules.
#' 
#' For information about requesting a rule limit increase, see [AWS Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the *AWS General Reference Guide*.
#'
#' @examples
#'
#' @export
describe_config_rule_evaluation_status <- function (ConfigRuleNames = NULL, 
    NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeConfigRuleEvaluationStatus", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_config_rule_evaluation_status_input(ConfigRuleNames = ConfigRuleNames, 
        NextToken = NextToken, Limit = Limit)
    output <- describe_config_rule_evaluation_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns details about your AWS Config rules
#'
#' Returns details about your AWS Config rules.
#'
#' @param ConfigRuleNames The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_config_rules <- function (ConfigRuleNames = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeConfigRules", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_config_rules_input(ConfigRuleNames = ConfigRuleNames, 
        NextToken = NextToken)
    output <- describe_config_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns status information for sources within an aggregator
#'
#' Returns status information for sources within an aggregator. The status includes information about the last time AWS Config aggregated data from source accounts or AWS Config failed to aggregate data from source accounts with the related error code or message.
#'
#' @param ConfigurationAggregatorName The name of the configuration aggregator.
#' @param UpdateStatus Filters the status type.
#' 
#' -   Valid value FAILED indicates errors while moving data.
#' 
#' -   Valid value SUCCEEDED indicates the data was successfully moved.
#' 
#' -   Valid value OUTDATED indicates the data is not the most recent.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#' @param Limit The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
#'
#' @examples
#'
#' @export
describe_configuration_aggregator_sources_status <- function (ConfigurationAggregatorName, 
    UpdateStatus = NULL, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeConfigurationAggregatorSourcesStatus", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_configuration_aggregator_sources_status_input(ConfigurationAggregatorName = ConfigurationAggregatorName, 
        UpdateStatus = UpdateStatus, NextToken = NextToken, Limit = Limit)
    output <- describe_configuration_aggregator_sources_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the details of one or more configuration aggregators
#'
#' Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account.
#'
#' @param ConfigurationAggregatorNames The name of the configuration aggregators.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#' @param Limit The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
#'
#' @examples
#'
#' @export
describe_configuration_aggregators <- function (ConfigurationAggregatorNames = NULL, 
    NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeConfigurationAggregators", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_configuration_aggregators_input(ConfigurationAggregatorNames = ConfigurationAggregatorNames, 
        NextToken = NextToken, Limit = Limit)
    output <- describe_configuration_aggregators_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the current status of the specified configuration recorder
#'
#' Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
#' 
#' Currently, you can specify only one configuration recorder per region in your account.
#'
#' @param ConfigurationRecorderNames The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.
#'
#' @examples
#'
#' @export
describe_configuration_recorder_status <- function (ConfigurationRecorderNames = NULL) 
{
    op <- Operation(name = "DescribeConfigurationRecorderStatus", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_configuration_recorder_status_input(ConfigurationRecorderNames = ConfigurationRecorderNames)
    output <- describe_configuration_recorder_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the details for the specified configuration recorders
#'
#' Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.
#' 
#' Currently, you can specify only one configuration recorder per region in your account.
#'
#' @param ConfigurationRecorderNames A list of configuration recorder names.
#'
#' @examples
#'
#' @export
describe_configuration_recorders <- function (ConfigurationRecorderNames = NULL) 
{
    op <- Operation(name = "DescribeConfigurationRecorders", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_configuration_recorders_input(ConfigurationRecorderNames = ConfigurationRecorderNames)
    output <- describe_configuration_recorders_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the current status of the specified delivery channel
#'
#' Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.
#' 
#' Currently, you can specify only one delivery channel per region in your account.
#'
#' @param DeliveryChannelNames A list of delivery channel names.
#'
#' @examples
#'
#' @export
describe_delivery_channel_status <- function (DeliveryChannelNames = NULL) 
{
    op <- Operation(name = "DescribeDeliveryChannelStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_delivery_channel_status_input(DeliveryChannelNames = DeliveryChannelNames)
    output <- describe_delivery_channel_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns details about the specified delivery channel
#'
#' Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.
#' 
#' Currently, you can specify only one delivery channel per region in your account.
#'
#' @param DeliveryChannelNames A list of delivery channel names.
#'
#' @examples
#'
#' @export
describe_delivery_channels <- function (DeliveryChannelNames = NULL) 
{
    op <- Operation(name = "DescribeDeliveryChannels", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_delivery_channels_input(DeliveryChannelNames = DeliveryChannelNames)
    output <- describe_delivery_channels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of all pending aggregation requests
#'
#' Returns a list of all pending aggregation requests.
#'
#' @param Limit The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_pending_aggregation_requests <- function (Limit = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribePendingAggregationRequests", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_pending_aggregation_requests_input(Limit = Limit, 
        NextToken = NextToken)
    output <- describe_pending_aggregation_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the details of one or more retention configurations
#'
#' Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.
#' 
#' Currently, AWS Config supports only one retention configuration per region in your account.
#'
#' @param RetentionConfigurationNames A list of names of retention configurations for which you want details. If you do not specify a name, AWS Config returns details for all the retention configurations for that account.
#' 
#' Currently, AWS Config supports only one retention configuration per region in your account.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
describe_retention_configurations <- function (RetentionConfigurationNames = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeRetentionConfigurations", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_retention_configurations_input(RetentionConfigurationNames = RetentionConfigurationNames, 
        NextToken = NextToken)
    output <- describe_retention_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule
#'
#' Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
#' 
#' The results can return an empty result page. But if you have a nextToken, the results are displayed on the next page.
#'
#' @param ConfigurationAggregatorName The name of the configuration aggregator.
#' @param ConfigRuleName The name of the AWS Config rule for which you want compliance information.
#' @param AccountId The 12-digit account ID of the source account.
#' @param AwsRegion The source region from where the data is aggregated.
#' @param ComplianceType The resource compliance status.
#' 
#' For the `GetAggregateComplianceDetailsByConfigRuleRequest` data type, AWS Config supports only the `COMPLIANT` and `NON_COMPLIANT`. AWS Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` values.
#' @param Limit The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_aggregate_compliance_details_by_config_rule <- function (ConfigurationAggregatorName, 
    ConfigRuleName, AccountId, AwsRegion, ComplianceType = NULL, 
    Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetAggregateComplianceDetailsByConfigRule", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_aggregate_compliance_details_by_config_rule_input(ConfigurationAggregatorName = ConfigurationAggregatorName, 
        ConfigRuleName = ConfigRuleName, AccountId = AccountId, 
        AwsRegion = AwsRegion, ComplianceType = ComplianceType, 
        Limit = Limit, NextToken = NextToken)
    output <- get_aggregate_compliance_details_by_config_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator
#'
#' Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.
#' 
#' The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.
#'
#' @param ConfigurationAggregatorName The name of the configuration aggregator.
#' @param Filters Filters the results based on the ConfigRuleComplianceSummaryFilters object.
#' @param GroupByKey Groups the result based on ACCOUNT\_ID or AWS\_REGION.
#' @param Limit The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.
#' @param NextToken The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_aggregate_config_rule_compliance_summary <- function (ConfigurationAggregatorName, 
    Filters = NULL, GroupByKey = NULL, Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetAggregateConfigRuleComplianceSummary", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_aggregate_config_rule_compliance_summary_input(ConfigurationAggregatorName = ConfigurationAggregatorName, 
        Filters = Filters, GroupByKey = GroupByKey, Limit = Limit, 
        NextToken = NextToken)
    output <- get_aggregate_config_rule_compliance_summary_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the evaluation results for the specified AWS Config rule
#'
#' Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
#'
#' @param ConfigRuleName The name of the AWS Config rule for which you want compliance information.
#' @param ComplianceTypes Filters the results by compliance.
#' 
#' The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE`.
#' @param Limit The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_compliance_details_by_config_rule <- function (ConfigRuleName, 
    ComplianceTypes = NULL, Limit = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetComplianceDetailsByConfigRule", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_compliance_details_by_config_rule_input(ConfigRuleName = ConfigRuleName, 
        ComplianceTypes = ComplianceTypes, Limit = Limit, NextToken = NextToken)
    output <- get_compliance_details_by_config_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the evaluation results for the specified AWS resource
#'
#' Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.
#'
#' @param ResourceType The type of the AWS resource for which you want compliance information.
#' @param ResourceId The ID of the AWS resource for which you want compliance information.
#' @param ComplianceTypes Filters the results by compliance.
#' 
#' The allowed values are `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE`.
#' @param NextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_compliance_details_by_resource <- function (ResourceType, 
    ResourceId, ComplianceTypes = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetComplianceDetailsByResource", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_compliance_details_by_resource_input(ResourceType = ResourceType, 
        ResourceId = ResourceId, ComplianceTypes = ComplianceTypes, 
        NextToken = NextToken)
    output <- get_compliance_details_by_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each
#'
#' Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
#'

#'
#' @examples
#'
#' @export
get_compliance_summary_by_config_rule <- function () 
{
    op <- Operation(name = "GetComplianceSummaryByConfigRule", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_compliance_summary_by_config_rule_input()
    output <- get_compliance_summary_by_config_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the number of resources that are compliant and the number that are noncompliant
#'
#' Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.
#'
#' @param ResourceTypes Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.
#' 
#' For this request, you can specify an AWS resource type such as `AWS::EC2::Instance`. You can specify that the resource type is an AWS account by specifying `AWS::::Account`.
#'
#' @examples
#'
#' @export
get_compliance_summary_by_resource_type <- function (ResourceTypes = NULL) 
{
    op <- Operation(name = "GetComplianceSummaryByResourceType", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_compliance_summary_by_resource_type_input(ResourceTypes = ResourceTypes)
    output <- get_compliance_summary_by_resource_type_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account
#'
#' Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account.
#' 
#' **Example**
#' 
#' 1.  AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.
#' 
#' 2.  You make a call to the `GetDiscoveredResourceCounts` action and specify that you want all resource types.
#' 
#' 3.  AWS Config returns the following:
#' 
#'     -   The resource types (EC2 instances, IAM users, and S3 buckets).
#' 
#'     -   The number of each resource type (25, 20, and 15).
#' 
#'     -   The total number of all resources (60).
#' 
#' The response is paginated. By default, AWS Config lists 100 ResourceCount objects on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
#' 
#' If you make a call to the GetDiscoveredResourceCounts action, you might not immediately receive resource counts in the following situations:
#' 
#' -   You are a new AWS Config customer.
#' 
#' -   You just enabled resource recording.
#' 
#' It might take a few minutes for AWS Config to record and count your resources. Wait a few minutes and then retry the GetDiscoveredResourceCounts action.
#'
#' @param resourceTypes The comma-separated list that specifies the resource types that you want AWS Config to return (for example, `"AWS::EC2::Instance"`, `"AWS::IAM::User"`).
#' 
#' If a value for `resourceTypes` is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.
#' 
#' If the configuration recorder is turned off, AWS Config returns an empty list of ResourceCount objects. If the configuration recorder is not recording a specific resource type (for example, S3 buckets), that resource type is not returned in the list of ResourceCount objects.
#' @param limit The maximum number of ResourceCount objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
#' @param nextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_discovered_resource_counts <- function (resourceTypes = NULL, 
    limit = NULL, nextToken = NULL) 
{
    op <- Operation(name = "GetDiscoveredResourceCounts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_discovered_resource_counts_input(resourceTypes = resourceTypes, 
        limit = limit, nextToken = nextToken)
    output <- get_discovered_resource_counts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of configuration items for the specified resource
#'
#' Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the `ConfigurationItems` for the specified retention period.
#' 
#' The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
#' 
#' Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified `limit`. In such cases, you can make another call, using the `nextToken`.
#'
#' @param resourceType The resource type.
#' @param resourceId The ID of the resource (for example., `sg-xxxxxx`).
#' @param laterTime The time stamp that indicates a later time. If not specified, current time is taken.
#' @param earlierTime The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.
#' @param chronologicalOrder The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.
#' @param limit The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
#' @param nextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_resource_config_history <- function (resourceType, resourceId, 
    laterTime = NULL, earlierTime = NULL, chronologicalOrder = NULL, 
    limit = NULL, nextToken = NULL) 
{
    op <- Operation(name = "GetResourceConfigHistory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_resource_config_history_input(resourceType = resourceType, 
        resourceId = resourceId, laterTime = laterTime, earlierTime = earlierTime, 
        chronologicalOrder = chronologicalOrder, limit = limit, 
        nextToken = nextToken)
    output <- get_resource_config_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Accepts a resource type and returns a list of resource identifiers for the resources of that type
#'
#' Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.
#' 
#' You can specify either resource IDs or a resource name, but not both, in the same request.
#' 
#' The response is paginated. By default, AWS Config lists 100 resource identifiers on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
#'
#' @param resourceType The type of resources that you want AWS Config to list in the response.
#' @param resourceIds The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.
#' @param resourceName The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.
#' @param limit The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
#' @param includeDeletedResources Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.
#' @param nextToken The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
list_discovered_resources <- function (resourceType, resourceIds = NULL, 
    resourceName = NULL, limit = NULL, includeDeletedResources = NULL, 
    nextToken = NULL) 
{
    op <- Operation(name = "ListDiscoveredResources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_discovered_resources_input(resourceType = resourceType, 
        resourceIds = resourceIds, resourceName = resourceName, 
        limit = limit, includeDeletedResources = includeDeletedResources, 
        nextToken = nextToken)
    output <- list_discovered_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Authorizes the aggregator account and region to collect data from the source account and region
#'
#' Authorizes the aggregator account and region to collect data from the source account and region.
#'
#' @param AuthorizedAccountId The 12-digit account ID of the account authorized to aggregate data.
#' @param AuthorizedAwsRegion The region authorized to collect aggregated data.
#'
#' @examples
#'
#' @export
put_aggregation_authorization <- function (AuthorizedAccountId, 
    AuthorizedAwsRegion) 
{
    op <- Operation(name = "PutAggregationAuthorization", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_aggregation_authorization_input(AuthorizedAccountId = AuthorizedAccountId, 
        AuthorizedAwsRegion = AuthorizedAwsRegion)
    output <- put_aggregation_authorization_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations
#'
#' Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.
#' 
#' You can use this action for custom AWS Config rules and AWS managed Config rules. A custom AWS Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.
#' 
#' If you are adding a new custom AWS Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the `PutConfigRule` action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the `SourceIdentifier` key. This key is part of the `Source` object, which is part of the `ConfigRule` object.
#' 
#' If you are adding an AWS managed Config rule, specify the rule\'s identifier for the `SourceIdentifier` key. To reference AWS managed Config rule identifiers, see [About AWS Managed Config Rules](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).
#' 
#' For any new rule that you add, specify the `ConfigRuleName` in the `ConfigRule` object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values are generated by AWS Config for new rules.
#' 
#' If you are updating a rule that you added previously, you can specify the rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data type that you use in this request.
#' 
#' The maximum number of rules that AWS Config supports is 50.
#' 
#' For information about requesting a rule limit increase, see [AWS Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the *AWS General Reference Guide*.
#' 
#' For more information about developing and using AWS Config rules, see [Evaluating AWS Resource Configurations with AWS Config](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the *AWS Config Developer Guide*.
#'
#' @param ConfigRule The rule that you want to add to your account.
#'
#' @examples
#'
#' @export
put_config_rule <- function (ConfigRule) 
{
    op <- Operation(name = "PutConfigRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_config_rule_input(ConfigRule = ConfigRule)
    output <- put_config_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates and updates the configuration aggregator with the selected source accounts and regions
#'
#' Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.
#' 
#' AWS Config should be enabled in source accounts and regions you want to aggregate.
#' 
#' If your source type is an organization, you must be signed in to the master account and all features must be enabled in your organization. AWS Config calls `EnableAwsServiceAccess` API to enable integration between AWS Config and AWS Organizations.
#'
#' @param ConfigurationAggregatorName The name of the configuration aggregator.
#' @param AccountAggregationSources A list of AccountAggregationSource object.
#' @param OrganizationAggregationSource An OrganizationAggregationSource object.
#'
#' @examples
#'
#' @export
put_configuration_aggregator <- function (ConfigurationAggregatorName, 
    AccountAggregationSources = NULL, OrganizationAggregationSource = NULL) 
{
    op <- Operation(name = "PutConfigurationAggregator", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_configuration_aggregator_input(ConfigurationAggregatorName = ConfigurationAggregatorName, 
        AccountAggregationSources = AccountAggregationSources, 
        OrganizationAggregationSource = OrganizationAggregationSource)
    output <- put_configuration_aggregator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new configuration recorder to record the selected resource configurations
#'
#' Creates a new configuration recorder to record the selected resource configurations.
#' 
#' You can use this action to change the role `roleARN` or the `recordingGroup` of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.
#' 
#' Currently, you can specify only one configuration recorder per region in your account.
#' 
#' If `ConfigurationRecorder` does not have the **recordingGroup** parameter specified, the default is to record all supported resource types.
#'
#' @param ConfigurationRecorder The configuration recorder object that records each configuration change made to the resources.
#'
#' @examples
#'
#' @export
put_configuration_recorder <- function (ConfigurationRecorder) 
{
    op <- Operation(name = "PutConfigurationRecorder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_configuration_recorder_input(ConfigurationRecorder = ConfigurationRecorder)
    output <- put_configuration_recorder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic
#'
#' Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.
#' 
#' Before you can create a delivery channel, you must create a configuration recorder.
#' 
#' You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.
#' 
#' You can have only one delivery channel per region in your account.
#'
#' @param DeliveryChannel The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket and to an Amazon SNS topic.
#'
#' @examples
#'
#' @export
put_delivery_channel <- function (DeliveryChannel) 
{
    op <- Operation(name = "PutDeliveryChannel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_delivery_channel_input(DeliveryChannel = DeliveryChannel)
    output <- put_delivery_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used by an AWS Lambda function to deliver evaluation results to AWS Config
#'
#' Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.
#'
#' @param ResultToken An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation.
#' @param Evaluations The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function.
#' @param TestMode Use this parameter to specify a test run for `PutEvaluations`. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.
#' 
#' When `TestMode` is `true`, `PutEvaluations` doesn\'t require a valid value for the `ResultToken` parameter, but the value cannot be null.
#'
#' @examples
#'
#' @export
put_evaluations <- function (ResultToken, Evaluations = NULL, 
    TestMode = NULL) 
{
    op <- Operation(name = "PutEvaluations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_evaluations_input(ResultToken = ResultToken, 
        Evaluations = Evaluations, TestMode = TestMode)
    output <- put_evaluations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information
#'
#' Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information. The API creates the `RetentionConfiguration` object and names the object as **default**. When you have a `RetentionConfiguration` object named **default**, calling the API modifies the default object.
#' 
#' Currently, AWS Config supports only one retention configuration per region in your account.
#'
#' @param RetentionPeriodInDays Number of days AWS Config stores your historical information.
#' 
#' Currently, only applicable to the configuration item history.
#'
#' @examples
#'
#' @export
put_retention_configuration <- function (RetentionPeriodInDays) 
{
    op <- Operation(name = "PutRetentionConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_retention_configuration_input(RetentionPeriodInDays = RetentionPeriodInDays)
    output <- put_retention_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Runs an on-demand evaluation for the specified AWS Config rules against the last known configuration state of the resources
#'
#' Runs an on-demand evaluation for the specified AWS Config rules against the last known configuration state of the resources. Use `StartConfigRulesEvaluation` when you want to test that a rule you updated is working as expected. `StartConfigRulesEvaluation` does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources.
#' 
#' You can specify up to 25 AWS Config rules per request.
#' 
#' An existing `StartConfigRulesEvaluation` call for the specified rules must complete before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a `ConfigRuleEvaluationStarted` notification when the evaluation starts.
#' 
#' You don\'t need to call the `StartConfigRulesEvaluation` API to run an evaluation for a new rule. When you create a rule, AWS Config evaluates your resources against the rule automatically.
#' 
#' The `StartConfigRulesEvaluation` API is useful if you want to run on-demand evaluations, such as the following example:
#' 
#' 1.  You have a custom rule that evaluates your IAM resources every 24 hours.
#' 
#' 2.  You update your Lambda function to add additional conditions to your rule.
#' 
#' 3.  Instead of waiting for the next periodic evaluation, you call the `StartConfigRulesEvaluation` API.
#' 
#' 4.  AWS Config invokes your Lambda function and evaluates your IAM resources.
#' 
#' 5.  Your custom rule will still run periodic evaluations every 24 hours.
#'
#' @param ConfigRuleNames The list of names of AWS Config rules that you want to run evaluations for.
#'
#' @examples
#'
#' @export
start_config_rules_evaluation <- function (ConfigRuleNames = NULL) 
{
    op <- Operation(name = "StartConfigRulesEvaluation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_config_rules_evaluation_input(ConfigRuleNames = ConfigRuleNames)
    output <- start_config_rules_evaluation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts recording configurations of the AWS resources you have selected to record in your AWS account
#'
#' Starts recording configurations of the AWS resources you have selected to record in your AWS account.
#' 
#' You must have created at least one delivery channel to successfully start the configuration recorder.
#'
#' @param ConfigurationRecorderName The name of the recorder object that records each configuration change made to the resources.
#'
#' @examples
#'
#' @export
start_configuration_recorder <- function (ConfigurationRecorderName) 
{
    op <- Operation(name = "StartConfigurationRecorder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_configuration_recorder_input(ConfigurationRecorderName = ConfigurationRecorderName)
    output <- start_configuration_recorder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops recording configurations of the AWS resources you have selected to record in your AWS account
#'
#' Stops recording configurations of the AWS resources you have selected to record in your AWS account.
#'
#' @param ConfigurationRecorderName The name of the recorder object that records each configuration change made to the resources.
#'
#' @examples
#'
#' @export
stop_configuration_recorder <- function (ConfigurationRecorderName) 
{
    op <- Operation(name = "StopConfigurationRecorder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_configuration_recorder_input(ConfigurationRecorderName = ConfigurationRecorderName)
    output <- stop_configuration_recorder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
