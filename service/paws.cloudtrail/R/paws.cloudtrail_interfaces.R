add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "String", type = "string"), TagsList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagsList", type = "list")), shape = "AddTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsResponse", type = "structure")
    return(populate(args, shape))
}

create_trail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicName = structure(logical(0), 
        shape = "String", type = "string"), IncludeGlobalServiceEvents = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsMultiRegionTrail = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EnableLogFileValidation = structure(logical(0), 
        shape = "Boolean", type = "boolean"), CloudWatchLogsLogGroupArn = structure(logical(0), 
        shape = "String", type = "string"), CloudWatchLogsRoleArn = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateTrailRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_trail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicName = structure(logical(0), 
        shape = "String", deprecated = TRUE, type = "string"), 
        SnsTopicARN = structure(logical(0), shape = "String", 
            type = "string"), IncludeGlobalServiceEvents = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IsMultiRegionTrail = structure(logical(0), 
            shape = "Boolean", type = "boolean"), TrailARN = structure(logical(0), 
            shape = "String", type = "string"), LogFileValidationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "String", type = "string"), CloudWatchLogsRoleArn = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreateTrailResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_trail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string")), shape = "DeleteTrailRequest", type = "structure")
    return(populate(args, shape))
}

delete_trail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTrailResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_trails_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrailNameList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "TrailNameList", 
        type = "list", locationName = "trailNameList"), IncludeShadowTrails = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "includeShadowTrails")), 
        shape = "DescribeTrailsRequest", type = "structure")
    return(populate(args, shape))
}

describe_trails_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrailList = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicName = structure(logical(0), 
        shape = "String", deprecated = TRUE, type = "string"), 
        SnsTopicARN = structure(logical(0), shape = "String", 
            type = "string"), IncludeGlobalServiceEvents = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IsMultiRegionTrail = structure(logical(0), 
            shape = "Boolean", type = "boolean"), HomeRegion = structure(logical(0), 
            shape = "String", type = "string"), TrailARN = structure(logical(0), 
            shape = "String", type = "string"), LogFileValidationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "String", type = "string"), CloudWatchLogsRoleArn = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), HasCustomEventSelectors = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Trail", 
        type = "structure")), shape = "TrailList", type = "list", 
        locationName = "trailList")), shape = "DescribeTrailsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_event_selectors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrailName = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetEventSelectorsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_event_selectors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrailARN = structure(logical(0), 
        shape = "String", type = "string"), EventSelectors = structure(list(structure(list(ReadWriteType = structure(logical(0), 
        shape = "ReadWriteType", type = "string"), IncludeManagementEvents = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DataResources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DataResourceValues", 
        type = "list")), shape = "DataResource", type = "structure")), 
        shape = "DataResources", type = "list")), shape = "EventSelector", 
        type = "structure")), shape = "EventSelectors", type = "list")), 
        shape = "GetEventSelectorsResponse", type = "structure")
    return(populate(args, shape))
}

get_trail_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetTrailStatusRequest", type = "structure")
    return(populate(args, shape))
}

get_trail_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IsLogging = structure(logical(0), 
        shape = "Boolean", type = "boolean"), LatestDeliveryError = structure(logical(0), 
        shape = "String", type = "string"), LatestNotificationError = structure(logical(0), 
        shape = "String", type = "string"), LatestDeliveryTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LatestNotificationTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), StartLoggingTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), StopLoggingTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LatestCloudWatchLogsDeliveryError = structure(logical(0), 
        shape = "String", type = "string"), LatestCloudWatchLogsDeliveryTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LatestDigestDeliveryTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), LatestDigestDeliveryError = structure(logical(0), 
        shape = "String", type = "string"), LatestDeliveryAttemptTime = structure(logical(0), 
        shape = "String", type = "string"), LatestNotificationAttemptTime = structure(logical(0), 
        shape = "String", type = "string"), LatestNotificationAttemptSucceeded = structure(logical(0), 
        shape = "String", type = "string"), LatestDeliveryAttemptSucceeded = structure(logical(0), 
        shape = "String", type = "string"), TimeLoggingStarted = structure(logical(0), 
        shape = "String", type = "string"), TimeLoggingStopped = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetTrailStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_public_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListPublicKeysRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_public_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublicKeyList = structure(list(structure(list(Value = structure(logical(0), 
        shape = "ByteBuffer", type = "blob"), ValidityStartTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), ValidityEndTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), Fingerprint = structure(logical(0), 
        shape = "String", type = "string")), shape = "PublicKey", 
        type = "structure")), shape = "PublicKeyList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "ListPublicKeysResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceIdList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ResourceIdList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "ListTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceTagList = structure(list(structure(list(ResourceId = structure(logical(0), 
        shape = "String", type = "string"), TagsList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagsList", type = "list")), shape = "ResourceTag", 
        type = "structure")), shape = "ResourceTagList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "ListTagsResponse", type = "structure")
    return(populate(args, shape))
}

lookup_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LookupAttributes = structure(list(structure(list(AttributeKey = structure(logical(0), 
        shape = "LookupAttributeKey", type = "string"), AttributeValue = structure(logical(0), 
        shape = "String", type = "string")), shape = "LookupAttribute", 
        type = "structure")), shape = "LookupAttributesList", 
        type = "list"), StartTime = structure(logical(0), shape = "Date", 
        type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "LookupEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

lookup_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(EventId = structure(logical(0), 
        shape = "String", type = "string"), EventName = structure(logical(0), 
        shape = "String", type = "string"), ReadOnly = structure(logical(0), 
        shape = "String", type = "string"), AccessKeyId = structure(logical(0), 
        shape = "String", type = "string"), EventTime = structure(logical(0), 
        shape = "Date", type = "timestamp"), EventSource = structure(logical(0), 
        shape = "String", type = "string"), Username = structure(logical(0), 
        shape = "String", type = "string"), Resources = structure(list(structure(list(ResourceType = structure(logical(0), 
        shape = "String", type = "string"), ResourceName = structure(logical(0), 
        shape = "String", type = "string")), shape = "Resource", 
        type = "structure")), shape = "ResourceList", type = "list"), 
        CloudTrailEvent = structure(logical(0), shape = "String", 
            type = "string")), shape = "Event", type = "structure")), 
        shape = "EventsList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "LookupEventsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_event_selectors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrailName = structure(logical(0), 
        shape = "String", type = "string"), EventSelectors = structure(list(structure(list(ReadWriteType = structure(logical(0), 
        shape = "ReadWriteType", type = "string"), IncludeManagementEvents = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DataResources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DataResourceValues", 
        type = "list")), shape = "DataResource", type = "structure")), 
        shape = "DataResources", type = "list")), shape = "EventSelector", 
        type = "structure")), shape = "EventSelectors", type = "list")), 
        shape = "PutEventSelectorsRequest", type = "structure")
    return(populate(args, shape))
}

put_event_selectors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrailARN = structure(logical(0), 
        shape = "String", type = "string"), EventSelectors = structure(list(structure(list(ReadWriteType = structure(logical(0), 
        shape = "ReadWriteType", type = "string"), IncludeManagementEvents = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DataResources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "DataResourceValues", 
        type = "list")), shape = "DataResource", type = "structure")), 
        shape = "DataResources", type = "list")), shape = "EventSelector", 
        type = "structure")), shape = "EventSelectors", type = "list")), 
        shape = "PutEventSelectorsResponse", type = "structure")
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "String", type = "string"), TagsList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagsList", type = "list")), shape = "RemoveTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_logging_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string")), shape = "StartLoggingRequest", type = "structure")
    return(populate(args, shape))
}

start_logging_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartLoggingResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_logging_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string")), shape = "StopLoggingRequest", type = "structure")
    return(populate(args, shape))
}

stop_logging_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopLoggingResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_trail_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicName = structure(logical(0), 
        shape = "String", type = "string"), IncludeGlobalServiceEvents = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsMultiRegionTrail = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EnableLogFileValidation = structure(logical(0), 
        shape = "Boolean", type = "boolean"), CloudWatchLogsLogGroupArn = structure(logical(0), 
        shape = "String", type = "string"), CloudWatchLogsRoleArn = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateTrailRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_trail_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), S3BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicName = structure(logical(0), 
        shape = "String", deprecated = TRUE, type = "string"), 
        SnsTopicARN = structure(logical(0), shape = "String", 
            type = "string"), IncludeGlobalServiceEvents = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IsMultiRegionTrail = structure(logical(0), 
            shape = "Boolean", type = "boolean"), TrailARN = structure(logical(0), 
            shape = "String", type = "string"), LogFileValidationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "String", type = "string"), CloudWatchLogsRoleArn = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string")), shape = "UpdateTrailResponse", 
        type = "structure")
    return(populate(args, shape))
}
