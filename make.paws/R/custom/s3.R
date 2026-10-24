#' @include s3_service.R s3_operations.R

#' @importFrom paws.common new_operation get_config new_request send_request
#' @importFrom paws.common multipart_upload_file multipart_download_file
#' @importFrom utils modifyList
NULL

#' Download a file from S3 and store it at a specified file location
#'
#' Download a file from S3 and store it at a specified file location.
#'
#' This is a wrapper function for [`get_object`][s3_get_object] that will
#' write the downloaded object to the file location specified.
#'
#' Large objects are downloaded as several byte ranges fetched at the same
#' time (see `chunksize` and `max_concurrency`). The object is written to a
#' temporary file that is moved to `Filename` once the download completes, so a
#' failed download never leaves a partial file. Requests that use `Range`,
#' `PartNumber`, any `If*` condition or any `Response*` override are made as a
#' single `get_object` request instead.
#'
#' @usage
#' s3_download_file(Bucket, Key, Filename, IfMatch, IfModifiedSince,
#' IfNoneMatch, IfUnmodifiedSince, Range, ResponseCacheControl,
#' ResponseContentDisposition, ResponseContentEncoding, ResponseContentLanguage,
#' ResponseContentType, ResponseExpires, VersionId, SSECustomerAlgorithm,
#' SSECustomerKey, SSECustomerKeyMD5, RequestPayer, PartNumber,
#' ExpectedBucketOwner, chunksize, max_concurrency, progress)
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
#' Outposts](https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html)
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
#' @param RequestPayer Confirms that the requester knows that they will be
#' charged for the request. Bucket owners need not specify this parameter in their requests
#' @param PartNumber Part number of the object being read. This is a positive integer between
#' 1 and 10,000. Effectively performs a 'ranged' GET request for the part
#' specified. Useful for downloading just a part of an object.
#' @param ExpectedBucketOwner The account id of the expected bucket owner. If the bucket is owned by a
#' different account, the request will fail with an HTTP
#' `403 (Access Denied)` error.
#'
#' @param chunksize Size in bytes of each range of a large download (default
#' 8 MiB).
#' @param max_concurrency Number of ranges fetched at the same time (default
#' 10). Memory use is roughly `max_concurrency * chunksize`. Use `1` to fetch
#' ranges one at a time.
#' @param progress If `TRUE`, show a progress bar.
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
s3_download_file <- function(
  Bucket,
  Key,
  Filename,
  IfMatch = NULL,
  IfModifiedSince = NULL,
  IfNoneMatch = NULL,
  IfUnmodifiedSince = NULL,
  Range = NULL,
  ResponseCacheControl = NULL,
  ResponseContentDisposition = NULL,
  ResponseContentEncoding = NULL,
  ResponseContentLanguage = NULL,
  ResponseContentType = NULL,
  ResponseExpires = NULL,
  VersionId = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL,
  RequestPayer = NULL,
  PartNumber = NULL,
  ExpectedBucketOwner = NULL,
  ChecksumMode = NULL,
  chunksize = 8 * 1024^2,
  max_concurrency = 10,
  progress = FALSE
) {
  op <- new_operation(
    name = "GetObject",
    http_method = "GET",
    http_path = "/{Bucket}/{Key+}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE,
    http_checksum = list(
      request_checksum_required = FALSE,
      request_validation_mode_member = "ChecksumMode",
      response_algorithms = c(
        "crc64nvme",
        "crc32",
        "crc32c",
        "sha256",
        "sha1",
        "sha512",
        "md5",
        "xxhash64",
        "xxhash3",
        "xxhash128"
      )
    )
  )
  config <- get_config()

  # Plain whole-object downloads are fetched as parallel ranges. Anything that
  # asks for a specific range/part, a condition or a response override keeps
  # the single-request behaviour below.
  plain <- all(vapply(
    list(
      IfMatch,
      IfModifiedSince,
      IfNoneMatch,
      IfUnmodifiedSince,
      Range,
      ResponseCacheControl,
      ResponseContentDisposition,
      ResponseContentEncoding,
      ResponseContentLanguage,
      ResponseContentType,
      ResponseExpires,
      PartNumber,
      ChecksumMode
    ),
    is.null,
    logical(1)
  ))
  if (plain) {
    svc <- .s3$operations
    svc$.internal <- list(config = config)
    multipart_download_file(
      svc,
      Bucket = Bucket,
      Key = Key,
      Filename = Filename,
      VersionId = VersionId,
      SSECustomerAlgorithm = SSECustomerAlgorithm,
      SSECustomerKey = SSECustomerKey,
      SSECustomerKeyMD5 = SSECustomerKeyMD5,
      RequestPayer = RequestPayer,
      ExpectedBucketOwner = ExpectedBucketOwner,
      chunksize = chunksize,
      max_concurrency = max_concurrency,
      progress = progress
    )
    return(list())
  }
  input <- .s3$get_object_input(
    Bucket = Bucket,
    IfMatch = IfMatch,
    IfModifiedSince = IfModifiedSince,
    IfNoneMatch = IfNoneMatch,
    IfUnmodifiedSince = IfUnmodifiedSince,
    Key = Key,
    Range = Range,
    ResponseCacheControl = ResponseCacheControl,
    ResponseContentDisposition = ResponseContentDisposition,
    ResponseContentEncoding = ResponseContentEncoding,
    ResponseContentLanguage = ResponseContentLanguage,
    ResponseContentType = ResponseContentType,
    ResponseExpires = ResponseExpires,
    VersionId = VersionId,
    SSECustomerAlgorithm = SSECustomerAlgorithm,
    SSECustomerKey = SSECustomerKey,
    SSECustomerKeyMD5 = SSECustomerKeyMD5,
    RequestPayer = RequestPayer,
    PartNumber = PartNumber,
    ExpectedBucketOwner = ExpectedBucketOwner,
    ChecksumMode = ChecksumMode
  )
  output <- .s3$get_object_output()
  svc <- .s3$service(config, op)
  request <- new_request(svc, op, input, output, Filename)
  response <- send_request(request)
  return(list())
}

.s3$operations$download_file <- s3_download_file

#' Upload a file to S3, sending large files in parallel parts
#'
#' Upload a file to S3. Files up to `multipart_threshold` bytes are sent with a
#' single [`put_object`][s3_put_object]. Larger files are sent as a multipart
#' upload (see [`create_multipart_upload`][s3_create_multipart_upload]), with up
#' to `max_concurrency` parts transferred at the same time. If the upload fails
#' it is aborted so that no incomplete parts are left in the bucket.
#'
#' The arguments are those of [`put_object`][s3_put_object], except the ones
#' that describe the body of a single request: `Body` and `ContentLength` (taken
#' from `Filename`), and `ContentMD5`, the per-object `Checksum*` values and
#' `WriteOffsetBytes`, which cannot apply to a multipart upload. Use
#' `ChecksumAlgorithm` to have S3 verify each part.
#'
#' @usage
#' s3_upload_file(Filename, Bucket, Key, ACL, CacheControl, ContentDisposition,
#' ContentEncoding, ContentLanguage, ContentType, ChecksumAlgorithm, Expires,
#' IfMatch, IfNoneMatch, GrantFullControl, GrantRead, GrantReadACP,
#' GrantWriteACP, Metadata, ServerSideEncryption, StorageClass,
#' WebsiteRedirectLocation, SSECustomerAlgorithm, SSECustomerKey,
#' SSECustomerKeyMD5, SSEKMSKeyId, SSEKMSEncryptionContext, BucketKeyEnabled,
#' RequestPayer, Tagging, ObjectLockMode, ObjectLockRetainUntilDate,
#' ObjectLockLegalHoldStatus, ObjectLockEventHold,
#' ObjectLockEventHoldDurationDays, ObjectLockEventHoldDurationYears,
#' ExpectedBucketOwner, multipart_threshold, chunksize, max_concurrency,
#' progress)
#'
#' @param Filename &#91;required&#93; Path of the local file to upload.
#' @param Bucket &#91;required&#93; The name of the bucket to upload to.
#'
#' **Directory buckets** - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format ` Bucket-name.s3express-zone-id.region-code.amazonaws.com`. Path-style requests are not supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format ` bucket-base-name--zone-id--x-s3` (for example, ` amzn-s3-demo-bucket--usw2-az1--x-s3`). For information about bucket naming restrictions, see [Directory bucket naming rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html) in the *Amazon S3 User Guide*.
#'
#' **Access points** - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form *AccessPointName*-*AccountId*.s3-accesspoint.*Region*.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the *Amazon S3 User Guide*.
#'
#' Object Lambda access points are not supported by directory buckets.
#'
#' **S3 on Outposts** - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form ` AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com`. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see [What is S3 on Outposts?](https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html) in the *Amazon S3 User Guide*.
#' @param Key &#91;required&#93; Object key for which the PUT action was initiated.
#' @param ACL The canned ACL to apply to the object. For more information, see [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#CannedACL) in the *Amazon S3 User Guide*.
#'
#' When adding a new object, you can use headers to grant ACL-based permissions to individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the ACL on the object. By default, all objects are private. Only the owner has full access control. For more information, see [Access Control List (ACL) Overview](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html) and [Managing ACLs Using the REST API](https://docs.aws.amazon.com/AmazonS3/latest/userguide/managing-acls.html) in the *Amazon S3 User Guide*.
#'
#' If the bucket that you're uploading objects to uses the bucket owner enforced setting for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept PUT requests that don't specify an ACL or PUT requests that specify bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format. PUT requests that contain other ACLs (for example, custom grants to certain Amazon Web Services accounts) fail and return a `400` error with the error code `AccessControlListNotSupported`. For more information, see [Controlling ownership of objects and disabling ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html) in the *Amazon S3 User Guide*.
#'
#' -   This functionality is not supported for directory buckets.
#'
#' -   This functionality is not supported for Amazon S3 on Outposts.
#' @param CacheControl Can be used to specify caching behavior along the request/reply chain. For more information, see [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).
#' @param ContentDisposition Specifies presentational information for the object. For more information, see [https://www.rfc-editor.org/rfc/rfc6266#section-4](https://www.rfc-editor.org/info/rfc6266/#section-4).
#' @param ContentEncoding Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. For more information, see <https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding>.
#' @param ContentLanguage The language the content is in.
#' @param ContentType A standard MIME type describing the format of the contents. For more information, see <https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type>.
#' @param ChecksumAlgorithm Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any additional functionality if you don't use the SDK. When you send this header, there must be a corresponding `x-amz-checksum-algorithm ` or `x-amz-trailer` header sent. Otherwise, Amazon S3 fails the request with the HTTP status code `400 Bad Request`.
#'
#' For the `x-amz-checksum-algorithm ` header, replace ` algorithm ` with the supported algorithm from the following list:
#'
#' -   `CRC32`
#'
#' -   `CRC32C`
#'
#' -   `CRC64NVME`
#'
#' -   `MD5`
#'
#' -   `SHA1`
#'
#' -   `SHA256`
#'
#' -   `SHA512`
#'
#' -   `XXHASH3`
#'
#' -   `XXHASH64`
#'
#' -   `XXHASH128`
#'
#' For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the *Amazon S3 User Guide*.
#'
#' If the individual checksum value you provide through `x-amz-checksum-algorithm ` doesn't match the checksum algorithm you set through `x-amz-sdk-checksum-algorithm`, Amazon S3 fails the request with a `BadDigest` error.
#'
#' The `Content-MD5` or `x-amz-sdk-checksum-algorithm` header is required for any request to upload an object with a retention period configured using Amazon S3 Object Lock. For more information, see [Uploading objects to an Object Lock enabled bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-put-object) in the *Amazon S3 User Guide*.
#'
#' For directory buckets, when you use Amazon Web Services SDKs, `CRC32` is the default checksum algorithm that's used for performance.
#' @param Expires The date and time at which the object is no longer cacheable. For more information, see [https://www.rfc-editor.org/rfc/rfc7234#section-5.3](https://www.rfc-editor.org/info/rfc7234/#section-5.3).
#' @param IfMatch Uploads the object only if the ETag (entity tag) value provided during the WRITE operation matches the ETag of the object in S3. If the ETag values do not match, the operation returns a `412 Precondition Failed` error.
#'
#' If a conflicting operation occurs during the upload S3 returns a `409 ConditionalRequestConflict` response. On a 409 failure you should fetch the object's ETag and retry the upload.
#'
#' Expects the ETag value as a string.
#'
#' For more information about conditional requests, see [RFC 7232](https://www.rfc-editor.org/info/rfc7232/), or [Conditional requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html) in the *Amazon S3 User Guide*.
#'
#' For a multipart upload the condition is checked when the upload is completed.
#' @param IfNoneMatch Uploads the object only if the object key name does not already exist in the bucket specified. Otherwise, Amazon S3 returns a `412 Precondition Failed` error.
#'
#' If a conflicting operation occurs during the upload S3 returns a `409 ConditionalRequestConflict` response. On a 409 failure you should retry the upload.
#'
#' Expects the '*' (asterisk) character.
#'
#' For more information about conditional requests, see [RFC 7232](https://www.rfc-editor.org/info/rfc7232/), or [Conditional requests](https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html) in the *Amazon S3 User Guide*.
#'
#' For a multipart upload the condition is checked when the upload is completed.
#' @param GrantFullControl Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
#'
#' -   This functionality is not supported for directory buckets.
#'
#' -   This functionality is not supported for Amazon S3 on Outposts.
#' @param GrantRead Allows grantee to read the object data and its metadata.
#'
#' -   This functionality is not supported for directory buckets.
#'
#' -   This functionality is not supported for Amazon S3 on Outposts.
#' @param GrantReadACP Allows grantee to read the object ACL.
#'
#' -   This functionality is not supported for directory buckets.
#'
#' -   This functionality is not supported for Amazon S3 on Outposts.
#' @param GrantWriteACP Allows grantee to write the ACL for the applicable object.
#'
#' -   This functionality is not supported for directory buckets.
#'
#' -   This functionality is not supported for Amazon S3 on Outposts.
#' @param Metadata A map of metadata to store with the object in S3.
#' @param ServerSideEncryption The server-side encryption algorithm that was used when you store this object in Amazon S3 or Amazon FSx.
#'
#' -   **General purpose buckets** - You have four mutually exclusive options to protect data using server-side encryption in Amazon S3, depending on how you choose to manage the encryption keys. Specifically, the encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS or DSSE-KMS), and customer-provided keys (SSE-C). Amazon S3 encrypts data with server-side encryption by using Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to encrypt data at rest by using server-side encryption with other key options. For more information, see [Using Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingServerSideEncryption.html) in the *Amazon S3 User Guide*.
#'
#' -   **Directory buckets** - For directory buckets, there are only two supported options for server-side encryption: server-side encryption with Amazon S3 managed keys (SSE-S3) (`AES256`) and server-side encryption with KMS keys (SSE-KMS) (`aws:kms`). We recommend that the bucket's default encryption uses the desired encryption configuration and you don't override the bucket default encryption in your [`create_session`][s3_create_session] requests or `PUT` object requests. Then, new objects are automatically encrypted with the desired encryption settings. For more information, see [Protecting data with server-side encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/) in the *Amazon S3 User Guide*. For more information about the encryption overriding behaviors in directory buckets, see [Specifying server-side encryption with KMS for new object uploads](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html).
#'
#'     In the Zonal endpoint API calls (except [`copy_object`][s3_copy_object] and [`upload_part_copy`][s3_upload_part_copy]) using the REST API, the encryption request headers must match the encryption settings that are specified in the [`create_session`][s3_create_session] request. You can't override the values of the encryption settings (`x-amz-server-side-encryption`, `x-amz-server-side-encryption-aws-kms-key-id`, `x-amz-server-side-encryption-context`, and `x-amz-server-side-encryption-bucket-key-enabled`) that are specified in the [`create_session`][s3_create_session] request. You don't need to explicitly specify these encryption settings values in Zonal endpoint API calls, and Amazon S3 will use the encryption settings values from the [`create_session`][s3_create_session] request to protect new objects in the directory bucket.
#'
#'     When you use the CLI or the Amazon Web Services SDKs, for [`create_session`][s3_create_session], the session token refreshes automatically to avoid service interruptions when a session expires. The CLI or the Amazon Web Services SDKs use the bucket's default encryption configuration for the [`create_session`][s3_create_session] request. It's not supported to override the encryption settings values in the [`create_session`][s3_create_session] request. So in the Zonal endpoint API calls (except [`copy_object`][s3_copy_object] and [`upload_part_copy`][s3_upload_part_copy]), the encryption request headers must match the default encryption configuration of the directory bucket.
#'
#' -   **S3 access points for Amazon FSx** - When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side encryption option is `aws:fsx`. All Amazon FSx file systems have encryption configured by default and are encrypted at rest. Data is automatically encrypted before being written to the file system, and automatically decrypted as it is read. These processes are handled transparently by Amazon FSx.
#' @param StorageClass By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD storage class provides high durability and high availability. Depending on performance needs, you can specify a different Storage Class. For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html) in the *Amazon S3 User Guide*.
#'
#' -   Directory buckets only support `EXPRESS_ONEZONE` (the S3 Express One Zone storage class) in Availability Zones and `ONEZONE_IA` (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.
#'
#' -   Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.
#' @param WebsiteRedirectLocation If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. For information about object metadata, see [Object Key and Metadata](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMetadata.html) in the *Amazon S3 User Guide*.
#'
#' In the following example, the request header sets the redirect to an object (anotherPage.html) in the same bucket:
#'
#' `x-amz-website-redirect-location: /anotherPage.html`
#'
#' In the following example, the request header sets the object redirect to another website:
#'
#' `x-amz-website-redirect-location: http://www.example.com/`
#'
#' For more information about website hosting in Amazon S3, see [Hosting Websites on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html?sc_channel=sm&sc_campaign=Docs&sc_publisher=LINKEDIN&sc_country=Global&sc_geo=GLOBAL&sc_outcome=awareness&trk=Docs_LINKEDIN&sc_content=Docs&linkId=71842622) and [How to Configure Website Page Redirects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/how-to-page-redirect.html) in the *Amazon S3 User Guide*.
#'
#' This functionality is not supported for directory buckets.
#' @param SSECustomerAlgorithm Specifies the algorithm to use when encrypting the object (for example, `AES256`).
#'
#' This functionality is not supported for directory buckets.
#' @param SSECustomerKey Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the `x-amz-server-side-encryption-customer-algorithm` header.
#'
#' This functionality is not supported for directory buckets.
#' @param SSECustomerKeyMD5 Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
#'
#' This functionality is not supported for directory buckets.
#' @param SSEKMSKeyId Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for object encryption. If the KMS key doesn't exist in the same account that's issuing the command, you must use the full Key ARN not the Key ID.
#'
#' **General purpose buckets** - If you specify `x-amz-server-side-encryption` with `aws:kms` or `aws:kms:dsse`, this header specifies the ID (Key ID, Key ARN, or Key Alias) of the KMS key to use. If you specify `x-amz-server-side-encryption:aws:kms` or `x-amz-server-side-encryption:aws:kms:dsse`, but do not provide `x-amz-server-side-encryption-aws-kms-key-id`, Amazon S3 uses the Amazon Web Services managed key (`aws/s3`) to protect the data.
#'
#' **Directory buckets** - To encrypt data using SSE-KMS, it's recommended to specify the `x-amz-server-side-encryption` header to `aws:kms`. Then, the `x-amz-server-side-encryption-aws-kms-key-id` header implicitly uses the bucket's default KMS customer managed key ID. If you want to explicitly set the ` x-amz-server-side-encryption-aws-kms-key-id` header, it must match the bucket's default customer managed key (using key ID or ARN, not alias). Your SSE-KMS configuration can only support 1 [customer managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk) per directory bucket's lifetime. The [Amazon Web Services managed key](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk) (`aws/s3`) isn't supported. Incorrect key specification results in an HTTP `400 Bad Request` error.
#' @param SSEKMSEncryptionContext Specifies the Amazon Web Services KMS Encryption Context as an additional encryption context to use for object encryption. The value of this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs. This value is stored as object metadata and automatically gets passed on to Amazon Web Services KMS for future [`get_object`][s3_get_object] operations on this object.
#'
#' **General purpose buckets** - This value must be explicitly added during [`copy_object`][s3_copy_object] operations if you want an additional encryption context for your object. For more information, see [Encryption context](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context) in the *Amazon S3 User Guide*.
#'
#' **Directory buckets** - You can optionally provide an explicit encryption context value. The value must match the default encryption context - the bucket Amazon Resource Name (ARN). An additional encryption context value is not supported.
#' @param BucketKeyEnabled Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption using Key Management Service (KMS) keys (SSE-KMS).
#'
#' **General purpose buckets** - Setting this header to `true` causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. Also, specifying this header with a PUT action doesn't affect bucket-level settings for S3 Bucket Key.
#'
#' **Directory buckets** - S3 Bucket Keys are always enabled for `GET` and `PUT` operations in a directory bucket and can’t be disabled. S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through [`copy_object`][s3_copy_object], [`upload_part_copy`][s3_upload_part_copy], [the Copy operation in Batch Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops.html), or [the import jobs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job.html). In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.
#' @param RequestPayer Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. If either the source or destination S3 bucket has Requester Pays enabled, the requester will pay for the corresponding charges. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ObjectsinRequesterPaysBuckets.html) in the *Amazon S3 User Guide*.
#'
#' This functionality is not supported for directory buckets.
#' @param Tagging The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For example, "Key1=Value1")
#'
#' This functionality is not supported for directory buckets.
#' @param ObjectLockMode The Object Lock mode that you want to apply to this object.
#'
#' This functionality is not supported for directory buckets.
#' @param ObjectLockRetainUntilDate The date and time when you want this object's Object Lock to expire. Must be formatted as a timestamp parameter.
#'
#' This functionality is not supported for directory buckets.
#' @param ObjectLockLegalHoldStatus Specifies whether a legal hold will be applied to this object. For more information about S3 Object Lock, see [Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html) in the *Amazon S3 User Guide*.
#'
#' This functionality is not supported for directory buckets.
#' @param ObjectLockEventHold Specifies the event hold status to apply to this object. Set to `ON` to enable or `OFF` to disable.
#'
#' This functionality is not supported for directory buckets.
#' @param ObjectLockEventHoldDurationDays Specifies the event hold duration in days to apply to this object. You cannot specify a duration in both days and years.
#'
#' This functionality is not supported for directory buckets.
#' @param ObjectLockEventHoldDurationYears Specifies the event hold duration in years to apply to this object. You cannot specify a duration in both days and years.
#'
#' This functionality is not supported for directory buckets.
#' @param ExpectedBucketOwner The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code `403 Forbidden` (access denied).
#' @param multipart_threshold Files of up to this many bytes (default 8 MiB) are
#' uploaded with a single `put_object` request.
#' @param chunksize Size in bytes of each part of a multipart upload (default
#' 8 MiB). It is raised when needed to respect the S3 limits of at least 5 MiB
#' per part and at most 10,000 parts.
#' @param max_concurrency Number of parts sent at the same time (default 10).
#' Memory use is roughly `max_concurrency * chunksize`. Use `1` to send parts
#' one at a time.
#' @param progress If `TRUE`, show a progress bar.
#'
#' @return Invisibly, the response of the final request.
#'
#' @section Request syntax:
#' ```
#' svc$upload_file(
#'   Filename = "string",
#'   Bucket = "string",
#'   Key = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc$upload_file(
#'   Filename = "big_file.csv",
#'   Bucket = "examplebucket",
#'   Key = "big_file.csv"
#' )
#'
#' # Larger parts, fewer simultaneous connections, with a progress bar
#' svc$upload_file(
#'   Filename = "big_file.csv",
#'   Bucket = "examplebucket",
#'   Key = "big_file.csv",
#'   ContentType = "text/csv",
#'   chunksize = 64 * 1024^2,
#'   max_concurrency = 4,
#'   progress = TRUE
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname s3_upload_file
s3_upload_file <- function(
  Filename,
  Bucket,
  Key,
  ACL = NULL,
  CacheControl = NULL,
  ContentDisposition = NULL,
  ContentEncoding = NULL,
  ContentLanguage = NULL,
  ContentType = NULL,
  ChecksumAlgorithm = NULL,
  Expires = NULL,
  IfMatch = NULL,
  IfNoneMatch = NULL,
  GrantFullControl = NULL,
  GrantRead = NULL,
  GrantReadACP = NULL,
  GrantWriteACP = NULL,
  Metadata = NULL,
  ServerSideEncryption = NULL,
  StorageClass = NULL,
  WebsiteRedirectLocation = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL,
  SSEKMSKeyId = NULL,
  SSEKMSEncryptionContext = NULL,
  BucketKeyEnabled = NULL,
  RequestPayer = NULL,
  Tagging = NULL,
  ObjectLockMode = NULL,
  ObjectLockRetainUntilDate = NULL,
  ObjectLockLegalHoldStatus = NULL,
  ObjectLockEventHold = NULL,
  ObjectLockEventHoldDurationDays = NULL,
  ObjectLockEventHoldDurationYears = NULL,
  ExpectedBucketOwner = NULL,
  multipart_threshold = 8 * 1024^2,
  chunksize = 8 * 1024^2,
  max_concurrency = 10,
  progress = FALSE
) {
  # Rebuild a client from this call's configuration, so every request made by
  # the transfer uses the same credentials, region and endpoint as `svc`.
  config <- get_config()
  svc <- .s3$operations
  svc$.internal <- list(config = config)
  multipart_upload_file(
    svc,
    Filename = Filename,
    Bucket = Bucket,
    Key = Key,
    ACL = ACL,
    CacheControl = CacheControl,
    ContentDisposition = ContentDisposition,
    ContentEncoding = ContentEncoding,
    ContentLanguage = ContentLanguage,
    ContentType = ContentType,
    ChecksumAlgorithm = ChecksumAlgorithm,
    Expires = Expires,
    IfMatch = IfMatch,
    IfNoneMatch = IfNoneMatch,
    GrantFullControl = GrantFullControl,
    GrantRead = GrantRead,
    GrantReadACP = GrantReadACP,
    GrantWriteACP = GrantWriteACP,
    Metadata = Metadata,
    ServerSideEncryption = ServerSideEncryption,
    StorageClass = StorageClass,
    WebsiteRedirectLocation = WebsiteRedirectLocation,
    SSECustomerAlgorithm = SSECustomerAlgorithm,
    SSECustomerKey = SSECustomerKey,
    SSECustomerKeyMD5 = SSECustomerKeyMD5,
    SSEKMSKeyId = SSEKMSKeyId,
    SSEKMSEncryptionContext = SSEKMSEncryptionContext,
    BucketKeyEnabled = BucketKeyEnabled,
    RequestPayer = RequestPayer,
    Tagging = Tagging,
    ObjectLockMode = ObjectLockMode,
    ObjectLockRetainUntilDate = ObjectLockRetainUntilDate,
    ObjectLockLegalHoldStatus = ObjectLockLegalHoldStatus,
    ObjectLockEventHold = ObjectLockEventHold,
    ObjectLockEventHoldDurationDays = ObjectLockEventHoldDurationDays,
    ObjectLockEventHoldDurationYears = ObjectLockEventHoldDurationYears,
    ExpectedBucketOwner = ExpectedBucketOwner,
    multipart_threshold = multipart_threshold,
    chunksize = chunksize,
    max_concurrency = max_concurrency,
    progress = progress
  )
}

.s3$operations$jamie
file <- s3_upload_file

#' @title Generate a presigned url given a client, its method, and arguments
#'
#' @usage
#' s3_generate_presigned_url(client_method, params=list(), expires_in=3600,
#' http_method = NULL)
#'
#' @param client_method (character): The client method to presign for
#' @param params (list): The parameters normally passed to ``client_method``.
#' @param expires_in (numeric): The number of seconds the presigned url is valid
#' for. By default it expires in an hour (3600 seconds)
#' @param  http_method (character) The http method to use on the generated url. By default,
#' the http method is whatever is used in the method's model.
#' @return The presigned url character
#'
#' @section Request syntax:
#' ```
#' svc$generate_signed_url(
#'   client_method = "string",
#'   params = "list",
#'   expires_in = "numeric",
#'   http_method = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # The following example generates a presigned URL that you
#' # can give to others so that they can retrieve an object from an S3 bucket.
#' svc$generate_signed_url(
#'   client_method = "get_object",
#'   Params = list(Bucket = "BUCKET_NAME", Key = "OBJECT_KEY"),
#'   ExpiresIn = 3600
#' )
#' }
#' @keywords internal
#' @rdname s3_generate_presigned_url
s3_generate_presigned_url <- function(
  client_method,
  params = list(),
  expires_in = 3600,
  http_method = NULL
) {
  stopifnot(
    "`client_method` must to be a character" = is.character(client_method),
    "`params` must be a list of parameters for client_method" = is.list(params),
    "`expires` must be numeric" = is.numeric(expires_in),
    "`expires_in` must be greater than 0" = expires_in > 0L,
    "`http_method` must be a character" = (is.character(http_method) ||
      is.null(http_method))
  )

  pkg_name <- "paws.storage"
  # get package private api objects: metadata, handlers, interfaces, etc.
  pkg_api <- "s3"
  .pkg_api <- paste0(".", pkg_api)
  tryCatch(
    {
      operation_fun <- get(
        sprintf("%s_%s", pkg_api, client_method),
        envir = getNamespace(pkg_name)
      )
    },
    error = function(err) {
      stop(sprintf("Client does not have method: %s", client_method), call. = FALSE)
    }
  )
  operation_body <- body(operation_fun)

  # create: new_operation from client_method
  op <- eval(operation_body[[2]][[3]], envir = getNamespace("paws.common"))

  original_params <- formals(operation_fun)
  original_params <- if (!is.null(original_params)) original_params else list()
  param_check <- setdiff(names(params), names(original_params))

  if (length(param_check) > 0) {
    stop(
      sprintf(
        "Invalid parameter(s) [`%s`] for client method %s",
        paste(param_check, collapse = "`, `"),
        client_method
      ),
      call. = FALSE
    )
  }

  # create: input from client_method
  kwargs <- as.list(modifyList(original_params, params))
  input <- do.call(
    get(.pkg_api, envir = getNamespace(pkg_name))[[sprintf("%s_input", client_method)]],
    kwargs
  )

  # create: output from client_method
  output <- get(.pkg_api, envir = getNamespace(pkg_name))[[sprintf(
    "%s_input",
    client_method
  )]]()

  # get config
  config <- get_config()

  # get service
  svc <- get(.pkg_api, envir = getNamespace(pkg_name))[["service"]](config, op)

  # create new request
  request <- new_request(svc, op, input, output)

  request$expire_time <- expires_in

  # build request
  request <- do.call(
    "build",
    list(request = request),
    envir = getNamespace("paws.common")
  )

  signer <- function(config, default) {
    switch(
      config[["signature_version"]],
      "v1" = "v1_sign_request_handler",
      "s3" = "s3_sign_request_handler",
      "s3v4" = "s3v4_sign_request_handler",
      "v4" = "v4_sign_request_handler",
      default
    )
  }

  # sign request
  # Default to SigV4 (not the legacy "v1" query-auth scheme), matching
  # boto3's default and because SigV4-only regions reject "v1" presigned
  # URLs outright. Set `signature_version = "v1"` to opt back into the
  # legacy scheme.
  request <- do.call(
    signer(config, "v4_sign_request_handler"),
    list(request = request),
    envir = getNamespace("paws.common")
  )

  if (!is.null(http_method)) {
    request$http_request$url$scheme <- http_method
  }

  return(do.call(
    "build_url",
    list(url = request$http_request$url),
    envir = getNamespace("paws.common")
  ))
}

.s3$operations$generate_presigned_url <- s3_generate_presigned_url

#' @title Generate the url and form fields used for a presigned s3 post
#'
#' @usage
#' s3_generate_presigned_post(Bucket, Key, Fields = list(),
#' Conditions = list(), ExpiresIn = 3600)
#'
#' @param Bucket (character): The name of the bucket to presign the post to.
#' Note that bucket related conditions should not be included in the
#' ``Conditions`` parameter.
#' @param Key (character): Key name, optionally add \code{${filename}} to the
#' end to attach the submitted filename. Note that key related conditions and
#' fields are filled out for you and should not be included in the
#' ``Fields`` or ``Conditions`` parameter.
#' @param Fields (list): A list of prefilled form fields to build on top of.
#' Note that if a particular element is included in ``Fields`` it will not
#' be automatically added to ``Conditions``; you must specify a condition
#' for it as well.
#' @param Conditions (list): A list of conditions to include in the policy.
#' Each element is either a named list for an exact-match condition, e.g.
#' \code{list(acl = "public-read")}, or a plain list for an array-style
#' condition, e.g. \code{list("starts-with", "$key", "uploads/")} or
#' \code{list("content-length-range", 1, 10485760)}.
#' @param ExpiresIn (numeric): The number of seconds the presigned post is
#' valid for. By default it expires in an hour (3600 seconds).
#' @return A list with two elements: ``url`` and ``fields``. ``url`` is the
#' url to post to. ``fields`` is a list of form fields and values to
#' include in the post.
#'
#' @section Request syntax:
#' ```
#' svc$generate_presigned_post(
#'   Bucket = "string",
#'   Key = "string",
#'   Fields = list(),
#'   Conditions = list(),
#'   ExpiresIn = 3600
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # The following example generates the url and form fields for a presigned
#' # post that you can give to others so that they can upload a file to an
#' # S3 bucket without needing AWS credentials.
#' svc$generate_presigned_post(
#'   Bucket = "BUCKET_NAME",
#'   Key = "OBJECT_KEY"
#' )
#' }
#' @keywords internal
#' @rdname s3_generate_presigned_post
s3_generate_presigned_post <- function(
  Bucket,
  Key,
  Fields = list(),
  Conditions = list(),
  ExpiresIn = 3600
) {
  stopifnot(
    "`Bucket` must be a character" = is.character(Bucket),
    "`Key` must be a character" = is.character(Key),
    "`Fields` must be a list of prefilled form fields" = is.list(Fields),
    "`Conditions` must be a list of conditions" = is.list(Conditions),
    "`ExpiresIn` must be numeric" = is.numeric(ExpiresIn),
    "`ExpiresIn` must be greater than 0" = ExpiresIn > 0L
  )

  pkg_name <- "paws.storage"
  pkg_api <- "s3"
  .pkg_api <- paste0(".", pkg_api)

  # Reuse CreateBucket's operation metadata for its url shape, the same
  # reason botocore does:
  # https://github.com/boto/botocore/blob/develop/botocore/signers.py#L945
  operation_fun <- get(
    sprintf("%s_create_bucket", pkg_api),
    envir = getNamespace(pkg_name)
  )
  operation_body <- body(operation_fun)
  op <- eval(operation_body[[2]][[3]], envir = getNamespace("paws.common"))

  input <- get(.pkg_api, envir = getNamespace(pkg_name))$create_bucket_input(
    Bucket = Bucket
  )
  output <- get(.pkg_api, envir = getNamespace(pkg_name))$create_bucket_output()
  config <- get_config()
  svc <- get(.pkg_api, envir = getNamespace(pkg_name))[["service"]](config, op)
  request <- new_request(svc, op, input, output)

  # resolve the bucket's url (dualstack, custom endpoints, path- vs.
  # virtual-hosted-style, ARN access points - same as every other S3 op)
  request <- do.call(
    "build",
    list(request = request),
    envir = getNamespace("paws.common")
  )

  region <- request$client_info$signing_region
  if (is.null(region) || region == "") {
    region <- request$config$region
  }
  service <- "s3"

  credentials <- do.call(
    "get_credentials",
    list(credentials = request$config$credentials, signing_name = service),
    envir = getNamespace("paws.common")
  )
  creds <- credentials$creds

  fields <- Fields
  conditions <- Conditions

  conditions[[length(conditions) + 1]] <- list(bucket = Bucket)

  # a key ending in ${filename} can only be constrained with a prefix match
  filename_suffix <- "${filename}"
  if (endsWith(Key, filename_suffix)) {
    prefix <- substr(Key, 1, nchar(Key) - nchar(filename_suffix))
    conditions[[length(conditions) + 1]] <- list("starts-with", "$key", prefix)
  } else {
    conditions[[length(conditions) + 1]] <- list(key = Key)
  }
  fields$key <- Key

  now_time <- Sys.time()
  timestamp <- format(now_time, tz = "UTC", format = "%Y%m%dT%H%M%SZ")
  short_date <- format(now_time, tz = "UTC", format = "%Y%m%d")

  credential_scope <- paste(short_date, region, service, "aws4_request", sep = "/")
  scope <- paste(creds$access_key_id, credential_scope, sep = "/")

  fields[["x-amz-algorithm"]] <- "AWS4-HMAC-SHA256"
  fields[["x-amz-credential"]] <- scope
  fields[["x-amz-date"]] <- timestamp

  conditions[[length(conditions) + 1]] <- list("x-amz-algorithm" = "AWS4-HMAC-SHA256")
  conditions[[length(conditions) + 1]] <- list("x-amz-credential" = scope)
  conditions[[length(conditions) + 1]] <- list("x-amz-date" = timestamp)

  if (!is.null(creds$session_token) && nzchar(creds$session_token)) {
    fields[["x-amz-security-token"]] <- creds$session_token
    conditions[[length(conditions) + 1]] <- list(
      "x-amz-security-token" = creds$session_token
    )
  }

  # base64-encoded policy document goes in the "policy" field
  expiration <- format(now_time + ExpiresIn, tz = "UTC", format = "%Y-%m-%dT%H:%M:%SZ")
  policy <- list(expiration = expiration, conditions = conditions)
  policy_json <- do.call(
    "json_build",
    list(object = policy),
    envir = getNamespace("paws.common")
  )
  policy_b64 <- do.call(
    "raw_to_base64",
    list(value = charToRaw(policy_json)),
    envir = getNamespace("paws.common")
  )
  fields$policy <- policy_b64

  # Sign the base64 policy string directly (not the usual canonical-request
  # string-to-sign) using the same SigV4 key-derivation chain as every other
  # paws signer.
  hmac_sign <- function(key, data) {
    do.call(
      "make_hmac",
      list(key = key, data = data),
      envir = getNamespace("paws.common")
    )
  }
  date_key <- hmac_sign(paste0("AWS4", creds$secret_access_key), short_date)
  region_key <- hmac_sign(date_key, region)
  service_key <- hmac_sign(region_key, service)
  signing_key <- hmac_sign(service_key, "aws4_request")
  signature_raw <- hmac_sign(signing_key, policy_b64)
  fields[["x-amz-signature"]] <- paste(signature_raw, collapse = "")

  url <- do.call(
    "build_url",
    list(url = request$http_request$url),
    envir = getNamespace("paws.common")
  )

  return(list(url = url, fields = fields))
}

.s3$operations$generate_presigned_post <- s3_generate_presigned_post
