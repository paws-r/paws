delete_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+")), 
        shape = "DeleteRuleRequest", type = "structure")
    return(populate(args, shape))
}

delete_rule_output <- function () 
{
    return(list())
}

describe_event_bus_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeEventBusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_bus_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), Arn = structure(logical(0), shape = "String", 
        type = "string"), Policy = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeEventBusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+")), 
        shape = "DescribeRuleRequest", type = "structure")
    return(populate(args, shape))
}

describe_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+"), 
        Arn = structure(logical(0), shape = "RuleArn", type = "string", 
            max = 1600L, min = 1L), EventPattern = structure(logical(0), 
            shape = "EventPattern", type = "string"), ScheduleExpression = structure(logical(0), 
            shape = "ScheduleExpression", type = "string", max = 256L), 
        State = structure(logical(0), shape = "RuleState", type = "string"), 
        Description = structure(logical(0), shape = "RuleDescription", 
            type = "string", max = 512L), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 1600L, 
            min = 1L)), shape = "DescribeRuleResponse", type = "structure")
    return(populate(args, shape))
}

disable_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+")), 
        shape = "DisableRuleRequest", type = "structure")
    return(populate(args, shape))
}

disable_rule_output <- function () 
{
    return(list())
}

enable_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+")), 
        shape = "EnableRuleRequest", type = "structure")
    return(populate(args, shape))
}

enable_rule_output <- function () 
{
    return(list())
}

list_rule_names_by_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetArn = structure(logical(0), 
        shape = "TargetArn", type = "string", max = 1600L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
            shape = "LimitMax100", type = "integer", max = 100L, 
            min = 1L)), shape = "ListRuleNamesByTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_rule_names_by_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleNames = structure(list(structure(logical(0), 
        shape = "RuleName", type = "string", max = 64L, min = 1L, 
        pattern = "[\\.\\-_A-Za-z0-9]+")), shape = "RuleNameList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 2048L, min = 1L)), shape = "ListRuleNamesByTargetResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamePrefix = structure(logical(0), 
        shape = "RuleName", type = "string", max = 64L, min = 1L, 
        pattern = "[\\.\\-_A-Za-z0-9]+"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L), 
        Limit = structure(logical(0), shape = "LimitMax100", 
            type = "integer", max = 100L, min = 1L)), shape = "ListRulesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rules = structure(list(structure(list(Name = structure(logical(0), 
        shape = "RuleName", type = "string", max = 64L, min = 1L, 
        pattern = "[\\.\\-_A-Za-z0-9]+"), Arn = structure(logical(0), 
        shape = "RuleArn", type = "string", max = 1600L, min = 1L), 
        EventPattern = structure(logical(0), shape = "EventPattern", 
            type = "string"), State = structure(logical(0), shape = "RuleState", 
            type = "string"), Description = structure(logical(0), 
            shape = "RuleDescription", type = "string", max = 512L), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 1600L, 
            min = 1L)), shape = "Rule", type = "structure")), 
        shape = "RuleResponseList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 2048L, min = 1L)), 
        shape = "ListRulesResponse", type = "structure")
    return(populate(args, shape))
}

list_targets_by_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
            shape = "LimitMax100", type = "integer", max = 100L, 
            min = 1L)), shape = "ListTargetsByRuleRequest", type = "structure")
    return(populate(args, shape))
}

list_targets_by_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Targets = structure(list(structure(list(Id = structure(logical(0), 
        shape = "TargetId", type = "string", max = 64L, min = 1L, 
        pattern = "[\\.\\-_A-Za-z0-9]+"), Arn = structure(logical(0), 
        shape = "TargetArn", type = "string", max = 1600L, min = 1L), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1600L, min = 1L), Input = structure(logical(0), 
            shape = "TargetInput", type = "string", max = 8192L), 
        InputPath = structure(logical(0), shape = "TargetInputPath", 
            type = "string", max = 256L), InputTransformer = structure(list(InputPathsMap = structure(list(structure(logical(0), 
            shape = "TargetInputPath", type = "string", max = 256L)), 
            shape = "TransformerPaths", type = "map", max = 10L), 
            InputTemplate = structure(logical(0), shape = "TransformerInput", 
                type = "string", max = 8192L, min = 1L)), shape = "InputTransformer", 
            type = "structure"), KinesisParameters = structure(list(PartitionKeyPath = structure(logical(0), 
            shape = "TargetPartitionKeyPath", type = "string", 
            max = 256L)), shape = "KinesisParameters", type = "structure"), 
        RunCommandParameters = structure(list(RunCommandTargets = structure(list(structure(list(Key = structure(logical(0), 
            shape = "RunCommandTargetKey", type = "string", max = 128L, 
            min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"), 
            Values = structure(list(structure(logical(0), shape = "RunCommandTargetValue", 
                type = "string", max = 256L, min = 1L)), shape = "RunCommandTargetValues", 
                type = "list", max = 50L, min = 1L)), shape = "RunCommandTarget", 
            type = "structure")), shape = "RunCommandTargets", 
            type = "list", max = 5L, min = 1L)), shape = "RunCommandParameters", 
            type = "structure"), EcsParameters = structure(list(TaskDefinitionArn = structure(logical(0), 
            shape = "Arn", type = "string", max = 1600L, min = 1L), 
            TaskCount = structure(logical(0), shape = "LimitMin1", 
                type = "integer", min = 1L), LaunchType = structure(logical(0), 
                shape = "LaunchType", type = "string"), NetworkConfiguration = structure(list(AwsvpcConfiguration = structure(list(Subnets = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list"), SecurityGroups = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list"), AssignPublicIp = structure(logical(0), 
                shape = "AssignPublicIp", type = "string")), 
                shape = "AwsVpcConfiguration", type = "structure", 
                locationName = "awsvpcConfiguration")), shape = "NetworkConfiguration", 
                type = "structure"), PlatformVersion = structure(logical(0), 
                shape = "String", type = "string"), Group = structure(logical(0), 
                shape = "String", type = "string")), shape = "EcsParameters", 
            type = "structure"), BatchParameters = structure(list(JobDefinition = structure(logical(0), 
            shape = "String", type = "string"), JobName = structure(logical(0), 
            shape = "String", type = "string"), ArrayProperties = structure(list(Size = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "BatchArrayProperties", 
            type = "structure"), RetryStrategy = structure(list(Attempts = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "BatchRetryStrategy", 
            type = "structure")), shape = "BatchParameters", 
            type = "structure"), SqsParameters = structure(list(MessageGroupId = structure(logical(0), 
            shape = "MessageGroupId", type = "string")), shape = "SqsParameters", 
            type = "structure")), shape = "Target", type = "structure")), 
        shape = "TargetList", type = "list", max = 100L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 2048L, min = 1L)), shape = "ListTargetsByRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entries = structure(list(structure(list(Time = structure(logical(0), 
        shape = "EventTime", type = "timestamp"), Source = structure(logical(0), 
        shape = "String", type = "string"), Resources = structure(list(structure(logical(0), 
        shape = "EventResource", type = "string")), shape = "EventResourceList", 
        type = "list"), DetailType = structure(logical(0), shape = "String", 
        type = "string"), Detail = structure(logical(0), shape = "String", 
        type = "string")), shape = "PutEventsRequestEntry", type = "structure")), 
        shape = "PutEventsRequestEntryList", type = "list", max = 10L, 
        min = 1L)), shape = "PutEventsRequest", type = "structure")
    return(populate(args, shape))
}

put_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedEntryCount = structure(logical(0), 
        shape = "Integer", type = "integer"), Entries = structure(list(structure(list(EventId = structure(logical(0), 
        shape = "EventId", type = "string"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string")), shape = "PutEventsResultEntry", 
        type = "structure")), shape = "PutEventsResultEntryList", 
        type = "list")), shape = "PutEventsResponse", type = "structure")
    return(populate(args, shape))
}

put_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Action = structure(logical(0), shape = "Action", 
        type = "string", max = 64L, min = 1L, pattern = "events:[a-zA-Z]+"), 
        Principal = structure(logical(0), shape = "Principal", 
            type = "string", max = 12L, min = 1L, pattern = "(\\d{12}|\\*)"), 
        StatementId = structure(logical(0), shape = "StatementId", 
            type = "string", max = 64L, min = 1L, pattern = "[a-zA-Z0-9-_]+")), 
        shape = "PutPermissionRequest", type = "structure")
    return(populate(args, shape))
}

put_permission_output <- function () 
{
    return(list())
}

put_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+"), 
        ScheduleExpression = structure(logical(0), shape = "ScheduleExpression", 
            type = "string", max = 256L), EventPattern = structure(logical(0), 
            shape = "EventPattern", type = "string"), State = structure(logical(0), 
            shape = "RuleState", type = "string"), Description = structure(logical(0), 
            shape = "RuleDescription", type = "string", max = 512L), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 1600L, min = 1L)), shape = "PutRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleArn = structure(logical(0), shape = "RuleArn", 
        type = "string", max = 1600L, min = 1L)), shape = "PutRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+"), 
        Targets = structure(list(structure(list(Id = structure(logical(0), 
            shape = "TargetId", type = "string", max = 64L, min = 1L, 
            pattern = "[\\.\\-_A-Za-z0-9]+"), Arn = structure(logical(0), 
            shape = "TargetArn", type = "string", max = 1600L, 
            min = 1L), RoleArn = structure(logical(0), shape = "RoleArn", 
            type = "string", max = 1600L, min = 1L), Input = structure(logical(0), 
            shape = "TargetInput", type = "string", max = 8192L), 
            InputPath = structure(logical(0), shape = "TargetInputPath", 
                type = "string", max = 256L), InputTransformer = structure(list(InputPathsMap = structure(list(structure(logical(0), 
                shape = "TargetInputPath", type = "string", max = 256L)), 
                shape = "TransformerPaths", type = "map", max = 10L), 
                InputTemplate = structure(logical(0), shape = "TransformerInput", 
                  type = "string", max = 8192L, min = 1L)), shape = "InputTransformer", 
                type = "structure"), KinesisParameters = structure(list(PartitionKeyPath = structure(logical(0), 
                shape = "TargetPartitionKeyPath", type = "string", 
                max = 256L)), shape = "KinesisParameters", type = "structure"), 
            RunCommandParameters = structure(list(RunCommandTargets = structure(list(structure(list(Key = structure(logical(0), 
                shape = "RunCommandTargetKey", type = "string", 
                max = 128L, min = 1L, pattern = "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"), 
                Values = structure(list(structure(logical(0), 
                  shape = "RunCommandTargetValue", type = "string", 
                  max = 256L, min = 1L)), shape = "RunCommandTargetValues", 
                  type = "list", max = 50L, min = 1L)), shape = "RunCommandTarget", 
                type = "structure")), shape = "RunCommandTargets", 
                type = "list", max = 5L, min = 1L)), shape = "RunCommandParameters", 
                type = "structure"), EcsParameters = structure(list(TaskDefinitionArn = structure(logical(0), 
                shape = "Arn", type = "string", max = 1600L, 
                min = 1L), TaskCount = structure(logical(0), 
                shape = "LimitMin1", type = "integer", min = 1L), 
                LaunchType = structure(logical(0), shape = "LaunchType", 
                  type = "string"), NetworkConfiguration = structure(list(AwsvpcConfiguration = structure(list(Subnets = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "StringList", 
                  type = "list"), SecurityGroups = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "StringList", 
                  type = "list"), AssignPublicIp = structure(logical(0), 
                  shape = "AssignPublicIp", type = "string")), 
                  shape = "AwsVpcConfiguration", type = "structure", 
                  locationName = "awsvpcConfiguration")), shape = "NetworkConfiguration", 
                  type = "structure"), PlatformVersion = structure(logical(0), 
                  shape = "String", type = "string"), Group = structure(logical(0), 
                  shape = "String", type = "string")), shape = "EcsParameters", 
                type = "structure"), BatchParameters = structure(list(JobDefinition = structure(logical(0), 
                shape = "String", type = "string"), JobName = structure(logical(0), 
                shape = "String", type = "string"), ArrayProperties = structure(list(Size = structure(logical(0), 
                shape = "Integer", type = "integer")), shape = "BatchArrayProperties", 
                type = "structure"), RetryStrategy = structure(list(Attempts = structure(logical(0), 
                shape = "Integer", type = "integer")), shape = "BatchRetryStrategy", 
                type = "structure")), shape = "BatchParameters", 
                type = "structure"), SqsParameters = structure(list(MessageGroupId = structure(logical(0), 
                shape = "MessageGroupId", type = "string")), 
                shape = "SqsParameters", type = "structure")), 
            shape = "Target", type = "structure")), shape = "TargetList", 
            type = "list", max = 100L, min = 1L)), shape = "PutTargetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedEntryCount = structure(logical(0), 
        shape = "Integer", type = "integer"), FailedEntries = structure(list(structure(list(TargetId = structure(logical(0), 
        shape = "TargetId", type = "string", max = 64L, min = 1L, 
        pattern = "[\\.\\-_A-Za-z0-9]+"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string")), shape = "PutTargetsResultEntry", 
        type = "structure")), shape = "PutTargetsResultEntryList", 
        type = "list")), shape = "PutTargetsResponse", type = "structure")
    return(populate(args, shape))
}

remove_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatementId = structure(logical(0), 
        shape = "StatementId", type = "string", max = 64L, min = 1L, 
        pattern = "[a-zA-Z0-9-_]+")), shape = "RemovePermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_permission_output <- function () 
{
    return(list())
}

remove_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(logical(0), shape = "RuleName", 
        type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+"), 
        Ids = structure(list(structure(logical(0), shape = "TargetId", 
            type = "string", max = 64L, min = 1L, pattern = "[\\.\\-_A-Za-z0-9]+")), 
            shape = "TargetIdList", type = "list", max = 100L, 
            min = 1L)), shape = "RemoveTargetsRequest", type = "structure")
    return(populate(args, shape))
}

remove_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedEntryCount = structure(logical(0), 
        shape = "Integer", type = "integer"), FailedEntries = structure(list(structure(list(TargetId = structure(logical(0), 
        shape = "TargetId", type = "string", max = 64L, min = 1L, 
        pattern = "[\\.\\-_A-Za-z0-9]+"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string")), shape = "RemoveTargetsResultEntry", 
        type = "structure")), shape = "RemoveTargetsResultEntryList", 
        type = "list")), shape = "RemoveTargetsResponse", type = "structure")
    return(populate(args, shape))
}

test_event_pattern_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventPattern = structure(logical(0), 
        shape = "EventPattern", type = "string"), Event = structure(logical(0), 
        shape = "String", type = "string")), shape = "TestEventPatternRequest", 
        type = "structure")
    return(populate(args, shape))
}

test_event_pattern_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Result = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "TestEventPatternResponse", 
        type = "structure")
    return(populate(args, shape))
}
