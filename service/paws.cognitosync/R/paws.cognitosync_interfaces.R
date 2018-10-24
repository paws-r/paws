bulk_publish_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), 
        shape = "BulkPublishRequest", type = "structure")
    return(populate(args, shape))
}

bulk_publish_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), shape = "BulkPublishResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        DatasetName = structure(logical(0), shape = "DatasetName", 
            location = "uri", locationName = "DatasetName", type = "string", 
            min = 1L, max = 128L, pattern = "[a-zA-Z0-9_.:-]+")), 
        shape = "DeleteDatasetRequest", type = "structure")
    return(populate(args, shape))
}

delete_dataset_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Dataset = structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", min = 1L, max = 55L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), DatasetName = structure(logical(0), 
        shape = "DatasetName", type = "string", min = 1L, max = 128L, 
        pattern = "[a-zA-Z0-9_.:-]+"), CreationDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastModifiedDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastModifiedBy = structure(logical(0), 
        shape = "String", type = "string"), DataStorage = structure(logical(0), 
        shape = "Long", type = "long"), NumRecords = structure(logical(0), 
        shape = "Long", type = "long")), shape = "Dataset", type = "structure")), 
        shape = "DeleteDatasetResponse", type = "structure")
    return(populate(args, shape))
}

describe_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        DatasetName = structure(logical(0), shape = "DatasetName", 
            location = "uri", locationName = "DatasetName", type = "string", 
            min = 1L, max = 128L, pattern = "[a-zA-Z0-9_.:-]+")), 
        shape = "DescribeDatasetRequest", type = "structure")
    return(populate(args, shape))
}

describe_dataset_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Dataset = structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", min = 1L, max = 55L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), DatasetName = structure(logical(0), 
        shape = "DatasetName", type = "string", min = 1L, max = 128L, 
        pattern = "[a-zA-Z0-9_.:-]+"), CreationDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastModifiedDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastModifiedBy = structure(logical(0), 
        shape = "String", type = "string"), DataStorage = structure(logical(0), 
        shape = "Long", type = "long"), NumRecords = structure(logical(0), 
        shape = "Long", type = "long")), shape = "Dataset", type = "structure")), 
        shape = "DescribeDatasetResponse", type = "structure")
    return(populate(args, shape))
}

describe_identity_pool_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), 
        shape = "DescribeIdentityPoolUsageRequest", type = "structure")
    return(populate(args, shape))
}

describe_identity_pool_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolUsage = structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), SyncSessionsCount = structure(logical(0), 
        shape = "Long", type = "long"), DataStorage = structure(logical(0), 
        shape = "Long", type = "long"), LastModifiedDate = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "IdentityPoolUsage", 
        type = "structure")), shape = "DescribeIdentityPoolUsageResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_identity_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), 
        shape = "DescribeIdentityUsageRequest", type = "structure")
    return(populate(args, shape))
}

describe_identity_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityUsage = structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", min = 1L, max = 55L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), LastModifiedDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), DatasetCount = structure(logical(0), 
        shape = "Integer", type = "integer"), DataStorage = structure(logical(0), 
        shape = "Long", type = "long")), shape = "IdentityUsage", 
        type = "structure")), shape = "DescribeIdentityUsageResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_bulk_publish_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), 
        shape = "GetBulkPublishDetailsRequest", type = "structure")
    return(populate(args, shape))
}

get_bulk_publish_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), BulkPublishStartTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), BulkPublishCompleteTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), BulkPublishStatus = structure(logical(0), 
        shape = "BulkPublishStatus", type = "string"), FailureMessage = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetBulkPublishDetailsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_cognito_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), 
        shape = "GetCognitoEventsRequest", type = "structure")
    return(populate(args, shape))
}

get_cognito_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(logical(0), 
        shape = "LambdaFunctionArn", type = "string")), shape = "Events", 
        type = "map", max = 1L)), shape = "GetCognitoEventsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_pool_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+")), 
        shape = "GetIdentityPoolConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

get_identity_pool_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), PushSync = structure(list(ApplicationArns = structure(list(structure(logical(0), 
        shape = "ApplicationArn", type = "string", pattern = "arn:aws:sns:[-0-9a-z]+:\\d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+")), 
        shape = "ApplicationArnList", type = "list"), RoleArn = structure(logical(0), 
        shape = "AssumeRoleArn", type = "string", min = 20L, 
        max = 2048L, pattern = "arn:aws:iam::\\d+:role/.*")), 
        shape = "PushSync", type = "structure"), CognitoStreams = structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", min = 1L, max = 128L), 
        RoleArn = structure(logical(0), shape = "AssumeRoleArn", 
            type = "string", min = 20L, max = 2048L, pattern = "arn:aws:iam::\\d+:role/.*"), 
        StreamingStatus = structure(logical(0), shape = "StreamingStatus", 
            type = "string")), shape = "CognitoStreams", type = "structure")), 
        shape = "GetIdentityPoolConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

list_datasets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        NextToken = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "nextToken", type = "string"), MaxResults = structure(logical(0), 
            shape = "IntegerString", location = "querystring", 
            locationName = "maxResults", type = "integer")), 
        shape = "ListDatasetsRequest", type = "structure")
    return(populate(args, shape))
}

list_datasets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Datasets = structure(list(structure(list(IdentityId = structure(logical(0), 
        shape = "IdentityId", type = "string", min = 1L, max = 55L, 
        pattern = "[\\w-]+:[0-9a-f-]+"), DatasetName = structure(logical(0), 
        shape = "DatasetName", type = "string", min = 1L, max = 128L, 
        pattern = "[a-zA-Z0-9_.:-]+"), CreationDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastModifiedDate = structure(logical(0), 
        shape = "Date", type = "timestamp"), LastModifiedBy = structure(logical(0), 
        shape = "String", type = "string"), DataStorage = structure(logical(0), 
        shape = "Long", type = "long"), NumRecords = structure(logical(0), 
        shape = "Long", type = "long")), shape = "Dataset", type = "structure")), 
        shape = "DatasetList", type = "list"), Count = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListDatasetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_identity_pool_usage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "IntegerString", location = "querystring", locationName = "maxResults", 
        type = "integer")), shape = "ListIdentityPoolUsageRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_identity_pool_usage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolUsages = structure(list(structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), SyncSessionsCount = structure(logical(0), 
        shape = "Long", type = "long"), DataStorage = structure(logical(0), 
        shape = "Long", type = "long"), LastModifiedDate = structure(logical(0), 
        shape = "Date", type = "timestamp")), shape = "IdentityPoolUsage", 
        type = "structure")), shape = "IdentityPoolUsageList", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        type = "integer"), Count = structure(logical(0), shape = "Integer", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListIdentityPoolUsageResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_records_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        DatasetName = structure(logical(0), shape = "DatasetName", 
            location = "uri", locationName = "DatasetName", type = "string", 
            min = 1L, max = 128L, pattern = "[a-zA-Z0-9_.:-]+"), 
        LastSyncCount = structure(logical(0), shape = "Long", 
            location = "querystring", locationName = "lastSyncCount", 
            type = "long"), NextToken = structure(logical(0), 
            shape = "String", location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "IntegerString", location = "querystring", 
            locationName = "maxResults", type = "integer"), SyncSessionToken = structure(logical(0), 
            shape = "SyncSessionToken", location = "querystring", 
            locationName = "syncSessionToken", type = "string")), 
        shape = "ListRecordsRequest", type = "structure")
    return(populate(args, shape))
}

list_records_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Records = structure(list(structure(list(Key = structure(logical(0), 
        shape = "RecordKey", type = "string", min = 1L, max = 1024L), 
        Value = structure(logical(0), shape = "RecordValue", 
            type = "string", max = 1048575L), SyncCount = structure(logical(0), 
            shape = "Long", type = "long"), LastModifiedDate = structure(logical(0), 
            shape = "Date", type = "timestamp"), LastModifiedBy = structure(logical(0), 
            shape = "String", type = "string"), DeviceLastModifiedDate = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "Record", 
        type = "structure")), shape = "RecordList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string"), 
        Count = structure(logical(0), shape = "Integer", type = "integer"), 
        DatasetSyncCount = structure(logical(0), shape = "Long", 
            type = "long"), LastModifiedBy = structure(logical(0), 
            shape = "String", type = "string"), MergedDatasetNames = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "MergedDatasetNameList", 
            type = "list"), DatasetExists = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DatasetDeletedAfterRequestedSyncCount = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SyncSessionToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "ListRecordsResponse", 
        type = "structure")
    return(populate(args, shape))
}

register_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        Platform = structure(logical(0), shape = "Platform", 
            type = "string"), Token = structure(logical(0), shape = "PushToken", 
            type = "string")), shape = "RegisterDeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "DeviceId", type = "string", min = 1L, max = 256L)), 
        shape = "RegisterDeviceResponse", type = "structure")
    return(populate(args, shape))
}

set_cognito_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        Events = structure(list(structure(logical(0), shape = "LambdaFunctionArn", 
            type = "string")), shape = "Events", type = "map", 
            max = 1L)), shape = "SetCognitoEventsRequest", type = "structure")
    return(populate(args, shape))
}

set_cognito_events_output <- function () 
{
    return(list())
}

set_identity_pool_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        PushSync = structure(list(ApplicationArns = structure(list(structure(logical(0), 
            shape = "ApplicationArn", type = "string", pattern = "arn:aws:sns:[-0-9a-z]+:\\d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+")), 
            shape = "ApplicationArnList", type = "list"), RoleArn = structure(logical(0), 
            shape = "AssumeRoleArn", type = "string", min = 20L, 
            max = 2048L, pattern = "arn:aws:iam::\\d+:role/.*")), 
            shape = "PushSync", type = "structure"), CognitoStreams = structure(list(StreamName = structure(logical(0), 
            shape = "StreamName", type = "string", min = 1L, 
            max = 128L), RoleArn = structure(logical(0), shape = "AssumeRoleArn", 
            type = "string", min = 20L, max = 2048L, pattern = "arn:aws:iam::\\d+:role/.*"), 
            StreamingStatus = structure(logical(0), shape = "StreamingStatus", 
                type = "string")), shape = "CognitoStreams", 
            type = "structure")), shape = "SetIdentityPoolConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_pool_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", type = "string", min = 1L, 
        max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), PushSync = structure(list(ApplicationArns = structure(list(structure(logical(0), 
        shape = "ApplicationArn", type = "string", pattern = "arn:aws:sns:[-0-9a-z]+:\\d+:app/[A-Z_]+/[a-zA-Z0-9_.-]+")), 
        shape = "ApplicationArnList", type = "list"), RoleArn = structure(logical(0), 
        shape = "AssumeRoleArn", type = "string", min = 20L, 
        max = 2048L, pattern = "arn:aws:iam::\\d+:role/.*")), 
        shape = "PushSync", type = "structure"), CognitoStreams = structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", min = 1L, max = 128L), 
        RoleArn = structure(logical(0), shape = "AssumeRoleArn", 
            type = "string", min = 20L, max = 2048L, pattern = "arn:aws:iam::\\d+:role/.*"), 
        StreamingStatus = structure(logical(0), shape = "StreamingStatus", 
            type = "string")), shape = "CognitoStreams", type = "structure")), 
        shape = "SetIdentityPoolConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

subscribe_to_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        DatasetName = structure(logical(0), shape = "DatasetName", 
            location = "uri", locationName = "DatasetName", type = "string", 
            min = 1L, max = 128L, pattern = "[a-zA-Z0-9_.:-]+"), 
        DeviceId = structure(logical(0), shape = "DeviceId", 
            location = "uri", locationName = "DeviceId", type = "string", 
            min = 1L, max = 256L)), shape = "SubscribeToDatasetRequest", 
        type = "structure")
    return(populate(args, shape))
}

subscribe_to_dataset_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SubscribeToDatasetResponse", 
        type = "structure")
    return(populate(args, shape))
}

unsubscribe_from_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        DatasetName = structure(logical(0), shape = "DatasetName", 
            location = "uri", locationName = "DatasetName", type = "string", 
            min = 1L, max = 128L, pattern = "[a-zA-Z0-9_.:-]+"), 
        DeviceId = structure(logical(0), shape = "DeviceId", 
            location = "uri", locationName = "DeviceId", type = "string", 
            min = 1L, max = 256L)), shape = "UnsubscribeFromDatasetRequest", 
        type = "structure")
    return(populate(args, shape))
}

unsubscribe_from_dataset_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UnsubscribeFromDatasetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_records_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityPoolId = structure(logical(0), 
        shape = "IdentityPoolId", location = "uri", locationName = "IdentityPoolId", 
        type = "string", min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        IdentityId = structure(logical(0), shape = "IdentityId", 
            location = "uri", locationName = "IdentityId", type = "string", 
            min = 1L, max = 55L, pattern = "[\\w-]+:[0-9a-f-]+"), 
        DatasetName = structure(logical(0), shape = "DatasetName", 
            location = "uri", locationName = "DatasetName", type = "string", 
            min = 1L, max = 128L, pattern = "[a-zA-Z0-9_.:-]+"), 
        DeviceId = structure(logical(0), shape = "DeviceId", 
            type = "string", min = 1L, max = 256L), RecordPatches = structure(list(structure(list(Op = structure(logical(0), 
            shape = "Operation", type = "string"), Key = structure(logical(0), 
            shape = "RecordKey", type = "string", min = 1L, max = 1024L), 
            Value = structure(logical(0), shape = "RecordValue", 
                type = "string", max = 1048575L), SyncCount = structure(logical(0), 
                shape = "Long", type = "long"), DeviceLastModifiedDate = structure(logical(0), 
                shape = "Date", type = "timestamp")), shape = "RecordPatch", 
            type = "structure")), shape = "RecordPatchList", 
            type = "list"), SyncSessionToken = structure(logical(0), 
            shape = "SyncSessionToken", type = "string"), ClientContext = structure(logical(0), 
            shape = "ClientContext", location = "header", locationName = "x-amz-Client-Context", 
            type = "string")), shape = "UpdateRecordsRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_records_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Records = structure(list(structure(list(Key = structure(logical(0), 
        shape = "RecordKey", type = "string", min = 1L, max = 1024L), 
        Value = structure(logical(0), shape = "RecordValue", 
            type = "string", max = 1048575L), SyncCount = structure(logical(0), 
            shape = "Long", type = "long"), LastModifiedDate = structure(logical(0), 
            shape = "Date", type = "timestamp"), LastModifiedBy = structure(logical(0), 
            shape = "String", type = "string"), DeviceLastModifiedDate = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "Record", 
        type = "structure")), shape = "RecordList", type = "list")), 
        shape = "UpdateRecordsResponse", type = "structure")
    return(populate(args, shape))
}
