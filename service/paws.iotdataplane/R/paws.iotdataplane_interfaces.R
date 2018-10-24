delete_thing_shadow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "DeleteThingShadowRequest", type = "structure")
    return(populate(args, shape))
}

delete_thing_shadow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Payload = structure(logical(0), shape = "JsonDocument", 
        type = "blob", locationName = "payload")), shape = "DeleteThingShadowResponse", 
        type = "structure", payload = "payload")
    return(populate(args, shape))
}

get_thing_shadow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "GetThingShadowRequest", type = "structure")
    return(populate(args, shape))
}

get_thing_shadow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Payload = structure(logical(0), shape = "JsonDocument", 
        type = "blob", locationName = "payload")), shape = "GetThingShadowResponse", 
        type = "structure", payload = "payload")
    return(populate(args, shape))
}

publish_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Topic = structure(logical(0), shape = "Topic", 
        location = "uri", locationName = "topic", type = "string"), 
        Qos = structure(logical(0), shape = "Qos", location = "querystring", 
            locationName = "qos", type = "integer", max = 1L, 
            min = 0L), Payload = structure(logical(0), shape = "Payload", 
            type = "blob", locationName = "payload")), shape = "PublishRequest", 
        type = "structure", payload = "payload")
    return(populate(args, shape))
}

publish_output <- function () 
{
    return(list())
}

update_thing_shadow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ThingName = structure(logical(0), 
        shape = "ThingName", location = "uri", locationName = "thingName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        Payload = structure(logical(0), shape = "JsonDocument", 
            type = "blob", locationName = "payload")), shape = "UpdateThingShadowRequest", 
        type = "structure", payload = "payload")
    return(populate(args, shape))
}

update_thing_shadow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Payload = structure(logical(0), shape = "JsonDocument", 
        type = "blob", locationName = "payload")), shape = "UpdateThingShadowResponse", 
        type = "structure", payload = "payload")
    return(populate(args, shape))
}
