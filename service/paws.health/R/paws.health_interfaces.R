describe_affected_entities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(EventArns = structure(list(structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?")), 
        shape = "eventArnList", type = "list", max = 10L, min = 1L, 
        locationName = "eventArns"), EntityArns = structure(list(structure(logical(0), 
        shape = "entityArn", type = "string", max = 1600L)), 
        shape = "entityArnList", type = "list", max = 100L, min = 1L, 
        locationName = "entityArns"), EntityValues = structure(list(structure(logical(0), 
        shape = "entityValue", type = "string", max = 256L)), 
        shape = "entityValueList", type = "list", max = 100L, 
        min = 1L, locationName = "entityValues"), LastUpdatedTimes = structure(list(structure(list(From = structure(logical(0), 
        shape = "timestamp", type = "timestamp", locationName = "from"), 
        To = structure(logical(0), shape = "timestamp", type = "timestamp", 
            locationName = "to")), shape = "DateTimeRange", type = "structure")), 
        shape = "dateTimeRangeList", type = "list", max = 10L, 
        min = 1L, locationName = "lastUpdatedTimes"), Tags = structure(list(structure(list(structure(logical(0), 
        shape = "tagValue", type = "string", max = 255L)), shape = "tagSet", 
        type = "map", max = 50L)), shape = "tagFilter", type = "list", 
        max = 50L, locationName = "tags"), StatusCodes = structure(list(structure(logical(0), 
        shape = "entityStatusCode", type = "string")), shape = "entityStatusCodeList", 
        type = "list", max = 3L, min = 1L, locationName = "statusCodes")), 
        shape = "EntityFilter", type = "structure", locationName = "filter"), 
        Locale = structure(logical(0), shape = "locale", type = "string", 
            max = 256L, min = 2L, locationName = "locale"), NextToken = structure(logical(0), 
            shape = "nextToken", type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
            locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "maxResults", type = "integer", max = 100L, 
            min = 10L, locationName = "maxResults")), shape = "DescribeAffectedEntitiesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_affected_entities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entities = structure(list(structure(list(EntityArn = structure(logical(0), 
        shape = "entityArn", type = "string", max = 1600L, locationName = "entityArn"), 
        EventArn = structure(logical(0), shape = "eventArn", 
            type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?", 
            locationName = "eventArn"), EntityValue = structure(logical(0), 
            shape = "entityValue", type = "string", max = 256L, 
            locationName = "entityValue"), AwsAccountId = structure(logical(0), 
            shape = "accountId", type = "string", pattern = "[0-9]{12}", 
            locationName = "awsAccountId"), LastUpdatedTime = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "lastUpdatedTime"), 
        StatusCode = structure(logical(0), shape = "entityStatusCode", 
            type = "string", locationName = "statusCode"), Tags = structure(list(structure(logical(0), 
            shape = "tagValue", type = "string", max = 255L)), 
            shape = "tagSet", type = "map", max = 50L, locationName = "tags")), 
        shape = "AffectedEntity", type = "structure")), shape = "EntityList", 
        type = "list", locationName = "entities"), NextToken = structure(logical(0), 
        shape = "nextToken", type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
        locationName = "nextToken")), shape = "DescribeAffectedEntitiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_entity_aggregates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventArns = structure(list(structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?")), 
        shape = "EventArnsList", type = "list", max = 50L, min = 1L, 
        locationName = "eventArns")), shape = "DescribeEntityAggregatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_entity_aggregates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EntityAggregates = structure(list(structure(list(EventArn = structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?", 
        locationName = "eventArn"), Count = structure(logical(0), 
        shape = "count", type = "integer", locationName = "count")), 
        shape = "EntityAggregate", type = "structure")), shape = "EntityAggregateList", 
        type = "list", locationName = "entityAggregates")), shape = "DescribeEntityAggregatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_aggregates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(EventArns = structure(list(structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?")), 
        shape = "eventArnList", type = "list", max = 10L, min = 1L, 
        locationName = "eventArns"), EventTypeCodes = structure(list(structure(logical(0), 
        shape = "eventType", type = "string", max = 100L, min = 3L)), 
        shape = "eventTypeList", type = "list", max = 10L, min = 1L, 
        locationName = "eventTypeCodes"), Services = structure(list(structure(logical(0), 
        shape = "service", type = "string", max = 30L, min = 2L)), 
        shape = "serviceList", type = "list", max = 10L, min = 1L, 
        locationName = "services"), Regions = structure(list(structure(logical(0), 
        shape = "region", type = "string", pattern = "[^:/]{2,25}")), 
        shape = "regionList", type = "list", max = 10L, min = 1L, 
        locationName = "regions"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "availabilityZone", type = "string", pattern = "[a-z]{2}\\-[0-9a-z\\-]{4,16}")), 
        shape = "availabilityZones", type = "list", locationName = "availabilityZones"), 
        StartTimes = structure(list(structure(list(From = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "from"), 
            To = structure(logical(0), shape = "timestamp", type = "timestamp", 
                locationName = "to")), shape = "DateTimeRange", 
            type = "structure")), shape = "dateTimeRangeList", 
            type = "list", max = 10L, min = 1L, locationName = "startTimes"), 
        EndTimes = structure(list(structure(list(From = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "from"), 
            To = structure(logical(0), shape = "timestamp", type = "timestamp", 
                locationName = "to")), shape = "DateTimeRange", 
            type = "structure")), shape = "dateTimeRangeList", 
            type = "list", max = 10L, min = 1L, locationName = "endTimes"), 
        LastUpdatedTimes = structure(list(structure(list(From = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "from"), 
            To = structure(logical(0), shape = "timestamp", type = "timestamp", 
                locationName = "to")), shape = "DateTimeRange", 
            type = "structure")), shape = "dateTimeRangeList", 
            type = "list", max = 10L, min = 1L, locationName = "lastUpdatedTimes"), 
        EntityArns = structure(list(structure(logical(0), shape = "entityArn", 
            type = "string", max = 1600L)), shape = "entityArnList", 
            type = "list", max = 100L, min = 1L, locationName = "entityArns"), 
        EntityValues = structure(list(structure(logical(0), shape = "entityValue", 
            type = "string", max = 256L)), shape = "entityValueList", 
            type = "list", max = 100L, min = 1L, locationName = "entityValues"), 
        EventTypeCategories = structure(list(structure(logical(0), 
            shape = "eventTypeCategory", type = "string", max = 255L, 
            min = 3L)), shape = "eventTypeCategoryList", type = "list", 
            max = 10L, min = 1L, locationName = "eventTypeCategories"), 
        Tags = structure(list(structure(list(structure(logical(0), 
            shape = "tagValue", type = "string", max = 255L)), 
            shape = "tagSet", type = "map", max = 50L)), shape = "tagFilter", 
            type = "list", max = 50L, locationName = "tags"), 
        EventStatusCodes = structure(list(structure(logical(0), 
            shape = "eventStatusCode", type = "string")), shape = "eventStatusCodeList", 
            type = "list", max = 6L, min = 1L, locationName = "eventStatusCodes")), 
        shape = "EventFilter", type = "structure", locationName = "filter"), 
        AggregateField = structure(logical(0), shape = "eventAggregateField", 
            type = "string", locationName = "aggregateField"), 
        MaxResults = structure(logical(0), shape = "maxResults", 
            type = "integer", max = 100L, min = 10L, locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "nextToken", 
            type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
            locationName = "nextToken")), shape = "DescribeEventAggregatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_aggregates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventAggregates = structure(list(structure(list(AggregateValue = structure(logical(0), 
        shape = "aggregateValue", type = "string", locationName = "aggregateValue"), 
        Count = structure(logical(0), shape = "count", type = "integer", 
            locationName = "count")), shape = "EventAggregate", 
        type = "structure")), shape = "EventAggregateList", type = "list", 
        locationName = "eventAggregates"), NextToken = structure(logical(0), 
        shape = "nextToken", type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
        locationName = "nextToken")), shape = "DescribeEventAggregatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventArns = structure(list(structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?")), 
        shape = "eventArnList", type = "list", max = 10L, min = 1L, 
        locationName = "eventArns"), Locale = structure(logical(0), 
        shape = "locale", type = "string", max = 256L, min = 2L, 
        locationName = "locale")), shape = "DescribeEventDetailsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfulSet = structure(list(structure(list(Event = structure(list(Arn = structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?", 
        locationName = "arn"), Service = structure(logical(0), 
        shape = "service", type = "string", max = 30L, min = 2L, 
        locationName = "service"), EventTypeCode = structure(logical(0), 
        shape = "eventTypeCode", type = "string", max = 100L, 
        min = 3L, locationName = "eventTypeCode"), EventTypeCategory = structure(logical(0), 
        shape = "eventTypeCategory", type = "string", max = 255L, 
        min = 3L, locationName = "eventTypeCategory"), Region = structure(logical(0), 
        shape = "region", type = "string", pattern = "[^:/]{2,25}", 
        locationName = "region"), AvailabilityZone = structure(logical(0), 
        shape = "availabilityZone", type = "string", pattern = "[a-z]{2}\\-[0-9a-z\\-]{4,16}", 
        locationName = "availabilityZone"), StartTime = structure(logical(0), 
        shape = "timestamp", type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "timestamp", 
            type = "timestamp", locationName = "endTime"), LastUpdatedTime = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "lastUpdatedTime"), 
        StatusCode = structure(logical(0), shape = "eventStatusCode", 
            type = "string", locationName = "statusCode")), shape = "Event", 
        type = "structure", locationName = "event"), EventDescription = structure(list(LatestDescription = structure(logical(0), 
        shape = "eventDescription", type = "string", locationName = "latestDescription")), 
        shape = "EventDescription", type = "structure", locationName = "eventDescription"), 
        EventMetadata = structure(list(structure(logical(0), 
            shape = "metadataValue", type = "string", max = 10240L)), 
            shape = "eventMetadata", type = "map", locationName = "eventMetadata")), 
        shape = "EventDetails", type = "structure")), shape = "DescribeEventDetailsSuccessfulSet", 
        type = "list", locationName = "successfulSet"), FailedSet = structure(list(structure(list(EventArn = structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?", 
        locationName = "eventArn"), ErrorName = structure(logical(0), 
        shape = "string", type = "string", locationName = "errorName"), 
        ErrorMessage = structure(logical(0), shape = "string", 
            type = "string", locationName = "errorMessage")), 
        shape = "EventDetailsErrorItem", type = "structure")), 
        shape = "DescribeEventDetailsFailedSet", type = "list", 
        locationName = "failedSet")), shape = "DescribeEventDetailsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(EventTypeCodes = structure(list(structure(logical(0), 
        shape = "eventTypeCode", type = "string", max = 100L, 
        min = 3L)), shape = "EventTypeCodeList", type = "list", 
        max = 10L, min = 1L, locationName = "eventTypeCodes"), 
        Services = structure(list(structure(logical(0), shape = "service", 
            type = "string", max = 30L, min = 2L)), shape = "serviceList", 
            type = "list", max = 10L, min = 1L, locationName = "services"), 
        EventTypeCategories = structure(list(structure(logical(0), 
            shape = "eventTypeCategory", type = "string", max = 255L, 
            min = 3L)), shape = "EventTypeCategoryList", type = "list", 
            max = 10L, min = 1L, locationName = "eventTypeCategories")), 
        shape = "EventTypeFilter", type = "structure", locationName = "filter"), 
        Locale = structure(logical(0), shape = "locale", type = "string", 
            max = 256L, min = 2L, locationName = "locale"), NextToken = structure(logical(0), 
            shape = "nextToken", type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
            locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "maxResults", type = "integer", max = 100L, 
            min = 10L, locationName = "maxResults")), shape = "DescribeEventTypesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventTypes = structure(list(structure(list(Service = structure(logical(0), 
        shape = "service", type = "string", max = 30L, min = 2L, 
        locationName = "service"), Code = structure(logical(0), 
        shape = "eventTypeCode", type = "string", max = 100L, 
        min = 3L, locationName = "code"), Category = structure(logical(0), 
        shape = "eventTypeCategory", type = "string", max = 255L, 
        min = 3L, locationName = "category")), shape = "EventType", 
        type = "structure")), shape = "EventTypeList", type = "list", 
        locationName = "eventTypes"), NextToken = structure(logical(0), 
        shape = "nextToken", type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
        locationName = "nextToken")), shape = "DescribeEventTypesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(EventArns = structure(list(structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?")), 
        shape = "eventArnList", type = "list", max = 10L, min = 1L, 
        locationName = "eventArns"), EventTypeCodes = structure(list(structure(logical(0), 
        shape = "eventType", type = "string", max = 100L, min = 3L)), 
        shape = "eventTypeList", type = "list", max = 10L, min = 1L, 
        locationName = "eventTypeCodes"), Services = structure(list(structure(logical(0), 
        shape = "service", type = "string", max = 30L, min = 2L)), 
        shape = "serviceList", type = "list", max = 10L, min = 1L, 
        locationName = "services"), Regions = structure(list(structure(logical(0), 
        shape = "region", type = "string", pattern = "[^:/]{2,25}")), 
        shape = "regionList", type = "list", max = 10L, min = 1L, 
        locationName = "regions"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "availabilityZone", type = "string", pattern = "[a-z]{2}\\-[0-9a-z\\-]{4,16}")), 
        shape = "availabilityZones", type = "list", locationName = "availabilityZones"), 
        StartTimes = structure(list(structure(list(From = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "from"), 
            To = structure(logical(0), shape = "timestamp", type = "timestamp", 
                locationName = "to")), shape = "DateTimeRange", 
            type = "structure")), shape = "dateTimeRangeList", 
            type = "list", max = 10L, min = 1L, locationName = "startTimes"), 
        EndTimes = structure(list(structure(list(From = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "from"), 
            To = structure(logical(0), shape = "timestamp", type = "timestamp", 
                locationName = "to")), shape = "DateTimeRange", 
            type = "structure")), shape = "dateTimeRangeList", 
            type = "list", max = 10L, min = 1L, locationName = "endTimes"), 
        LastUpdatedTimes = structure(list(structure(list(From = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "from"), 
            To = structure(logical(0), shape = "timestamp", type = "timestamp", 
                locationName = "to")), shape = "DateTimeRange", 
            type = "structure")), shape = "dateTimeRangeList", 
            type = "list", max = 10L, min = 1L, locationName = "lastUpdatedTimes"), 
        EntityArns = structure(list(structure(logical(0), shape = "entityArn", 
            type = "string", max = 1600L)), shape = "entityArnList", 
            type = "list", max = 100L, min = 1L, locationName = "entityArns"), 
        EntityValues = structure(list(structure(logical(0), shape = "entityValue", 
            type = "string", max = 256L)), shape = "entityValueList", 
            type = "list", max = 100L, min = 1L, locationName = "entityValues"), 
        EventTypeCategories = structure(list(structure(logical(0), 
            shape = "eventTypeCategory", type = "string", max = 255L, 
            min = 3L)), shape = "eventTypeCategoryList", type = "list", 
            max = 10L, min = 1L, locationName = "eventTypeCategories"), 
        Tags = structure(list(structure(list(structure(logical(0), 
            shape = "tagValue", type = "string", max = 255L)), 
            shape = "tagSet", type = "map", max = 50L)), shape = "tagFilter", 
            type = "list", max = 50L, locationName = "tags"), 
        EventStatusCodes = structure(list(structure(logical(0), 
            shape = "eventStatusCode", type = "string")), shape = "eventStatusCodeList", 
            type = "list", max = 6L, min = 1L, locationName = "eventStatusCodes")), 
        shape = "EventFilter", type = "structure", locationName = "filter"), 
        NextToken = structure(logical(0), shape = "nextToken", 
            type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
            locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "maxResults", type = "integer", max = 100L, 
            min = 10L, locationName = "maxResults"), Locale = structure(logical(0), 
            shape = "locale", type = "string", max = 256L, min = 2L, 
            locationName = "locale")), shape = "DescribeEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "eventArn", type = "string", max = 1600L, pattern = "arn:aws:health:[^:]*:[^:]*:event(?:/[\\w-]+){1}((?:/[\\w-]+){2})?", 
        locationName = "arn"), Service = structure(logical(0), 
        shape = "service", type = "string", max = 30L, min = 2L, 
        locationName = "service"), EventTypeCode = structure(logical(0), 
        shape = "eventTypeCode", type = "string", max = 100L, 
        min = 3L, locationName = "eventTypeCode"), EventTypeCategory = structure(logical(0), 
        shape = "eventTypeCategory", type = "string", max = 255L, 
        min = 3L, locationName = "eventTypeCategory"), Region = structure(logical(0), 
        shape = "region", type = "string", pattern = "[^:/]{2,25}", 
        locationName = "region"), AvailabilityZone = structure(logical(0), 
        shape = "availabilityZone", type = "string", pattern = "[a-z]{2}\\-[0-9a-z\\-]{4,16}", 
        locationName = "availabilityZone"), StartTime = structure(logical(0), 
        shape = "timestamp", type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "timestamp", 
            type = "timestamp", locationName = "endTime"), LastUpdatedTime = structure(logical(0), 
            shape = "timestamp", type = "timestamp", locationName = "lastUpdatedTime"), 
        StatusCode = structure(logical(0), shape = "eventStatusCode", 
            type = "string", locationName = "statusCode")), shape = "Event", 
        type = "structure")), shape = "EventList", type = "list", 
        locationName = "events"), NextToken = structure(logical(0), 
        shape = "nextToken", type = "string", pattern = "[a-zA-Z0-9=/+_.-]{4,512}", 
        locationName = "nextToken")), shape = "DescribeEventsResponse", 
        type = "structure")
    return(populate(args, shape))
}
