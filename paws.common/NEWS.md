# paws.common 0.7.4
* fix `transpose` to correctly parse lists with empty first elements (#791), thanks to @FMKerckhof for raising issue.
* support refreshable credentials for `sso` (#793)
* fix region redirect for aws s3 buckets (#788) thanks to @payam-delfi for identifying issue
* enrich error messages to align with boto3 error message template:
```r
# previous error message format
svc <- paws.storage::s3()
response <- svc$get_object(
  Bucket = "<bucket>",
  Key = "<key>",
  IfNoneMatch = "<etag>"
)
#> Error: SerializationError (HTTP 304). failed to read from query HTTP response body
```
```r
# new error message format
client <- paws.storage::s3()
resp <- client$get_object(
  Bucket = "<bucket>",
  Key = "<key>",
  IfNoneMatch = "<etag>"
)
#> Error: SerializationError (HTTP 304). An error occurred when calling the GetObject operation: Not Modified
```
* use s3 head_bucket operation as final resort when redirecting aws s3 call.

# paws.common 0.7.3
* fix `xml_parse` to correctly parse empty elements (#783) thanks to @stevepowell99 for raising issue

# paws.common 0.7.2
* improve performance of `restxml_unmarshal` by x3
* fix `rest_unmarshal_location_elements` only skip header if location is not found (#761)
* support global `endpoint_url` in config file and environmental variables (#764), thanks to @James-G-Hill for raising issue
* ensure custom endpoints aren't modified

# paws.common 0.7.1
* minor performance enhancements
* fix MIME type for AWS BedrockRuntime Client (#749), thanks to @alex23lemm for raising issue.
* export locate_credentials (#750), thanks to @tyner for raising request.
* convert `json_convert_string` to `cpp` for significant performance improvement (#754)
* convert components of `resolve_endpoint` to `cpp` to get a x2 performance enhancements

# paws.common 0.7.0
* support sse md5 (#718). Thanks to @odysseu for raising issue.
* add pagination StopOnSameToken option (#721) aligns with aws-sdk-js-v3 implementation (https://github.com/aws/aws-sdk-js-v3/releases/tag/v3.78.0). Thanks to @wlandau for raising error in `paginate`.
* tidy up internal function `jmespath_index`
* fix `aws-global` region when resolving endpoint (#730). Thanks to @atheriel for identifying the issue.
* fix default region for service s3 (#730). Thanks to @atheriel for identifying the issue.
* support `AWS_CONTAINER_CREDENTIALS_FULL_URI` environmental variable. This supports to services like sagemaker serverless endpoints (#737). Thanks to @ncullen93 for raising issue and testing.

# paws.common 0.6.4
* ensure xml build structure is correctly flattened (#597)
* fix cache failing to initialize on certain environments. Restrict scope of cached environment variables to only those starting with `AWS_*` (#706, @fh-mthomson)
* fix issue of sorting query mapping causing misalignment (#711). Thanks to @matthias-Q for raising issue.

# paws.common 0.6.3
* minor performance improvement for `read_ini`
* cache `read_ini` for improved performance
* cache unix os environment variables to improve performance on unix systems.
* support `web_identity_token_file` in AWS config file thanks to @liuquinlin for implementation.
* fix paginate functions failing to receive argument inputs when called within a function (#696). Thanks to @fh-mthomson for identifying issue.
* fix `NULL` method `as.POSIXct.default` for older versions of R (#698). Thanks to @gp-dev-pw for identifying issue
* fix `escape` function by removing protocol check (#701)

# paws.common 0.6.2
* fix how `read_ini` reads empty profiles from ini files
* fix is.atomic behavior for R v4.4+
* support service specific endpoints (#667). Thanks to @dpprdan for raising ticket and testing methods

# paws.common 0.6.1
* support nested content within ini files (#667) [Configuration and credential file settings](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html#cli-configure-files-s3)
* fix how nested structure are parsed from xml (#675)

# paws.common 0.6.0
* use known interface when parsing xml (@619) improving performance by 3-6x. Thanks to @mgirlich for raising, implementing initial method and testing.
* add expiration parameter to creds
* add signature_version to config (#645)
* add the ability to paginate paws methods (#30)
* overwrite file destination when writing to disk. This mimics python's boto3 sdk behaviour.
* add standard retry handler (#520). Thanks to @wlandau for testing.

# paws.common 0.5.8
* fix mismatch apparent method as.list.struct (#634)
* split timeout and connecttimeout in http call (#610). Thanks to @stuart-storypark for identifying issue, and @joakibo for extra insight and testing.
* add STS regional endpoint support (#631). Thanks to @daniepi for identifying issue, and @joakibo for implementing solution.
* fix windows root path by adding HOMEDRIVE environmental variable (#640). Thanks to @karen5780 for identifying issue and proposing solution.
* enhancements to service construction, export helper functions for parameter auto-complete (#421). Thanks to @hadley for suggestion and recommendation.

# paws.common 0.5.7
* skip network unit test on cran (#632)

# paws.common 0.5.6
* add logging to credentials (#599 thanks to @jonocarroll for contribution)
* display log output while code is still running (jupyter notebook issue)

# paws.common 0.5.5
* Support [SSO token provider configuration](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html#sso-configure-profile-token) (#583)

# paws.common 0.5.4
* add support for s3 `generate_presigned_url` (#572)

# paws.common 0.5.3

* Fixed bugs introduced in`xml_build` in previous version (#569).

# paws.common 0.5.2

* Fix Content-Md5 being modified by user
* Add logging system to help with debugging paws issues
* Automatically redirect S3 requests when they are initially made to the wrong region; previously these requests would fail
* Add support for `AssumeRoleWithWebIdentity` (#477, thanks to @fh-mthomson for contribution)
* Clarify that `AWS_CREDENTIAL_EXPIRATION` is optional when using `AWS_SESSION_TOKEN` (#549)
* Add support to IMDSv2 instances (#441, thanks to @jornfranke for contribution)

# paws.common 0.5.1

* Fix `xml_build` to allow empty lists from operations.

# paws.common 0.5.0

* Fix `build_query_string` by exiting safely when parameter is empty.
* Fix " " encoding (#519).
* Migrate url encoder to `cpp`, and dependency `Rcpp`.
* Support direct write to disk without sending data to R.

# paws.common 0.4.0

* Fix `xml_build` to allow empty characters from operations.
* Fix operations response for XML objects with elements at root.
* Improve performance of `escape` with new helper function 
  `paws_url_encoder` (1000x improvement).
* Improve performance of decoding URL's with new helper function
  `paws_url_decoder` (780x improvement).
* Support anonymous credentials.

# paws.common 0.3.17

* Fix operations that take empty arguments, e.g. `s3$get_bucket_website`.

# paws.common 0.3.16

* Fix single sign on (SSO) authentication on Windows.

# paws.common 0.3.15

* Provide the ability to use credentials obtained from AWS SSO login, i.e. 
  `aws sso login --profile my-profile`.
* Fix timestamps in the S3 API, e.g. `LastModified` from `get_object`.

# paws.common 0.3.14

* Skip tests for `issue` network request function to avoid CRAN check errors.

# paws.common 0.3.13

* Support `AWS_DEFAULT_REGION` in addition to `AWS_REGION`.
* Support calling SDK operations within `do.call`, including any user-supplied
  configuration to the service, e.g. a custom endpoint.

# paws.common 0.3.12

* Support S3 access points in all S3 operations that accept a bucket argument.
  Fixes #403.
* Fix certain API requests for S3 that were malformed due to mistakenly 
  including empty list elements, e.g. `s3_put_bucket_lifecycle_configuration`.
  Fixes #438.
* Add an option to immediately close all HTTP connections, instead of the 
  default behavior which will reuse connections for requests within 5 seconds.
  Using this feature allows you to switch credentials within 5 seconds without 
  getting your request rejected with a SignatureDoesNotMatch error.
  Example usage: `s3 <- paws::s3(config = list(close_connection = TRUE))`.
  Fixes #431.

# paws.common 0.3.11

* Fix parsing of shared configuration and credential files.

# paws.common 0.3.10

* Use path style URLs for S3 when using custom endpoints, (e.g. 
  localhost:9000/mybucket). This is useful when using software like MinIO. When
  not using custom endpoints, Paws will in general use "virtual hosted" URLs
  (e.g. mybucket.s3.amazonaws.com) except in special cases.

* Use path style URLs for S3 when using the new `s3_force_path_style` option
  when calling paws::s3(), e.g.:
  ```r
  s3 <- paws::s3(config = list(
      s3_force_path_style = TRUE
  ))
  ```

* Add support and a default value for `timeout`, how long to wait in seconds
  for an acknowledgement of an HTTP request before failing. Default = 60.
  This is user configurable by adding arguments to the service call, e.g.
  ```r
  svc <- paws::svc(config = list(timeout = 10))
  ```

* Don't skip lower case field names for REST location elements. For example,
  `lexmodelbuildingservice$create_bot_version(name, checksum)` previously
  failed due incorrectly skipping the `name` field.

# paws.common 0.3.9

* Support multifactor authentication, using the `mfa_serial` shared
  configuration file item.
* Support `AWS_CONFIG_FILE`, `AWS_SHARED_CREDENTIALS_FILE`, 
  `AWS_CREDENTIAL_EXPIRATION`, and `AWS_EC2_METADATA_DISABLED` environment
  variables. See `https://github.com/paws-r/paws/blob/main/docs/credentials.md`
  for explanations of all settings.
* Cache credentials in each service object.

# paws.common 0.3.8

* Use no timeout by default when making HTTP requests. The previous release set
  the default timeout to 10 seconds, which prevented users from downloading
  large files.

# paws.common 0.3.7

* `s3$put_object` will now read in files when given file paths for the `Body`
  parameter. Previously it would accept only blobs, e.g. from `readBin`.

# paws.common 0.3.6

* Add the error response and HTTP status code to the condition object, in 
  addition to having it be in the condition object's attributes. This is in 
  response to a request in issue #329.
* Make errors be of class `paws_error` in addition to their other classes, e.g. 
  `http_400`, `error`, `condition`.
* Correctly unmarshal EC2 API error responses.

# paws.common 0.3.5

* Support getting AWS credentials from IAM roles using shared configuration
  file items `role_arn`, `credential_source`, and `source_profile`.
* Support getting AWS credentials from running a process using shared
  configuration file item `credential_process`.
* Fix decoding of errors from the EC2 API.
* Fix support for newlines in arguments in S3 and other REST XML protocol APIs.

# paws.common 0.3.4

* Support S3 object keys with spaces.
* Support writing empty S3 objects.
* Support integers larger than 2^31 - 1 in API responses, e.g. S3 object size,
  by using 64-bit `numeric` objects rather than 32-bit `integer` objects.

# paws.common 0.3.3

* Decode base64-encoded blobs to raw vectors. Previously, Paws decoded them to
  UTF-8 inappropriately, which would fail for any data other than text.
* In some cases, httr/curl do not decompress the response body. In these cases,
  check whether it looks compressed and try decompressing it.

# paws.common 0.3.2

* Support the S3 operation SelectObjectContent in `s3$select_object_content`.
  This operation allows you to query a data file in S3 using SQL.
* Correctly decode Unicode strings in API responses received from AWS, such as
  `"Me voy a casa mañana."`.

# paws.common 0.3.1

* Read in session tokens from shared credential files.
* Fix handling of dates when used as arguments to CloudWatch and other APIs.
  Previously the operation would submit the date in an inappropriate format.
* Fix handling of profiles when specified for a specific service, e.g.
  `paws::svc(config = list(credentials = list(profile = "my-profile")))`.
  Previously the profile was not used to get credentials.
* Fix handling of operations that return nothing -- return an empty object
  rather than failing.

# paws.common 0.3.0

* Add HTTP status codes to the error response when an operation fails, along
  with any other information returned by AWS about the error.
* Add support for S3 operation GetBucketLocation, which needs special handling.
* Fix how paws.common provides request handlers to specific services (e.g. S3)
  so that fixes to handlers don't require re-installing any package other than
  paws.common.

# paws.common 0.2.6

* Fix handling of nested inputs and outputs for services like DynamoDB.
* Fix handling of output elements that are delivered in HTTP headers for 
  REST-based services like S3.

# paws.common 0.2.5

* Add support for RDS IAM authentication.

# paws.common 0.2.4

* Add support for custom configuration per service, e.g.
  `svc <- paws::svc(config = list(region = "us-west-1"))`.

# paws.common 0.2.3

* Fix support for non-default profiles in shared config files.

# paws.common 0.2.2

* Escape URIs, e.g. when uploading files to S3 with non-alphanumeric keys.
* Fix XML request handling (e.g. used by S3) to correctly support requests
  with skipped optional arguments.

# paws.common 0.2.1

* Support session tokens stored in the AWS_SESSION_TOKEN environment variable.

# paws.common 0.2.0

* Use the global signing region (us-east-1) for services with global endpoints,
  e.g. IAM. This requires an updated list of endpoints in the arguments to
  `new_service`, namely each endpoint should look like
  `list(endpoint = "foo", global = FALSE)`.

# paws.common 0.1.2

* Fix the EC2 IAM role credential provider.

# paws.common 0.1.1

* Add service customizations into paws.common to work with services like
DynamoDB and S3 that require non-standard request handling.

# paws.common 0.1.0

Initial release.
