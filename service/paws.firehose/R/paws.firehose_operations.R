#' Creates a Kinesis Data Firehose delivery stream
#'
#' Creates a Kinesis Data Firehose delivery stream.
#' 
#' By default, you can create up to 50 delivery streams per AWS Region.
#' 
#' This is an asynchronous operation that immediately returns. The initial status of the delivery stream is `CREATING`. After the delivery stream is created, its status is `ACTIVE` and it now accepts data. Attempts to send data to a delivery stream that is not in the `ACTIVE` state cause an exception. To check the state of a delivery stream, use DescribeDeliveryStream.
#' 
#' A Kinesis Data Firehose delivery stream can be configured to receive records directly from providers using PutRecord or PutRecordBatch, or it can be configured to use an existing Kinesis stream as its source. To specify a Kinesis data stream as input, set the `DeliveryStreamType` parameter to `KinesisStreamAsSource`, and provide the Kinesis stream Amazon Resource Name (ARN) and role ARN in the `KinesisStreamSourceConfiguration` parameter.
#' 
#' A delivery stream is configured with a single destination: Amazon S3, Amazon ES, Amazon Redshift, or Splunk. You must specify only one of the following destination configuration parameters: **ExtendedS3DestinationConfiguration**, **S3DestinationConfiguration**, **ElasticsearchDestinationConfiguration**, **RedshiftDestinationConfiguration**, or **SplunkDestinationConfiguration**.
#' 
#' When you specify **S3DestinationConfiguration**, you can also provide the following optional values: **BufferingHints**, **EncryptionConfiguration**, and **CompressionFormat**. By default, if no **BufferingHints** value is provided, Kinesis Data Firehose buffers data up to 5 MB or for 5 minutes, whichever condition is satisfied first. **BufferingHints** is a hint, so there are some cases where the service cannot adhere to these conditions strictly. For example, record boundaries might be such that the size is a little over or under the configured buffering size. By default, no encryption is performed. We strongly recommend that you enable encryption to ensure secure data storage in Amazon S3.
#' 
#' A few notes about Amazon Redshift as a destination:
#' 
#' -   An Amazon Redshift destination requires an S3 bucket as intermediate location. Kinesis Data Firehose first delivers data to Amazon S3 and then uses `COPY` syntax to load data into an Amazon Redshift table. This is specified in the **RedshiftDestinationConfiguration.S3Configuration** parameter.
#' 
#' -   The compression formats `SNAPPY` or `ZIP` cannot be specified in `RedshiftDestinationConfiguration.S3Configuration` because the Amazon Redshift `COPY` operation that reads from the S3 bucket doesn\'t support these compression formats.
#' 
#' -   We strongly recommend that you use the user name and password you provide exclusively with Kinesis Data Firehose, and that the permissions for the account are restricted for Amazon Redshift `INSERT` permissions.
#' 
#' Kinesis Data Firehose assumes the IAM role that is configured as part of the destination. The role should allow the Kinesis Data Firehose principal to assume the role, and the role should have permissions that allow the service to deliver the data. For more information, see [Grant Kinesis Data Firehose Access to an Amazon S3 Destination](http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3) in the *Amazon Kinesis Data Firehose Developer Guide*.
#'
#' @param DeliveryStreamName The name of the delivery stream. This name must be unique per AWS account in the same AWS Region. If the delivery streams are in different accounts or different Regions, you can have multiple delivery streams with the same name.
#' @param DeliveryStreamType The delivery stream type. This parameter can be one of the following values:
#' 
#' -   `DirectPut`: Provider applications access the delivery stream directly.
#' 
#' -   `KinesisStreamAsSource`: The delivery stream uses a Kinesis data stream as a source.
#' @param KinesisStreamSourceConfiguration When a Kinesis data stream is used as the source for the delivery stream, a KinesisStreamSourceConfiguration containing the Kinesis data stream Amazon Resource Name (ARN) and the role ARN for the source stream.
#' @param S3DestinationConfiguration &#91;Deprecated&#93; The destination in Amazon S3. You can specify only one destination.
#' @param ExtendedS3DestinationConfiguration The destination in Amazon S3. You can specify only one destination.
#' @param RedshiftDestinationConfiguration The destination in Amazon Redshift. You can specify only one destination.
#' @param ElasticsearchDestinationConfiguration The destination in Amazon ES. You can specify only one destination.
#' @param SplunkDestinationConfiguration The destination in Splunk. You can specify only one destination.
#'
#' @examples
#'
#' @export
create_delivery_stream <- function (DeliveryStreamName, DeliveryStreamType = NULL, 
    KinesisStreamSourceConfiguration = NULL, S3DestinationConfiguration = NULL, 
    ExtendedS3DestinationConfiguration = NULL, RedshiftDestinationConfiguration = NULL, 
    ElasticsearchDestinationConfiguration = NULL, SplunkDestinationConfiguration = NULL) 
{
    op <- Operation(name = "CreateDeliveryStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_delivery_stream_input(DeliveryStreamName = DeliveryStreamName, 
        DeliveryStreamType = DeliveryStreamType, KinesisStreamSourceConfiguration = KinesisStreamSourceConfiguration, 
        S3DestinationConfiguration = S3DestinationConfiguration, 
        ExtendedS3DestinationConfiguration = ExtendedS3DestinationConfiguration, 
        RedshiftDestinationConfiguration = RedshiftDestinationConfiguration, 
        ElasticsearchDestinationConfiguration = ElasticsearchDestinationConfiguration, 
        SplunkDestinationConfiguration = SplunkDestinationConfiguration)
    output <- create_delivery_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a delivery stream and its data
#'
#' Deletes a delivery stream and its data.
#' 
#' You can delete a delivery stream only if it is in `ACTIVE` or `DELETING` state, and not in the `CREATING` state. While the deletion request is in process, the delivery stream is in the `DELETING` state.
#' 
#' To check the state of a delivery stream, use DescribeDeliveryStream.
#' 
#' While the delivery stream is `DELETING` state, the service might continue to accept the records, but it doesn\'t make any guarantees with respect to delivering the data. Therefore, as a best practice, you should first stop any applications that are sending records before deleting a delivery stream.
#'
#' @param DeliveryStreamName The name of the delivery stream.
#'
#' @examples
#'
#' @export
delete_delivery_stream <- function (DeliveryStreamName) 
{
    op <- Operation(name = "DeleteDeliveryStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_delivery_stream_input(DeliveryStreamName = DeliveryStreamName)
    output <- delete_delivery_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified delivery stream and gets the status
#'
#' Describes the specified delivery stream and gets the status. For example, after your delivery stream is created, call `DescribeDeliveryStream` to see whether the delivery stream is `ACTIVE` and therefore ready for data to be sent to it.
#'
#' @param DeliveryStreamName The name of the delivery stream.
#' @param Limit The limit on the number of destinations to return. You can have one destination per delivery stream.
#' @param ExclusiveStartDestinationId The ID of the destination to start returning the destination information. Kinesis Data Firehose supports one destination per delivery stream.
#'
#' @examples
#'
#' @export
describe_delivery_stream <- function (DeliveryStreamName, Limit = NULL, 
    ExclusiveStartDestinationId = NULL) 
{
    op <- Operation(name = "DescribeDeliveryStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_delivery_stream_input(DeliveryStreamName = DeliveryStreamName, 
        Limit = Limit, ExclusiveStartDestinationId = ExclusiveStartDestinationId)
    output <- describe_delivery_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists your delivery streams
#'
#' Lists your delivery streams.
#' 
#' The number of delivery streams might be too large to return using a single call to `ListDeliveryStreams`. You can limit the number of delivery streams returned, using the **Limit** parameter. To determine whether there are more delivery streams to list, check the value of `HasMoreDeliveryStreams` in the output. If there are more delivery streams to list, you can request them by specifying the name of the last delivery stream returned in the call in the `ExclusiveStartDeliveryStreamName` parameter of a subsequent call.
#'
#' @param Limit The maximum number of delivery streams to list. The default value is 10.
#' @param DeliveryStreamType The delivery stream type. This can be one of the following values:
#' 
#' -   `DirectPut`: Provider applications access the delivery stream directly.
#' 
#' -   `KinesisStreamAsSource`: The delivery stream uses a Kinesis data stream as a source.
#' 
#' This parameter is optional. If this parameter is omitted, delivery streams of all types are returned.
#' @param ExclusiveStartDeliveryStreamName The name of the delivery stream to start the list with.
#'
#' @examples
#'
#' @export
list_delivery_streams <- function (Limit = NULL, DeliveryStreamType = NULL, 
    ExclusiveStartDeliveryStreamName = NULL) 
{
    op <- Operation(name = "ListDeliveryStreams", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_delivery_streams_input(Limit = Limit, DeliveryStreamType = DeliveryStreamType, 
        ExclusiveStartDeliveryStreamName = ExclusiveStartDeliveryStreamName)
    output <- list_delivery_streams_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the tags for the specified delivery stream
#'
#' Lists the tags for the specified delivery stream. This operation has a limit of five transactions per second per account.
#'
#' @param DeliveryStreamName The name of the delivery stream whose tags you want to list.
#' @param ExclusiveStartTagKey The key to use as the starting point for the list of tags. If you set this parameter, `ListTagsForDeliveryStream` gets all tags that occur after `ExclusiveStartTagKey`.
#' @param Limit The number of tags to return. If this number is less than the total number of tags associated with the delivery stream, `HasMoreTags` is set to `true` in the response. To list additional tags, set `ExclusiveStartTagKey` to the last key in the response.
#'
#' @examples
#'
#' @export
list_tags_for_delivery_stream <- function (DeliveryStreamName, 
    ExclusiveStartTagKey = NULL, Limit = NULL) 
{
    op <- Operation(name = "ListTagsForDeliveryStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_for_delivery_stream_input(DeliveryStreamName = DeliveryStreamName, 
        ExclusiveStartTagKey = ExclusiveStartTagKey, Limit = Limit)
    output <- list_tags_for_delivery_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Writes a single data record into an Amazon Kinesis Data Firehose delivery stream
#'
#' Writes a single data record into an Amazon Kinesis Data Firehose delivery stream. To write multiple data records into a delivery stream, use PutRecordBatch. Applications using these operations are referred to as producers.
#' 
#' By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use PutRecord and PutRecordBatch, the limits are an aggregate across these two operations for each delivery stream. For more information about limits and how to request an increase, see [Amazon Kinesis Data Firehose Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).
#' 
#' You must specify the name of the delivery stream and the data record when using PutRecord. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it can be a segment from a log file, geographic location data, website clickstream data, and so on.
#' 
#' Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\n`) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.
#' 
#' The `PutRecord` operation returns a `RecordId`, which is a unique string assigned to each record. Producer applications can use this ID for purposes such as auditability and investigation.
#' 
#' If the `PutRecord` operation throws a `ServiceUnavailableException`, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.
#' 
#' Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it tries to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.
#'
#' @param DeliveryStreamName The name of the delivery stream.
#' @param Record The record.
#'
#' @examples
#'
#' @export
put_record <- function (DeliveryStreamName, Record) 
{
    op <- Operation(name = "PutRecord", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_record_input(DeliveryStreamName = DeliveryStreamName, 
        Record = Record)
    output <- put_record_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records
#'
#' Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a delivery stream, use PutRecord. Applications using these operations are referred to as producers.
#' 
#' By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use PutRecord and PutRecordBatch, the limits are an aggregate across these two operations for each delivery stream. For more information about limits, see [Amazon Kinesis Data Firehose Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).
#' 
#' Each PutRecordBatch request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before 64-bit encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.
#' 
#' You must specify the name of the delivery stream and the data record when using PutRecord. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it could be a segment from a log file, geographic location data, website clickstream data, and so on.
#' 
#' Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (`\n`) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination.
#' 
#' The PutRecordBatch response includes a count of failed records, **FailedPutCount**, and an array of responses, **RequestResponses**. Each entry in the **RequestResponses** array provides additional information about the processed record. It directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. **RequestResponses** includes both successfully and unsuccessfully processed records. Kinesis Data Firehose tries to process all records in each PutRecordBatch request. A single record failure does not stop the processing of subsequent records.
#' 
#' A successfully processed record includes a **RecordId** value, which is unique for the record. An unsuccessfully processed record includes **ErrorCode** and **ErrorMessage** values. **ErrorCode** reflects the type of error, and is one of the following values: `ServiceUnavailable` or `InternalFailure`. **ErrorMessage** provides more detailed information about the error.
#' 
#' If there is an internal server error or a timeout, the write might have completed or it might have failed. If **FailedPutCount** is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.
#' 
#' If PutRecordBatch throws **ServiceUnavailableException**, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.
#' 
#' Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.
#'
#' @param DeliveryStreamName The name of the delivery stream.
#' @param Records One or more records.
#'
#' @examples
#'
#' @export
put_record_batch <- function (DeliveryStreamName, Records) 
{
    op <- Operation(name = "PutRecordBatch", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_record_batch_input(DeliveryStreamName = DeliveryStreamName, 
        Records = Records)
    output <- put_record_batch_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or updates tags for the specified delivery stream
#'
#' Adds or updates tags for the specified delivery stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Tags are metadata. For example, you can add friendly names and descriptions or other types of information that can help you distinguish the delivery stream. For more information about tags, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html) in the *AWS Billing and Cost Management User Guide*.
#' 
#' Each delivery stream can have up to 50 tags.
#' 
#' This operation has a limit of five transactions per second per account.
#'
#' @param DeliveryStreamName The name of the delivery stream to which you want to add the tags.
#' @param Tags A set of key-value pairs to use to create the tags.
#'
#' @examples
#'
#' @export
tag_delivery_stream <- function (DeliveryStreamName, Tags) 
{
    op <- Operation(name = "TagDeliveryStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- tag_delivery_stream_input(DeliveryStreamName = DeliveryStreamName, 
        Tags = Tags)
    output <- tag_delivery_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes tags from the specified delivery stream
#'
#' Removes tags from the specified delivery stream. Removed tags are deleted, and you can\'t recover them after this operation successfully completes.
#' 
#' If you specify a tag that doesn\'t exist, the operation ignores it.
#' 
#' This operation has a limit of five transactions per second per account.
#'
#' @param DeliveryStreamName The name of the delivery stream.
#' @param TagKeys A list of tag keys. Each corresponding tag is removed from the delivery stream.
#'
#' @examples
#'
#' @export
untag_delivery_stream <- function (DeliveryStreamName, TagKeys) 
{
    op <- Operation(name = "UntagDeliveryStream", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- untag_delivery_stream_input(DeliveryStreamName = DeliveryStreamName, 
        TagKeys = TagKeys)
    output <- untag_delivery_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified destination of the specified delivery stream
#'
#' Updates the specified destination of the specified delivery stream.
#' 
#' Use this operation to change the destination type (for example, to replace the Amazon S3 destination with Amazon Redshift) or change the parameters associated with a destination (for example, to change the bucket name of the Amazon S3 destination). The update might not occur immediately. The target delivery stream remains active while the configurations are updated, so data writes to the delivery stream can continue during this process. The updated configurations are usually effective within a few minutes.
#' 
#' Switching between Amazon ES and other services is not supported. For an Amazon ES destination, you can only update to another Amazon ES destination.
#' 
#' If the destination type is the same, Kinesis Data Firehose merges the configuration parameters specified with the destination configuration that already exists on the delivery stream. If any of the parameters are not specified in the call, the existing values are retained. For example, in the Amazon S3 destination, if EncryptionConfiguration is not specified, then the existing `EncryptionConfiguration` is maintained on the destination.
#' 
#' If the destination type is not the same, for example, changing the destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose does not merge any parameters. In this case, all parameters must be specified.
#' 
#' Kinesis Data Firehose uses **CurrentDeliveryStreamVersionId** to avoid race conditions and conflicting merges. This is a required field, and the service updates the configuration only if the existing configuration has a version ID that matches. After the update is applied successfully, the version ID is updated, and can be retrieved using DescribeDeliveryStream. Use the new version ID to set **CurrentDeliveryStreamVersionId** in the next call.
#'
#' @param DeliveryStreamName The name of the delivery stream.
#' @param CurrentDeliveryStreamVersionId Obtain this value from the **VersionId** result of DeliveryStreamDescription. This value is required, and helps the service perform conditional operations. For example, if there is an interleaving update and this value is null, then the update destination fails. After the update is successful, the `VersionId` value is updated. The service then performs a merge of the old configuration with the new configuration.
#' @param DestinationId The ID of the destination.
#' @param S3DestinationUpdate &#91;Deprecated&#93; Describes an update for a destination in Amazon S3.
#' @param ExtendedS3DestinationUpdate Describes an update for a destination in Amazon S3.
#' @param RedshiftDestinationUpdate Describes an update for a destination in Amazon Redshift.
#' @param ElasticsearchDestinationUpdate Describes an update for a destination in Amazon ES.
#' @param SplunkDestinationUpdate Describes an update for a destination in Splunk.
#'
#' @examples
#'
#' @export
update_destination <- function (DeliveryStreamName, CurrentDeliveryStreamVersionId, 
    DestinationId, S3DestinationUpdate = NULL, ExtendedS3DestinationUpdate = NULL, 
    RedshiftDestinationUpdate = NULL, ElasticsearchDestinationUpdate = NULL, 
    SplunkDestinationUpdate = NULL) 
{
    op <- Operation(name = "UpdateDestination", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_destination_input(DeliveryStreamName = DeliveryStreamName, 
        CurrentDeliveryStreamVersionId = CurrentDeliveryStreamVersionId, 
        DestinationId = DestinationId, S3DestinationUpdate = S3DestinationUpdate, 
        ExtendedS3DestinationUpdate = ExtendedS3DestinationUpdate, 
        RedshiftDestinationUpdate = RedshiftDestinationUpdate, 
        ElasticsearchDestinationUpdate = ElasticsearchDestinationUpdate, 
        SplunkDestinationUpdate = SplunkDestinationUpdate)
    output <- update_destination_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
