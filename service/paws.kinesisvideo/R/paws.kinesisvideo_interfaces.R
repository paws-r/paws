create_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceName = structure(logical(0), 
        shape = "DeviceName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), MediaType = structure(logical(0), 
        shape = "MediaType", type = "string", max = 128L, min = 1L, 
        pattern = "[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+"), KmsKeyId = structure(logical(0), 
        shape = "KmsKeyId", type = "string", max = 2048L, min = 1L), 
        DataRetentionInHours = structure(logical(0), shape = "DataRetentionInHours", 
            type = "integer", min = 0L)), shape = "CreateStreamInput", 
        type = "structure")
    return(populate(args, shape))
}

create_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")), 
        shape = "CreateStreamOutput", type = "structure")
    return(populate(args, shape))
}

delete_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        CurrentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "[a-zA-Z0-9]+")), 
        shape = "DeleteStreamInput", type = "structure")
    return(populate(args, shape))
}

delete_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteStreamOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")), 
        shape = "DescribeStreamInput", type = "structure")
    return(populate(args, shape))
}

describe_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamInfo = structure(list(DeviceName = structure(logical(0), 
        shape = "DeviceName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        MediaType = structure(logical(0), shape = "MediaType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 2048L, min = 1L), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 64L, min = 1L, 
            pattern = "[a-zA-Z0-9]+"), Status = structure(logical(0), 
            shape = "Status", type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DataRetentionInHours = structure(logical(0), 
            shape = "DataRetentionInHours", type = "integer", 
            min = 0L)), shape = "StreamInfo", type = "structure")), 
        shape = "DescribeStreamOutput", type = "structure")
    return(populate(args, shape))
}

get_data_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        APIName = structure(logical(0), shape = "APIName", type = "string")), 
        shape = "GetDataEndpointInput", type = "structure")
    return(populate(args, shape))
}

get_data_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataEndpoint = structure(logical(0), 
        shape = "DataEndpoint", type = "string")), shape = "GetDataEndpointOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_streams_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "ListStreamsInputLimit", type = "integer", max = 10000L, 
        min = 1L), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 512L, min = 0L), StreamNameCondition = structure(list(ComparisonOperator = structure(logical(0), 
        shape = "ComparisonOperator", type = "string"), ComparisonValue = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "StreamNameCondition", 
        type = "structure")), shape = "ListStreamsInput", type = "structure")
    return(populate(args, shape))
}

list_streams_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamInfoList = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "DeviceName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        MediaType = structure(logical(0), shape = "MediaType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 2048L, min = 1L), Version = structure(logical(0), 
            shape = "Version", type = "string", max = 64L, min = 1L, 
            pattern = "[a-zA-Z0-9]+"), Status = structure(logical(0), 
            shape = "Status", type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), DataRetentionInHours = structure(logical(0), 
            shape = "DataRetentionInHours", type = "integer", 
            min = 0L)), shape = "StreamInfo", type = "structure")), 
        shape = "StreamInfoList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 512L, min = 0L)), 
        shape = "ListStreamsOutput", type = "structure")
    return(populate(args, shape))
}

list_tags_for_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 512L, min = 0L), 
        StreamARN = structure(logical(0), shape = "ResourceARN", 
            type = "string", max = 1024L, min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        StreamName = structure(logical(0), shape = "StreamName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "ListTagsForStreamInput", type = "structure")
    return(populate(args, shape))
}

list_tags_for_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 512L, min = 0L), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L)), shape = "ResourceTags", 
            type = "map", max = 50L, min = 1L)), shape = "ListTagsForStreamOutput", 
        type = "structure")
    return(populate(args, shape))
}

tag_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        StreamName = structure(logical(0), shape = "StreamName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L)), shape = "ResourceTags", 
            type = "map", max = 50L, min = 1L)), shape = "TagStreamInput", 
        type = "structure")
    return(populate(args, shape))
}

tag_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagStreamOutput", type = "structure")
    return(populate(args, shape))
}

untag_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        StreamName = structure(logical(0), shape = "StreamName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        TagKeyList = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L)), shape = "TagKeyList", 
            type = "list", max = 50L, min = 1L)), shape = "UntagStreamInput", 
        type = "structure")
    return(populate(args, shape))
}

untag_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagStreamOutput", type = "structure")
    return(populate(args, shape))
}

update_data_retention_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        CurrentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "[a-zA-Z0-9]+"), 
        Operation = structure(logical(0), shape = "UpdateDataRetentionOperation", 
            type = "string"), DataRetentionChangeInHours = structure(logical(0), 
            shape = "DataRetentionChangeInHours", type = "integer", 
            min = 1L)), shape = "UpdateDataRetentionInput", type = "structure")
    return(populate(args, shape))
}

update_data_retention_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDataRetentionOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 256L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1024L, 
        min = 1L, pattern = "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+"), 
        CurrentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "[a-zA-Z0-9]+"), 
        DeviceName = structure(logical(0), shape = "DeviceName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        MediaType = structure(logical(0), shape = "MediaType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w\\-\\.\\+]+/[\\w\\-\\.\\+]+")), 
        shape = "UpdateStreamInput", type = "structure")
    return(populate(args, shape))
}

update_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateStreamOutput", 
        type = "structure")
    return(populate(args, shape))
}
