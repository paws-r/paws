get_media_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        StartSelector = structure(list(StartSelectorType = structure(logical(0), 
            shape = "StartSelectorType", type = "string"), AfterFragmentNumber = structure(logical(0), 
            shape = "FragmentNumberString", type = "string", 
            max = 128L, min = 1L, pattern = "^[0-9]+$"), StartTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ContinuationToken = structure(logical(0), 
            shape = "ContinuationToken", type = "string", max = 128L, 
            min = 1L, pattern = "^[a-zA-Z0-9_\\.\\-]+$")), shape = "StartSelector", 
            type = "structure")), shape = "GetMediaInput", type = "structure")
    return(populate(args, shape))
}

get_media_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContentType = structure(logical(0), 
        shape = "ContentType", location = "header", locationName = "Content-Type", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_\\.\\-]+$"), 
        Payload = structure(logical(0), shape = "Payload", type = "blob", 
            streaming = TRUE)), shape = "GetMediaOutput", type = "structure", 
        payload = "Payload")
    return(populate(args, shape))
}
