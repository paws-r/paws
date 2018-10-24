add_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        StatementId = structure(logical(0), shape = "StatementId", 
            type = "string", max = 100L, min = 1L, pattern = "([a-zA-Z0-9-_]+)"), 
        Action = structure(logical(0), shape = "Action", type = "string", 
            pattern = "(lambda:[*]|lambda:[a-zA-Z]+|[*])"), Principal = structure(logical(0), 
            shape = "Principal", type = "string", pattern = ".*"), 
        SourceArn = structure(logical(0), shape = "Arn", type = "string", 
            pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        SourceAccount = structure(logical(0), shape = "SourceOwner", 
            type = "string", pattern = "\\d{12}"), EventSourceToken = structure(logical(0), 
            shape = "EventSourceToken", type = "string", max = 256L, 
            min = 0L, pattern = "[a-zA-Z0-9._\\-]+"), Qualifier = structure(logical(0), 
            shape = "Qualifier", location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "AddPermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_permission_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Statement = structure(logical(0), 
        shape = "String", type = "string")), shape = "AddPermissionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", type = "string", 
            max = 128L, min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), RoutingConfig = structure(list(AdditionalVersionWeights = structure(list(structure(logical(0), 
            shape = "Weight", type = "double", max = 1L, min = 0L)), 
            shape = "AdditionalVersionWeights", type = "map")), 
            shape = "AliasRoutingConfiguration", type = "structure")), 
        shape = "CreateAliasRequest", type = "structure")
    return(populate(args, shape))
}

create_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasArn = structure(logical(0), 
        shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", type = "string", 
            max = 128L, min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), RoutingConfig = structure(list(AdditionalVersionWeights = structure(list(structure(logical(0), 
            shape = "Weight", type = "double", max = 1L, min = 0L)), 
            shape = "AdditionalVersionWeights", type = "map")), 
            shape = "AliasRoutingConfiguration", type = "structure"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "AliasConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

create_event_source_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionName = structure(logical(0), shape = "FunctionName", 
            type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Enabled = structure(logical(0), shape = "Enabled", type = "boolean"), 
        BatchSize = structure(logical(0), shape = "BatchSize", 
            type = "integer", max = 10000L, min = 1L), StartingPosition = structure(logical(0), 
            shape = "EventSourcePosition", type = "string"), 
        StartingPositionTimestamp = structure(logical(0), shape = "Date", 
            type = "timestamp")), shape = "CreateEventSourceMappingRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_event_source_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        type = "string"), BatchSize = structure(logical(0), shape = "BatchSize", 
        type = "integer", max = 10000L, min = 1L), EventSourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionArn = structure(logical(0), shape = "FunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        LastModified = structure(logical(0), shape = "Date", 
            type = "timestamp"), LastProcessingResult = structure(logical(0), 
            shape = "String", type = "string"), State = structure(logical(0), 
            shape = "String", type = "string"), StateTransitionReason = structure(logical(0), 
            shape = "String", type = "string")), shape = "EventSourceMappingConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

create_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", type = "string", max = 140L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), Code = structure(list(ZipFile = structure(logical(0), 
            shape = "Blob", type = "blob", sensitive = TRUE), 
            S3Bucket = structure(logical(0), shape = "S3Bucket", 
                type = "string", max = 63L, min = 3L, pattern = "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"), 
            S3Key = structure(logical(0), shape = "S3Key", type = "string", 
                max = 1024L, min = 1L), S3ObjectVersion = structure(logical(0), 
                shape = "S3ObjectVersion", type = "string", max = 1024L, 
                min = 1L)), shape = "FunctionCode", type = "structure"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), Publish = structure(logical(0), shape = "Boolean", 
            type = "boolean"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE)), shape = "Environment", 
            type = "structure"), KMSKeyArn = structure(logical(0), 
            shape = "KMSKeyArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfig", 
            type = "structure"), Tags = structure(list(structure(logical(0), 
            shape = "TagValue", type = "string")), shape = "Tags", 
            type = "map")), shape = "CreateFunctionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

delete_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", location = "uri", 
            locationName = "Name", type = "string", max = 128L, 
            min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)")), 
        shape = "DeleteAliasRequest", type = "structure")
    return(populate(args, shape))
}

delete_alias_output <- function () 
{
    return(list())
}

delete_event_source_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        location = "uri", locationName = "UUID", type = "string")), 
        shape = "DeleteEventSourceMappingRequest", type = "structure")
    return(populate(args, shape))
}

delete_event_source_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        type = "string"), BatchSize = structure(logical(0), shape = "BatchSize", 
        type = "integer", max = 10000L, min = 1L), EventSourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionArn = structure(logical(0), shape = "FunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        LastModified = structure(logical(0), shape = "Date", 
            type = "timestamp"), LastProcessingResult = structure(logical(0), 
            shape = "String", type = "string"), State = structure(logical(0), 
            shape = "String", type = "string"), StateTransitionReason = structure(logical(0), 
            shape = "String", type = "string")), shape = "EventSourceMappingConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

delete_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Qualifier = structure(logical(0), shape = "Qualifier", 
            location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)")), 
        shape = "DeleteFunctionRequest", type = "structure")
    return(populate(args, shape))
}

delete_function_output <- function () 
{
    return(list())
}

delete_function_concurrency_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?")), 
        shape = "DeleteFunctionConcurrencyRequest", type = "structure")
    return(populate(args, shape))
}

delete_function_concurrency_output <- function () 
{
    return(list())
}

get_account_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetAccountSettingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_account_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountLimit = structure(list(TotalCodeSize = structure(logical(0), 
        shape = "Long", type = "long"), CodeSizeUnzipped = structure(logical(0), 
        shape = "Long", type = "long"), CodeSizeZipped = structure(logical(0), 
        shape = "Long", type = "long"), ConcurrentExecutions = structure(logical(0), 
        shape = "Integer", type = "integer"), UnreservedConcurrentExecutions = structure(logical(0), 
        shape = "UnreservedConcurrentExecutions", type = "integer", 
        min = 0L)), shape = "AccountLimit", type = "structure"), 
        AccountUsage = structure(list(TotalCodeSize = structure(logical(0), 
            shape = "Long", type = "long"), FunctionCount = structure(logical(0), 
            shape = "Long", type = "long")), shape = "AccountUsage", 
            type = "structure")), shape = "GetAccountSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", location = "uri", 
            locationName = "Name", type = "string", max = 128L, 
            min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)")), 
        shape = "GetAliasRequest", type = "structure")
    return(populate(args, shape))
}

get_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasArn = structure(logical(0), 
        shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", type = "string", 
            max = 128L, min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), RoutingConfig = structure(list(AdditionalVersionWeights = structure(list(structure(logical(0), 
            shape = "Weight", type = "double", max = 1L, min = 0L)), 
            shape = "AdditionalVersionWeights", type = "map")), 
            shape = "AliasRoutingConfiguration", type = "structure"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "AliasConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

get_event_source_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        location = "uri", locationName = "UUID", type = "string")), 
        shape = "GetEventSourceMappingRequest", type = "structure")
    return(populate(args, shape))
}

get_event_source_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        type = "string"), BatchSize = structure(logical(0), shape = "BatchSize", 
        type = "integer", max = 10000L, min = 1L), EventSourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionArn = structure(logical(0), shape = "FunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        LastModified = structure(logical(0), shape = "Date", 
            type = "timestamp"), LastProcessingResult = structure(logical(0), 
            shape = "String", type = "string"), State = structure(logical(0), 
            shape = "String", type = "string"), StateTransitionReason = structure(logical(0), 
            shape = "String", type = "string")), shape = "EventSourceMappingConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

get_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 170L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Qualifier = structure(logical(0), shape = "Qualifier", 
            location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)")), 
        shape = "GetFunctionRequest", type = "structure")
    return(populate(args, shape))
}

get_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Configuration = structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure"), Code = structure(list(RepositoryType = structure(logical(0), 
        shape = "String", type = "string"), Location = structure(logical(0), 
        shape = "String", type = "string")), shape = "FunctionCodeLocation", 
        type = "structure"), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tags", 
        type = "map"), Concurrency = structure(list(ReservedConcurrentExecutions = structure(logical(0), 
        shape = "ReservedConcurrentExecutions", type = "integer", 
        min = 0L)), shape = "Concurrency", type = "structure")), 
        shape = "GetFunctionResponse", type = "structure")
    return(populate(args, shape))
}

get_function_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 170L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Qualifier = structure(logical(0), shape = "Qualifier", 
            location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)")), 
        shape = "GetFunctionConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

get_function_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

get_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 170L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Qualifier = structure(logical(0), shape = "Qualifier", 
            location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)")), 
        shape = "GetPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(logical(0), shape = "String", 
        type = "string"), RevisionId = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

invoke_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 170L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        InvocationType = structure(logical(0), shape = "InvocationType", 
            location = "header", locationName = "X-Amz-Invocation-Type", 
            type = "string"), LogType = structure(logical(0), 
            shape = "LogType", location = "header", locationName = "X-Amz-Log-Type", 
            type = "string"), ClientContext = structure(logical(0), 
            shape = "String", location = "header", locationName = "X-Amz-Client-Context", 
            type = "string"), Payload = structure(logical(0), 
            shape = "Blob", type = "blob", sensitive = TRUE), 
        Qualifier = structure(logical(0), shape = "Qualifier", 
            location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)")), 
        shape = "InvocationRequest", type = "structure", payload = "Payload")
    return(populate(args, shape))
}

invoke_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "Integer", location = "statusCode", type = "integer"), 
        FunctionError = structure(logical(0), shape = "String", 
            location = "header", locationName = "X-Amz-Function-Error", 
            type = "string"), LogResult = structure(logical(0), 
            shape = "String", location = "header", locationName = "X-Amz-Log-Result", 
            type = "string"), Payload = structure(logical(0), 
            shape = "Blob", type = "blob", sensitive = TRUE), 
        ExecutedVersion = structure(logical(0), shape = "Version", 
            location = "header", locationName = "X-Amz-Executed-Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)")), 
        shape = "InvocationResponse", type = "structure", payload = "Payload")
    return(populate(args, shape))
}

invoke_async_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 170L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        InvokeArgs = structure(logical(0), shape = "BlobStream", 
            type = "blob", streaming = TRUE)), shape = "InvokeAsyncRequest", 
        type = "structure", deprecated = TRUE, payload = "InvokeArgs")
    return(populate(args, shape))
}

invoke_async_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "HttpStatus", 
        location = "statusCode", type = "integer")), shape = "InvokeAsyncResponse", 
        type = "structure", deprecated = TRUE)
    return(populate(args, shape))
}

list_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            location = "querystring", locationName = "FunctionVersion", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Marker = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "Marker", type = "string"), MaxItems = structure(logical(0), 
            shape = "MaxListItems", location = "querystring", 
            locationName = "MaxItems", type = "integer", max = 10000L, 
            min = 1L)), shape = "ListAliasesRequest", type = "structure")
    return(populate(args, shape))
}

list_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "String", type = "string"), Aliases = structure(list(structure(list(AliasArn = structure(logical(0), 
        shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", type = "string", 
            max = 128L, min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), RoutingConfig = structure(list(AdditionalVersionWeights = structure(list(structure(logical(0), 
            shape = "Weight", type = "double", max = 1L, min = 0L)), 
            shape = "AdditionalVersionWeights", type = "map")), 
            shape = "AliasRoutingConfiguration", type = "structure"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "AliasConfiguration", 
        type = "structure")), shape = "AliasList", type = "list")), 
        shape = "ListAliasesResponse", type = "structure")
    return(populate(args, shape))
}

list_event_source_mappings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSourceArn = structure(logical(0), 
        shape = "Arn", location = "querystring", locationName = "EventSourceArn", 
        type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionName = structure(logical(0), shape = "FunctionName", 
            location = "querystring", locationName = "FunctionName", 
            type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Marker = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "Marker", type = "string"), MaxItems = structure(logical(0), 
            shape = "MaxListItems", location = "querystring", 
            locationName = "MaxItems", type = "integer", max = 10000L, 
            min = 1L)), shape = "ListEventSourceMappingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_event_source_mappings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "String", type = "string"), EventSourceMappings = structure(list(structure(list(UUID = structure(logical(0), 
        shape = "String", type = "string"), BatchSize = structure(logical(0), 
        shape = "BatchSize", type = "integer", max = 10000L, 
        min = 1L), EventSourceArn = structure(logical(0), shape = "Arn", 
        type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionArn = structure(logical(0), shape = "FunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        LastModified = structure(logical(0), shape = "Date", 
            type = "timestamp"), LastProcessingResult = structure(logical(0), 
            shape = "String", type = "string"), State = structure(logical(0), 
            shape = "String", type = "string"), StateTransitionReason = structure(logical(0), 
            shape = "String", type = "string")), shape = "EventSourceMappingConfiguration", 
        type = "structure")), shape = "EventSourceMappingsList", 
        type = "list")), shape = "ListEventSourceMappingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_functions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MasterRegion = structure(logical(0), 
        shape = "MasterRegion", location = "querystring", locationName = "MasterRegion", 
        type = "string", pattern = "ALL|[a-z]{2}(-gov)?-[a-z]+-\\d{1}"), 
        FunctionVersion = structure(logical(0), shape = "FunctionVersion", 
            location = "querystring", locationName = "FunctionVersion", 
            type = "string"), Marker = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "Marker", 
            type = "string"), MaxItems = structure(logical(0), 
            shape = "MaxListItems", location = "querystring", 
            locationName = "MaxItems", type = "integer", max = 10000L, 
            min = 1L)), shape = "ListFunctionsRequest", type = "structure")
    return(populate(args, shape))
}

list_functions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "String", type = "string"), Functions = structure(list(structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")), shape = "FunctionList", type = "list")), 
        shape = "ListFunctionsResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resource = structure(logical(0), 
        shape = "FunctionArn", location = "uri", locationName = "ARN", 
        type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?")), 
        shape = "ListTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tags", 
        type = "map")), shape = "ListTagsResponse", type = "structure")
    return(populate(args, shape))
}

list_versions_by_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 170L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Marker = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "Marker", type = "string"), MaxItems = structure(logical(0), 
            shape = "MaxListItems", location = "querystring", 
            locationName = "MaxItems", type = "integer", max = 10000L, 
            min = 1L)), shape = "ListVersionsByFunctionRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_versions_by_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "String", type = "string"), Versions = structure(list(structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")), shape = "FunctionList", type = "list")), 
        shape = "ListVersionsByFunctionResponse", type = "structure")
    return(populate(args, shape))
}

publish_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        CodeSha256 = structure(logical(0), shape = "String", 
            type = "string"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "PublishVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

publish_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

put_function_concurrency_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        ReservedConcurrentExecutions = structure(logical(0), 
            shape = "ReservedConcurrentExecutions", type = "integer", 
            min = 0L)), shape = "PutFunctionConcurrencyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_function_concurrency_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedConcurrentExecutions = structure(logical(0), 
        shape = "ReservedConcurrentExecutions", type = "integer", 
        min = 0L)), shape = "Concurrency", type = "structure")
    return(populate(args, shape))
}

remove_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        StatementId = structure(logical(0), shape = "NamespacedStatementId", 
            location = "uri", locationName = "StatementId", type = "string", 
            max = 100L, min = 1L, pattern = "([a-zA-Z0-9-_.]+)"), 
        Qualifier = structure(logical(0), shape = "Qualifier", 
            location = "querystring", locationName = "Qualifier", 
            type = "string", max = 128L, min = 1L, pattern = "(|[a-zA-Z0-9$_-]+)"), 
        RevisionId = structure(logical(0), shape = "String", 
            location = "querystring", locationName = "RevisionId", 
            type = "string")), shape = "RemovePermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_permission_output <- function () 
{
    return(list())
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resource = structure(logical(0), 
        shape = "FunctionArn", location = "uri", locationName = "ARN", 
        type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string")), shape = "Tags", type = "map")), 
        shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function () 
{
    return(list())
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resource = structure(logical(0), 
        shape = "FunctionArn", location = "uri", locationName = "ARN", 
        type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string")), shape = "TagKeyList", location = "querystring", 
            locationName = "tagKeys", type = "list")), shape = "UntagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function () 
{
    return(list())
}

update_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", location = "uri", 
            locationName = "Name", type = "string", max = 128L, 
            min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), RoutingConfig = structure(list(AdditionalVersionWeights = structure(list(structure(logical(0), 
            shape = "Weight", type = "double", max = 1L, min = 0L)), 
            shape = "AdditionalVersionWeights", type = "map")), 
            shape = "AliasRoutingConfiguration", type = "structure"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "UpdateAliasRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AliasArn = structure(logical(0), 
        shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Name = structure(logical(0), shape = "Alias", type = "string", 
            max = 128L, min = 1L, pattern = "(?!^[0-9]+$)([a-zA-Z0-9-_]+)"), 
        FunctionVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 1024L, min = 1L, pattern = "(\\$LATEST|[0-9]+)"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 256L, min = 0L), RoutingConfig = structure(list(AdditionalVersionWeights = structure(list(structure(logical(0), 
            shape = "Weight", type = "double", max = 1L, min = 0L)), 
            shape = "AdditionalVersionWeights", type = "map")), 
            shape = "AliasRoutingConfiguration", type = "structure"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "AliasConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

update_event_source_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        location = "uri", locationName = "UUID", type = "string"), 
        FunctionName = structure(logical(0), shape = "FunctionName", 
            type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Enabled = structure(logical(0), shape = "Enabled", type = "boolean"), 
        BatchSize = structure(logical(0), shape = "BatchSize", 
            type = "integer", max = 10000L, min = 1L)), shape = "UpdateEventSourceMappingRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_event_source_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UUID = structure(logical(0), shape = "String", 
        type = "string"), BatchSize = structure(logical(0), shape = "BatchSize", 
        type = "integer", max = 10000L, min = 1L), EventSourceArn = structure(logical(0), 
        shape = "Arn", type = "string", pattern = "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"), 
        FunctionArn = structure(logical(0), shape = "FunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        LastModified = structure(logical(0), shape = "Date", 
            type = "timestamp"), LastProcessingResult = structure(logical(0), 
            shape = "String", type = "string"), State = structure(logical(0), 
            shape = "String", type = "string"), StateTransitionReason = structure(logical(0), 
            shape = "String", type = "string")), shape = "EventSourceMappingConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

update_function_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        ZipFile = structure(logical(0), shape = "Blob", type = "blob", 
            sensitive = TRUE), S3Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 63L, min = 3L, 
            pattern = "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$"), S3Key = structure(logical(0), 
            shape = "S3Key", type = "string", max = 1024L, min = 1L), 
        S3ObjectVersion = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L), Publish = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DryRun = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RevisionId = structure(logical(0), 
            shape = "String", type = "string")), shape = "UpdateFunctionCodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_function_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")
    return(populate(args, shape))
}

update_function_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "FunctionName", location = "uri", locationName = "FunctionName", 
        type = "string", max = 140L, min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L)), shape = "VpcConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE)), shape = "Environment", 
            type = "structure"), Runtime = structure(logical(0), 
            shape = "Runtime", type = "string"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfig", 
            type = "structure"), RevisionId = structure(logical(0), 
            shape = "String", type = "string")), shape = "UpdateFunctionConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_function_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FunctionName = structure(logical(0), 
        shape = "NamespacedFunctionName", type = "string", max = 170L, 
        min = 1L, pattern = "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        FunctionArn = structure(logical(0), shape = "NameSpacedFunctionArn", 
            type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        Runtime = structure(logical(0), shape = "Runtime", type = "string"), 
        Role = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Handler = structure(logical(0), shape = "Handler", type = "string", 
            max = 128L, pattern = "[^\\s]+"), CodeSize = structure(logical(0), 
            shape = "Long", type = "long"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 256L, 
            min = 0L), Timeout = structure(logical(0), shape = "Timeout", 
            type = "integer", min = 1L), MemorySize = structure(logical(0), 
            shape = "MemorySize", type = "integer", max = 3008L, 
            min = 128L), LastModified = structure(logical(0), 
            shape = "Timestamp", type = "string"), CodeSha256 = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 1024L, 
            min = 1L, pattern = "(\\$LATEST|[0-9]+)"), VpcConfig = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string")), shape = "SubnetIds", 
            type = "list", max = 16L), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string")), shape = "SecurityGroupIds", 
            type = "list", max = 5L), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string")), shape = "VpcConfigResponse", 
            type = "structure"), DeadLetterConfig = structure(list(TargetArn = structure(logical(0), 
            shape = "ResourceArn", type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()")), 
            shape = "DeadLetterConfig", type = "structure"), 
        Environment = structure(list(Variables = structure(list(structure(logical(0), 
            shape = "EnvironmentVariableValue", type = "string", 
            sensitive = TRUE)), shape = "EnvironmentVariables", 
            type = "map", sensitive = TRUE), Error = structure(list(ErrorCode = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "SensitiveString", type = "string", sensitive = TRUE)), 
            shape = "EnvironmentError", type = "structure")), 
            shape = "EnvironmentResponse", type = "structure"), 
        KMSKeyArn = structure(logical(0), shape = "KMSKeyArn", 
            type = "string", pattern = "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()"), 
        TracingConfig = structure(list(Mode = structure(logical(0), 
            shape = "TracingMode", type = "string")), shape = "TracingConfigResponse", 
            type = "structure"), MasterArn = structure(logical(0), 
            shape = "FunctionArn", type = "string", pattern = "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"), 
        RevisionId = structure(logical(0), shape = "String", 
            type = "string")), shape = "FunctionConfiguration", 
        type = "structure")
    return(populate(args, shape))
}
