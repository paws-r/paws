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

  op <- new_operation(

    name = "GetObject",

    http_method = "GET",

    http_path = "/{Bucket}/{Key+}",

    paginator = list()

  )

  input <- .s3$get_object_input(Bucket = Bucket, IfMatch = IfMatch, IfModifiedSince = IfModifiedSince, IfNoneMatch = IfNoneMatch, IfUnmodifiedSince = IfUnmodifiedSince, Key = Key, Range = Range, ResponseCacheControl = ResponseCacheControl, ResponseContentDisposition = ResponseContentDisposition, ResponseContentEncoding = ResponseContentEncoding, ResponseContentLanguage = ResponseContentLanguage, ResponseContentType = ResponseContentType, ResponseExpires = ResponseExpires, VersionId = VersionId, SSECustomerAlgorithm = SSECustomerAlgorithm, SSECustomerKey = SSECustomerKey, SSECustomerKeyMD5 = SSECustomerKeyMD5, RequestPayer = RequestPayer, PartNumber = PartNumber, ExpectedBucketOwner = ExpectedBucketOwner)

  output <- .s3$get_object_output()

  config <- get_config()

  svc <- .s3$service(config)

  request <- new_request(svc, op, input, output, Filename)

  response <- send_request(request)

  return(list())

}



.s3$operations$download_file <- s3_download_file
