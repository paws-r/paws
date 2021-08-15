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
