# paws 0.1.10

* Update Paws with the latest AWS features.
* Remove some extra backslashes mistakenly included in documentation.

# paws 0.1.9

* Support the S3 operation `SelectObjectContent` in `s3$select_object_content`.
  This operation allows you to query a data file in S3 using SQL.
* Correctly decode Unicode strings in API responses received from AWS, such as
  "Me voy a casa mañana.".
* Decode base64-encoded blobs to raw vectors. Previously, Paws decoded them to
  UTF-8 inappropriately, which would fail for any data other than text.
* In some cases, httr/curl do not decompress the response body. In these cases,
  check whether it looks compressed and try decompressing it.
* Update Paws with the latest AWS services and features.

# paws 0.1.8

* Fix a small number of operations that require additional metadata sent to AWS,
  for example S3 operation `select_object_content`.

# paws 0.1.7

* Add HTTP status codes to the error response when an operation fails, along
  with any other information returned by AWS about the error.
* Add support for S3 operation `GetBucketLocation`, which needs special
  handling.

# paws 0.1.6

* Support RDS IAM authentication in `rds$build_auth_token`.
* Check for a container IAM role in the AWS credential chain before checking
  for an instance IAM role.

# paws 0.1.5

* Support per-service configuration of credentials, endpoint, and region,
  e.g. `svc <- paws::svc(config = list(region = "us-east-1"))`.

# paws 0.1.4

* Fix services like IAM and CloudFront which have global endpoints. Previously
  they did not work outside of `us-east-1` due to a bug.

# paws 0.1.3

* Update Paws with the latest AWS services and features.

# paws 0.1.1

* Add support for more AWS services to CRAN.

# paws 0.1.0

* Initial version.
