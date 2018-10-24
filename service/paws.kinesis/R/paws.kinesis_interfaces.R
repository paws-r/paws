add_tags_to_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L)), 
        shape = "TagMap", type = "map", max = 50L, min = 1L)), 
        shape = "AddTagsToStreamInput", type = "structure")
    return(populate(args, shape))
}

add_tags_to_stream_output <- function () 
{
    return(list())
}

create_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardCount = structure(logical(0), 
        shape = "PositiveIntegerObject", type = "integer", max = 100000L, 
        min = 1L)), shape = "CreateStreamInput", type = "structure")
    return(populate(args, shape))
}

create_stream_output <- function () 
{
    return(list())
}

decrease_stream_retention_period_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), RetentionPeriodHours = structure(logical(0), 
        shape = "RetentionPeriodHours", type = "integer", max = 168L, 
        min = 1L)), shape = "DecreaseStreamRetentionPeriodInput", 
        type = "structure")
    return(populate(args, shape))
}

decrease_stream_retention_period_output <- function () 
{
    return(list())
}

delete_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), EnforceConsumerDeletion = structure(logical(0), 
        shape = "BooleanObject", type = "boolean")), shape = "DeleteStreamInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_stream_output <- function () 
{
    return(list())
}

deregister_stream_consumer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "StreamARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*"), 
        ConsumerName = structure(logical(0), shape = "ConsumerName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        ConsumerARN = structure(logical(0), shape = "ConsumerARN", 
            type = "string", max = 2048L, min = 1L, pattern = "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+")), 
        shape = "DeregisterStreamConsumerInput", type = "structure")
    return(populate(args, shape))
}

deregister_stream_consumer_output <- function () 
{
    return(list())
}

describe_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeLimitsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShardLimit = structure(logical(0), 
        shape = "ShardCountObject", type = "integer", max = 1000000L, 
        min = 0L), OpenShardCount = structure(logical(0), shape = "ShardCountObject", 
        type = "integer", max = 1000000L, min = 0L)), shape = "DescribeLimitsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), Limit = structure(logical(0), 
        shape = "DescribeStreamInputLimit", type = "integer", 
        max = 10000L, min = 1L), ExclusiveStartShardId = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DescribeStreamInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamDescription = structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "StreamARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*"), 
        StreamStatus = structure(logical(0), shape = "StreamStatus", 
            type = "string"), Shards = structure(list(structure(list(ShardId = structure(logical(0), 
            shape = "ShardId", type = "string", max = 128L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), ParentShardId = structure(logical(0), 
            shape = "ShardId", type = "string", max = 128L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), AdjacentParentShardId = structure(logical(0), 
            shape = "ShardId", type = "string", max = 128L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), HashKeyRange = structure(list(StartingHashKey = structure(logical(0), 
            shape = "HashKey", type = "string", pattern = "0|([1-9]\\d{0,38})"), 
            EndingHashKey = structure(logical(0), shape = "HashKey", 
                type = "string", pattern = "0|([1-9]\\d{0,38})")), 
            shape = "HashKeyRange", type = "structure"), SequenceNumberRange = structure(list(StartingSequenceNumber = structure(logical(0), 
            shape = "SequenceNumber", type = "string", pattern = "0|([1-9]\\d{0,128})"), 
            EndingSequenceNumber = structure(logical(0), shape = "SequenceNumber", 
                type = "string", pattern = "0|([1-9]\\d{0,128})")), 
            shape = "SequenceNumberRange", type = "structure")), 
            shape = "Shard", type = "structure")), shape = "ShardList", 
            type = "list"), HasMoreShards = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), RetentionPeriodHours = structure(logical(0), 
            shape = "RetentionPeriodHours", type = "integer", 
            max = 168L, min = 1L), StreamCreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnhancedMonitoring = structure(list(structure(list(ShardLevelMetrics = structure(list(structure(logical(0), 
            shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
            type = "list", max = 7L, min = 1L)), shape = "EnhancedMetrics", 
            type = "structure")), shape = "EnhancedMonitoringList", 
            type = "list"), EncryptionType = structure(logical(0), 
            shape = "EncryptionType", type = "string"), KeyId = structure(logical(0), 
            shape = "KeyId", type = "string", max = 2048L, min = 1L)), 
        shape = "StreamDescription", type = "structure")), shape = "DescribeStreamOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stream_consumer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "StreamARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*"), 
        ConsumerName = structure(logical(0), shape = "ConsumerName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        ConsumerARN = structure(logical(0), shape = "ConsumerARN", 
            type = "string", max = 2048L, min = 1L, pattern = "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+")), 
        shape = "DescribeStreamConsumerInput", type = "structure")
    return(populate(args, shape))
}

describe_stream_consumer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConsumerDescription = structure(list(ConsumerName = structure(logical(0), 
        shape = "ConsumerName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ConsumerARN = structure(logical(0), 
        shape = "ConsumerARN", type = "string", max = 2048L, 
        min = 1L, pattern = "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+"), 
        ConsumerStatus = structure(logical(0), shape = "ConsumerStatus", 
            type = "string"), ConsumerCreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StreamARN = structure(logical(0), 
            shape = "StreamARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*")), 
        shape = "ConsumerDescription", type = "structure")), 
        shape = "DescribeStreamConsumerOutput", type = "structure")
    return(populate(args, shape))
}

describe_stream_summary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DescribeStreamSummaryInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_stream_summary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamDescriptionSummary = structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), StreamARN = structure(logical(0), 
        shape = "StreamARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*"), 
        StreamStatus = structure(logical(0), shape = "StreamStatus", 
            type = "string"), RetentionPeriodHours = structure(logical(0), 
            shape = "PositiveIntegerObject", type = "integer", 
            max = 100000L, min = 1L), StreamCreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EnhancedMonitoring = structure(list(structure(list(ShardLevelMetrics = structure(list(structure(logical(0), 
            shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
            type = "list", max = 7L, min = 1L)), shape = "EnhancedMetrics", 
            type = "structure")), shape = "EnhancedMonitoringList", 
            type = "list"), EncryptionType = structure(logical(0), 
            shape = "EncryptionType", type = "string"), KeyId = structure(logical(0), 
            shape = "KeyId", type = "string", max = 2048L, min = 1L), 
        OpenShardCount = structure(logical(0), shape = "ShardCountObject", 
            type = "integer", max = 1000000L, min = 0L), ConsumerCount = structure(logical(0), 
            shape = "ConsumerCountObject", type = "integer", 
            max = 1000000L, min = 0L)), shape = "StreamDescriptionSummary", 
        type = "structure")), shape = "DescribeStreamSummaryOutput", 
        type = "structure")
    return(populate(args, shape))
}

disable_enhanced_monitoring_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardLevelMetrics = structure(list(structure(logical(0), 
        shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
        type = "list", max = 7L, min = 1L)), shape = "DisableEnhancedMonitoringInput", 
        type = "structure")
    return(populate(args, shape))
}

disable_enhanced_monitoring_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), CurrentShardLevelMetrics = structure(list(structure(logical(0), 
        shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
        type = "list", max = 7L, min = 1L), DesiredShardLevelMetrics = structure(list(structure(logical(0), 
        shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
        type = "list", max = 7L, min = 1L)), shape = "EnhancedMonitoringOutput", 
        type = "structure")
    return(populate(args, shape))
}

enable_enhanced_monitoring_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardLevelMetrics = structure(list(structure(logical(0), 
        shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
        type = "list", max = 7L, min = 1L)), shape = "EnableEnhancedMonitoringInput", 
        type = "structure")
    return(populate(args, shape))
}

enable_enhanced_monitoring_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), CurrentShardLevelMetrics = structure(list(structure(logical(0), 
        shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
        type = "list", max = 7L, min = 1L), DesiredShardLevelMetrics = structure(list(structure(logical(0), 
        shape = "MetricsName", type = "string")), shape = "MetricsNameList", 
        type = "list", max = 7L, min = 1L)), shape = "EnhancedMonitoringOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_records_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShardIterator = structure(logical(0), 
        shape = "ShardIterator", type = "string", max = 512L, 
        min = 1L), Limit = structure(logical(0), shape = "GetRecordsInputLimit", 
        type = "integer", max = 10000L, min = 1L)), shape = "GetRecordsInput", 
        type = "structure")
    return(populate(args, shape))
}

get_records_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Records = structure(list(structure(list(SequenceNumber = structure(logical(0), 
        shape = "SequenceNumber", type = "string", pattern = "0|([1-9]\\d{0,128})"), 
        ApproximateArrivalTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), Data = structure(logical(0), 
            shape = "Data", type = "blob", max = 1048576L, min = 0L), 
        PartitionKey = structure(logical(0), shape = "PartitionKey", 
            type = "string", max = 256L, min = 1L), EncryptionType = structure(logical(0), 
            shape = "EncryptionType", type = "string")), shape = "Record", 
        type = "structure")), shape = "RecordList", type = "list"), 
        NextShardIterator = structure(logical(0), shape = "ShardIterator", 
            type = "string", max = 512L, min = 1L), MillisBehindLatest = structure(logical(0), 
            shape = "MillisBehindLatest", type = "long", min = 0L)), 
        shape = "GetRecordsOutput", type = "structure")
    return(populate(args, shape))
}

get_shard_iterator_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardId = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardIteratorType = structure(logical(0), 
        shape = "ShardIteratorType", type = "string"), StartingSequenceNumber = structure(logical(0), 
        shape = "SequenceNumber", type = "string", pattern = "0|([1-9]\\d{0,128})"), 
        Timestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "GetShardIteratorInput", 
        type = "structure")
    return(populate(args, shape))
}

get_shard_iterator_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShardIterator = structure(logical(0), 
        shape = "ShardIterator", type = "string", max = 512L, 
        min = 1L)), shape = "GetShardIteratorOutput", type = "structure")
    return(populate(args, shape))
}

increase_stream_retention_period_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), RetentionPeriodHours = structure(logical(0), 
        shape = "RetentionPeriodHours", type = "integer", max = 168L, 
        min = 1L)), shape = "IncreaseStreamRetentionPeriodInput", 
        type = "structure")
    return(populate(args, shape))
}

increase_stream_retention_period_output <- function () 
{
    return(list())
}

list_shards_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1048576L, 
        min = 1L), ExclusiveStartShardId = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), MaxResults = structure(logical(0), 
        shape = "ListShardsInputLimit", type = "integer", max = 10000L, 
        min = 1L), StreamCreationTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "ListShardsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_shards_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Shards = structure(list(structure(list(ShardId = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ParentShardId = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), AdjacentParentShardId = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), HashKeyRange = structure(list(StartingHashKey = structure(logical(0), 
        shape = "HashKey", type = "string", pattern = "0|([1-9]\\d{0,38})"), 
        EndingHashKey = structure(logical(0), shape = "HashKey", 
            type = "string", pattern = "0|([1-9]\\d{0,38})")), 
        shape = "HashKeyRange", type = "structure"), SequenceNumberRange = structure(list(StartingSequenceNumber = structure(logical(0), 
        shape = "SequenceNumber", type = "string", pattern = "0|([1-9]\\d{0,128})"), 
        EndingSequenceNumber = structure(logical(0), shape = "SequenceNumber", 
            type = "string", pattern = "0|([1-9]\\d{0,128})")), 
        shape = "SequenceNumberRange", type = "structure")), 
        shape = "Shard", type = "structure")), shape = "ShardList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 1048576L, min = 1L)), shape = "ListShardsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_stream_consumers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "StreamARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1048576L, min = 1L), MaxResults = structure(logical(0), 
            shape = "ListStreamConsumersInputLimit", type = "integer", 
            max = 10000L, min = 1L), StreamCreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ListStreamConsumersInput", 
        type = "structure")
    return(populate(args, shape))
}

list_stream_consumers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Consumers = structure(list(structure(list(ConsumerName = structure(logical(0), 
        shape = "ConsumerName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ConsumerARN = structure(logical(0), 
        shape = "ConsumerARN", type = "string", max = 2048L, 
        min = 1L, pattern = "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+"), 
        ConsumerStatus = structure(logical(0), shape = "ConsumerStatus", 
            type = "string"), ConsumerCreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Consumer", 
        type = "structure")), shape = "ConsumerList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1048576L, min = 1L)), shape = "ListStreamConsumersOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_streams_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "ListStreamsInputLimit", 
        type = "integer", max = 10000L, min = 1L), ExclusiveStartStreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "ListStreamsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_streams_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamNames = structure(list(structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "StreamNameList", 
        type = "list"), HasMoreStreams = structure(logical(0), 
        shape = "BooleanObject", type = "boolean")), shape = "ListStreamsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ExclusiveStartTagKey = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Limit = structure(logical(0), shape = "ListTagsForStreamInputLimit", 
            type = "integer", max = 50L, min = 1L)), shape = "ListTagsForStreamInput", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_stream_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", min = 0L), HasMoreTags = structure(logical(0), 
        shape = "BooleanObject", type = "boolean")), shape = "ListTagsForStreamOutput", 
        type = "structure")
    return(populate(args, shape))
}

merge_shards_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardToMerge = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), AdjacentShardToMerge = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "MergeShardsInput", 
        type = "structure")
    return(populate(args, shape))
}

merge_shards_output <- function () 
{
    return(list())
}

put_record_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), Data = structure(logical(0), 
        shape = "Data", type = "blob", max = 1048576L, min = 0L), 
        PartitionKey = structure(logical(0), shape = "PartitionKey", 
            type = "string", max = 256L, min = 1L), ExplicitHashKey = structure(logical(0), 
            shape = "HashKey", type = "string", pattern = "0|([1-9]\\d{0,38})"), 
        SequenceNumberForOrdering = structure(logical(0), shape = "SequenceNumber", 
            type = "string", pattern = "0|([1-9]\\d{0,128})")), 
        shape = "PutRecordInput", type = "structure")
    return(populate(args, shape))
}

put_record_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShardId = structure(logical(0), shape = "ShardId", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        SequenceNumber = structure(logical(0), shape = "SequenceNumber", 
            type = "string", pattern = "0|([1-9]\\d{0,128})"), 
        EncryptionType = structure(logical(0), shape = "EncryptionType", 
            type = "string")), shape = "PutRecordOutput", type = "structure")
    return(populate(args, shape))
}

put_records_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Records = structure(list(structure(list(Data = structure(logical(0), 
        shape = "Data", type = "blob", max = 1048576L, min = 0L), 
        ExplicitHashKey = structure(logical(0), shape = "HashKey", 
            type = "string", pattern = "0|([1-9]\\d{0,38})"), 
        PartitionKey = structure(logical(0), shape = "PartitionKey", 
            type = "string", max = 256L, min = 1L)), shape = "PutRecordsRequestEntry", 
        type = "structure")), shape = "PutRecordsRequestEntryList", 
        type = "list", max = 500L, min = 1L), StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "PutRecordsInput", 
        type = "structure")
    return(populate(args, shape))
}

put_records_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedRecordCount = structure(logical(0), 
        shape = "PositiveIntegerObject", type = "integer", max = 100000L, 
        min = 1L), Records = structure(list(structure(list(SequenceNumber = structure(logical(0), 
        shape = "SequenceNumber", type = "string", pattern = "0|([1-9]\\d{0,128})"), 
        ShardId = structure(logical(0), shape = "ShardId", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        ErrorCode = structure(logical(0), shape = "ErrorCode", 
            type = "string"), ErrorMessage = structure(logical(0), 
            shape = "ErrorMessage", type = "string")), shape = "PutRecordsResultEntry", 
        type = "structure")), shape = "PutRecordsResultEntryList", 
        type = "list", max = 500L, min = 1L), EncryptionType = structure(logical(0), 
        shape = "EncryptionType", type = "string")), shape = "PutRecordsOutput", 
        type = "structure")
    return(populate(args, shape))
}

register_stream_consumer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamARN = structure(logical(0), 
        shape = "StreamARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws.*:kinesis:.*:\\d{12}:stream/.*"), 
        ConsumerName = structure(logical(0), shape = "ConsumerName", 
            type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "RegisterStreamConsumerInput", type = "structure")
    return(populate(args, shape))
}

register_stream_consumer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Consumer = structure(list(ConsumerName = structure(logical(0), 
        shape = "ConsumerName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ConsumerARN = structure(logical(0), 
        shape = "ConsumerARN", type = "string", max = 2048L, 
        min = 1L, pattern = "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+"), 
        ConsumerStatus = structure(logical(0), shape = "ConsumerStatus", 
            type = "string"), ConsumerCreationTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Consumer", 
        type = "structure")), shape = "RegisterStreamConsumerOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_stream_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeyList", type = "list", max = 50L, min = 1L)), 
        shape = "RemoveTagsFromStreamInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_from_stream_output <- function () 
{
    return(list())
}

split_shard_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), ShardToSplit = structure(logical(0), 
        shape = "ShardId", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), NewStartingHashKey = structure(logical(0), 
        shape = "HashKey", type = "string", pattern = "0|([1-9]\\d{0,38})")), 
        shape = "SplitShardInput", type = "structure")
    return(populate(args, shape))
}

split_shard_output <- function () 
{
    return(list())
}

start_stream_encryption_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), EncryptionType = structure(logical(0), 
        shape = "EncryptionType", type = "string"), KeyId = structure(logical(0), 
        shape = "KeyId", type = "string", max = 2048L, min = 1L)), 
        shape = "StartStreamEncryptionInput", type = "structure")
    return(populate(args, shape))
}

start_stream_encryption_output <- function () 
{
    return(list())
}

stop_stream_encryption_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), EncryptionType = structure(logical(0), 
        shape = "EncryptionType", type = "string"), KeyId = structure(logical(0), 
        shape = "KeyId", type = "string", max = 2048L, min = 1L)), 
        shape = "StopStreamEncryptionInput", type = "structure")
    return(populate(args, shape))
}

stop_stream_encryption_output <- function () 
{
    return(list())
}

update_shard_count_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), TargetShardCount = structure(logical(0), 
        shape = "PositiveIntegerObject", type = "integer", max = 100000L, 
        min = 1L), ScalingType = structure(logical(0), shape = "ScalingType", 
        type = "string")), shape = "UpdateShardCountInput", type = "structure")
    return(populate(args, shape))
}

update_shard_count_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamName = structure(logical(0), 
        shape = "StreamName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_.-]+"), CurrentShardCount = structure(logical(0), 
        shape = "PositiveIntegerObject", type = "integer", max = 100000L, 
        min = 1L), TargetShardCount = structure(logical(0), shape = "PositiveIntegerObject", 
        type = "integer", max = 100000L, min = 1L)), shape = "UpdateShardCountOutput", 
        type = "structure")
    return(populate(args, shape))
}
