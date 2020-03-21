# paws 0.1.7

* When an operation fails, it will now return additional information about the
  error, and the error will have a class according to its HTTP status code.

# paws 0.1.6

* Support RDS IAM authentication in `rds$build_auth_token`.
* Check for a container IAM role in the AWS credential chain before checking
  for an instance IAM role.

# paws 0.1.5

* Support per-service configuration of credentials, endpoint, and region, e.g.
  `svc <- paws::svc(config = list(region = "us-east-1"))`.

# paws 0.1.4

* Fix services like IAM and CloudFront which have global endpoints. Previously
  they did not work outside of us-east-1 due to a bug.

# paws 0.1.3

* Update Paws with the latest AWS services and features.

# paws 0.1.2

* Add more services to CRAN Paws.

# paws 0.1.1

* Update description for CRAN.

# paws 0.1.0

* Initial release.
