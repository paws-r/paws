# paws.common 0.2.1

* Support session tokens for temporary security credentials in the 
  AWS_SESSION_TOKEN environment variable.
* Support custom configuration for credentials, region, and endpoint, as
  in `paws::s3(config = list(region = "us-east-2"))`.
  
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
