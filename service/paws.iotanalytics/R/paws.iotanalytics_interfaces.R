batch_put_message_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
        Messages = structure(list(structure(list(MessageId = structure(logical(0), 
            shape = "MessageId", type = "string", max = 128L, 
            min = 1L, locationName = "messageId"), Payload = structure(logical(0), 
            shape = "MessagePayload", type = "blob", locationName = "payload")), 
            shape = "Message", type = "structure")), shape = "Messages", 
            type = "list", locationName = "messages")), shape = "BatchPutMessageRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_put_message_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPutMessageErrorEntries = structure(list(structure(list(MessageId = structure(logical(0), 
        shape = "MessageId", type = "string", max = 128L, min = 1L, 
        locationName = "messageId"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string", locationName = "errorCode"), 
        ErrorMessage = structure(logical(0), shape = "ErrorMessage", 
            type = "string", locationName = "errorMessage")), 
        shape = "BatchPutMessageErrorEntry", type = "structure")), 
        shape = "BatchPutMessageErrorEntries", type = "list", 
        locationName = "batchPutMessageErrorEntries")), shape = "BatchPutMessageResponse", 
        type = "structure")
    return(populate(args, shape))
}

cancel_pipeline_reprocessing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", location = "uri", locationName = "pipelineName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        ReprocessingId = structure(logical(0), shape = "ReprocessingId", 
            location = "uri", locationName = "reprocessingId", 
            type = "string")), shape = "CancelPipelineReprocessingRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_pipeline_reprocessing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelPipelineReprocessingResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 256L, min = 1L, 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list", 
            max = 50L, min = 1L, locationName = "tags")), shape = "CreateChannelRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_channel_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
        ChannelArn = structure(logical(0), shape = "ChannelArn", 
            type = "string", locationName = "channelArn"), RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "CreateChannelResponse", type = "structure")
    return(populate(args, shape))
}

create_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "datasetName"), 
        Actions = structure(list(structure(list(ActionName = structure(logical(0), 
            shape = "DatasetActionName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "actionName"), 
            QueryAction = structure(list(SqlQuery = structure(logical(0), 
                shape = "SqlQuery", type = "string", locationName = "sqlQuery"), 
                Filters = structure(list(structure(list(DeltaTime = structure(list(OffsetSeconds = structure(logical(0), 
                  shape = "OffsetSeconds", type = "integer", 
                  locationName = "offsetSeconds"), TimeExpression = structure(logical(0), 
                  shape = "TimeExpression", type = "string", 
                  locationName = "timeExpression")), shape = "DeltaTime", 
                  type = "structure", locationName = "deltaTime")), 
                  shape = "QueryFilter", type = "structure")), 
                  shape = "QueryFilters", type = "list", max = 1L, 
                  min = 0L, locationName = "filters")), shape = "SqlQueryDatasetAction", 
                type = "structure", locationName = "queryAction"), 
            ContainerAction = structure(list(Image = structure(logical(0), 
                shape = "Image", type = "string", max = 255L, 
                locationName = "image"), ExecutionRoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "executionRoleArn"), 
                ResourceConfiguration = structure(list(ComputeType = structure(logical(0), 
                  shape = "ComputeType", type = "string", locationName = "computeType"), 
                  VolumeSizeInGB = structure(logical(0), shape = "VolumeSizeInGB", 
                    type = "integer", max = 50L, min = 1L, locationName = "volumeSizeInGB")), 
                  shape = "ResourceConfiguration", type = "structure", 
                  locationName = "resourceConfiguration"), Variables = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "VariableName", type = "string", max = 256L, 
                  min = 1L, locationName = "name"), StringValue = structure(logical(0), 
                  shape = "StringValue", type = "string", max = 1024L, 
                  min = 0L, locationName = "stringValue"), DoubleValue = structure(logical(0), 
                  shape = "DoubleValue", box = TRUE, type = "double", 
                  locationName = "doubleValue"), DatasetContentVersionValue = structure(list(DatasetName = structure(logical(0), 
                  shape = "DatasetName", type = "string", max = 128L, 
                  min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datasetName")), 
                  shape = "DatasetContentVersionValue", type = "structure", 
                  locationName = "datasetContentVersionValue"), 
                  OutputFileUriValue = structure(list(FileName = structure(logical(0), 
                    shape = "OutputFileName", type = "string", 
                    pattern = "[\\w\\.-]{1,255}", locationName = "fileName")), 
                    shape = "OutputFileUriValue", type = "structure", 
                    locationName = "outputFileUriValue")), shape = "Variable", 
                  type = "structure")), shape = "Variables", 
                  type = "list", max = 50L, min = 0L, locationName = "variables")), 
                shape = "ContainerDatasetAction", type = "structure", 
                locationName = "containerAction")), shape = "DatasetAction", 
            type = "structure")), shape = "DatasetActions", type = "list", 
            max = 1L, min = 1L, locationName = "actions"), Triggers = structure(list(structure(list(Schedule = structure(list(Expression = structure(logical(0), 
            shape = "ScheduleExpression", type = "string", locationName = "expression")), 
            shape = "Schedule", type = "structure", locationName = "schedule"), 
            Dataset = structure(list(Name = structure(logical(0), 
                shape = "DatasetName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "name")), 
                shape = "TriggeringDataset", type = "structure", 
                locationName = "dataset")), shape = "DatasetTrigger", 
            type = "structure")), shape = "DatasetTriggers", 
            type = "list", max = 5L, min = 0L, locationName = "triggers"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 256L, min = 1L, 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list", 
            max = 50L, min = 1L, locationName = "tags")), shape = "CreateDatasetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_dataset_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "datasetName"), 
        DatasetArn = structure(logical(0), shape = "DatasetArn", 
            type = "string", locationName = "datasetArn"), RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "CreateDatasetResponse", type = "structure")
    return(populate(args, shape))
}

create_dataset_content_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "CreateDatasetContentRequest", type = "structure")
    return(populate(args, shape))
}

create_dataset_content_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VersionId = structure(logical(0), 
        shape = "DatasetContentVersion", type = "string", max = 36L, 
        min = 7L, locationName = "versionId")), shape = "CreateDatasetContentResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_datastore_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatastoreName = structure(logical(0), 
        shape = "DatastoreName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 256L, min = 1L, 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list", 
            max = 50L, min = 1L, locationName = "tags")), shape = "CreateDatastoreRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_datastore_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatastoreName = structure(logical(0), 
        shape = "DatastoreName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName"), 
        DatastoreArn = structure(logical(0), shape = "DatastoreArn", 
            type = "string", locationName = "datastoreArn"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "CreateDatastoreResponse", type = "structure")
    return(populate(args, shape))
}

create_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "pipelineName"), 
        PipelineActivities = structure(list(structure(list(Channel = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), ChannelName = structure(logical(0), 
            shape = "ChannelName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "ChannelActivity", type = "structure", locationName = "channel"), 
            Lambda = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), LambdaName = structure(logical(0), 
                shape = "LambdaName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9_-]+$", locationName = "lambdaName"), 
                BatchSize = structure(logical(0), shape = "ActivityBatchSize", 
                  type = "integer", max = 1000L, min = 1L, locationName = "batchSize"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "LambdaActivity", type = "structure", 
                locationName = "lambda"), Datastore = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), DatastoreName = structure(logical(0), 
                shape = "DatastoreName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName")), 
                shape = "DatastoreActivity", type = "structure", 
                locationName = "datastore"), AddAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNameMapping", type = "map", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "AddAttributesActivity", type = "structure", 
                locationName = "addAttributes"), RemoveAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNames", type = "list", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "RemoveAttributesActivity", type = "structure", 
                locationName = "removeAttributes"), SelectAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNames", type = "list", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "SelectAttributesActivity", type = "structure", 
                locationName = "selectAttributes"), Filter = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Filter = structure(logical(0), 
                shape = "FilterExpression", type = "string", 
                max = 256L, min = 1L, locationName = "filter"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "FilterActivity", type = "structure", 
                locationName = "filter"), Math = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), Math = structure(logical(0), 
                shape = "MathExpression", type = "string", max = 256L, 
                min = 1L, locationName = "math"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "MathActivity", 
                type = "structure", locationName = "math"), DeviceRegistryEnrich = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "DeviceRegistryEnrichActivity", 
                type = "structure", locationName = "deviceRegistryEnrich"), 
            DeviceShadowEnrich = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "DeviceShadowEnrichActivity", 
                type = "structure", locationName = "deviceShadowEnrich")), 
            shape = "PipelineActivity", type = "structure")), 
            shape = "PipelineActivities", type = "list", max = 25L, 
            min = 1L, locationName = "pipelineActivities"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 256L, min = 1L, 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list", 
            max = 50L, min = 1L, locationName = "tags")), shape = "CreatePipelineRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "pipelineName"), 
        PipelineArn = structure(logical(0), shape = "PipelineArn", 
            type = "string", locationName = "pipelineArn")), 
        shape = "CreatePipelineResponse", type = "structure")
    return(populate(args, shape))
}

delete_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", location = "uri", locationName = "channelName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DeleteChannelRequest", type = "structure")
    return(populate(args, shape))
}

delete_channel_output <- function () 
{
    return(list())
}

delete_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DeleteDatasetRequest", type = "structure")
    return(populate(args, shape))
}

delete_dataset_output <- function () 
{
    return(list())
}

delete_dataset_content_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        VersionId = structure(logical(0), shape = "DatasetContentVersion", 
            location = "querystring", locationName = "versionId", 
            type = "string", max = 36L, min = 7L)), shape = "DeleteDatasetContentRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_dataset_content_output <- function () 
{
    return(list())
}

delete_datastore_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatastoreName = structure(logical(0), 
        shape = "DatastoreName", location = "uri", locationName = "datastoreName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DeleteDatastoreRequest", type = "structure")
    return(populate(args, shape))
}

delete_datastore_output <- function () 
{
    return(list())
}

delete_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", location = "uri", locationName = "pipelineName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DeletePipelineRequest", type = "structure")
    return(populate(args, shape))
}

delete_pipeline_output <- function () 
{
    return(list())
}

describe_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", location = "uri", locationName = "channelName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        IncludeStatistics = structure(logical(0), shape = "IncludeStatisticsFlag", 
            location = "querystring", locationName = "includeStatistics", 
            type = "boolean")), shape = "DescribeChannelRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_channel_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Channel = structure(list(Name = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "name"), 
        Arn = structure(logical(0), shape = "ChannelArn", type = "string", 
            locationName = "arn"), Status = structure(logical(0), 
            shape = "ChannelStatus", type = "string", locationName = "status"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime")), 
        shape = "Channel", type = "structure", locationName = "channel"), 
        Statistics = structure(list(Size = structure(list(EstimatedSizeInBytes = structure(logical(0), 
            shape = "SizeInBytes", type = "double", locationName = "estimatedSizeInBytes"), 
            EstimatedOn = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "estimatedOn")), 
            shape = "EstimatedResourceSize", type = "structure", 
            locationName = "size")), shape = "ChannelStatistics", 
            type = "structure", locationName = "statistics")), 
        shape = "DescribeChannelResponse", type = "structure")
    return(populate(args, shape))
}

describe_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DescribeDatasetRequest", type = "structure")
    return(populate(args, shape))
}

describe_dataset_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Dataset = structure(list(Name = structure(logical(0), 
        shape = "DatasetName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "name"), 
        Arn = structure(logical(0), shape = "DatasetArn", type = "string", 
            locationName = "arn"), Actions = structure(list(structure(list(ActionName = structure(logical(0), 
            shape = "DatasetActionName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "actionName"), 
            QueryAction = structure(list(SqlQuery = structure(logical(0), 
                shape = "SqlQuery", type = "string", locationName = "sqlQuery"), 
                Filters = structure(list(structure(list(DeltaTime = structure(list(OffsetSeconds = structure(logical(0), 
                  shape = "OffsetSeconds", type = "integer", 
                  locationName = "offsetSeconds"), TimeExpression = structure(logical(0), 
                  shape = "TimeExpression", type = "string", 
                  locationName = "timeExpression")), shape = "DeltaTime", 
                  type = "structure", locationName = "deltaTime")), 
                  shape = "QueryFilter", type = "structure")), 
                  shape = "QueryFilters", type = "list", max = 1L, 
                  min = 0L, locationName = "filters")), shape = "SqlQueryDatasetAction", 
                type = "structure", locationName = "queryAction"), 
            ContainerAction = structure(list(Image = structure(logical(0), 
                shape = "Image", type = "string", max = 255L, 
                locationName = "image"), ExecutionRoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "executionRoleArn"), 
                ResourceConfiguration = structure(list(ComputeType = structure(logical(0), 
                  shape = "ComputeType", type = "string", locationName = "computeType"), 
                  VolumeSizeInGB = structure(logical(0), shape = "VolumeSizeInGB", 
                    type = "integer", max = 50L, min = 1L, locationName = "volumeSizeInGB")), 
                  shape = "ResourceConfiguration", type = "structure", 
                  locationName = "resourceConfiguration"), Variables = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "VariableName", type = "string", max = 256L, 
                  min = 1L, locationName = "name"), StringValue = structure(logical(0), 
                  shape = "StringValue", type = "string", max = 1024L, 
                  min = 0L, locationName = "stringValue"), DoubleValue = structure(logical(0), 
                  shape = "DoubleValue", box = TRUE, type = "double", 
                  locationName = "doubleValue"), DatasetContentVersionValue = structure(list(DatasetName = structure(logical(0), 
                  shape = "DatasetName", type = "string", max = 128L, 
                  min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datasetName")), 
                  shape = "DatasetContentVersionValue", type = "structure", 
                  locationName = "datasetContentVersionValue"), 
                  OutputFileUriValue = structure(list(FileName = structure(logical(0), 
                    shape = "OutputFileName", type = "string", 
                    pattern = "[\\w\\.-]{1,255}", locationName = "fileName")), 
                    shape = "OutputFileUriValue", type = "structure", 
                    locationName = "outputFileUriValue")), shape = "Variable", 
                  type = "structure")), shape = "Variables", 
                  type = "list", max = 50L, min = 0L, locationName = "variables")), 
                shape = "ContainerDatasetAction", type = "structure", 
                locationName = "containerAction")), shape = "DatasetAction", 
            type = "structure")), shape = "DatasetActions", type = "list", 
            max = 1L, min = 1L, locationName = "actions"), Triggers = structure(list(structure(list(Schedule = structure(list(Expression = structure(logical(0), 
            shape = "ScheduleExpression", type = "string", locationName = "expression")), 
            shape = "Schedule", type = "structure", locationName = "schedule"), 
            Dataset = structure(list(Name = structure(logical(0), 
                shape = "DatasetName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "name")), 
                shape = "TriggeringDataset", type = "structure", 
                locationName = "dataset")), shape = "DatasetTrigger", 
            type = "structure")), shape = "DatasetTriggers", 
            type = "list", max = 5L, min = 0L, locationName = "triggers"), 
        Status = structure(logical(0), shape = "DatasetStatus", 
            type = "string", locationName = "status"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "Dataset", type = "structure", locationName = "dataset")), 
        shape = "DescribeDatasetResponse", type = "structure")
    return(populate(args, shape))
}

describe_datastore_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatastoreName = structure(logical(0), 
        shape = "DatastoreName", location = "uri", locationName = "datastoreName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        IncludeStatistics = structure(logical(0), shape = "IncludeStatisticsFlag", 
            location = "querystring", locationName = "includeStatistics", 
            type = "boolean")), shape = "DescribeDatastoreRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_datastore_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Datastore = structure(list(Name = structure(logical(0), 
        shape = "DatastoreName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "name"), 
        Arn = structure(logical(0), shape = "DatastoreArn", type = "string", 
            locationName = "arn"), Status = structure(logical(0), 
            shape = "DatastoreStatus", type = "string", locationName = "status"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime")), 
        shape = "Datastore", type = "structure", locationName = "datastore"), 
        Statistics = structure(list(Size = structure(list(EstimatedSizeInBytes = structure(logical(0), 
            shape = "SizeInBytes", type = "double", locationName = "estimatedSizeInBytes"), 
            EstimatedOn = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "estimatedOn")), 
            shape = "EstimatedResourceSize", type = "structure", 
            locationName = "size")), shape = "DatastoreStatistics", 
            type = "structure", locationName = "statistics")), 
        shape = "DescribeDatastoreResponse", type = "structure")
    return(populate(args, shape))
}

describe_logging_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeLoggingOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_logging_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingOptions = structure(list(RoleArn = structure(logical(0), 
        shape = "RoleArn", type = "string", max = 2048L, min = 20L, 
        locationName = "roleArn"), Level = structure(logical(0), 
        shape = "LoggingLevel", type = "string", locationName = "level"), 
        Enabled = structure(logical(0), shape = "LoggingEnabled", 
            type = "boolean", locationName = "enabled")), shape = "LoggingOptions", 
        type = "structure", locationName = "loggingOptions")), 
        shape = "DescribeLoggingOptionsResponse", type = "structure")
    return(populate(args, shape))
}

describe_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", location = "uri", locationName = "pipelineName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$")), 
        shape = "DescribePipelineRequest", type = "structure")
    return(populate(args, shape))
}

describe_pipeline_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Pipeline = structure(list(Name = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "name"), 
        Arn = structure(logical(0), shape = "PipelineArn", type = "string", 
            locationName = "arn"), Activities = structure(list(structure(list(Channel = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), ChannelName = structure(logical(0), 
            shape = "ChannelName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "ChannelActivity", type = "structure", locationName = "channel"), 
            Lambda = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), LambdaName = structure(logical(0), 
                shape = "LambdaName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9_-]+$", locationName = "lambdaName"), 
                BatchSize = structure(logical(0), shape = "ActivityBatchSize", 
                  type = "integer", max = 1000L, min = 1L, locationName = "batchSize"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "LambdaActivity", type = "structure", 
                locationName = "lambda"), Datastore = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), DatastoreName = structure(logical(0), 
                shape = "DatastoreName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName")), 
                shape = "DatastoreActivity", type = "structure", 
                locationName = "datastore"), AddAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNameMapping", type = "map", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "AddAttributesActivity", type = "structure", 
                locationName = "addAttributes"), RemoveAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNames", type = "list", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "RemoveAttributesActivity", type = "structure", 
                locationName = "removeAttributes"), SelectAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNames", type = "list", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "SelectAttributesActivity", type = "structure", 
                locationName = "selectAttributes"), Filter = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Filter = structure(logical(0), 
                shape = "FilterExpression", type = "string", 
                max = 256L, min = 1L, locationName = "filter"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "FilterActivity", type = "structure", 
                locationName = "filter"), Math = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), Math = structure(logical(0), 
                shape = "MathExpression", type = "string", max = 256L, 
                min = 1L, locationName = "math"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "MathActivity", 
                type = "structure", locationName = "math"), DeviceRegistryEnrich = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "DeviceRegistryEnrichActivity", 
                type = "structure", locationName = "deviceRegistryEnrich"), 
            DeviceShadowEnrich = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "DeviceShadowEnrichActivity", 
                type = "structure", locationName = "deviceShadowEnrich")), 
            shape = "PipelineActivity", type = "structure")), 
            shape = "PipelineActivities", type = "list", max = 25L, 
            min = 1L, locationName = "activities"), ReprocessingSummaries = structure(list(structure(list(Id = structure(logical(0), 
            shape = "ReprocessingId", type = "string", locationName = "id"), 
            Status = structure(logical(0), shape = "ReprocessingStatus", 
                type = "string", locationName = "status"), CreationTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp", locationName = "creationTime")), 
            shape = "ReprocessingSummary", type = "structure")), 
            shape = "ReprocessingSummaries", type = "list", locationName = "reprocessingSummaries"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime")), 
        shape = "Pipeline", type = "structure", locationName = "pipeline")), 
        shape = "DescribePipelineResponse", type = "structure")
    return(populate(args, shape))
}

get_dataset_content_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        VersionId = structure(logical(0), shape = "DatasetContentVersion", 
            location = "querystring", locationName = "versionId", 
            type = "string", max = 36L, min = 7L)), shape = "GetDatasetContentRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_dataset_content_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entries = structure(list(structure(list(EntryName = structure(logical(0), 
        shape = "EntryName", type = "string", locationName = "entryName"), 
        DataURI = structure(logical(0), shape = "PresignedURI", 
            type = "string", locationName = "dataURI")), shape = "DatasetEntry", 
        type = "structure")), shape = "DatasetEntries", type = "list", 
        locationName = "entries"), Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "timestamp"), 
        Status = structure(list(State = structure(logical(0), 
            shape = "DatasetContentState", type = "string", locationName = "state"), 
            Reason = structure(logical(0), shape = "Reason", 
                type = "string", locationName = "reason")), shape = "DatasetContentStatus", 
            type = "structure", locationName = "status")), shape = "GetDatasetContentResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_channels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListChannelsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_channels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelSummaries = structure(list(structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
        Status = structure(logical(0), shape = "ChannelStatus", 
            type = "string", locationName = "status"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime")), 
        shape = "ChannelSummary", type = "structure")), shape = "ChannelSummaries", 
        type = "list", locationName = "channelSummaries"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListChannelsResponse", type = "structure")
    return(populate(args, shape))
}

list_dataset_contents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 250L, min = 1L)), shape = "ListDatasetContentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_dataset_contents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetContentSummaries = structure(list(structure(list(Version = structure(logical(0), 
        shape = "DatasetContentVersion", type = "string", max = 36L, 
        min = 7L, locationName = "version"), Status = structure(list(State = structure(logical(0), 
        shape = "DatasetContentState", type = "string", locationName = "state"), 
        Reason = structure(logical(0), shape = "Reason", type = "string", 
            locationName = "reason")), shape = "DatasetContentStatus", 
        type = "structure", locationName = "status"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "creationTime"), 
        ScheduleTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "scheduleTime")), 
        shape = "DatasetContentSummary", type = "structure")), 
        shape = "DatasetContentSummaries", type = "list", locationName = "datasetContentSummaries"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListDatasetContentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_datasets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListDatasetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_datasets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetSummaries = structure(list(structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "datasetName"), 
        Status = structure(logical(0), shape = "DatasetStatus", 
            type = "string", locationName = "status"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime"), 
        Triggers = structure(list(structure(list(Schedule = structure(list(Expression = structure(logical(0), 
            shape = "ScheduleExpression", type = "string", locationName = "expression")), 
            shape = "Schedule", type = "structure", locationName = "schedule"), 
            Dataset = structure(list(Name = structure(logical(0), 
                shape = "DatasetName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "name")), 
                shape = "TriggeringDataset", type = "structure", 
                locationName = "dataset")), shape = "DatasetTrigger", 
            type = "structure")), shape = "DatasetTriggers", 
            type = "list", max = 5L, min = 0L, locationName = "triggers"), 
        Actions = structure(list(structure(list(ActionName = structure(logical(0), 
            shape = "DatasetActionName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "actionName"), 
            ActionType = structure(logical(0), shape = "DatasetActionType", 
                type = "string", locationName = "actionType")), 
            shape = "DatasetActionSummary", type = "structure")), 
            shape = "DatasetActionSummaries", type = "list", 
            max = 1L, min = 1L, locationName = "actions")), shape = "DatasetSummary", 
        type = "structure")), shape = "DatasetSummaries", type = "list", 
        locationName = "datasetSummaries"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDatasetsResponse", type = "structure")
    return(populate(args, shape))
}

list_datastores_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListDatastoresRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_datastores_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatastoreSummaries = structure(list(structure(list(DatastoreName = structure(logical(0), 
        shape = "DatastoreName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName"), 
        Status = structure(logical(0), shape = "DatastoreStatus", 
            type = "string", locationName = "status"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime")), 
        shape = "DatastoreSummary", type = "structure")), shape = "DatastoreSummaries", 
        type = "list", locationName = "datastoreSummaries"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListDatastoresResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_pipelines_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListPipelinesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_pipelines_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineSummaries = structure(list(structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "pipelineName"), 
        ReprocessingSummaries = structure(list(structure(list(Id = structure(logical(0), 
            shape = "ReprocessingId", type = "string", locationName = "id"), 
            Status = structure(logical(0), shape = "ReprocessingStatus", 
                type = "string", locationName = "status"), CreationTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp", locationName = "creationTime")), 
            shape = "ReprocessingSummary", type = "structure")), 
            shape = "ReprocessingSummaries", type = "list", locationName = "reprocessingSummaries"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "creationTime"), 
        LastUpdateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdateTime")), 
        shape = "PipelineSummary", type = "structure")), shape = "PipelineSummaries", 
        type = "list", locationName = "pipelineSummaries"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListPipelinesResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", location = "querystring", locationName = "resourceArn", 
        type = "string", max = 2048L, min = 20L)), shape = "ListTagsForResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 256L, min = 1L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", max = 50L, min = 1L, 
        locationName = "tags")), shape = "ListTagsForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_logging_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingOptions = structure(list(RoleArn = structure(logical(0), 
        shape = "RoleArn", type = "string", max = 2048L, min = 20L, 
        locationName = "roleArn"), Level = structure(logical(0), 
        shape = "LoggingLevel", type = "string", locationName = "level"), 
        Enabled = structure(logical(0), shape = "LoggingEnabled", 
            type = "boolean", locationName = "enabled")), shape = "LoggingOptions", 
        type = "structure", locationName = "loggingOptions")), 
        shape = "PutLoggingOptionsRequest", type = "structure")
    return(populate(args, shape))
}

put_logging_options_output <- function () 
{
    return(list())
}

run_pipeline_activity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineActivity = structure(list(Channel = structure(list(Name = structure(logical(0), 
        shape = "ActivityName", type = "string", max = 128L, 
        min = 1L, locationName = "name"), ChannelName = structure(logical(0), 
        shape = "ChannelName", type = "string", max = 128L, min = 1L, 
        pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
        Next = structure(logical(0), shape = "ActivityName", 
            type = "string", max = 128L, min = 1L, locationName = "next")), 
        shape = "ChannelActivity", type = "structure", locationName = "channel"), 
        Lambda = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), LambdaName = structure(logical(0), 
            shape = "LambdaName", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9_-]+$", locationName = "lambdaName"), 
            BatchSize = structure(logical(0), shape = "ActivityBatchSize", 
                type = "integer", max = 1000L, min = 1L, locationName = "batchSize"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "LambdaActivity", type = "structure", locationName = "lambda"), 
        Datastore = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), DatastoreName = structure(logical(0), 
            shape = "DatastoreName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName")), 
            shape = "DatastoreActivity", type = "structure", 
            locationName = "datastore"), AddAttributes = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L)), shape = "AttributeNameMapping", type = "map", 
            max = 50L, min = 1L, locationName = "attributes"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "AddAttributesActivity", type = "structure", 
            locationName = "addAttributes"), RemoveAttributes = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L)), shape = "AttributeNames", type = "list", 
            max = 50L, min = 1L, locationName = "attributes"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "RemoveAttributesActivity", type = "structure", 
            locationName = "removeAttributes"), SelectAttributes = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L)), shape = "AttributeNames", type = "list", 
            max = 50L, min = 1L, locationName = "attributes"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "SelectAttributesActivity", type = "structure", 
            locationName = "selectAttributes"), Filter = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Filter = structure(logical(0), 
            shape = "FilterExpression", type = "string", max = 256L, 
            min = 1L, locationName = "filter"), Next = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "next")), shape = "FilterActivity", 
            type = "structure", locationName = "filter"), Math = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Attribute = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L, locationName = "attribute"), Math = structure(logical(0), 
            shape = "MathExpression", type = "string", max = 256L, 
            min = 1L, locationName = "math"), Next = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "next")), shape = "MathActivity", 
            type = "structure", locationName = "math"), DeviceRegistryEnrich = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Attribute = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "next")), shape = "DeviceRegistryEnrichActivity", 
            type = "structure", locationName = "deviceRegistryEnrich"), 
        DeviceShadowEnrich = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), Attribute = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
            shape = "AttributeName", type = "string", max = 256L, 
            min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "next")), shape = "DeviceShadowEnrichActivity", 
            type = "structure", locationName = "deviceShadowEnrich")), 
        shape = "PipelineActivity", type = "structure", locationName = "pipelineActivity"), 
        Payloads = structure(list(structure(logical(0), shape = "MessagePayload", 
            type = "blob")), shape = "MessagePayloads", type = "list", 
            max = 10L, min = 1L, locationName = "payloads")), 
        shape = "RunPipelineActivityRequest", type = "structure")
    return(populate(args, shape))
}

run_pipeline_activity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Payloads = structure(list(structure(logical(0), 
        shape = "MessagePayload", type = "blob")), shape = "MessagePayloads", 
        type = "list", max = 10L, min = 1L, locationName = "payloads"), 
        LogResult = structure(logical(0), shape = "LogResult", 
            type = "string", locationName = "logResult")), shape = "RunPipelineActivityResponse", 
        type = "structure")
    return(populate(args, shape))
}

sample_channel_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", location = "uri", locationName = "channelName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        MaxMessages = structure(logical(0), shape = "MaxMessages", 
            location = "querystring", locationName = "maxMessages", 
            type = "integer", max = 10L, min = 1L), StartTime = structure(logical(0), 
            shape = "StartTime", location = "querystring", locationName = "startTime", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "EndTime", location = "querystring", locationName = "endTime", 
            type = "timestamp")), shape = "SampleChannelDataRequest", 
        type = "structure")
    return(populate(args, shape))
}

sample_channel_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Payloads = structure(list(structure(logical(0), 
        shape = "MessagePayload", type = "blob")), shape = "MessagePayloads", 
        type = "list", max = 10L, min = 1L, locationName = "payloads")), 
        shape = "SampleChannelDataResponse", type = "structure")
    return(populate(args, shape))
}

start_pipeline_reprocessing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", location = "uri", locationName = "pipelineName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        StartTime = structure(logical(0), shape = "StartTime", 
            type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "EndTime", type = "timestamp", 
            locationName = "endTime")), shape = "StartPipelineReprocessingRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_pipeline_reprocessing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReprocessingId = structure(logical(0), 
        shape = "ReprocessingId", type = "string", locationName = "reprocessingId")), 
        shape = "StartPipelineReprocessingResponse", type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", location = "querystring", locationName = "resourceArn", 
        type = "string", max = 2048L, min = 20L), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 256L, min = 1L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", max = 50L, min = 1L, 
        locationName = "tags")), shape = "TagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", location = "querystring", locationName = "resourceArn", 
        type = "string", max = 2048L, min = 20L), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 256L, min = 1L)), 
        shape = "TagKeyList", location = "querystring", locationName = "tagKeys", 
        type = "list", max = 50L, min = 1L)), shape = "UntagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_channel_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChannelName = structure(logical(0), 
        shape = "ChannelName", location = "uri", locationName = "channelName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "UpdateChannelRequest", type = "structure")
    return(populate(args, shape))
}

update_channel_output <- function () 
{
    return(list())
}

update_dataset_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatasetName = structure(logical(0), 
        shape = "DatasetName", location = "uri", locationName = "datasetName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        Actions = structure(list(structure(list(ActionName = structure(logical(0), 
            shape = "DatasetActionName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "actionName"), 
            QueryAction = structure(list(SqlQuery = structure(logical(0), 
                shape = "SqlQuery", type = "string", locationName = "sqlQuery"), 
                Filters = structure(list(structure(list(DeltaTime = structure(list(OffsetSeconds = structure(logical(0), 
                  shape = "OffsetSeconds", type = "integer", 
                  locationName = "offsetSeconds"), TimeExpression = structure(logical(0), 
                  shape = "TimeExpression", type = "string", 
                  locationName = "timeExpression")), shape = "DeltaTime", 
                  type = "structure", locationName = "deltaTime")), 
                  shape = "QueryFilter", type = "structure")), 
                  shape = "QueryFilters", type = "list", max = 1L, 
                  min = 0L, locationName = "filters")), shape = "SqlQueryDatasetAction", 
                type = "structure", locationName = "queryAction"), 
            ContainerAction = structure(list(Image = structure(logical(0), 
                shape = "Image", type = "string", max = 255L, 
                locationName = "image"), ExecutionRoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "executionRoleArn"), 
                ResourceConfiguration = structure(list(ComputeType = structure(logical(0), 
                  shape = "ComputeType", type = "string", locationName = "computeType"), 
                  VolumeSizeInGB = structure(logical(0), shape = "VolumeSizeInGB", 
                    type = "integer", max = 50L, min = 1L, locationName = "volumeSizeInGB")), 
                  shape = "ResourceConfiguration", type = "structure", 
                  locationName = "resourceConfiguration"), Variables = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "VariableName", type = "string", max = 256L, 
                  min = 1L, locationName = "name"), StringValue = structure(logical(0), 
                  shape = "StringValue", type = "string", max = 1024L, 
                  min = 0L, locationName = "stringValue"), DoubleValue = structure(logical(0), 
                  shape = "DoubleValue", box = TRUE, type = "double", 
                  locationName = "doubleValue"), DatasetContentVersionValue = structure(list(DatasetName = structure(logical(0), 
                  shape = "DatasetName", type = "string", max = 128L, 
                  min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datasetName")), 
                  shape = "DatasetContentVersionValue", type = "structure", 
                  locationName = "datasetContentVersionValue"), 
                  OutputFileUriValue = structure(list(FileName = structure(logical(0), 
                    shape = "OutputFileName", type = "string", 
                    pattern = "[\\w\\.-]{1,255}", locationName = "fileName")), 
                    shape = "OutputFileUriValue", type = "structure", 
                    locationName = "outputFileUriValue")), shape = "Variable", 
                  type = "structure")), shape = "Variables", 
                  type = "list", max = 50L, min = 0L, locationName = "variables")), 
                shape = "ContainerDatasetAction", type = "structure", 
                locationName = "containerAction")), shape = "DatasetAction", 
            type = "structure")), shape = "DatasetActions", type = "list", 
            max = 1L, min = 1L, locationName = "actions"), Triggers = structure(list(structure(list(Schedule = structure(list(Expression = structure(logical(0), 
            shape = "ScheduleExpression", type = "string", locationName = "expression")), 
            shape = "Schedule", type = "structure", locationName = "schedule"), 
            Dataset = structure(list(Name = structure(logical(0), 
                shape = "DatasetName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "name")), 
                shape = "TriggeringDataset", type = "structure", 
                locationName = "dataset")), shape = "DatasetTrigger", 
            type = "structure")), shape = "DatasetTriggers", 
            type = "list", max = 5L, min = 0L, locationName = "triggers"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "UpdateDatasetRequest", type = "structure")
    return(populate(args, shape))
}

update_dataset_output <- function () 
{
    return(list())
}

update_datastore_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatastoreName = structure(logical(0), 
        shape = "DatastoreName", location = "uri", locationName = "datastoreName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        RetentionPeriod = structure(list(Unlimited = structure(logical(0), 
            shape = "UnlimitedRetentionPeriod", type = "boolean", 
            locationName = "unlimited"), NumberOfDays = structure(logical(0), 
            shape = "RetentionPeriodInDays", type = "integer", 
            min = 1L, locationName = "numberOfDays")), shape = "RetentionPeriod", 
            type = "structure", locationName = "retentionPeriod")), 
        shape = "UpdateDatastoreRequest", type = "structure")
    return(populate(args, shape))
}

update_datastore_output <- function () 
{
    return(list())
}

update_pipeline_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PipelineName = structure(logical(0), 
        shape = "PipelineName", location = "uri", locationName = "pipelineName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_]+$"), 
        PipelineActivities = structure(list(structure(list(Channel = structure(list(Name = structure(logical(0), 
            shape = "ActivityName", type = "string", max = 128L, 
            min = 1L, locationName = "name"), ChannelName = structure(logical(0), 
            shape = "ChannelName", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "channelName"), 
            Next = structure(logical(0), shape = "ActivityName", 
                type = "string", max = 128L, min = 1L, locationName = "next")), 
            shape = "ChannelActivity", type = "structure", locationName = "channel"), 
            Lambda = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), LambdaName = structure(logical(0), 
                shape = "LambdaName", type = "string", max = 64L, 
                min = 1L, pattern = "^[a-zA-Z0-9_-]+$", locationName = "lambdaName"), 
                BatchSize = structure(logical(0), shape = "ActivityBatchSize", 
                  type = "integer", max = 1000L, min = 1L, locationName = "batchSize"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "LambdaActivity", type = "structure", 
                locationName = "lambda"), Datastore = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), DatastoreName = structure(logical(0), 
                shape = "DatastoreName", type = "string", max = 128L, 
                min = 1L, pattern = "^[a-zA-Z0-9_]+$", locationName = "datastoreName")), 
                shape = "DatastoreActivity", type = "structure", 
                locationName = "datastore"), AddAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNameMapping", type = "map", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "AddAttributesActivity", type = "structure", 
                locationName = "addAttributes"), RemoveAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNames", type = "list", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "RemoveAttributesActivity", type = "structure", 
                locationName = "removeAttributes"), SelectAttributes = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L)), shape = "AttributeNames", type = "list", 
                max = 50L, min = 1L, locationName = "attributes"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "SelectAttributesActivity", type = "structure", 
                locationName = "selectAttributes"), Filter = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Filter = structure(logical(0), 
                shape = "FilterExpression", type = "string", 
                max = 256L, min = 1L, locationName = "filter"), 
                Next = structure(logical(0), shape = "ActivityName", 
                  type = "string", max = 128L, min = 1L, locationName = "next")), 
                shape = "FilterActivity", type = "structure", 
                locationName = "filter"), Math = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), Math = structure(logical(0), 
                shape = "MathExpression", type = "string", max = 256L, 
                min = 1L, locationName = "math"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "MathActivity", 
                type = "structure", locationName = "math"), DeviceRegistryEnrich = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "DeviceRegistryEnrichActivity", 
                type = "structure", locationName = "deviceRegistryEnrich"), 
            DeviceShadowEnrich = structure(list(Name = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "name"), Attribute = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "attribute"), ThingName = structure(logical(0), 
                shape = "AttributeName", type = "string", max = 256L, 
                min = 1L, locationName = "thingName"), RoleArn = structure(logical(0), 
                shape = "RoleArn", type = "string", max = 2048L, 
                min = 20L, locationName = "roleArn"), Next = structure(logical(0), 
                shape = "ActivityName", type = "string", max = 128L, 
                min = 1L, locationName = "next")), shape = "DeviceShadowEnrichActivity", 
                type = "structure", locationName = "deviceShadowEnrich")), 
            shape = "PipelineActivity", type = "structure")), 
            shape = "PipelineActivities", type = "list", max = 25L, 
            min = 1L, locationName = "pipelineActivities")), 
        shape = "UpdatePipelineRequest", type = "structure")
    return(populate(args, shape))
}

update_pipeline_output <- function () 
{
    return(list())
}
