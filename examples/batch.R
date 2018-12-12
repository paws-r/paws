# Batch examples

# Note: In some cases, you'll need to wait for a step to complete in your AWS
# account before you can successfully run the next.

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

#-------------------------------------------------------------------------------

# Set up an IAM role for the Lambda function.

role_name <- "TestBatchServiceRole"
policy_arn <- "arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole"

role_policy <- list(
  Version = "2012-10-17",
  Statement = list(
    list(
      Effect = "Allow",
      Principal = list(
        Service = "batch.amazonaws.com"
      ),
      Action = "sts:AssumeRole"
    )
  )
)

iam <- paws.iam::create_role(
  RoleName = role_name,
  AssumeRolePolicyDocument = jsonlite::toJSON(role_policy, auto_unbox = TRUE)
)

paws.iam::attach_role_policy(
  RoleName = role_name,
  PolicyArn = policy_arn
)

#-------------------------------------------------------------------------------

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
  serviceRole = iam$Role$Arn,
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

# Clean up. You may have to wait for some steps to complete.
paws.batch::deregister_job_definition(jobDefinition = job_def$jobDefinitionArn)
paws.batch::update_job_queue("TestJobQueue", state = "DISABLED")
paws.batch::delete_job_queue("TestJobQueue")
paws.batch::update_compute_environment("TestComputeEnvironment", state = "DISABLED")
paws.batch::delete_compute_environment(computeEnvironment = "TestComputeEnvironment")
paws.iam::detach_role_policy(role_name, policy_arn)
paws.iam::delete_role(role_name)
