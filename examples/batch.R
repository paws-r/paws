# Batch examples

# To set up the Batch compute environment, get security group and subnet info
# for the default VPC.
default_vpc <- paws.ec2::describe_vpcs(
  Filters = "isDefault=true"
)$Vpcs[[1]]

security_group <- paws.ec2::describe_security_groups(
  Filters = sprintf("vpc-id=%s", default_vpc$VpcId),
  GroupNames = "default"
)$SecurityGroups[[1]]

subnets <- paws.ec2::describe_subnets(
  Filters = sprintf("vpc-id=%s", default_vpc$VpcId)
)$Subnets

# You will need to set up the Batch service role and provide your AWS account
# account number here.
service_role <- sprintf(
  "arn:aws:iam::%s:role/service-role/AWSBatchServiceRole",
  account_id = "1234567890123"
)

# Set up a compute environment: the resources on which Batch jobs will run.
paws.batch::create_compute_environment(
  type = "MANAGED",
  computeEnvironmentName = "TestComputeEnvironment",
  computeResources = list(
    type = "EC2",
    desiredvCpus = 1L,
    ec2KeyPair = "default",
    instanceRole = "ecsInstanceRole",
    instanceTypes = "optimal",
    maxvCpus = 128L,
    minvCpus = 0L,
    securityGroupIds = security_group$GroupId,
    subnets = sapply(subnets, function(x) x$SubnetId)
  ),
  serviceRole = service_role,
  state = "ENABLED"
)

# Set up a job queue for the compute environment.
paws.batch::create_job_queue(
  computeEnvironmentOrder = list(
    list(
      computeEnvironment = "TestComputeEnvironment",
      order = 1L
    )
  ),
  jobQueueName = "TestJobQueue",
  priority = 1L,
  state = "ENABLED"
)

# Add an example job definition -- sleep 10 seconds.
job_def <- paws.batch::register_job_definition(
  type = "container",
  containerProperties = list(
    command = list(
      "sleep",
      "10"
    ),
    image = "busybox",
    memory = 128L,
    vcpus = 1L
  ),
  jobDefinitionName = "sleep10"
)

# Submit a job.
paws.batch::submit_job(
  jobDefinition = "sleep10",
  jobName = "Example",
  jobQueue = "TestJobQueue"
)

# List the submitted job(s).
paws.batch::list_jobs(
  jobQueue = "TestJobQueue",
  jobStatus = "SUBMITTED"
)

# Clean up.
paws.batch::deregister_job_definition(jobDefinition = job_def$jobDefinitionArn)
paws.batch::update_job_queue("TestJobQueue", state = "DISABLED")
paws.batch::delete_job_queue("TestJobQueue")
Sys.sleep(30)
paws.batch::update_compute_environment("TestComputeEnvironment", state = "DISABLED")
paws.batch::delete_compute_environment(computeEnvironment = "TestComputeEnvironment")
