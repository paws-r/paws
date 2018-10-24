cancel_update_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "CancelUpdateStackInput", 
        type = "structure")
    return(populate(args, shape))
}

cancel_update_stack_output <- function () 
{
    return(list())
}

continue_update_rollback_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackNameOrId", type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 2048L, min = 20L), ResourcesToSkip = structure(list(structure(logical(0), 
            shape = "ResourceToSkip", type = "string", pattern = "[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*\\.[a-zA-Z0-9]+")), 
            shape = "ResourcesToSkip", type = "list"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "ContinueUpdateRollbackInput", type = "structure")
    return(populate(args, shape))
}

continue_update_rollback_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ContinueUpdateRollbackOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_change_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackNameOrId", type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        TemplateBody = structure(logical(0), shape = "TemplateBody", 
            type = "string", min = 1L), TemplateURL = structure(logical(0), 
            shape = "TemplateURL", type = "string", max = 1024L, 
            min = 1L), UsePreviousTemplate = structure(logical(0), 
            shape = "UsePreviousTemplate", type = "boolean"), 
        Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
            shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
            shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "Parameter", 
            type = "structure")), shape = "Parameters", type = "list"), 
        Capabilities = structure(list(structure(logical(0), shape = "Capability", 
            type = "string")), shape = "Capabilities", type = "list"), 
        ResourceTypes = structure(list(structure(logical(0), 
            shape = "ResourceType", type = "string", max = 256L, 
            min = 1L)), shape = "ResourceTypes", type = "list"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 2048L, min = 20L), RollbackConfiguration = structure(list(RollbackTriggers = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "Arn", type = "string"), Type = structure(logical(0), 
            shape = "Type", type = "string")), shape = "RollbackTrigger", 
            type = "structure")), shape = "RollbackTriggers", 
            type = "list", max = 5L), MonitoringTimeInMinutes = structure(logical(0), 
            shape = "MonitoringTimeInMinutes", type = "integer", 
            max = 180L, min = 0L)), shape = "RollbackConfiguration", 
            type = "structure"), NotificationARNs = structure(list(structure(logical(0), 
            shape = "NotificationARN", type = "string")), shape = "NotificationARNs", 
            type = "list", max = 5L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), ChangeSetName = structure(logical(0), 
            shape = "ChangeSetName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*"), ClientToken = structure(logical(0), 
            shape = "ClientToken", type = "string", max = 128L, 
            min = 1L), Description = structure(logical(0), shape = "Description", 
            type = "string", max = 1024L, min = 1L), ChangeSetType = structure(logical(0), 
            shape = "ChangeSetType", type = "string")), shape = "CreateChangeSetInput", 
        type = "structure")
    return(populate(args, shape))
}

create_change_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ChangeSetId", 
        type = "string", min = 1L, pattern = "arn:[-a-zA-Z0-9:/]*"), 
        StackId = structure(logical(0), shape = "StackId", type = "string")), 
        shape = "CreateChangeSetOutput", type = "structure")
    return(populate(args, shape))
}

create_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list"), 
        DisableRollback = structure(logical(0), shape = "DisableRollback", 
            type = "boolean"), RollbackConfiguration = structure(list(RollbackTriggers = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "Arn", type = "string"), Type = structure(logical(0), 
            shape = "Type", type = "string")), shape = "RollbackTrigger", 
            type = "structure")), shape = "RollbackTriggers", 
            type = "list", max = 5L), MonitoringTimeInMinutes = structure(logical(0), 
            shape = "MonitoringTimeInMinutes", type = "integer", 
            max = 180L, min = 0L)), shape = "RollbackConfiguration", 
            type = "structure"), TimeoutInMinutes = structure(logical(0), 
            shape = "TimeoutMinutes", type = "integer", min = 1L), 
        NotificationARNs = structure(list(structure(logical(0), 
            shape = "NotificationARN", type = "string")), shape = "NotificationARNs", 
            type = "list", max = 5L), Capabilities = structure(list(structure(logical(0), 
            shape = "Capability", type = "string")), shape = "Capabilities", 
            type = "list"), ResourceTypes = structure(list(structure(logical(0), 
            shape = "ResourceType", type = "string", max = 256L, 
            min = 1L)), shape = "ResourceTypes", type = "list"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 2048L, min = 20L), OnFailure = structure(logical(0), 
            shape = "OnFailure", type = "string"), StackPolicyBody = structure(logical(0), 
            shape = "StackPolicyBody", type = "string", max = 16384L, 
            min = 1L), StackPolicyURL = structure(logical(0), 
            shape = "StackPolicyURL", type = "string", max = 1350L, 
            min = 1L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*"), 
        EnableTerminationProtection = structure(logical(0), shape = "EnableTerminationProtection", 
            type = "boolean")), shape = "CreateStackInput", type = "structure")
    return(populate(args, shape))
}

create_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "StackId", 
        type = "string")), shape = "CreateStackOutput", type = "structure")
    return(populate(args, shape))
}

create_stack_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), Accounts = structure(list(structure(logical(0), 
        shape = "Account", type = "string", pattern = "[0-9]{12}")), 
        shape = "AccountList", type = "list"), Regions = structure(list(structure(logical(0), 
        shape = "Region", type = "string")), shape = "RegionList", 
        type = "list"), ParameterOverrides = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list"), 
        OperationPreferences = structure(list(RegionOrder = structure(list(structure(logical(0), 
            shape = "Region", type = "string")), shape = "RegionList", 
            type = "list"), FailureToleranceCount = structure(logical(0), 
            shape = "FailureToleranceCount", type = "integer", 
            min = 0L), FailureTolerancePercentage = structure(logical(0), 
            shape = "FailureTolerancePercentage", type = "integer", 
            max = 100L, min = 0L), MaxConcurrentCount = structure(logical(0), 
            shape = "MaxConcurrentCount", type = "integer", min = 1L), 
            MaxConcurrentPercentage = structure(logical(0), shape = "MaxConcurrentPercentage", 
                type = "integer", max = 100L, min = 1L)), shape = "StackSetOperationPreferences", 
            type = "structure"), OperationId = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "CreateStackInstancesInput", type = "structure")
    return(populate(args, shape))
}

create_stack_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "CreateStackInstancesOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_stack_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), TemplateBody = structure(logical(0), shape = "TemplateBody", 
        type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list"), 
        Capabilities = structure(list(structure(logical(0), shape = "Capability", 
            type = "string")), shape = "Capabilities", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), AdministrationRoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 20L), ExecutionRoleName = structure(logical(0), 
            shape = "ExecutionRoleName", type = "string", max = 64L, 
            min = 1L, pattern = "[a-zA-Z_0-9+=,.@-]+"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "CreateStackSetInput", type = "structure")
    return(populate(args, shape))
}

create_stack_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetId = structure(logical(0), 
        shape = "StackSetId", type = "string")), shape = "CreateStackSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_change_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeSetName = structure(logical(0), 
        shape = "ChangeSetNameOrId", type = "string", max = 1600L, 
        min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*"), 
        StackName = structure(logical(0), shape = "StackNameOrId", 
            type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)")), 
        shape = "DeleteChangeSetInput", type = "structure")
    return(populate(args, shape))
}

delete_change_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteChangeSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), RetainResources = structure(list(structure(logical(0), 
        shape = "LogicalResourceId", type = "string")), shape = "RetainResources", 
        type = "list"), RoleARN = structure(logical(0), shape = "RoleARN", 
        type = "string", max = 2048L, min = 20L), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "DeleteStackInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_stack_output <- function () 
{
    return(list())
}

delete_stack_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), Accounts = structure(list(structure(logical(0), 
        shape = "Account", type = "string", pattern = "[0-9]{12}")), 
        shape = "AccountList", type = "list"), Regions = structure(list(structure(logical(0), 
        shape = "Region", type = "string")), shape = "RegionList", 
        type = "list"), OperationPreferences = structure(list(RegionOrder = structure(list(structure(logical(0), 
        shape = "Region", type = "string")), shape = "RegionList", 
        type = "list"), FailureToleranceCount = structure(logical(0), 
        shape = "FailureToleranceCount", type = "integer", min = 0L), 
        FailureTolerancePercentage = structure(logical(0), shape = "FailureTolerancePercentage", 
            type = "integer", max = 100L, min = 0L), MaxConcurrentCount = structure(logical(0), 
            shape = "MaxConcurrentCount", type = "integer", min = 1L), 
        MaxConcurrentPercentage = structure(logical(0), shape = "MaxConcurrentPercentage", 
            type = "integer", max = 100L, min = 1L)), shape = "StackSetOperationPreferences", 
        type = "structure"), RetainStacks = structure(logical(0), 
        shape = "RetainStacks", type = "boolean"), OperationId = structure(logical(0), 
        shape = "ClientRequestToken", idempotencyToken = TRUE, 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "DeleteStackInstancesInput", type = "structure")
    return(populate(args, shape))
}

delete_stack_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "DeleteStackInstancesOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_stack_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string")), shape = "DeleteStackSetInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_stack_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteStackSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "DescribeAccountLimitsInput", type = "structure")
    return(populate(args, shape))
}

describe_account_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountLimits = structure(list(structure(list(Name = structure(logical(0), 
        shape = "LimitName", type = "string"), Value = structure(logical(0), 
        shape = "LimitValue", type = "integer")), shape = "AccountLimit", 
        type = "structure")), shape = "AccountLimitList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeAccountLimitsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_change_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeSetName = structure(logical(0), 
        shape = "ChangeSetNameOrId", type = "string", max = 1600L, 
        min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*"), 
        StackName = structure(logical(0), shape = "StackNameOrId", 
            type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeChangeSetInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_change_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeSetName = structure(logical(0), 
        shape = "ChangeSetName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*"), ChangeSetId = structure(logical(0), 
        shape = "ChangeSetId", type = "string", min = 1L, pattern = "arn:[-a-zA-Z0-9:/]*"), 
        StackId = structure(logical(0), shape = "StackId", type = "string"), 
        StackName = structure(logical(0), shape = "StackName", 
            type = "string"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 1024L, 
            min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
            shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
            shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "Parameter", 
            type = "structure")), shape = "Parameters", type = "list"), 
        CreationTime = structure(logical(0), shape = "CreationTime", 
            type = "timestamp"), ExecutionStatus = structure(logical(0), 
            shape = "ExecutionStatus", type = "string"), Status = structure(logical(0), 
            shape = "ChangeSetStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "ChangeSetStatusReason", type = "string"), 
        NotificationARNs = structure(list(structure(logical(0), 
            shape = "NotificationARN", type = "string")), shape = "NotificationARNs", 
            type = "list", max = 5L), RollbackConfiguration = structure(list(RollbackTriggers = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "Arn", type = "string"), Type = structure(logical(0), 
            shape = "Type", type = "string")), shape = "RollbackTrigger", 
            type = "structure")), shape = "RollbackTriggers", 
            type = "list", max = 5L), MonitoringTimeInMinutes = structure(logical(0), 
            shape = "MonitoringTimeInMinutes", type = "integer", 
            max = 180L, min = 0L)), shape = "RollbackConfiguration", 
            type = "structure"), Capabilities = structure(list(structure(logical(0), 
            shape = "Capability", type = "string")), shape = "Capabilities", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), Changes = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ChangeType", type = "string"), ResourceChange = structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), LogicalResourceId = structure(logical(0), 
            shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
            shape = "PhysicalResourceId", type = "string"), ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", max = 256L, 
            min = 1L), Replacement = structure(logical(0), shape = "Replacement", 
            type = "string"), Scope = structure(list(structure(logical(0), 
            shape = "ResourceAttribute", type = "string")), shape = "Scope", 
            type = "list"), Details = structure(list(structure(list(Target = structure(list(Attribute = structure(logical(0), 
            shape = "ResourceAttribute", type = "string"), Name = structure(logical(0), 
            shape = "PropertyName", type = "string"), RequiresRecreation = structure(logical(0), 
            shape = "RequiresRecreation", type = "string")), 
            shape = "ResourceTargetDefinition", type = "structure"), 
            Evaluation = structure(logical(0), shape = "EvaluationType", 
                type = "string"), ChangeSource = structure(logical(0), 
                shape = "ChangeSource", type = "string"), CausingEntity = structure(logical(0), 
                shape = "CausingEntity", type = "string")), shape = "ResourceChangeDetail", 
            type = "structure")), shape = "ResourceChangeDetails", 
            type = "list")), shape = "ResourceChange", type = "structure")), 
            shape = "Change", type = "structure")), shape = "Changes", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L)), shape = "DescribeChangeSetOutput", type = "structure")
    return(populate(args, shape))
}

describe_stack_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "DescribeStackEventsInput", type = "structure")
    return(populate(args, shape))
}

describe_stack_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackEvents = structure(list(structure(list(StackId = structure(logical(0), 
        shape = "StackId", type = "string"), EventId = structure(logical(0), 
        shape = "EventId", type = "string"), StackName = structure(logical(0), 
        shape = "StackName", type = "string"), LogicalResourceId = structure(logical(0), 
        shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
        shape = "PhysicalResourceId", type = "string"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", max = 256L, 
        min = 1L), Timestamp = structure(logical(0), shape = "Timestamp", 
        type = "timestamp"), ResourceStatus = structure(logical(0), 
        shape = "ResourceStatus", type = "string"), ResourceStatusReason = structure(logical(0), 
        shape = "ResourceStatusReason", type = "string"), ResourceProperties = structure(logical(0), 
        shape = "ResourceProperties", type = "string"), ClientRequestToken = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "StackEvent", 
        type = "structure")), shape = "StackEvents", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "DescribeStackEventsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), StackInstanceAccount = structure(logical(0), 
        shape = "Account", type = "string", pattern = "[0-9]{12}"), 
        StackInstanceRegion = structure(logical(0), shape = "Region", 
            type = "string")), shape = "DescribeStackInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackInstance = structure(list(StackSetId = structure(logical(0), 
        shape = "StackSetId", type = "string"), Region = structure(logical(0), 
        shape = "Region", type = "string"), Account = structure(logical(0), 
        shape = "Account", type = "string", pattern = "[0-9]{12}"), 
        StackId = structure(logical(0), shape = "StackId", type = "string"), 
        ParameterOverrides = structure(list(structure(list(ParameterKey = structure(logical(0), 
            shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
            shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "Parameter", 
            type = "structure")), shape = "Parameters", type = "list"), 
        Status = structure(logical(0), shape = "StackInstanceStatus", 
            type = "string"), StatusReason = structure(logical(0), 
            shape = "Reason", type = "string")), shape = "StackInstance", 
        type = "structure")), shape = "DescribeStackInstanceOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), LogicalResourceId = structure(logical(0), 
        shape = "LogicalResourceId", type = "string")), shape = "DescribeStackResourceInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackResourceDetail = structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), StackId = structure(logical(0), 
        shape = "StackId", type = "string"), LogicalResourceId = structure(logical(0), 
        shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
        shape = "PhysicalResourceId", type = "string"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", max = 256L, 
        min = 1L), LastUpdatedTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ResourceStatus = structure(logical(0), 
        shape = "ResourceStatus", type = "string"), ResourceStatusReason = structure(logical(0), 
        shape = "ResourceStatusReason", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), Metadata = structure(logical(0), shape = "Metadata", 
        type = "string")), shape = "StackResourceDetail", type = "structure")), 
        shape = "DescribeStackResourceOutput", type = "structure")
    return(populate(args, shape))
}

describe_stack_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), LogicalResourceId = structure(logical(0), 
        shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
        shape = "PhysicalResourceId", type = "string")), shape = "DescribeStackResourcesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackResources = structure(list(structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), StackId = structure(logical(0), 
        shape = "StackId", type = "string"), LogicalResourceId = structure(logical(0), 
        shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
        shape = "PhysicalResourceId", type = "string"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", max = 256L, 
        min = 1L), Timestamp = structure(logical(0), shape = "Timestamp", 
        type = "timestamp"), ResourceStatus = structure(logical(0), 
        shape = "ResourceStatus", type = "string"), ResourceStatusReason = structure(logical(0), 
        shape = "ResourceStatusReason", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L)), shape = "StackResource", type = "structure")), 
        shape = "StackResources", type = "list")), shape = "DescribeStackResourcesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string")), shape = "DescribeStackSetInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSet = structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), StackSetId = structure(logical(0), 
        shape = "StackSetId", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), Status = structure(logical(0), shape = "StackSetStatus", 
        type = "string"), TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list"), 
        Capabilities = structure(list(structure(logical(0), shape = "Capability", 
            type = "string")), shape = "Capabilities", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), StackSetARN = structure(logical(0), shape = "StackSetARN", 
            type = "string"), AdministrationRoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 20L), ExecutionRoleName = structure(logical(0), 
            shape = "ExecutionRoleName", type = "string", max = 64L, 
            min = 1L, pattern = "[a-zA-Z_0-9+=,.@-]+")), shape = "StackSet", 
        type = "structure")), shape = "DescribeStackSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_set_operation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "DescribeStackSetOperationInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_set_operation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetOperation = structure(list(OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*"), StackSetId = structure(logical(0), 
        shape = "StackSetId", type = "string"), Action = structure(logical(0), 
        shape = "StackSetOperationAction", type = "string"), 
        Status = structure(logical(0), shape = "StackSetOperationStatus", 
            type = "string"), OperationPreferences = structure(list(RegionOrder = structure(list(structure(logical(0), 
            shape = "Region", type = "string")), shape = "RegionList", 
            type = "list"), FailureToleranceCount = structure(logical(0), 
            shape = "FailureToleranceCount", type = "integer", 
            min = 0L), FailureTolerancePercentage = structure(logical(0), 
            shape = "FailureTolerancePercentage", type = "integer", 
            max = 100L, min = 0L), MaxConcurrentCount = structure(logical(0), 
            shape = "MaxConcurrentCount", type = "integer", min = 1L), 
            MaxConcurrentPercentage = structure(logical(0), shape = "MaxConcurrentPercentage", 
                type = "integer", max = 100L, min = 1L)), shape = "StackSetOperationPreferences", 
            type = "structure"), RetainStacks = structure(logical(0), 
            shape = "RetainStacksNullable", type = "boolean"), 
        AdministrationRoleARN = structure(logical(0), shape = "RoleARN", 
            type = "string", max = 2048L, min = 20L), ExecutionRoleName = structure(logical(0), 
            shape = "ExecutionRoleName", type = "string", max = 64L, 
            min = 1L, pattern = "[a-zA-Z_0-9+=,.@-]+"), CreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "StackSetOperation", 
        type = "structure")), shape = "DescribeStackSetOperationOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "DescribeStacksInput", type = "structure")
    return(populate(args, shape))
}

describe_stacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Stacks = structure(list(structure(list(StackId = structure(logical(0), 
        shape = "StackId", type = "string"), StackName = structure(logical(0), 
        shape = "StackName", type = "string"), ChangeSetId = structure(logical(0), 
        shape = "ChangeSetId", type = "string", min = 1L, pattern = "arn:[-a-zA-Z0-9:/]*"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 1024L, min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
            shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
            shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "Parameter", 
            type = "structure")), shape = "Parameters", type = "list"), 
        CreationTime = structure(logical(0), shape = "CreationTime", 
            type = "timestamp"), DeletionTime = structure(logical(0), 
            shape = "DeletionTime", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "LastUpdatedTime", type = "timestamp"), RollbackConfiguration = structure(list(RollbackTriggers = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "Arn", type = "string"), Type = structure(logical(0), 
            shape = "Type", type = "string")), shape = "RollbackTrigger", 
            type = "structure")), shape = "RollbackTriggers", 
            type = "list", max = 5L), MonitoringTimeInMinutes = structure(logical(0), 
            shape = "MonitoringTimeInMinutes", type = "integer", 
            max = 180L, min = 0L)), shape = "RollbackConfiguration", 
            type = "structure"), StackStatus = structure(logical(0), 
            shape = "StackStatus", type = "string"), StackStatusReason = structure(logical(0), 
            shape = "StackStatusReason", type = "string"), DisableRollback = structure(logical(0), 
            shape = "DisableRollback", type = "boolean"), NotificationARNs = structure(list(structure(logical(0), 
            shape = "NotificationARN", type = "string")), shape = "NotificationARNs", 
            type = "list", max = 5L), TimeoutInMinutes = structure(logical(0), 
            shape = "TimeoutMinutes", type = "integer", min = 1L), 
        Capabilities = structure(list(structure(logical(0), shape = "Capability", 
            type = "string")), shape = "Capabilities", type = "list"), 
        Outputs = structure(list(structure(list(OutputKey = structure(logical(0), 
            shape = "OutputKey", type = "string"), OutputValue = structure(logical(0), 
            shape = "OutputValue", type = "string"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 1024L, 
            min = 1L), ExportName = structure(logical(0), shape = "ExportName", 
            type = "string")), shape = "Output", type = "structure")), 
            shape = "Outputs", type = "list"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 20L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), EnableTerminationProtection = structure(logical(0), 
            shape = "EnableTerminationProtection", type = "boolean"), 
        ParentId = structure(logical(0), shape = "StackId", type = "string"), 
        RootId = structure(logical(0), shape = "StackId", type = "string")), 
        shape = "Stack", type = "structure")), shape = "Stacks", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1024L, min = 1L)), shape = "DescribeStacksOutput", 
        type = "structure")
    return(populate(args, shape))
}

estimate_template_cost_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list")), 
        shape = "EstimateTemplateCostInput", type = "structure")
    return(populate(args, shape))
}

estimate_template_cost_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Url = structure(logical(0), shape = "Url", 
        type = "string")), shape = "EstimateTemplateCostOutput", 
        type = "structure")
    return(populate(args, shape))
}

execute_change_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeSetName = structure(logical(0), 
        shape = "ChangeSetNameOrId", type = "string", max = 1600L, 
        min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*"), 
        StackName = structure(logical(0), shape = "StackNameOrId", 
            type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "ExecuteChangeSetInput", type = "structure")
    return(populate(args, shape))
}

execute_change_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ExecuteChangeSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_stack_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string")), shape = "GetStackPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

get_stack_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackPolicyBody = structure(logical(0), 
        shape = "StackPolicyBody", type = "string", max = 16384L, 
        min = 1L)), shape = "GetStackPolicyOutput", type = "structure")
    return(populate(args, shape))
}

get_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), ChangeSetName = structure(logical(0), 
        shape = "ChangeSetNameOrId", type = "string", max = 1600L, 
        min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*"), 
        TemplateStage = structure(logical(0), shape = "TemplateStage", 
            type = "string")), shape = "GetTemplateInput", type = "structure")
    return(populate(args, shape))
}

get_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), StagesAvailable = structure(list(structure(logical(0), 
        shape = "TemplateStage", type = "string")), shape = "StageList", 
        type = "list")), shape = "GetTemplateOutput", type = "structure")
    return(populate(args, shape))
}

get_template_summary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L), StackName = structure(logical(0), shape = "StackNameOrId", 
        type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        StackSetName = structure(logical(0), shape = "StackSetNameOrId", 
            type = "string", pattern = "[a-zA-Z][-a-zA-Z0-9]*(?::[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12})?")), 
        shape = "GetTemplateSummaryInput", type = "structure")
    return(populate(args, shape))
}

get_template_summary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), DefaultValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), ParameterType = structure(logical(0), 
        shape = "ParameterType", type = "string"), NoEcho = structure(logical(0), 
        shape = "NoEcho", type = "boolean"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), ParameterConstraints = structure(list(AllowedValues = structure(list(structure(logical(0), 
        shape = "AllowedValue", type = "string")), shape = "AllowedValues", 
        type = "list")), shape = "ParameterConstraints", type = "structure")), 
        shape = "ParameterDeclaration", type = "structure")), 
        shape = "ParameterDeclarations", type = "list"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), Capabilities = structure(list(structure(logical(0), 
        shape = "Capability", type = "string")), shape = "Capabilities", 
        type = "list"), CapabilitiesReason = structure(logical(0), 
        shape = "CapabilitiesReason", type = "string"), ResourceTypes = structure(list(structure(logical(0), 
        shape = "ResourceType", type = "string", max = 256L, 
        min = 1L)), shape = "ResourceTypes", type = "list"), 
        Version = structure(logical(0), shape = "Version", type = "string"), 
        Metadata = structure(logical(0), shape = "Metadata", 
            type = "string"), DeclaredTransforms = structure(list(structure(logical(0), 
            shape = "TransformName", type = "string")), shape = "TransformsList", 
            type = "list")), shape = "GetTemplateSummaryOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_change_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackNameOrId", type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListChangeSetsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_change_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Summaries = structure(list(structure(list(StackId = structure(logical(0), 
        shape = "StackId", type = "string"), StackName = structure(logical(0), 
        shape = "StackName", type = "string"), ChangeSetId = structure(logical(0), 
        shape = "ChangeSetId", type = "string", min = 1L, pattern = "arn:[-a-zA-Z0-9:/]*"), 
        ChangeSetName = structure(logical(0), shape = "ChangeSetName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z][-a-zA-Z0-9]*"), 
        ExecutionStatus = structure(logical(0), shape = "ExecutionStatus", 
            type = "string"), Status = structure(logical(0), 
            shape = "ChangeSetStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "ChangeSetStatusReason", type = "string"), 
        CreationTime = structure(logical(0), shape = "CreationTime", 
            type = "timestamp"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 1024L, 
            min = 1L)), shape = "ChangeSetSummary", type = "structure")), 
        shape = "ChangeSetSummaries", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListChangeSetsOutput", type = "structure")
    return(populate(args, shape))
}

list_exports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListExportsInput", type = "structure")
    return(populate(args, shape))
}

list_exports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Exports = structure(list(structure(list(ExportingStackId = structure(logical(0), 
        shape = "StackId", type = "string"), Name = structure(logical(0), 
        shape = "ExportName", type = "string"), Value = structure(logical(0), 
        shape = "ExportValue", type = "string")), shape = "Export", 
        type = "structure")), shape = "Exports", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListExportsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_imports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportName = structure(logical(0), 
        shape = "ExportName", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListImportsInput", type = "structure")
    return(populate(args, shape))
}

list_imports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Imports = structure(list(structure(logical(0), 
        shape = "StackName", type = "string")), shape = "Imports", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1024L, min = 1L)), shape = "ListImportsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L), StackInstanceAccount = structure(logical(0), 
            shape = "Account", type = "string", pattern = "[0-9]{12}"), 
        StackInstanceRegion = structure(logical(0), shape = "Region", 
            type = "string")), shape = "ListStackInstancesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Summaries = structure(list(structure(list(StackSetId = structure(logical(0), 
        shape = "StackSetId", type = "string"), Region = structure(logical(0), 
        shape = "Region", type = "string"), Account = structure(logical(0), 
        shape = "Account", type = "string", pattern = "[0-9]{12}"), 
        StackId = structure(logical(0), shape = "StackId", type = "string"), 
        Status = structure(logical(0), shape = "StackInstanceStatus", 
            type = "string"), StatusReason = structure(logical(0), 
            shape = "Reason", type = "string")), shape = "StackInstanceSummary", 
        type = "structure")), shape = "StackInstanceSummaries", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1024L, min = 1L)), shape = "ListStackInstancesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListStackResourcesInput", type = "structure")
    return(populate(args, shape))
}

list_stack_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackResourceSummaries = structure(list(structure(list(LogicalResourceId = structure(logical(0), 
        shape = "LogicalResourceId", type = "string"), PhysicalResourceId = structure(logical(0), 
        shape = "PhysicalResourceId", type = "string"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", max = 256L, 
        min = 1L), LastUpdatedTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ResourceStatus = structure(logical(0), 
        shape = "ResourceStatus", type = "string"), ResourceStatusReason = structure(logical(0), 
        shape = "ResourceStatusReason", type = "string")), shape = "StackResourceSummary", 
        type = "structure")), shape = "StackResourceSummaries", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1024L, min = 1L)), shape = "ListStackResourcesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_set_operation_results_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L)), shape = "ListStackSetOperationResultsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_set_operation_results_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Summaries = structure(list(structure(list(Account = structure(logical(0), 
        shape = "Account", type = "string", pattern = "[0-9]{12}"), 
        Region = structure(logical(0), shape = "Region", type = "string"), 
        Status = structure(logical(0), shape = "StackSetOperationResultStatus", 
            type = "string"), StatusReason = structure(logical(0), 
            shape = "Reason", type = "string"), AccountGateResult = structure(list(Status = structure(logical(0), 
            shape = "AccountGateStatus", type = "string"), StatusReason = structure(logical(0), 
            shape = "AccountGateStatusReason", type = "string")), 
            shape = "AccountGateResult", type = "structure")), 
        shape = "StackSetOperationResultSummary", type = "structure")), 
        shape = "StackSetOperationResultSummaries", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListStackSetOperationResultsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_set_operations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L)), shape = "ListStackSetOperationsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_set_operations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Summaries = structure(list(structure(list(OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*"), Action = structure(logical(0), 
        shape = "StackSetOperationAction", type = "string"), 
        Status = structure(logical(0), shape = "StackSetOperationStatus", 
            type = "string"), CreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "StackSetOperationSummary", 
        type = "structure")), shape = "StackSetOperationSummaries", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1024L, min = 1L)), shape = "ListStackSetOperationsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L), Status = structure(logical(0), 
            shape = "StackSetStatus", type = "string")), shape = "ListStackSetsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_stack_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Summaries = structure(list(structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), StackSetId = structure(logical(0), 
        shape = "StackSetId", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), Status = structure(logical(0), shape = "StackSetStatus", 
        type = "string")), shape = "StackSetSummary", type = "structure")), 
        shape = "StackSetSummaries", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L)), 
        shape = "ListStackSetsOutput", type = "structure")
    return(populate(args, shape))
}

list_stacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L), 
        StackStatusFilter = structure(list(structure(logical(0), 
            shape = "StackStatus", type = "string")), shape = "StackStatusFilter", 
            type = "list")), shape = "ListStacksInput", type = "structure")
    return(populate(args, shape))
}

list_stacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSummaries = structure(list(structure(list(StackId = structure(logical(0), 
        shape = "StackId", type = "string"), StackName = structure(logical(0), 
        shape = "StackName", type = "string"), TemplateDescription = structure(logical(0), 
        shape = "TemplateDescription", type = "string"), CreationTime = structure(logical(0), 
        shape = "CreationTime", type = "timestamp"), LastUpdatedTime = structure(logical(0), 
        shape = "LastUpdatedTime", type = "timestamp"), DeletionTime = structure(logical(0), 
        shape = "DeletionTime", type = "timestamp"), StackStatus = structure(logical(0), 
        shape = "StackStatus", type = "string"), StackStatusReason = structure(logical(0), 
        shape = "StackStatusReason", type = "string"), ParentId = structure(logical(0), 
        shape = "StackId", type = "string"), RootId = structure(logical(0), 
        shape = "StackId", type = "string")), shape = "StackSummary", 
        type = "structure")), shape = "StackSummaries", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L)), shape = "ListStacksOutput", 
        type = "structure")
    return(populate(args, shape))
}

set_stack_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), StackPolicyBody = structure(logical(0), 
        shape = "StackPolicyBody", type = "string", max = 16384L, 
        min = 1L), StackPolicyURL = structure(logical(0), shape = "StackPolicyURL", 
        type = "string", max = 1350L, min = 1L)), shape = "SetStackPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

set_stack_policy_output <- function () 
{
    return(list())
}

signal_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackNameOrId", type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"), 
        LogicalResourceId = structure(logical(0), shape = "LogicalResourceId", 
            type = "string"), UniqueId = structure(logical(0), 
            shape = "ResourceSignalUniqueId", type = "string", 
            max = 64L, min = 1L), Status = structure(logical(0), 
            shape = "ResourceSignalStatus", type = "string")), 
        shape = "SignalResourceInput", type = "structure")
    return(populate(args, shape))
}

signal_resource_output <- function () 
{
    return(list())
}

stop_stack_set_operation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "StopStackSetOperationInput", 
        type = "structure")
    return(populate(args, shape))
}

stop_stack_set_operation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopStackSetOperationOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackName = structure(logical(0), 
        shape = "StackName", type = "string"), TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L), UsePreviousTemplate = structure(logical(0), 
        shape = "UsePreviousTemplate", type = "boolean"), StackPolicyDuringUpdateBody = structure(logical(0), 
        shape = "StackPolicyDuringUpdateBody", type = "string", 
        max = 16384L, min = 1L), StackPolicyDuringUpdateURL = structure(logical(0), 
        shape = "StackPolicyDuringUpdateURL", type = "string", 
        max = 1350L, min = 1L), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list"), 
        Capabilities = structure(list(structure(logical(0), shape = "Capability", 
            type = "string")), shape = "Capabilities", type = "list"), 
        ResourceTypes = structure(list(structure(logical(0), 
            shape = "ResourceType", type = "string", max = 256L, 
            min = 1L)), shape = "ResourceTypes", type = "list"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            max = 2048L, min = 20L), RollbackConfiguration = structure(list(RollbackTriggers = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "Arn", type = "string"), Type = structure(logical(0), 
            shape = "Type", type = "string")), shape = "RollbackTrigger", 
            type = "structure")), shape = "RollbackTriggers", 
            type = "list", max = 5L), MonitoringTimeInMinutes = structure(logical(0), 
            shape = "MonitoringTimeInMinutes", type = "integer", 
            max = 180L, min = 0L)), shape = "RollbackConfiguration", 
            type = "structure"), StackPolicyBody = structure(logical(0), 
            shape = "StackPolicyBody", type = "string", max = 16384L, 
            min = 1L), StackPolicyURL = structure(logical(0), 
            shape = "StackPolicyURL", type = "string", max = 1350L, 
            min = 1L), NotificationARNs = structure(list(structure(logical(0), 
            shape = "NotificationARN", type = "string")), shape = "NotificationARNs", 
            type = "list", max = 5L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "UpdateStackInput", type = "structure")
    return(populate(args, shape))
}

update_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "StackId", 
        type = "string")), shape = "UpdateStackOutput", type = "structure")
    return(populate(args, shape))
}

update_stack_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetNameOrId", type = "string", pattern = "[a-zA-Z][-a-zA-Z0-9]*(?::[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12})?"), 
        Accounts = structure(list(structure(logical(0), shape = "Account", 
            type = "string", pattern = "[0-9]{12}")), shape = "AccountList", 
            type = "list"), Regions = structure(list(structure(logical(0), 
            shape = "Region", type = "string")), shape = "RegionList", 
            type = "list"), ParameterOverrides = structure(list(structure(list(ParameterKey = structure(logical(0), 
            shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
            shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
            shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
            shape = "ParameterValue", type = "string")), shape = "Parameter", 
            type = "structure")), shape = "Parameters", type = "list"), 
        OperationPreferences = structure(list(RegionOrder = structure(list(structure(logical(0), 
            shape = "Region", type = "string")), shape = "RegionList", 
            type = "list"), FailureToleranceCount = structure(logical(0), 
            shape = "FailureToleranceCount", type = "integer", 
            min = 0L), FailureTolerancePercentage = structure(logical(0), 
            shape = "FailureTolerancePercentage", type = "integer", 
            max = 100L, min = 0L), MaxConcurrentCount = structure(logical(0), 
            shape = "MaxConcurrentCount", type = "integer", min = 1L), 
            MaxConcurrentPercentage = structure(logical(0), shape = "MaxConcurrentPercentage", 
                type = "integer", max = 100L, min = 1L)), shape = "StackSetOperationPreferences", 
            type = "structure"), OperationId = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), 
        shape = "UpdateStackInstancesInput", type = "structure")
    return(populate(args, shape))
}

update_stack_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "UpdateStackInstancesOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_stack_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSetName = structure(logical(0), 
        shape = "StackSetName", type = "string"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), TemplateBody = structure(logical(0), shape = "TemplateBody", 
        type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L), UsePreviousTemplate = structure(logical(0), 
        shape = "UsePreviousTemplate", type = "boolean"), Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), ParameterValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), UsePreviousValue = structure(logical(0), 
        shape = "UsePreviousValue", type = "boolean"), ResolvedValue = structure(logical(0), 
        shape = "ParameterValue", type = "string")), shape = "Parameter", 
        type = "structure")), shape = "Parameters", type = "list"), 
        Capabilities = structure(list(structure(logical(0), shape = "Capability", 
            type = "string")), shape = "Capabilities", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 1L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list", 
            max = 50L), OperationPreferences = structure(list(RegionOrder = structure(list(structure(logical(0), 
            shape = "Region", type = "string")), shape = "RegionList", 
            type = "list"), FailureToleranceCount = structure(logical(0), 
            shape = "FailureToleranceCount", type = "integer", 
            min = 0L), FailureTolerancePercentage = structure(logical(0), 
            shape = "FailureTolerancePercentage", type = "integer", 
            max = 100L, min = 0L), MaxConcurrentCount = structure(logical(0), 
            shape = "MaxConcurrentCount", type = "integer", min = 1L), 
            MaxConcurrentPercentage = structure(logical(0), shape = "MaxConcurrentPercentage", 
                type = "integer", max = 100L, min = 1L)), shape = "StackSetOperationPreferences", 
            type = "structure"), AdministrationRoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 20L), ExecutionRoleName = structure(logical(0), 
            shape = "ExecutionRoleName", type = "string", max = 64L, 
            min = 1L, pattern = "[a-zA-Z_0-9+=,.@-]+"), OperationId = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*"), 
        Accounts = structure(list(structure(logical(0), shape = "Account", 
            type = "string", pattern = "[0-9]{12}")), shape = "AccountList", 
            type = "list"), Regions = structure(list(structure(logical(0), 
            shape = "Region", type = "string")), shape = "RegionList", 
            type = "list")), shape = "UpdateStackSetInput", type = "structure")
    return(populate(args, shape))
}

update_stack_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "ClientRequestToken", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9][-a-zA-Z0-9]*")), shape = "UpdateStackSetOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_termination_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnableTerminationProtection = structure(logical(0), 
        shape = "EnableTerminationProtection", type = "boolean"), 
        StackName = structure(logical(0), shape = "StackNameOrId", 
            type = "string", min = 1L, pattern = "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)")), 
        shape = "UpdateTerminationProtectionInput", type = "structure")
    return(populate(args, shape))
}

update_termination_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "StackId", 
        type = "string")), shape = "UpdateTerminationProtectionOutput", 
        type = "structure")
    return(populate(args, shape))
}

validate_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateBody = structure(logical(0), 
        shape = "TemplateBody", type = "string", min = 1L), TemplateURL = structure(logical(0), 
        shape = "TemplateURL", type = "string", max = 1024L, 
        min = 1L)), shape = "ValidateTemplateInput", type = "structure")
    return(populate(args, shape))
}

validate_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(ParameterKey = structure(logical(0), 
        shape = "ParameterKey", type = "string"), DefaultValue = structure(logical(0), 
        shape = "ParameterValue", type = "string"), NoEcho = structure(logical(0), 
        shape = "NoEcho", type = "boolean"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L)), shape = "TemplateParameter", type = "structure")), 
        shape = "TemplateParameters", type = "list"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 1024L, 
        min = 1L), Capabilities = structure(list(structure(logical(0), 
        shape = "Capability", type = "string")), shape = "Capabilities", 
        type = "list"), CapabilitiesReason = structure(logical(0), 
        shape = "CapabilitiesReason", type = "string"), DeclaredTransforms = structure(list(structure(logical(0), 
        shape = "TransformName", type = "string")), shape = "TransformsList", 
        type = "list")), shape = "ValidateTemplateOutput", type = "structure")
    return(populate(args, shape))
}
