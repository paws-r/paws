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
