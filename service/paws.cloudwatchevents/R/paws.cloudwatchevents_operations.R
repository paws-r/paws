#' Deletes the specified rule
#'
#' Deletes the specified rule.
#' 
#' Before you can delete the rule, you must remove all targets, using RemoveTargets.
#' 
#' When you delete a rule, incoming events might continue to match to the deleted rule. Allow a short period of time for changes to take effect.
#'
#' @param Name The name of the rule.
#'
#' @examples
#'
#' @export
delete_rule <- function (Name) 
{
    op <- Operation(name = "DeleteRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_rule_input(Name = Name)
    output <- delete_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Displays the external AWS accounts that are permitted to write events to your account using your account\'s event bus, and the associated policy
#'
#' Displays the external AWS accounts that are permitted to write events to your account using your account\'s event bus, and the associated policy. To enable your account to receive events from other accounts, use PutPermission.
#'
#' @examples
#'
#' @export
describe_event_bus <- function () 
{
    op <- Operation(name = "DescribeEventBus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_bus_input()
    output <- describe_event_bus_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified rule
#'
#' Describes the specified rule.
#' 
#' DescribeRule does not list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.
#'
#' @param Name The name of the rule.
#'
#' @examples
#'
#' @export
describe_rule <- function (Name) 
{
    op <- Operation(name = "DescribeRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_rule_input(Name = Name)
    output <- describe_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables the specified rule
#'
#' Disables the specified rule. A disabled rule won\'t match any events, and won\'t self-trigger if it has a schedule expression.
#' 
#' When you disable a rule, incoming events might continue to match to the disabled rule. Allow a short period of time for changes to take effect.
#'
#' @param Name The name of the rule.
#'
#' @examples
#'
#' @export
disable_rule <- function (Name) 
{
    op <- Operation(name = "DisableRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_rule_input(Name = Name)
    output <- disable_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables the specified rule
#'
#' Enables the specified rule. If the rule does not exist, the operation fails.
#' 
#' When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Allow a short period of time for changes to take effect.
#'
#' @param Name The name of the rule.
#'
#' @examples
#'
#' @export
enable_rule <- function (Name) 
{
    op <- Operation(name = "EnableRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_rule_input(Name = Name)
    output <- enable_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the rules for the specified target
#'
#' Lists the rules for the specified target. You can see which of the rules in Amazon CloudWatch Events can invoke a specific target in your account.
#'
#' @param TargetArn The Amazon Resource Name (ARN) of the target resource.
#' @param NextToken The token returned by a previous call to retrieve the next set of results.
#' @param Limit The maximum number of results to return.
#'
#' @examples
#'
#' @export
list_rule_names_by_target <- function (TargetArn, NextToken = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "ListRuleNamesByTarget", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_rule_names_by_target_input(TargetArn = TargetArn, 
        NextToken = NextToken, Limit = Limit)
    output <- list_rule_names_by_target_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists your Amazon CloudWatch Events rules
#'
#' Lists your Amazon CloudWatch Events rules. You can either list all the rules or you can provide a prefix to match to the rule names.
#' 
#' ListRules does not list the targets of a rule. To see the targets associated with a rule, use ListTargetsByRule.
#'
#' @param NamePrefix The prefix matching the rule name.
#' @param NextToken The token returned by a previous call to retrieve the next set of results.
#' @param Limit The maximum number of results to return.
#'
#' @examples
#'
#' @export
list_rules <- function (NamePrefix = NULL, NextToken = NULL, 
    Limit = NULL) 
{
    op <- Operation(name = "ListRules", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_rules_input(NamePrefix = NamePrefix, NextToken = NextToken, 
        Limit = Limit)
    output <- list_rules_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the targets assigned to the specified rule
#'
#' Lists the targets assigned to the specified rule.
#'
#' @param Rule The name of the rule.
#' @param NextToken The token returned by a previous call to retrieve the next set of results.
#' @param Limit The maximum number of results to return.
#'
#' @examples
#'
#' @export
list_targets_by_rule <- function (Rule, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListTargetsByRule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_targets_by_rule_input(Rule = Rule, NextToken = NextToken, 
        Limit = Limit)
    output <- list_targets_by_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sends custom events to Amazon CloudWatch Events so that they can be matched to rules
#'
#' Sends custom events to Amazon CloudWatch Events so that they can be matched to rules.
#'
#' @param Entries The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.
#'
#' @examples
#'
#' @export
put_events <- function (Entries) 
{
    op <- Operation(name = "PutEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_events_input(Entries = Entries)
    output <- put_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Running `PutPermission` permits the specified AWS account to put events to your account\'s default *event bus*
#'
#' Running `PutPermission` permits the specified AWS account to put events to your account\'s default *event bus*. CloudWatch Events rules in your account are triggered by these events arriving to your default event bus.
#' 
#' For another account to send events to your account, that external account must have a CloudWatch Events rule with your account\'s default event bus as a target.
#' 
#' To enable multiple AWS accounts to put events to your default event bus, run `PutPermission` once for each of these accounts.
#' 
#' The permission policy on the default event bus cannot exceed 10 KB in size.
#'
#' @param Action The action that you are enabling the other account to perform. Currently, this must be `events:PutEvents`.
#' @param Principal The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify \"\*\" to permit any account to put events to your default event bus.
#' 
#' If you specify \"\*\", avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an `account` field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.
#' @param StatementId An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this `StatementId` when you run RemovePermission.
#'
#' @examples
#'
#' @export
put_permission <- function (Action, Principal, StatementId) 
{
    op <- Operation(name = "PutPermission", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_permission_input(Action = Action, Principal = Principal, 
        StatementId = StatementId)
    output <- put_permission_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates the specified rule
#'
#' Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using DisableRule.
#' 
#' If you are updating an existing rule, the rule is replaced with what you specify in this `PutRule` command. If you omit arguments in `PutRule`, the old values for those arguments are not kept. Instead, they are replaced with null values.
#' 
#' When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect.
#' 
#' A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule.
#' 
#' Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.
#'
#' @param Name The name of the rule that you are creating or updating.
#' @param ScheduleExpression The scheduling expression. For example, \"cron(0 20 \* \* ? \*)\" or \"rate(5 minutes)\".
#' @param EventPattern The event pattern. For more information, see [Events and Event Patterns](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html) in the *Amazon CloudWatch Events User Guide*.
#' @param State Indicates whether the rule is enabled or disabled.
#' @param Description A description of the rule.
#' @param RoleArn The Amazon Resource Name (ARN) of the IAM role associated with the rule.
#'
#' @examples
#'
#' @export
put_rule <- function (Name, ScheduleExpression = NULL, EventPattern = NULL, 
    State = NULL, Description = NULL, RoleArn = NULL) 
{
    op <- Operation(name = "PutRule", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- put_rule_input(Name = Name, ScheduleExpression = ScheduleExpression, 
        EventPattern = EventPattern, State = State, Description = Description, 
        RoleArn = RoleArn)
    output <- put_rule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule
#'
#' Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule.
#' 
#' Targets are the resources that are invoked when a rule is triggered.
#' 
#' You can configure the following as targets for CloudWatch Events:
#' 
#' -   EC2 instances
#' 
#' -   SSM Run Command
#' 
#' -   SSM Automation
#' 
#' -   AWS Lambda functions
#' 
#' -   Data streams in Amazon Kinesis Data Streams
#' 
#' -   Data delivery streams in Amazon Kinesis Data Firehose
#' 
#' -   Amazon ECS tasks
#' 
#' -   AWS Step Functions state machines
#' 
#' -   AWS Batch jobs
#' 
#' -   AWS CodeBuild projects
#' 
#' -   Pipelines in AWS CodePipeline
#' 
#' -   Amazon Inspector assessment templates
#' 
#' -   Amazon SNS topics
#' 
#' -   Amazon SQS queues, including FIFO queues
#' 
#' -   The default event bus of another AWS account
#' 
#' Creating rules with built-in targets is supported only in the AWS Management Console. The built-in targets are `EC2 CreateSnapshot API call`, `EC2 RebootInstances API call`, `EC2 StopInstances API call`, and `EC2 TerminateInstances API call`.
#' 
#' For some target types, `PutTargets` provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the `KinesisParameters` argument. To invoke a command on multiple EC2 instances with one rule, you can use the `RunCommandParameters` field.
#' 
#' To be able to make API calls against the resources that you own, Amazon CloudWatch Events needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, CloudWatch Events relies on resource-based policies. For EC2 instances, Kinesis data streams, and AWS Step Functions state machines, CloudWatch Events relies on IAM roles that you specify in the `RoleARN` argument in `PutTargets`. For more information, see [Authentication and Access Control](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/auth-and-access-control-cwe.html) in the *Amazon CloudWatch Events User Guide*.
#' 
#' If another AWS account is in the same region and has granted you permission (using `PutPermission`), you can send events to that account. Set that account\'s event bus as a target of the rules in your account. To send the matched events to the other account, specify that account\'s event bus as the `Arn` value when you run `PutTargets`. If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event is not charged. For more information, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).
#' 
#' For more information about enabling cross-account events, see PutPermission.
#' 
#' **Input**, **InputPath**, and **InputTransformer** are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:
#' 
#' -   If none of the following arguments are specified for a target, then the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).
#' 
#' -   If **Input** is specified in the form of valid JSON, then the matched event is overridden with this constant.
#' 
#' -   If **InputPath** is specified in the form of JSONPath (for example, `$.detail`), then only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).
#' 
#' -   If **InputTransformer** is specified, then one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.
#' 
#' When you specify `InputPath` or `InputTransformer`, you must use JSON dot notation, not bracket notation.
#' 
#' When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect.
#' 
#' This action can partially fail if too many requests are made at the same time. If that happens, `FailedEntryCount` is non-zero in the response and each entry in `FailedEntries` provides the ID of the failed target and the error code.
#'
#' @param Rule The name of the rule.
#' @param Targets The targets to update or add to the rule.
#'
#' @examples
#'
#' @export
put_targets <- function (Rule, Targets) 
{
    op <- Operation(name = "PutTargets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_targets_input(Rule = Rule, Targets = Targets)
    output <- put_targets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Revokes the permission of another AWS account to be able to put events to your default event bus
#'
#' Revokes the permission of another AWS account to be able to put events to your default event bus. Specify the account to revoke by the `StatementId` value that you associated with the account when you granted it permission with `PutPermission`. You can find the `StatementId` by using DescribeEventBus.
#'
#' @param StatementId The statement ID corresponding to the account that is no longer allowed to put events to the default event bus.
#'
#' @examples
#'
#' @export
remove_permission <- function (StatementId) 
{
    op <- Operation(name = "RemovePermission", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_permission_input(StatementId = StatementId)
    output <- remove_permission_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified targets from the specified rule
#'
#' Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked.
#' 
#' When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect.
#' 
#' This action can partially fail if too many requests are made at the same time. If that happens, `FailedEntryCount` is non-zero in the response and each entry in `FailedEntries` provides the ID of the failed target and the error code.
#'
#' @param Rule The name of the rule.
#' @param Ids The IDs of the targets to remove from the rule.
#'
#' @examples
#'
#' @export
remove_targets <- function (Rule, Ids) 
{
    op <- Operation(name = "RemoveTargets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_targets_input(Rule = Rule, Ids = Ids)
    output <- remove_targets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tests whether the specified event pattern matches the provided event
#'
#' Tests whether the specified event pattern matches the provided event.
#' 
#' Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.
#'
#' @param EventPattern The event pattern. For more information, see [Events and Event Patterns](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html) in the *Amazon CloudWatch Events User Guide*.
#' @param Event The event, in JSON format, to test against the event pattern.
#'
#' @examples
#'
#' @export
test_event_pattern <- function (EventPattern, Event) 
{
    op <- Operation(name = "TestEventPattern", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- test_event_pattern_input(EventPattern = EventPattern, 
        Event = Event)
    output <- test_event_pattern_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
