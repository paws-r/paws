describe_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamArn = structure(logical(0), 
        shape = "StreamArn", type = "string", max = 1024L, min = 37L), 
        Limit = structure(logical(0), shape = "PositiveIntegerObject", 
            type = "integer", min = 1L), ExclusiveStartShardId = structure(logical(0), 
            shape = "ShardId", type = "string", max = 65L, min = 28L)), 
        shape = "DescribeStreamInput", type = "structure")
    return(populate(args, shape))
}

describe_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamDescription = structure(list(StreamArn = structure(logical(0), 
        shape = "StreamArn", type = "string", max = 1024L, min = 37L), 
        StreamLabel = structure(logical(0), shape = "String", 
            type = "string"), StreamStatus = structure(logical(0), 
            shape = "StreamStatus", type = "string"), StreamViewType = structure(logical(0), 
            shape = "StreamViewType", type = "string"), CreationRequestDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), TableName = structure(logical(0), 
            shape = "TableName", type = "string", max = 255L, 
            min = 3L, pattern = "[a-zA-Z0-9_.-]+"), KeySchema = structure(list(structure(list(AttributeName = structure(logical(0), 
            shape = "KeySchemaAttributeName", type = "string", 
            max = 255L, min = 1L), KeyType = structure(logical(0), 
            shape = "KeyType", type = "string")), shape = "KeySchemaElement", 
            type = "structure")), shape = "KeySchema", type = "list", 
            max = 2L, min = 1L), Shards = structure(list(structure(list(ShardId = structure(logical(0), 
            shape = "ShardId", type = "string", max = 65L, min = 28L), 
            SequenceNumberRange = structure(list(StartingSequenceNumber = structure(logical(0), 
                shape = "SequenceNumber", type = "string", max = 40L, 
                min = 21L), EndingSequenceNumber = structure(logical(0), 
                shape = "SequenceNumber", type = "string", max = 40L, 
                min = 21L)), shape = "SequenceNumberRange", type = "structure"), 
            ParentShardId = structure(logical(0), shape = "ShardId", 
                type = "string", max = 65L, min = 28L)), shape = "Shard", 
            type = "structure")), shape = "ShardDescriptionList", 
            type = "list"), LastEvaluatedShardId = structure(logical(0), 
            shape = "ShardId", type = "string", max = 65L, min = 28L)), 
        shape = "StreamDescription", type = "structure")), shape = "DescribeStreamOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_records_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShardIterator = structure(logical(0), 
        shape = "ShardIterator", type = "string", max = 2048L, 
        min = 1L), Limit = structure(logical(0), shape = "PositiveIntegerObject", 
        type = "integer", min = 1L)), shape = "GetRecordsInput", 
        type = "structure")
    return(populate(args, shape))
}

get_records_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Records = structure(list(structure(list(EventID = structure(logical(0), 
        shape = "String", type = "string", locationName = "eventID"), 
        EventName = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "eventName"), EventVersion = structure(logical(0), 
            shape = "String", type = "string", locationName = "eventVersion"), 
        EventSource = structure(logical(0), shape = "String", 
            type = "string", locationName = "eventSource"), AwsRegion = structure(logical(0), 
            shape = "String", type = "string", locationName = "awsRegion"), 
        Dynamodb = structure(list(ApproximateCreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), Keys = structure(list(structure(list(S = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            N = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), B = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), SS = structure(list(structure(logical(0), 
                shape = "StringAttributeValue", type = "string")), 
                shape = "StringSetAttributeValue", type = "list"), 
            NS = structure(list(structure(logical(0), shape = "NumberAttributeValue", 
                type = "string")), shape = "NumberSetAttributeValue", 
                type = "list"), BS = structure(list(structure(logical(0), 
                shape = "BinaryAttributeValue", type = "blob")), 
                shape = "BinarySetAttributeValue", type = "list"), 
            M = structure(list(structure(logical(0), shape = "AttributeValue", 
                type = "structure")), shape = "MapAttributeValue", 
                type = "map"), L = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "structure")), 
                shape = "ListAttributeValue", type = "list"), 
            `NULL` = structure(logical(0), shape = "NullAttributeValue", 
                type = "boolean"), BOOL = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean")), 
            shape = "AttributeValue", type = "structure")), shape = "AttributeMap", 
            type = "map"), NewImage = structure(list(structure(list(S = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            N = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), B = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), SS = structure(list(structure(logical(0), 
                shape = "StringAttributeValue", type = "string")), 
                shape = "StringSetAttributeValue", type = "list"), 
            NS = structure(list(structure(logical(0), shape = "NumberAttributeValue", 
                type = "string")), shape = "NumberSetAttributeValue", 
                type = "list"), BS = structure(list(structure(logical(0), 
                shape = "BinaryAttributeValue", type = "blob")), 
                shape = "BinarySetAttributeValue", type = "list"), 
            M = structure(list(structure(logical(0), shape = "AttributeValue", 
                type = "structure")), shape = "MapAttributeValue", 
                type = "map"), L = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "structure")), 
                shape = "ListAttributeValue", type = "list"), 
            `NULL` = structure(logical(0), shape = "NullAttributeValue", 
                type = "boolean"), BOOL = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean")), 
            shape = "AttributeValue", type = "structure")), shape = "AttributeMap", 
            type = "map"), OldImage = structure(list(structure(list(S = structure(logical(0), 
            shape = "StringAttributeValue", type = "string"), 
            N = structure(logical(0), shape = "NumberAttributeValue", 
                type = "string"), B = structure(logical(0), shape = "BinaryAttributeValue", 
                type = "blob"), SS = structure(list(structure(logical(0), 
                shape = "StringAttributeValue", type = "string")), 
                shape = "StringSetAttributeValue", type = "list"), 
            NS = structure(list(structure(logical(0), shape = "NumberAttributeValue", 
                type = "string")), shape = "NumberSetAttributeValue", 
                type = "list"), BS = structure(list(structure(logical(0), 
                shape = "BinaryAttributeValue", type = "blob")), 
                shape = "BinarySetAttributeValue", type = "list"), 
            M = structure(list(structure(logical(0), shape = "AttributeValue", 
                type = "structure")), shape = "MapAttributeValue", 
                type = "map"), L = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "structure")), 
                shape = "ListAttributeValue", type = "list"), 
            `NULL` = structure(logical(0), shape = "NullAttributeValue", 
                type = "boolean"), BOOL = structure(logical(0), 
                shape = "BooleanAttributeValue", type = "boolean")), 
            shape = "AttributeValue", type = "structure")), shape = "AttributeMap", 
            type = "map"), SequenceNumber = structure(logical(0), 
            shape = "SequenceNumber", type = "string", max = 40L, 
            min = 21L), SizeBytes = structure(logical(0), shape = "PositiveLongObject", 
            type = "long", min = 1L), StreamViewType = structure(logical(0), 
            shape = "StreamViewType", type = "string")), shape = "StreamRecord", 
            type = "structure", locationName = "dynamodb"), UserIdentity = structure(list(PrincipalId = structure(logical(0), 
            shape = "String", type = "string"), Type = structure(logical(0), 
            shape = "String", type = "string")), shape = "Identity", 
            type = "structure", locationName = "userIdentity")), 
        shape = "Record", type = "structure")), shape = "RecordList", 
        type = "list"), NextShardIterator = structure(logical(0), 
        shape = "ShardIterator", type = "string", max = 2048L, 
        min = 1L)), shape = "GetRecordsOutput", type = "structure")
    return(populate(args, shape))
}

get_shard_iterator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamArn = structure(logical(0), 
        shape = "StreamArn", type = "string", max = 1024L, min = 37L), 
        ShardId = structure(logical(0), shape = "ShardId", type = "string", 
            max = 65L, min = 28L), ShardIteratorType = structure(logical(0), 
            shape = "ShardIteratorType", type = "string"), SequenceNumber = structure(logical(0), 
            shape = "SequenceNumber", type = "string", max = 40L, 
            min = 21L)), shape = "GetShardIteratorInput", type = "structure")
    return(populate(args, shape))
}

get_shard_iterator_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShardIterator = structure(logical(0), 
        shape = "ShardIterator", type = "string", max = 2048L, 
        min = 1L)), shape = "GetShardIteratorOutput", type = "structure")
    return(populate(args, shape))
}

list_streams_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TableName = structure(logical(0), 
        shape = "TableName", type = "string", max = 255L, min = 3L, 
        pattern = "[a-zA-Z0-9_.-]+"), Limit = structure(logical(0), 
        shape = "PositiveIntegerObject", type = "integer", min = 1L), 
        ExclusiveStartStreamArn = structure(logical(0), shape = "StreamArn", 
            type = "string", max = 1024L, min = 37L)), shape = "ListStreamsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_streams_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Streams = structure(list(structure(list(StreamArn = structure(logical(0), 
        shape = "StreamArn", type = "string", max = 1024L, min = 37L), 
        TableName = structure(logical(0), shape = "TableName", 
            type = "string", max = 255L, min = 3L, pattern = "[a-zA-Z0-9_.-]+"), 
        StreamLabel = structure(logical(0), shape = "String", 
            type = "string")), shape = "Stream", type = "structure")), 
        shape = "StreamList", type = "list"), LastEvaluatedStreamArn = structure(logical(0), 
        shape = "StreamArn", type = "string", max = 1024L, min = 37L)), 
        shape = "ListStreamsOutput", type = "structure")
    return(populate(args, shape))
}
