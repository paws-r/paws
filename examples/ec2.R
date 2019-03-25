# EC2 examples

ec2 <- paws::ec2()

# Start an EC2 instance.
resp <- ec2$run_instances(
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

# List our instances.
instances <- ec2$describe_instances()

# Terminate the instance we previously started.
ec2$terminate_instances(
  InstanceIds = resp$Instances[[1]]$InstanceId
)
