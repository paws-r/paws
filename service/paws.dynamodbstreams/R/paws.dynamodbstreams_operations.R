#' Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table
#'
#' Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.
#' 
#' You can call `DescribeStream` at a maximum rate of 10 times per second.
#' 
#' Each shard in the stream has a `SequenceNumberRange` associated with it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no `EndingSequenceNumber`, then the shard is still open (able to receive more stream records). If both `StartingSequenceNumber` and `EndingSequenceNumber` are present, then that shard is closed and can no longer receive more data.
#'
#' @param StreamArn The Amazon Resource Name (ARN) for the stream.
#' @param Limit The maximum number of shard objects to return. The upper limit is 100.
#' @param ExclusiveStartShardId The shard ID of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedShardId` in the previous operation.
#'
#' @examples
#' # The following example describes a stream with a given stream ARN.
#' describe_stream(
#'   StreamArn = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252"
#' )
#'
#' @export
describe_stream <- function (StreamArn, Limit = NULL, ExclusiveStartShardId = NULL) 
{
    op <- Operation(name = "DescribeStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stream_input(StreamArn = StreamArn, Limit = Limit, 
        ExclusiveStartShardId = ExclusiveStartShardId)
    output <- describe_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the stream records from a given shard
#'
#' Retrieves the stream records from a given shard.
#' 
#' Specify a shard iterator using the `ShardIterator` parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, `GetRecords` returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.
#' 
#' `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.
#'
#' @param ShardIterator A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
#' @param Limit The maximum number of records to return from the shard. The upper limit is 1000.
#'
#' @examples
#' # The following example retrieves all the stream records from a shard.
#' get_records(
#'   ShardIterator = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ..."
#' )
#'
#' @export
get_records <- function (ShardIterator, Limit = NULL) 
{
    op <- Operation(name = "GetRecords", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_records_input(ShardIterator = ShardIterator, 
        Limit = Limit)
    output <- get_records_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a shard iterator
#'
#' Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard. Use the shard iterator in a subsequent `GetRecords` request to read the stream records from the shard.
#' 
#' A shard iterator expires 15 minutes after it is returned to the requester.
#'
#' @param StreamArn The Amazon Resource Name (ARN) for the stream.
#' @param ShardId The identifier of the shard. The iterator will be returned for this shard ID.
#' @param ShardIteratorType Determines how the shard iterator is used to start reading stream records from the shard:
#' 
#' -   `AT_SEQUENCE_NUMBER` - Start reading exactly from the position denoted by a specific sequence number.
#' 
#' -   `AFTER_SEQUENCE_NUMBER` - Start reading right after the position denoted by a specific sequence number.
#' 
#' -   `TRIM_HORIZON` - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.
#' 
#' -   `LATEST` - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.
#' @param SequenceNumber The sequence number of a stream record in the shard from which to start reading.
#'
#' @examples
#' # The following example returns a shard iterator for the provided stream
#' # ARN and shard ID.
#' get_shard_iterator(
#'   ShardId = "00000001414576573621-f55eea83",
#'   ShardIteratorType = "TRIM_HORIZON",
#'   StreamArn = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252"
#' )
#'
#' @export
get_shard_iterator <- function (StreamArn, ShardId, ShardIteratorType, 
    SequenceNumber = NULL) 
{
    op <- Operation(name = "GetShardIterator", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_shard_iterator_input(StreamArn = StreamArn, 
        ShardId = ShardId, ShardIteratorType = ShardIteratorType, 
        SequenceNumber = SequenceNumber)
    output <- get_shard_iterator_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an array of stream ARNs associated with the current account and endpoint
#'
#' Returns an array of stream ARNs associated with the current account and endpoint. If the `TableName` parameter is present, then `ListStreams` will return only the streams ARNs for that table.
#' 
#' You can call `ListStreams` at a maximum rate of 5 times per second.
#'
#' @param TableName If this parameter is provided, then only the streams associated with this table name are returned.
#' @param Limit The maximum number of streams to return. The upper limit is 100.
#' @param ExclusiveStartStreamArn The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedStreamArn` in the previous operation.
#'
#' @examples
#' # The following example lists all of the stream ARNs.
#' list_streams()
#'
#' @export
list_streams <- function (TableName = NULL, Limit = NULL, ExclusiveStartStreamArn = NULL) 
{
    op <- Operation(name = "ListStreams", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_streams_input(TableName = TableName, Limit = Limit, 
        ExclusiveStartStreamArn = ExclusiveStartStreamArn)
    output <- list_streams_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
