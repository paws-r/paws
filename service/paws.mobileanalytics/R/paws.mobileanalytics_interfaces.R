put_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(EventType = structure(logical(0), 
        shape = "String50Chars", type = "string", min = 1L, max = 50L, 
        locationName = "eventType"), Timestamp = structure(logical(0), 
        shape = "ISO8601Timestamp", type = "string", locationName = "timestamp"), 
        Session = structure(list(Id = structure(logical(0), shape = "String50Chars", 
            type = "string", min = 1L, max = 50L, locationName = "id"), 
            Duration = structure(logical(0), shape = "Long", 
                type = "long", locationName = "duration"), StartTimestamp = structure(logical(0), 
                shape = "ISO8601Timestamp", type = "string", 
                locationName = "startTimestamp"), StopTimestamp = structure(logical(0), 
                shape = "ISO8601Timestamp", type = "string", 
                locationName = "stopTimestamp")), shape = "Session", 
            type = "structure", locationName = "session"), Version = structure(logical(0), 
            shape = "String10Chars", type = "string", min = 1L, 
            max = 10L, locationName = "version"), Attributes = structure(list(structure(logical(0), 
            shape = "String0to1000Chars", type = "string", min = 0L, 
            max = 1000L)), shape = "MapOfStringToString", type = "map", 
            min = 0L, max = 50L, locationName = "attributes"), 
        Metrics = structure(list(structure(logical(0), shape = "Double", 
            type = "double")), shape = "MapOfStringToNumber", 
            type = "map", min = 0L, max = 50L, locationName = "metrics")), 
        shape = "Event", type = "structure")), shape = "EventListDefinition", 
        type = "list", locationName = "events"), ClientContext = structure(logical(0), 
        shape = "String", location = "header", locationName = "clientContext", 
        type = "string"), ClientContextEncoding = structure(logical(0), 
        shape = "String", location = "header", locationName = "clientContextEncoding", 
        type = "string")), shape = "PutEventsInput", type = "structure")
    return(populate(args, shape))
}

put_events_output <- function () 
{
    return(list())
}
