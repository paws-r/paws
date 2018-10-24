library(aws.ec2)

#-------------------------------------------------------------------------------

# Test the example function.
(a <- describe_instances())

run_instances(
  ImageId = "ami-f973ab84",
  InstanceType = "t2.micro",
  MinCount = 1,
  MaxCount = 1,
  KeyName = "default",
  Placement = list(AvailabilityZone = "us-east-1a"),
  TagSpecifications = list(
    list(
      ResourceType = "instance",
      Tags = list(
        list(Key = "webserver", Value = "production"))
    ),
    list(
      ResourceType = "volume",
      Tags = list(
        list(Key = "cost-center", Value = "cc123")
      )
    )
  )
)
