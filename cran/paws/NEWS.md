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