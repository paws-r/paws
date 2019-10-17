# paws 0.1.5

* Support custom configuration per service, e.g. 
  `ec2 <- paws::ec2(config = list(region = "us-west-1"))`.

# paws 0.1.4

* Support IAM and other services with global endpoints, regardless which region
  is currently configured to be used.
