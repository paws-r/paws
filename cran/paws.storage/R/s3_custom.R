#' @include s3_service.R s3_operations.R
NULL

#' Download a file from S3 and store it at a specified file location
#'
#' Download a file from S3 and store it at a specified file location.
#'
#' This is a wrapper function for [`get_object`][s3_get_object] that will
#' write the downloaded object to the file location specified.
#'
#' @usage
#' s3_download_file(Bucket, Key, Filename, IfMatch, IfModifiedSince,
#' IfNoneMatch, IfUnmodifiedSince, Range, ResponseCacheControl,
#' ResponseContentDisposition, ResponseContentEncoding, ResponseContentLanguage,
#' ResponseContentType, ResponseExpires, VersionId, SSECustomerAlgorithm,
#' SSECustomerKey, SSECustomerKeyMD5, RequestPayer, PartNumber,
#' ExpectedBucketOwner)
#'
#' @param Bucket &#91;required&#93; The bucket name containing the object.
#'
#' When using this API with an access point, you must direct requests to
#' the access point hostname. The access point hostname takes the form
#' *AccessPointName*-*AccountId*.s3-accesspoint.*Region*.amazonaws.com.
#' When using this operation with an access point through the AWS SDKs, you
#' provide the access point ARN in place of the bucket name. For more
#' information about access point ARNs, see [Using Access
#' Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
#' in the *Amazon Simple Storage Service Developer Guide*.
#'
#' When using this API with Amazon S3 on Outposts, you must direct requests
#' to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
#' form
#' *AccessPointName*-*AccountId*.*outpostID*.s3-outposts.*Region*.amazonaws.com.
#' When using this operation using S3 on Outposts through the AWS SDKs, you
#' provide the Outposts bucket ARN in place of the bucket name. For more
#' information about S3 on Outposts ARNs, see [Using S3 on
#' Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
#' in the *Amazon Simple Storage Service Developer Guide*.
#' @param Key &#91;required&#93; Key of the object to get.
#' @param Filename &#91;required&#93; A local file location where the downloaded
#' object will be saved.
#' @param IfMatch Return the object only if its entity tag (ETag) is the same as the one
#' specified, otherwise return a 412 (precondition failed).
#' @param IfModifiedSince Return the object only if it has been modified since the specified time,
#' otherwise return a 304 (not modified).
#' @param IfNoneMatch Return the object only if its entity tag (ETag) is different from the
#' one specified, otherwise return a 304 (not modified).
#' @param IfUnmodifiedSince Return the object only if it has not been modified since the specified
#' time, otherwise return a 412 (precondition failed).
#' @param Range Downloads the specified range bytes of an object. For more information
#' about the HTTP Range header, see
#' <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35>.
#'
#' Amazon S3 doesn't support retrieving multiple ranges of data per `GET`
#' request.
#' @param ResponseCacheControl Sets the `Cache-Control` header of the response.
#' @param ResponseContentDisposition Sets the `Content-Disposition` header of the response
#' @param ResponseContentEncoding Sets the `Content-Encoding` header of the response.
#' @param ResponseContentLanguage Sets the `Content-Language` header of the response.
#' @param ResponseContentType Sets the `Content-Type` header of the response.
#' @param ResponseExpires Sets the `Expires` header of the response.
#' @param VersionId VersionId used to reference a specific version of the object.
#' @param SSECustomerAlgorithm Specifies the algorithm to use to when encrypting the object (for
#' example, AES256).
#' @param SSECustomerKey Specifies the customer-provided encryption key for Amazon S3 to use in
#' encrypting data. This value is used to store the object and then it is
#' discarded; Amazon S3 does not store the encryption key. The key must be
#' appropriate for use with the algorithm specified in the
#' `x-amz-server-side-encryption-customer-algorithm` header.
#' @param SSECustomerKeyMD5 Specifies the 128-bit MD5 digest of the encryption key according to RFC
#' 1321. Amazon S3 uses this header for a message integrity check to ensure
#' that the encryption key was transmitted without error.
#' @param RequestPayer
#' @param PartNumber Part number of the object being read. This is a positive integer between
#' 1 and 10,000. Effectively performs a 'ranged' GET request for the part
#' specified. Useful for downloading just a part of an object.
#' @param ExpectedBucketOwner The account id of the expected bucket owner. If the bucket is owned by a
#' different account, the request will fail with an HTTP
#' `403 (Access Denied)` error.
#'
#' @section Request syntax:
#' ```
#' svc$download_file(
#'   Bucket = "string",
#'   Key = "string",
#'   Filename = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # The following example retrieves an object from an S3 bucket. The request
#' # specifies the range header to retrieve a specific byte range. The text file
#' # is saved in a local output folder.
#' svc$download_file(
#'   Bucket = "examplebucket",
#'   Key = "SampleFile.txt",
#'   Range = "bytes=0-9",
#'   Filename = "./output/SampleFile.txt"
#' )
#'
#' # The following example retrieves an object from an S3 bucket. The object is
#' # stored in the current directory as "HappyFace.jpg".
#' svc$download_file(
#'   Bucket = "examplebucket",
#'   Key = "HappyFace.jpg",
#'   Filename = "HappyFace.jpg"
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname s3_download_file
s3_download_file <- function(Bucket, Key, Filename, IfMatch = NULL, IfModifiedSince = NULL, IfNoneMatch = NULL, IfUnmodifiedSince = NULL, Range = NULL, ResponseCacheControl = NULL, ResponseContentDisposition = NULL, ResponseContentEncoding = NULL, ResponseContentLanguage = NULL, ResponseContentType = NULL, ResponseExpires = NULL, VersionId = NULL, SSECustomerAlgorithm = NULL, SSECustomerKey = NULL, SSECustomerKeyMD5 = NULL, RequestPayer = NULL, PartNumber = NULL, ExpectedBucketOwner = NULL) {
  download_object <- s3_get_object(Bucket = Bucket, IfMatch = IfMatch, IfModifiedSince = IfModifiedSince, IfNoneMatch = IfNoneMatch, IfUnmodifiedSince = IfUnmodifiedSince, Key = Key, Range = Range, ResponseCacheControl = ResponseCacheControl, ResponseContentDisposition = ResponseContentDisposition, ResponseContentEncoding = ResponseContentEncoding, ResponseContentLanguage = ResponseContentLanguage, ResponseContentType = ResponseContentType, ResponseExpires = ResponseExpires, VersionId = VersionId, SSECustomerAlgorithm =SSECustomerAlgorithm, SSECustomerKey = SSECustomerKey, SSECustomerKeyMD5 = SSECustomerKeyMD5, RequestPayer = RequestPayer, PartNumber = PartNumber, ExpectedBucketOwner = ExpectedBucketOwner)
  download_body <- download_object$Body
  writeBin(download_body, con = Filename)
  return(list())
}
.s3$operations$download_file <- s3_download_file

#' Uploads a part by copying data from an existing object as data source
#'
#' @description
#' Uploads a part by copying data from an existing object as data source.
#' You specify the data source by adding the request header
#' `x-amz-copy-source` in your request and a byte range by adding the
#' request header `x-amz-copy-source-range` in your request.
#'
#' The minimum allowable part size for a multipart upload is 5 MB. For more
#' information about multipart upload limits, go to [Quick
#' Facts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html)
#' in the *Amazon Simple Storage Service Developer Guide*.
#'
#' Instead of using an existing object as part data, you might use the
#' [`upload_part`][s3_upload_part] operation and provide data in your
#' request.
#'
#' You must initiate a multipart upload before you can upload any part. In
#' response to your initiate request. Amazon S3 returns a unique
#' identifier, the upload ID, that you must include in your upload part
#' request.
#'
#' For more information about using the
#' [`upload_part_copy`][s3_upload_part_copy] operation, see the following:
#'
#' -   For conceptual information about multipart uploads, see [Uploading
#'     Objects Using Multipart
#'     Upload](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html)
#'     in the *Amazon Simple Storage Service Developer Guide*.
#'
#' -   For information about permissions required to use the multipart
#'     upload API, see [Multipart Upload API and
#'     Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html)
#'     in the *Amazon Simple Storage Service Developer Guide*.
#'
#' -   For information about copying objects using a single atomic
#'     operation vs. the multipart upload, see [Operations on
#'     Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/uploading-downloading-objects.html)
#'     in the *Amazon Simple Storage Service Developer Guide*.
#'
#' -   For information about using server-side encryption with
#'     customer-provided encryption keys with the UploadPartCopy operation,
#'     see [`copy_object`][s3_copy_object] and
#'     [`upload_part`][s3_upload_part].
#'
#' Note the following additional considerations about the request headers
#' `x-amz-copy-source-if-match`, `x-amz-copy-source-if-none-match`,
#' `x-amz-copy-source-if-unmodified-since`, and
#' `x-amz-copy-source-if-modified-since`:
#'
#' -   **Consideration 1** - If both of the `x-amz-copy-source-if-match`
#'     and `x-amz-copy-source-if-unmodified-since` headers are present in
#'     the request as follows:
#'
#'     `x-amz-copy-source-if-match` condition evaluates to `true`, and;
#'
#'     `x-amz-copy-source-if-unmodified-since` condition evaluates to
#'     `false`;
#'
#'     Amazon S3 returns `200 OK` and copies the data.
#'
#' -   **Consideration 2** - If both of the
#'     `x-amz-copy-source-if-none-match` and
#'     `x-amz-copy-source-if-modified-since` headers are present in the
#'     request as follows:
#'
#'     `x-amz-copy-source-if-none-match` condition evaluates to `false`,
#'     and;
#'
#'     `x-amz-copy-source-if-modified-since` condition evaluates to `true`;
#'
#'     Amazon S3 returns `412 Precondition Failed` response code.
#'
#' **Versioning**
#'
#' If your bucket has versioning enabled, you could have multiple versions
#' of the same object. By default, `x-amz-copy-source` identifies the
#' current version of the object to copy. If the current version is a
#' delete marker and you don't specify a versionId in the
#' `x-amz-copy-source`, Amazon S3 returns a 404 error, because the object
#' does not exist. If you specify versionId in the `x-amz-copy-source` and
#' the versionId is a delete marker, Amazon S3 returns an HTTP 400 error,
#' because you are not allowed to specify a delete marker as a version for
#' the `x-amz-copy-source`.
#'
#' You can optionally specify a specific version of the source object to
#' copy by adding the `versionId` subresource as shown in the following
#' example:
#'
#' `x-amz-copy-source: /bucket/object?versionId=version id`
#'
#' **Special Errors**
#'
#' -   -   *Code: NoSuchUpload*
#'
#'     -   *Cause: The specified multipart upload does not exist. The
#'         upload ID might be invalid, or the multipart upload might have
#'         been aborted or completed.*
#'
#'     -   *HTTP Status Code: 404 Not Found*
#'
#' -   -   *Code: InvalidRequest*
#'
#'     -   *Cause: The specified copy source is not supported as a
#'         byte-range copy source.*
#'
#'     -   *HTTP Status Code: 400 Bad Request*
#'
#' **Related Resources**
#'
#' -   [`create_multipart_upload`][s3_create_multipart_upload]
#'
#' -   [`upload_part`][s3_upload_part]
#'
#' -   [`complete_multipart_upload`][s3_complete_multipart_upload]
#'
#' -   [`abort_multipart_upload`][s3_abort_multipart_upload]
#'
#' -   [`list_parts`][s3_list_parts]
#'
#' -   [`list_multipart_uploads`][s3_list_multipart_uploads]
#'
#' @usage
#' s3_upload_part_copy(Bucket, CopySource, CopySourceIfMatch,
#'   CopySourceIfModifiedSince, CopySourceIfNoneMatch,
#'   CopySourceIfUnmodifiedSince, CopySourceRange, Key, PartNumber, UploadId,
#'   SSECustomerAlgorithm, SSECustomerKey, SSECustomerKeyMD5,
#'   CopySourceSSECustomerAlgorithm, CopySourceSSECustomerKey,
#'   CopySourceSSECustomerKeyMD5, RequestPayer, ExpectedBucketOwner,
#'   ExpectedSourceBucketOwner)
#'
#' @param Bucket &#91;required&#93; The bucket name.
#'
#' When using this API with an access point, you must direct requests to
#' the access point hostname. The access point hostname takes the form
#' *AccessPointName*-*AccountId*.s3-accesspoint.*Region*.amazonaws.com.
#' When using this operation with an access point through the AWS SDKs, you
#' provide the access point ARN in place of the bucket name. For more
#' information about access point ARNs, see [Using Access
#' Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
#' in the *Amazon Simple Storage Service Developer Guide*.
#'
#' When using this API with Amazon S3 on Outposts, you must direct requests
#' to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
#' form
#' *AccessPointName*-*AccountId*.*outpostID*.s3-outposts.*Region*.amazonaws.com.
#' When using this operation using S3 on Outposts through the AWS SDKs, you
#' provide the Outposts bucket ARN in place of the bucket name. For more
#' information about S3 on Outposts ARNs, see [Using S3 on
#' Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
#' in the *Amazon Simple Storage Service Developer Guide*.
#' @param CopySource &#91;required&#93; Specifies the source object for the copy operation. You specify the
#' value in one of two formats, depending on whether you want to access the
#' source object through an [access
#' point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):
#'
#' -   For objects not accessed through an access point, specify the name
#'     of the source bucket and key of the source object, separated by a
#'     slash (/). For example, to copy the object `reports/january.pdf`
#'     from the bucket `awsexamplebucket`, use
#'     `awsexamplebucket/reports/january.pdf`. The value must be URL
#'     encoded.
#'
#' -   For objects accessed through access points, specify the Amazon
#'     Resource Name (ARN) of the object as accessed through the access
#'     point, in the format
#'     `arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>`.
#'     For example, to copy the object `reports/january.pdf` through access
#'     point `my-access-point` owned by account `123456789012` in Region
#'     `us-west-2`, use the URL encoding of
#'     `arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf`.
#'     The value must be URL encoded.
#'
#'     Amazon S3 supports copy operations using access points only when the
#'     source and destination buckets are in the same AWS Region.
#'
#'     Alternatively, for objects accessed through Amazon S3 on Outposts,
#'     specify the ARN of the object as accessed in the format
#'     `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key>`.
#'     For example, to copy the object `reports/january.pdf` through
#'     outpost `my-outpost` owned by account `123456789012` in Region
#'     `us-west-2`, use the URL encoding of
#'     `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf`.
#'     The value must be URL encoded.
#'
#' To copy a specific version of an object, append
#' `?versionId=<version-id>` to the value (for example,
#' `awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893`).
#' If you don't specify a version ID, Amazon S3 copies the latest version
#' of the source object.
#' @param CopySourceIfMatch Copies the object if its entity tag (ETag) matches the specified tag.
#' @param CopySourceIfModifiedSince Copies the object if it has been modified since the specified time.
#' @param CopySourceIfNoneMatch Copies the object if its entity tag (ETag) is different than the
#' specified ETag.
#' @param CopySourceIfUnmodifiedSince Copies the object if it hasn't been modified since the specified time.
#' @param CopySourceRange The range of bytes to copy from the source object. The range value must
#' use the form bytes=first-last, where the first and last are the
#' zero-based byte offsets to copy. For example, bytes=0-9 indicates that
#' you want to copy the first 10 bytes of the source. You can copy a range
#' only if the source object is greater than 5 MB.
#' @param Key &#91;required&#93; Object key for which the multipart upload was initiated.
#' @param PartNumber &#91;required&#93; Part number of part being copied. This is a positive integer between 1
#' and 10,000.
#' @param UploadId &#91;required&#93; Upload ID identifying the multipart upload whose part is being copied.
#' @param SSECustomerAlgorithm Specifies the algorithm to use to when encrypting the object (for
#' example, AES256).
#' @param SSECustomerKey Specifies the customer-provided encryption key for Amazon S3 to use in
#' encrypting data. This value is used to store the object and then it is
#' discarded; Amazon S3 does not store the encryption key. The key must be
#' appropriate for use with the algorithm specified in the
#' `x-amz-server-side-encryption-customer-algorithm` header. This must be
#' the same encryption key specified in the initiate multipart upload
#' request.
#' @param SSECustomerKeyMD5 Specifies the 128-bit MD5 digest of the encryption key according to RFC
#' 1321. Amazon S3 uses this header for a message integrity check to ensure
#' that the encryption key was transmitted without error.
#' @param CopySourceSSECustomerAlgorithm Specifies the algorithm to use when decrypting the source object (for
#' example, AES256).
#' @param CopySourceSSECustomerKey Specifies the customer-provided encryption key for Amazon S3 to use to
#' decrypt the source object. The encryption key provided in this header
#' must be one that was used when the source object was created.
#' @param CopySourceSSECustomerKeyMD5 Specifies the 128-bit MD5 digest of the encryption key according to RFC
#' 1321. Amazon S3 uses this header for a message integrity check to ensure
#' that the encryption key was transmitted without error.
#' @param RequestPayer
#' @param ExpectedBucketOwner The account id of the expected destination bucket owner. If the
#' destination bucket is owned by a different account, the request will
#' fail with an HTTP `403 (Access Denied)` error.
#' @param ExpectedSourceBucketOwner The account id of the expected source bucket owner. If the source bucket
#' is owned by a different account, the request will fail with an HTTP
#' `403 (Access Denied)` error.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   CopySourceVersionId = "string",
#'   CopyPartResult = list(
#'     ETag = "string",
#'     LastModified = as.POSIXct(
#'       "2015-01-01"
#'     )
#'   ),
#'   ServerSideEncryption = "AES256"|"aws:kms",
#'   SSECustomerAlgorithm = "string",
#'   SSECustomerKeyMD5 = "string",
#'   SSEKMSKeyId = "string",
#'   BucketKeyEnabled = TRUE|FALSE,
#'   RequestCharged = "requester"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$upload_part_copy(
#'   Bucket = "string",
#'   CopySource = "string",
#'   CopySourceIfMatch = "string",
#'   CopySourceIfModifiedSince = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   CopySourceIfNoneMatch = "string",
#'   CopySourceIfUnmodifiedSince = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   CopySourceRange = "string",
#'   Key = "string",
#'   PartNumber = 123,
#'   UploadId = "string",
#'   SSECustomerAlgorithm = "string",
#'   SSECustomerKey = raw,
#'   SSECustomerKeyMD5 = "string",
#'   CopySourceSSECustomerAlgorithm = "string",
#'   CopySourceSSECustomerKey = raw,
#'   CopySourceSSECustomerKeyMD5 = "string",
#'   RequestPayer = "requester",
#'   ExpectedBucketOwner = "string",
#'   ExpectedSourceBucketOwner = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # The following example uploads a part of a multipart upload by copying
#' # data from an existing object as data source.
#' svc$upload_part_copy(
#'   Bucket = "examplebucket",
#'   CopySource = "/bucketname/sourceobjectkey",
#'   Key = "examplelargeobject",
#'   PartNumber = "1",
#'   UploadId = "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3c..."
#' )
#'
#' # The following example uploads a part of a multipart upload by copying a
#' # specified byte range from an existing object as data source.
#' svc$upload_part_copy(
#'   Bucket = "examplebucket",
#'   CopySource = "/bucketname/sourceobjectkey",
#'   CopySourceRange = "bytes=1-100000",
#'   Key = "examplelargeobject",
#'   PartNumber = "2",
#'   UploadId = "exampleuoh_10OhKhT7YukE9bjzTPRiuaCotmZM_pFngJFir9OZNrSr5cWa3c..."
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname s3_upload_part_copy
s3_upload_part_copy <- function(Bucket, CopySource, CopySourceIfMatch = NULL, CopySourceIfModifiedSince = NULL, CopySourceIfNoneMatch = NULL, CopySourceIfUnmodifiedSince = NULL, CopySourceRange = NULL, Key, PartNumber, UploadId, SSECustomerAlgorithm = NULL, SSECustomerKey = NULL, SSECustomerKeyMD5 = NULL, CopySourceSSECustomerAlgorithm = NULL, CopySourceSSECustomerKey = NULL, CopySourceSSECustomerKeyMD5 = NULL, RequestPayer = NULL, ExpectedBucketOwner = NULL, ExpectedSourceBucketOwner = NULL) {
  op <- new_operation(
    name = "CopyPart",
    http_method = "PUT",
    http_path = "/{Bucket}/{Key+}",
    paginator = list()
  )
  input <- .s3$upload_part_copy_input(Bucket = Bucket, CopySource = CopySource, CopySourceIfMatch = CopySourceIfMatch, CopySourceIfModifiedSince = CopySourceIfModifiedSince, CopySourceIfNoneMatch = CopySourceIfNoneMatch, CopySourceIfUnmodifiedSince = CopySourceIfUnmodifiedSince, CopySourceRange = CopySourceRange, Key = Key, PartNumber = PartNumber, UploadId = UploadId, SSECustomerAlgorithm = SSECustomerAlgorithm, SSECustomerKey = SSECustomerKey, SSECustomerKeyMD5 = SSECustomerKeyMD5, CopySourceSSECustomerAlgorithm = CopySourceSSECustomerAlgorithm, CopySourceSSECustomerKey = CopySourceSSECustomerKey, CopySourceSSECustomerKeyMD5 = CopySourceSSECustomerKeyMD5, RequestPayer = RequestPayer, ExpectedBucketOwner = ExpectedBucketOwner, ExpectedSourceBucketOwner = ExpectedSourceBucketOwner)
  output <- .s3$upload_part_copy_output()
  config <- get_config()
  svc <- .s3$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.s3$operations$upload_part_copy <- s3_upload_part_copy
