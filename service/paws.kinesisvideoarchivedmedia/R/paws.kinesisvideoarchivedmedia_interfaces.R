get_hls_streaming_session_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        PlaybackMode = structure(logical(0), shape = "PlaybackMode", 
            type = "string"), HLSFragmentSelector = structure(list(FragmentSelectorType = structure(logical(0), 
            shape = "HLSFragmentSelectorType", type = "string"), 
            TimestampRange = structure(list(StartTimestamp = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), EndTimestamp = structure(logical(0), 
                shape = "Timestamp", type = "timestamp")), shape = "HLSTimestampRange", 
                type = "structure")), shape = "HLSFragmentSelector", 
            type = "structure"), DiscontinuityMode = structure(logical(0), 
            shape = "DiscontinuityMode", type = "string"), Expires = structure(logical(0), 
            shape = "Expires", type = "integer", max = 43200L, 
            min = 300L), MaxMediaPlaylistFragmentResults = structure(logical(0), 
            shape = "PageLimit", type = "long", max = 1000L, 
            min = 1L)), shape = "GetHLSStreamingSessionURLInput", 
        type = "structure")
    return(populate(args, shape))
}

get_hls_streaming_session_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HLSStreamingSessionURL = structure(logical(0), 
        shape = "HLSStreamingSessionURL", type = "string")), 
        shape = "GetHLSStreamingSessionURLOutput", type = "structure")
    return(populate(args, shape))
}

get_media_for_fragment_list_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), Fragments = structure(list(structure(logical(0), 
        shape = "FragmentNumberString", type = "string", max = 128L, 
        min = 1L, pattern = "^[0-9]+$")), shape = "FragmentNumberList", 
        type = "list", max = 1000L, min = 1L)), shape = "GetMediaForFragmentListInput", 
        type = "structure")
    return(populate(args, shape))
}

get_media_for_fragment_list_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContentType = structure(logical(0), 
        shape = "ContentType", location = "header", locationName = "Content-Type", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_\\.\\-]+$"), 
        Payload = structure(logical(0), shape = "Payload", type = "blob", 
            streaming = TRUE)), shape = "GetMediaForFragmentListOutput", 
        type = "structure", payload = "Payload")
    return(populate(args, shape))
}

list_fragments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), MaxResults = structure(logical(0), 
        shape = "PageLimit", type = "long", max = 1000L, min = 1L), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L), FragmentSelector = structure(list(FragmentSelectorType = structure(logical(0), 
            shape = "FragmentSelectorType", type = "string"), 
            TimestampRange = structure(list(StartTimestamp = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), EndTimestamp = structure(logical(0), 
                shape = "Timestamp", type = "timestamp")), shape = "TimestampRange", 
                type = "structure")), shape = "FragmentSelector", 
            type = "structure")), shape = "ListFragmentsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_fragments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Fragments = structure(list(structure(list(FragmentNumber = structure(logical(0), 
        shape = "String", type = "string", min = 1L), FragmentSizeInBytes = structure(logical(0), 
        shape = "Long", type = "long"), ProducerTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ServerTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), FragmentLengthInMilliseconds = structure(logical(0), 
        shape = "Long", type = "long")), shape = "Fragment", 
        type = "structure")), shape = "FragmentList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListFragmentsOutput", type = "structure")
    return(populate(args, shape))
}
