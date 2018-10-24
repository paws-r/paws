assign_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "AssignInstanceRequest", type = "structure")
    return(populate(args, shape))
}

assign_instance_output <- function () 
{
    return(list())
}

assign_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AssignVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

assign_volume_output <- function () 
{
    return(list())
}

associate_elastic_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AssociateElasticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_elastic_ip_output <- function () 
{
    return(list())
}

attach_elastic_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticLoadBalancerName = structure(logical(0), 
        shape = "String", type = "string"), LayerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AttachElasticLoadBalancerRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_elastic_load_balancer_output <- function () 
{
    return(list())
}

clone_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceStackId = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Region = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StackAttributes", 
        type = "map"), ServiceRoleArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultInstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultOs = structure(logical(0), 
        shape = "String", type = "string"), HostnameTheme = structure(logical(0), 
        shape = "String", type = "string"), DefaultAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DefaultSubnetId = structure(logical(0), 
        shape = "String", type = "string"), CustomJson = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationManager = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "StackConfigurationManager", 
        type = "structure"), ChefConfiguration = structure(list(ManageBerkshelf = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), BerkshelfVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "ChefConfiguration", 
        type = "structure"), UseCustomCookbooks = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), UseOpsworksSecurityGroups = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), CustomCookbooksSource = structure(list(Type = structure(logical(0), 
        shape = "SourceType", type = "string"), Url = structure(logical(0), 
        shape = "String", type = "string"), Username = structure(logical(0), 
        shape = "String", type = "string"), Password = structure(logical(0), 
        shape = "String", type = "string"), SshKey = structure(logical(0), 
        shape = "String", type = "string"), Revision = structure(logical(0), 
        shape = "String", type = "string")), shape = "Source", 
        type = "structure"), DefaultSshKeyName = structure(logical(0), 
        shape = "String", type = "string"), ClonePermissions = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), CloneAppIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), DefaultRootDeviceType = structure(logical(0), 
        shape = "RootDeviceType", type = "string"), AgentVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "CloneStackRequest", 
        type = "structure")
    return(populate(args, shape))
}

clone_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "CloneStackResult", type = "structure")
    return(populate(args, shape))
}

create_app_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), Shortname = structure(logical(0), shape = "String", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DataSources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "String", type = "string"), Arn = structure(logical(0), 
        shape = "String", type = "string"), DatabaseName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DataSource", 
        type = "structure")), shape = "DataSources", type = "list"), 
        Type = structure(logical(0), shape = "AppType", type = "string"), 
        AppSource = structure(list(Type = structure(logical(0), 
            shape = "SourceType", type = "string"), Url = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "String", type = "string"), SshKey = structure(logical(0), 
            shape = "String", type = "string"), Revision = structure(logical(0), 
            shape = "String", type = "string")), shape = "Source", 
            type = "structure"), Domains = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), EnableSsl = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        SslConfiguration = structure(list(Certificate = structure(logical(0), 
            shape = "String", type = "string"), PrivateKey = structure(logical(0), 
            shape = "String", type = "string"), Chain = structure(logical(0), 
            shape = "String", type = "string")), shape = "SslConfiguration", 
            type = "structure"), Attributes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AppAttributes", 
            type = "map"), Environment = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string"), Secure = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE)), 
            shape = "EnvironmentVariable", type = "structure")), 
            shape = "EnvironmentVariables", type = "list")), 
        shape = "CreateAppRequest", type = "structure")
    return(populate(args, shape))
}

create_app_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AppId = structure(logical(0), shape = "String", 
        type = "string")), shape = "CreateAppResult", type = "structure")
    return(populate(args, shape))
}

create_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), AppId = structure(logical(0), shape = "String", 
        type = "string"), InstanceIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), Command = structure(list(Name = structure(logical(0), 
        shape = "DeploymentCommandName", type = "string"), Args = structure(list(structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DeploymentCommandArgs", type = "map")), 
        shape = "DeploymentCommand", type = "structure"), Comment = structure(logical(0), 
        shape = "String", type = "string"), CustomJson = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateDeploymentRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateDeploymentResult", 
        type = "structure")
    return(populate(args, shape))
}

create_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), AutoScalingType = structure(logical(0), 
        shape = "AutoScalingType", type = "string"), Hostname = structure(logical(0), 
        shape = "String", type = "string"), Os = structure(logical(0), 
        shape = "String", type = "string"), AmiId = structure(logical(0), 
        shape = "String", type = "string"), SshKeyName = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VirtualizationType = structure(logical(0), 
        shape = "String", type = "string"), SubnetId = structure(logical(0), 
        shape = "String", type = "string"), Architecture = structure(logical(0), 
        shape = "Architecture", type = "string"), RootDeviceType = structure(logical(0), 
        shape = "RootDeviceType", type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", type = "string"), NoDevice = structure(logical(0), 
        shape = "String", type = "string"), VirtualName = structure(logical(0), 
        shape = "String", type = "string"), Ebs = structure(list(SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), VolumeSize = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), VolumeType = structure(logical(0), 
        shape = "VolumeType", type = "string"), DeleteOnTermination = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "EbsBlockDevice", 
        type = "structure")), shape = "BlockDeviceMapping", type = "structure")), 
        shape = "BlockDeviceMappings", type = "list"), InstallUpdatesOnBoot = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), EbsOptimized = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), AgentVersion = structure(logical(0), 
        shape = "String", type = "string"), Tenancy = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

create_layer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), Type = structure(logical(0), shape = "LayerType", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string"), Shortname = structure(logical(0), shape = "String", 
        type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LayerAttributes", 
        type = "map"), CloudWatchLogsConfiguration = structure(list(Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), LogStreams = structure(list(structure(list(LogGroupName = structure(logical(0), 
        shape = "String", type = "string"), DatetimeFormat = structure(logical(0), 
        shape = "String", type = "string"), TimeZone = structure(logical(0), 
        shape = "CloudWatchLogsTimeZone", type = "string"), File = structure(logical(0), 
        shape = "String", type = "string"), FileFingerprintLines = structure(logical(0), 
        shape = "String", type = "string"), MultiLineStartPattern = structure(logical(0), 
        shape = "String", type = "string"), InitialPosition = structure(logical(0), 
        shape = "CloudWatchLogsInitialPosition", type = "string"), 
        Encoding = structure(logical(0), shape = "CloudWatchLogsEncoding", 
            type = "string"), BufferDuration = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
        BatchCount = structure(logical(0), shape = "Integer", 
            type = "integer", box = TRUE), BatchSize = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE)), 
        shape = "CloudWatchLogsLogStream", type = "structure")), 
        shape = "CloudWatchLogsLogStreams", type = "list")), 
        shape = "CloudWatchLogsConfiguration", type = "structure"), 
        CustomInstanceProfileArn = structure(logical(0), shape = "String", 
            type = "string"), CustomJson = structure(logical(0), 
            shape = "String", type = "string"), CustomSecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Packages = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), VolumeConfigurations = structure(list(structure(list(MountPoint = structure(logical(0), 
            shape = "String", type = "string"), RaidLevel = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            NumberOfDisks = structure(logical(0), shape = "Integer", 
                type = "integer", box = TRUE), Size = structure(logical(0), 
                shape = "Integer", type = "integer", box = TRUE), 
            VolumeType = structure(logical(0), shape = "String", 
                type = "string"), Iops = structure(logical(0), 
                shape = "Integer", type = "integer", box = TRUE), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", box = TRUE)), shape = "VolumeConfiguration", 
            type = "structure")), shape = "VolumeConfigurations", 
            type = "list"), EnableAutoHealing = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        AutoAssignElasticIps = structure(logical(0), shape = "Boolean", 
            type = "boolean", box = TRUE), AutoAssignPublicIps = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        CustomRecipes = structure(list(Setup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Configure = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Deploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Undeploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Shutdown = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list")), shape = "Recipes", type = "structure"), 
        InstallUpdatesOnBoot = structure(logical(0), shape = "Boolean", 
            type = "boolean", box = TRUE), UseEbsOptimizedInstances = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        LifecycleEventConfiguration = structure(list(Shutdown = structure(list(ExecutionTimeout = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            DelayUntilElbConnectionsDrained = structure(logical(0), 
                shape = "Boolean", type = "boolean", box = TRUE)), 
            shape = "ShutdownEventConfiguration", type = "structure")), 
            shape = "LifecycleEventConfiguration", type = "structure")), 
        shape = "CreateLayerRequest", type = "structure")
    return(populate(args, shape))
}

create_layer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerId = structure(logical(0), shape = "String", 
        type = "string")), shape = "CreateLayerResult", type = "structure")
    return(populate(args, shape))
}

create_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), Region = structure(logical(0), shape = "String", 
        type = "string"), VpcId = structure(logical(0), shape = "String", 
        type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StackAttributes", 
        type = "map"), ServiceRoleArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultInstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultOs = structure(logical(0), 
        shape = "String", type = "string"), HostnameTheme = structure(logical(0), 
        shape = "String", type = "string"), DefaultAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DefaultSubnetId = structure(logical(0), 
        shape = "String", type = "string"), CustomJson = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationManager = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "StackConfigurationManager", 
        type = "structure"), ChefConfiguration = structure(list(ManageBerkshelf = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), BerkshelfVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "ChefConfiguration", 
        type = "structure"), UseCustomCookbooks = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), UseOpsworksSecurityGroups = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), CustomCookbooksSource = structure(list(Type = structure(logical(0), 
        shape = "SourceType", type = "string"), Url = structure(logical(0), 
        shape = "String", type = "string"), Username = structure(logical(0), 
        shape = "String", type = "string"), Password = structure(logical(0), 
        shape = "String", type = "string"), SshKey = structure(logical(0), 
        shape = "String", type = "string"), Revision = structure(logical(0), 
        shape = "String", type = "string")), shape = "Source", 
        type = "structure"), DefaultSshKeyName = structure(logical(0), 
        shape = "String", type = "string"), DefaultRootDeviceType = structure(logical(0), 
        shape = "RootDeviceType", type = "string"), AgentVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateStackRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_stack_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "CreateStackResult", type = "structure")
    return(populate(args, shape))
}

create_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), SshUsername = structure(logical(0), 
        shape = "String", type = "string"), SshPublicKey = structure(logical(0), 
        shape = "String", type = "string"), AllowSelfManagement = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "CreateUserProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_user_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateUserProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_app_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AppId = structure(logical(0), shape = "String", 
        type = "string")), shape = "DeleteAppRequest", type = "structure")
    return(populate(args, shape))
}

delete_app_output <- function () 
{
    return(list())
}

delete_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), DeleteElasticIp = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), DeleteVolumes = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "DeleteInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_output <- function () 
{
    return(list())
}

delete_layer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerId = structure(logical(0), shape = "String", 
        type = "string")), shape = "DeleteLayerRequest", type = "structure")
    return(populate(args, shape))
}

delete_layer_output <- function () 
{
    return(list())
}

delete_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "DeleteStackRequest", type = "structure")
    return(populate(args, shape))
}

delete_stack_output <- function () 
{
    return(list())
}

delete_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteUserProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_user_profile_output <- function () 
{
    return(list())
}

deregister_ecs_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EcsClusterArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeregisterEcsClusterRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_ecs_cluster_output <- function () 
{
    return(list())
}

deregister_elastic_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIp = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeregisterElasticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_elastic_ip_output <- function () 
{
    return(list())
}

deregister_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeregisterInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_instance_output <- function () 
{
    return(list())
}

deregister_rds_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RdsDbInstanceArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeregisterRdsDbInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_rds_db_instance_output <- function () 
{
    return(list())
}

deregister_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeregisterVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_volume_output <- function () 
{
    return(list())
}

describe_agent_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), ConfigurationManager = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "StackConfigurationManager", 
        type = "structure")), shape = "DescribeAgentVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_agent_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentVersions = structure(list(structure(list(Version = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationManager = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "StackConfigurationManager", 
        type = "structure")), shape = "AgentVersion", type = "structure")), 
        shape = "AgentVersions", type = "list")), shape = "DescribeAgentVersionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_apps_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), AppIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeAppsRequest", type = "structure")
    return(populate(args, shape))
}

describe_apps_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Apps = structure(list(structure(list(AppId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), Shortname = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DataSources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "String", type = "string"), Arn = structure(logical(0), 
        shape = "String", type = "string"), DatabaseName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DataSource", 
        type = "structure")), shape = "DataSources", type = "list"), 
        Type = structure(logical(0), shape = "AppType", type = "string"), 
        AppSource = structure(list(Type = structure(logical(0), 
            shape = "SourceType", type = "string"), Url = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "String", type = "string"), SshKey = structure(logical(0), 
            shape = "String", type = "string"), Revision = structure(logical(0), 
            shape = "String", type = "string")), shape = "Source", 
            type = "structure"), Domains = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), EnableSsl = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        SslConfiguration = structure(list(Certificate = structure(logical(0), 
            shape = "String", type = "string"), PrivateKey = structure(logical(0), 
            shape = "String", type = "string"), Chain = structure(logical(0), 
            shape = "String", type = "string")), shape = "SslConfiguration", 
            type = "structure"), Attributes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AppAttributes", 
            type = "map"), CreatedAt = structure(logical(0), 
            shape = "String", type = "string"), Environment = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string"), Secure = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE)), 
            shape = "EnvironmentVariable", type = "structure")), 
            shape = "EnvironmentVariables", type = "list")), 
        shape = "App", type = "structure")), shape = "Apps", 
        type = "list")), shape = "DescribeAppsResult", type = "structure")
    return(populate(args, shape))
}

describe_commands_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), CommandIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeCommandsRequest", type = "structure")
    return(populate(args, shape))
}

describe_commands_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Commands = structure(list(structure(list(CommandId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), DeploymentId = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), AcknowledgedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), CompletedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), ExitCode = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), LogUrl = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string")), shape = "Command", 
        type = "structure")), shape = "Commands", type = "list")), 
        shape = "DescribeCommandsResult", type = "structure")
    return(populate(args, shape))
}

describe_deployments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), AppId = structure(logical(0), shape = "String", 
        type = "string"), DeploymentIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeDeploymentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_deployments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Deployments = structure(list(structure(list(DeploymentId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), AppId = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), CompletedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), Comment = structure(logical(0), 
        shape = "String", type = "string"), Command = structure(list(Name = structure(logical(0), 
        shape = "DeploymentCommandName", type = "string"), Args = structure(list(structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DeploymentCommandArgs", type = "map")), 
        shape = "DeploymentCommand", type = "structure"), Status = structure(logical(0), 
        shape = "String", type = "string"), CustomJson = structure(logical(0), 
        shape = "String", type = "string"), InstanceIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "Deployment", type = "structure")), 
        shape = "Deployments", type = "list")), shape = "DescribeDeploymentsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_ecs_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EcsClusterArns = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), StackId = structure(logical(0), shape = "String", 
        type = "string"), NextToken = structure(logical(0), shape = "String", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE)), shape = "DescribeEcsClustersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_ecs_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EcsClusters = structure(list(structure(list(EcsClusterArn = structure(logical(0), 
        shape = "String", type = "string"), EcsClusterName = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), RegisteredAt = structure(logical(0), 
        shape = "DateTime", type = "string")), shape = "EcsCluster", 
        type = "structure")), shape = "EcsClusters", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "DescribeEcsClustersResult", type = "structure")
    return(populate(args, shape))
}

describe_elastic_ips_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), Ips = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeElasticIpsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_elastic_ips_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIps = structure(list(structure(list(Ip = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Domain = structure(logical(0), 
        shape = "String", type = "string"), Region = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ElasticIp", 
        type = "structure")), shape = "ElasticIps", type = "list")), 
        shape = "DescribeElasticIpsResult", type = "structure")
    return(populate(args, shape))
}

describe_elastic_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeElasticLoadBalancersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_elastic_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticLoadBalancers = structure(list(structure(list(ElasticLoadBalancerName = structure(logical(0), 
        shape = "String", type = "string"), Region = structure(logical(0), 
        shape = "String", type = "string"), DnsName = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), LayerId = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), Ec2InstanceIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "ElasticLoadBalancer", type = "structure")), 
        shape = "ElasticLoadBalancers", type = "list")), shape = "DescribeElasticLoadBalancersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), LayerId = structure(logical(0), shape = "String", 
        type = "string"), InstanceIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(AgentVersion = structure(logical(0), 
        shape = "String", type = "string"), AmiId = structure(logical(0), 
        shape = "String", type = "string"), Architecture = structure(logical(0), 
        shape = "Architecture", type = "string"), Arn = structure(logical(0), 
        shape = "String", type = "string"), AutoScalingType = structure(logical(0), 
        shape = "AutoScalingType", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", type = "string"), NoDevice = structure(logical(0), 
        shape = "String", type = "string"), VirtualName = structure(logical(0), 
        shape = "String", type = "string"), Ebs = structure(list(SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), VolumeSize = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), VolumeType = structure(logical(0), 
        shape = "VolumeType", type = "string"), DeleteOnTermination = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "EbsBlockDevice", 
        type = "structure")), shape = "BlockDeviceMapping", type = "structure")), 
        shape = "BlockDeviceMappings", type = "list"), CreatedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), EbsOptimized = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), Ec2InstanceId = structure(logical(0), 
        shape = "String", type = "string"), EcsClusterArn = structure(logical(0), 
        shape = "String", type = "string"), EcsContainerInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), Hostname = structure(logical(0), 
        shape = "String", type = "string"), InfrastructureClass = structure(logical(0), 
        shape = "String", type = "string"), InstallUpdatesOnBoot = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), InstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), LastServiceErrorId = structure(logical(0), 
        shape = "String", type = "string"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), Os = structure(logical(0), shape = "String", 
        type = "string"), Platform = structure(logical(0), shape = "String", 
        type = "string"), PrivateDns = structure(logical(0), 
        shape = "String", type = "string"), PrivateIp = structure(logical(0), 
        shape = "String", type = "string"), PublicDns = structure(logical(0), 
        shape = "String", type = "string"), PublicIp = structure(logical(0), 
        shape = "String", type = "string"), RegisteredBy = structure(logical(0), 
        shape = "String", type = "string"), ReportedAgentVersion = structure(logical(0), 
        shape = "String", type = "string"), ReportedOs = structure(list(Family = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "ReportedOs", 
        type = "structure"), RootDeviceType = structure(logical(0), 
        shape = "RootDeviceType", type = "string"), RootDeviceVolumeId = structure(logical(0), 
        shape = "String", type = "string"), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), SshHostDsaKeyFingerprint = structure(logical(0), 
        shape = "String", type = "string"), SshHostRsaKeyFingerprint = structure(logical(0), 
        shape = "String", type = "string"), SshKeyName = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubnetId = structure(logical(0), 
        shape = "String", type = "string"), Tenancy = structure(logical(0), 
        shape = "String", type = "string"), VirtualizationType = structure(logical(0), 
        shape = "VirtualizationType", type = "string")), shape = "Instance", 
        type = "structure")), shape = "Instances", type = "list")), 
        shape = "DescribeInstancesResult", type = "structure")
    return(populate(args, shape))
}

describe_layers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeLayersRequest", type = "structure")
    return(populate(args, shape))
}

describe_layers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Layers = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), LayerId = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "LayerType", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Shortname = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LayerAttributes", 
        type = "map"), CloudWatchLogsConfiguration = structure(list(Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), LogStreams = structure(list(structure(list(LogGroupName = structure(logical(0), 
        shape = "String", type = "string"), DatetimeFormat = structure(logical(0), 
        shape = "String", type = "string"), TimeZone = structure(logical(0), 
        shape = "CloudWatchLogsTimeZone", type = "string"), File = structure(logical(0), 
        shape = "String", type = "string"), FileFingerprintLines = structure(logical(0), 
        shape = "String", type = "string"), MultiLineStartPattern = structure(logical(0), 
        shape = "String", type = "string"), InitialPosition = structure(logical(0), 
        shape = "CloudWatchLogsInitialPosition", type = "string"), 
        Encoding = structure(logical(0), shape = "CloudWatchLogsEncoding", 
            type = "string"), BufferDuration = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
        BatchCount = structure(logical(0), shape = "Integer", 
            type = "integer", box = TRUE), BatchSize = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE)), 
        shape = "CloudWatchLogsLogStream", type = "structure")), 
        shape = "CloudWatchLogsLogStreams", type = "list")), 
        shape = "CloudWatchLogsConfiguration", type = "structure"), 
        CustomInstanceProfileArn = structure(logical(0), shape = "String", 
            type = "string"), CustomJson = structure(logical(0), 
            shape = "String", type = "string"), CustomSecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), DefaultSecurityGroupNames = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Packages = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), VolumeConfigurations = structure(list(structure(list(MountPoint = structure(logical(0), 
            shape = "String", type = "string"), RaidLevel = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            NumberOfDisks = structure(logical(0), shape = "Integer", 
                type = "integer", box = TRUE), Size = structure(logical(0), 
                shape = "Integer", type = "integer", box = TRUE), 
            VolumeType = structure(logical(0), shape = "String", 
                type = "string"), Iops = structure(logical(0), 
                shape = "Integer", type = "integer", box = TRUE), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", box = TRUE)), shape = "VolumeConfiguration", 
            type = "structure")), shape = "VolumeConfigurations", 
            type = "list"), EnableAutoHealing = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        AutoAssignElasticIps = structure(logical(0), shape = "Boolean", 
            type = "boolean", box = TRUE), AutoAssignPublicIps = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        DefaultRecipes = structure(list(Setup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Configure = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Deploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Undeploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Shutdown = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list")), shape = "Recipes", type = "structure"), 
        CustomRecipes = structure(list(Setup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Configure = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Deploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Undeploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Shutdown = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list")), shape = "Recipes", type = "structure"), 
        CreatedAt = structure(logical(0), shape = "DateTime", 
            type = "string"), InstallUpdatesOnBoot = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        UseEbsOptimizedInstances = structure(logical(0), shape = "Boolean", 
            type = "boolean", box = TRUE), LifecycleEventConfiguration = structure(list(Shutdown = structure(list(ExecutionTimeout = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            DelayUntilElbConnectionsDrained = structure(logical(0), 
                shape = "Boolean", type = "boolean", box = TRUE)), 
            shape = "ShutdownEventConfiguration", type = "structure")), 
            shape = "LifecycleEventConfiguration", type = "structure")), 
        shape = "Layer", type = "structure")), shape = "Layers", 
        type = "list")), shape = "DescribeLayersResult", type = "structure")
    return(populate(args, shape))
}

describe_load_based_auto_scaling_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeLoadBasedAutoScalingRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_based_auto_scaling_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBasedAutoScalingConfigurations = structure(list(structure(list(LayerId = structure(logical(0), 
        shape = "String", type = "string"), Enable = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), UpScaling = structure(list(InstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), ThresholdsWaitTime = structure(logical(0), 
        shape = "Minute", type = "integer", box = TRUE, max = 100L, 
        min = 1L), IgnoreMetricsTime = structure(logical(0), 
        shape = "Minute", type = "integer", box = TRUE, max = 100L, 
        min = 1L), CpuThreshold = structure(logical(0), shape = "Double", 
        type = "double", box = TRUE), MemoryThreshold = structure(logical(0), 
        shape = "Double", type = "double", box = TRUE), LoadThreshold = structure(logical(0), 
        shape = "Double", type = "double", box = TRUE), Alarms = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "AutoScalingThresholds", type = "structure"), 
        DownScaling = structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            ThresholdsWaitTime = structure(logical(0), shape = "Minute", 
                type = "integer", box = TRUE, max = 100L, min = 1L), 
            IgnoreMetricsTime = structure(logical(0), shape = "Minute", 
                type = "integer", box = TRUE, max = 100L, min = 1L), 
            CpuThreshold = structure(logical(0), shape = "Double", 
                type = "double", box = TRUE), MemoryThreshold = structure(logical(0), 
                shape = "Double", type = "double", box = TRUE), 
            LoadThreshold = structure(logical(0), shape = "Double", 
                type = "double", box = TRUE), Alarms = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "Strings", 
                type = "list")), shape = "AutoScalingThresholds", 
            type = "structure")), shape = "LoadBasedAutoScalingConfiguration", 
        type = "structure")), shape = "LoadBasedAutoScalingConfigurations", 
        type = "list")), shape = "DescribeLoadBasedAutoScalingResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_my_user_profile_input <- function () 
{
    return(list())
}

describe_my_user_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserProfile = structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), SshUsername = structure(logical(0), 
        shape = "String", type = "string"), SshPublicKey = structure(logical(0), 
        shape = "String", type = "string")), shape = "SelfUserProfile", 
        type = "structure")), shape = "DescribeMyUserProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_operating_systems_input <- function () 
{
    return(list())
}

describe_operating_systems_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperatingSystems = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Id = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationManagers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "OperatingSystemConfigurationManager", 
        type = "structure")), shape = "OperatingSystemConfigurationManagers", 
        type = "list"), ReportedName = structure(logical(0), 
        shape = "String", type = "string"), ReportedVersion = structure(logical(0), 
        shape = "String", type = "string"), Supported = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "OperatingSystem", 
        type = "structure")), shape = "OperatingSystems", type = "list")), 
        shape = "DescribeOperatingSystemsResponse", type = "structure")
    return(populate(args, shape))
}

describe_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Permissions = structure(list(structure(list(StackId = structure(logical(0), 
        shape = "String", type = "string"), IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), AllowSsh = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), AllowSudo = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), Level = structure(logical(0), 
        shape = "String", type = "string")), shape = "Permission", 
        type = "structure")), shape = "Permissions", type = "list")), 
        shape = "DescribePermissionsResult", type = "structure")
    return(populate(args, shape))
}

describe_raid_arrays_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), RaidArrayIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeRaidArraysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_raid_arrays_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RaidArrays = structure(list(structure(list(RaidArrayId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), RaidLevel = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), NumberOfDisks = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Size = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Device = structure(logical(0), 
        shape = "String", type = "string"), MountPoint = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), VolumeType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE)), shape = "RaidArray", 
        type = "structure")), shape = "RaidArrays", type = "list")), 
        shape = "DescribeRaidArraysResult", type = "structure")
    return(populate(args, shape))
}

describe_rds_db_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), RdsDbInstanceArns = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeRdsDbInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_rds_db_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RdsDbInstances = structure(list(structure(list(RdsDbInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), DbInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DbUser = structure(logical(0), 
        shape = "String", type = "string"), DbPassword = structure(logical(0), 
        shape = "String", type = "string"), Region = structure(logical(0), 
        shape = "String", type = "string"), Address = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), MissingOnRds = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "RdsDbInstance", 
        type = "structure")), shape = "RdsDbInstances", type = "list")), 
        shape = "DescribeRdsDbInstancesResult", type = "structure")
    return(populate(args, shape))
}

describe_service_errors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), ServiceErrorIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeServiceErrorsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_service_errors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceErrors = structure(list(structure(list(ServiceErrorId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "DateTime", type = "string")), shape = "ServiceError", 
        type = "structure")), shape = "ServiceErrors", type = "list")), 
        shape = "DescribeServiceErrorsResult", type = "structure")
    return(populate(args, shape))
}

describe_stack_provisioning_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeStackProvisioningParametersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_provisioning_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentInstallerUrl = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameters", 
        type = "map")), shape = "DescribeStackProvisioningParametersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_summary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeStackSummaryRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_stack_summary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackSummary = structure(list(StackId = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Arn = structure(logical(0), 
        shape = "String", type = "string"), LayersCount = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), AppsCount = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), InstancesCount = structure(list(Assigning = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Booting = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), ConnectionLost = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Deregistering = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Online = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Pending = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Rebooting = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Registered = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Registering = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Requested = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), RunningSetup = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), SetupFailed = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), ShuttingDown = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), StartFailed = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), StopFailed = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Stopped = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Stopping = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Terminated = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Terminating = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Unassigning = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE)), shape = "InstancesCount", 
        type = "structure")), shape = "StackSummary", type = "structure")), 
        shape = "DescribeStackSummaryResult", type = "structure")
    return(populate(args, shape))
}

describe_stacks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeStacksRequest", type = "structure")
    return(populate(args, shape))
}

describe_stacks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Stacks = structure(list(structure(list(StackId = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Arn = structure(logical(0), 
        shape = "String", type = "string"), Region = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StackAttributes", 
        type = "map"), ServiceRoleArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultInstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultOs = structure(logical(0), 
        shape = "String", type = "string"), HostnameTheme = structure(logical(0), 
        shape = "String", type = "string"), DefaultAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DefaultSubnetId = structure(logical(0), 
        shape = "String", type = "string"), CustomJson = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationManager = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "StackConfigurationManager", 
        type = "structure"), ChefConfiguration = structure(list(ManageBerkshelf = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), BerkshelfVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "ChefConfiguration", 
        type = "structure"), UseCustomCookbooks = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), UseOpsworksSecurityGroups = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), CustomCookbooksSource = structure(list(Type = structure(logical(0), 
        shape = "SourceType", type = "string"), Url = structure(logical(0), 
        shape = "String", type = "string"), Username = structure(logical(0), 
        shape = "String", type = "string"), Password = structure(logical(0), 
        shape = "String", type = "string"), SshKey = structure(logical(0), 
        shape = "String", type = "string"), Revision = structure(logical(0), 
        shape = "String", type = "string")), shape = "Source", 
        type = "structure"), DefaultSshKeyName = structure(logical(0), 
        shape = "String", type = "string"), CreatedAt = structure(logical(0), 
        shape = "DateTime", type = "string"), DefaultRootDeviceType = structure(logical(0), 
        shape = "RootDeviceType", type = "string"), AgentVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "Stack", 
        type = "structure")), shape = "Stacks", type = "list")), 
        shape = "DescribeStacksResult", type = "structure")
    return(populate(args, shape))
}

describe_time_based_auto_scaling_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeTimeBasedAutoScalingRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_time_based_auto_scaling_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TimeBasedAutoScalingConfigurations = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), AutoScalingSchedule = structure(list(Monday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Tuesday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Wednesday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Thursday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Friday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Saturday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Sunday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map")), shape = "WeeklyAutoScalingSchedule", 
        type = "structure")), shape = "TimeBasedAutoScalingConfiguration", 
        type = "structure")), shape = "TimeBasedAutoScalingConfigurations", 
        type = "list")), shape = "DescribeTimeBasedAutoScalingResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamUserArns = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeUserProfilesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_user_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserProfiles = structure(list(structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), SshUsername = structure(logical(0), 
        shape = "String", type = "string"), SshPublicKey = structure(logical(0), 
        shape = "String", type = "string"), AllowSelfManagement = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "UserProfile", 
        type = "structure")), shape = "UserProfiles", type = "list")), 
        shape = "DescribeUserProfilesResult", type = "structure")
    return(populate(args, shape))
}

describe_volumes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string"), RaidArrayId = structure(logical(0), 
        shape = "String", type = "string"), VolumeIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "DescribeVolumesRequest", type = "structure")
    return(populate(args, shape))
}

describe_volumes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Volumes = structure(list(structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string"), Ec2VolumeId = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), RaidArrayId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), Size = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Device = structure(logical(0), 
        shape = "String", type = "string"), MountPoint = structure(logical(0), 
        shape = "String", type = "string"), Region = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VolumeType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "Volume", 
        type = "structure")), shape = "Volumes", type = "list")), 
        shape = "DescribeVolumesResult", type = "structure")
    return(populate(args, shape))
}

detach_elastic_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticLoadBalancerName = structure(logical(0), 
        shape = "String", type = "string"), LayerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DetachElasticLoadBalancerRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_elastic_load_balancer_output <- function () 
{
    return(list())
}

disassociate_elastic_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIp = structure(logical(0), 
        shape = "String", type = "string")), shape = "DisassociateElasticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_elastic_ip_output <- function () 
{
    return(list())
}

get_hostname_suggestion_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerId = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetHostnameSuggestionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_hostname_suggestion_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerId = structure(logical(0), shape = "String", 
        type = "string"), Hostname = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetHostnameSuggestionResult", 
        type = "structure")
    return(populate(args, shape))
}

grant_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), ValidForInMinutes = structure(logical(0), 
        shape = "ValidForInMinutes", type = "integer", box = TRUE, 
        max = 1440L, min = 60L)), shape = "GrantAccessRequest", 
        type = "structure")
    return(populate(args, shape))
}

grant_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemporaryCredential = structure(list(Username = structure(logical(0), 
        shape = "String", type = "string"), Password = structure(logical(0), 
        shape = "String", type = "string"), ValidForInMinutes = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "TemporaryCredential", 
        type = "structure")), shape = "GrantAccessResult", type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tags", 
        type = "map"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListTagsResult", type = "structure")
    return(populate(args, shape))
}

reboot_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RebootInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

reboot_instance_output <- function () 
{
    return(list())
}

register_ecs_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EcsClusterArn = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterEcsClusterRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_ecs_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EcsClusterArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterEcsClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

register_elastic_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterElasticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_elastic_ip_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIp = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterElasticIpResult", 
        type = "structure")
    return(populate(args, shape))
}

register_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), Hostname = structure(logical(0), shape = "String", 
        type = "string"), PublicIp = structure(logical(0), shape = "String", 
        type = "string"), PrivateIp = structure(logical(0), shape = "String", 
        type = "string"), RsaPublicKey = structure(logical(0), 
        shape = "String", type = "string"), RsaPublicKeyFingerprint = structure(logical(0), 
        shape = "String", type = "string"), InstanceIdentity = structure(list(Document = structure(logical(0), 
        shape = "String", type = "string"), Signature = structure(logical(0), 
        shape = "String", type = "string")), shape = "InstanceIdentity", 
        type = "structure")), shape = "RegisterInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

register_rds_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), RdsDbInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), DbUser = structure(logical(0), 
        shape = "String", type = "string"), DbPassword = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterRdsDbInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_rds_db_instance_output <- function () 
{
    return(list())
}

register_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ec2VolumeId = structure(logical(0), 
        shape = "String", type = "string"), StackId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

register_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RegisterVolumeResult", 
        type = "structure")
    return(populate(args, shape))
}

set_load_based_auto_scaling_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerId = structure(logical(0), shape = "String", 
        type = "string"), Enable = structure(logical(0), shape = "Boolean", 
        type = "boolean", box = TRUE), UpScaling = structure(list(InstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer", box = TRUE), ThresholdsWaitTime = structure(logical(0), 
        shape = "Minute", type = "integer", box = TRUE, max = 100L, 
        min = 1L), IgnoreMetricsTime = structure(logical(0), 
        shape = "Minute", type = "integer", box = TRUE, max = 100L, 
        min = 1L), CpuThreshold = structure(logical(0), shape = "Double", 
        type = "double", box = TRUE), MemoryThreshold = structure(logical(0), 
        shape = "Double", type = "double", box = TRUE), LoadThreshold = structure(logical(0), 
        shape = "Double", type = "double", box = TRUE), Alarms = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "AutoScalingThresholds", type = "structure"), 
        DownScaling = structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            ThresholdsWaitTime = structure(logical(0), shape = "Minute", 
                type = "integer", box = TRUE, max = 100L, min = 1L), 
            IgnoreMetricsTime = structure(logical(0), shape = "Minute", 
                type = "integer", box = TRUE, max = 100L, min = 1L), 
            CpuThreshold = structure(logical(0), shape = "Double", 
                type = "double", box = TRUE), MemoryThreshold = structure(logical(0), 
                shape = "Double", type = "double", box = TRUE), 
            LoadThreshold = structure(logical(0), shape = "Double", 
                type = "double", box = TRUE), Alarms = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "Strings", 
                type = "list")), shape = "AutoScalingThresholds", 
            type = "structure")), shape = "SetLoadBasedAutoScalingRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_load_based_auto_scaling_output <- function () 
{
    return(list())
}

set_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), AllowSsh = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), AllowSudo = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), Level = structure(logical(0), 
        shape = "String", type = "string")), shape = "SetPermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_permission_output <- function () 
{
    return(list())
}

set_time_based_auto_scaling_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), AutoScalingSchedule = structure(list(Monday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Tuesday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Wednesday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Thursday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Friday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Saturday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map"), Sunday = structure(list(structure(logical(0), 
        shape = "Switch", type = "string")), shape = "DailyAutoScalingSchedule", 
        type = "map")), shape = "WeeklyAutoScalingSchedule", 
        type = "structure")), shape = "SetTimeBasedAutoScalingRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_time_based_auto_scaling_output <- function () 
{
    return(list())
}

start_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "StartInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_instance_output <- function () 
{
    return(list())
}

start_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "StartStackRequest", type = "structure")
    return(populate(args, shape))
}

start_stack_output <- function () 
{
    return(list())
}

stop_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), Force = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "StopInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_instance_output <- function () 
{
    return(list())
}

stop_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string")), shape = "StopStackRequest", type = "structure")
    return(populate(args, shape))
}

stop_stack_output <- function () 
{
    return(list())
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string"), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string")), shape = "Tags", 
        type = "map")), shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function () 
{
    return(list())
}

unassign_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "UnassignInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

unassign_instance_output <- function () 
{
    return(list())
}

unassign_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string")), shape = "UnassignVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

unassign_volume_output <- function () 
{
    return(list())
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string")), shape = "TagKeys", 
        type = "list")), shape = "UntagResourceRequest", type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function () 
{
    return(list())
}

update_app_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AppId = structure(logical(0), shape = "String", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DataSources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "String", type = "string"), Arn = structure(logical(0), 
        shape = "String", type = "string"), DatabaseName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DataSource", 
        type = "structure")), shape = "DataSources", type = "list"), 
        Type = structure(logical(0), shape = "AppType", type = "string"), 
        AppSource = structure(list(Type = structure(logical(0), 
            shape = "SourceType", type = "string"), Url = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "String", type = "string"), SshKey = structure(logical(0), 
            shape = "String", type = "string"), Revision = structure(logical(0), 
            shape = "String", type = "string")), shape = "Source", 
            type = "structure"), Domains = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), EnableSsl = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        SslConfiguration = structure(list(Certificate = structure(logical(0), 
            shape = "String", type = "string"), PrivateKey = structure(logical(0), 
            shape = "String", type = "string"), Chain = structure(logical(0), 
            shape = "String", type = "string")), shape = "SslConfiguration", 
            type = "structure"), Attributes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AppAttributes", 
            type = "map"), Environment = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string"), Secure = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE)), 
            shape = "EnvironmentVariable", type = "structure")), 
            shape = "EnvironmentVariables", type = "list")), 
        shape = "UpdateAppRequest", type = "structure")
    return(populate(args, shape))
}

update_app_output <- function () 
{
    return(list())
}

update_elastic_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateElasticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_elastic_ip_output <- function () 
{
    return(list())
}

update_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), LayerIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list"), InstanceType = structure(logical(0), 
        shape = "String", type = "string"), AutoScalingType = structure(logical(0), 
        shape = "AutoScalingType", type = "string"), Hostname = structure(logical(0), 
        shape = "String", type = "string"), Os = structure(logical(0), 
        shape = "String", type = "string"), AmiId = structure(logical(0), 
        shape = "String", type = "string"), SshKeyName = structure(logical(0), 
        shape = "String", type = "string"), Architecture = structure(logical(0), 
        shape = "Architecture", type = "string"), InstallUpdatesOnBoot = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), EbsOptimized = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), AgentVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_instance_output <- function () 
{
    return(list())
}

update_layer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LayerId = structure(logical(0), shape = "String", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string"), Shortname = structure(logical(0), shape = "String", 
        type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LayerAttributes", 
        type = "map"), CloudWatchLogsConfiguration = structure(list(Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), LogStreams = structure(list(structure(list(LogGroupName = structure(logical(0), 
        shape = "String", type = "string"), DatetimeFormat = structure(logical(0), 
        shape = "String", type = "string"), TimeZone = structure(logical(0), 
        shape = "CloudWatchLogsTimeZone", type = "string"), File = structure(logical(0), 
        shape = "String", type = "string"), FileFingerprintLines = structure(logical(0), 
        shape = "String", type = "string"), MultiLineStartPattern = structure(logical(0), 
        shape = "String", type = "string"), InitialPosition = structure(logical(0), 
        shape = "CloudWatchLogsInitialPosition", type = "string"), 
        Encoding = structure(logical(0), shape = "CloudWatchLogsEncoding", 
            type = "string"), BufferDuration = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
        BatchCount = structure(logical(0), shape = "Integer", 
            type = "integer", box = TRUE), BatchSize = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE)), 
        shape = "CloudWatchLogsLogStream", type = "structure")), 
        shape = "CloudWatchLogsLogStreams", type = "list")), 
        shape = "CloudWatchLogsConfiguration", type = "structure"), 
        CustomInstanceProfileArn = structure(logical(0), shape = "String", 
            type = "string"), CustomJson = structure(logical(0), 
            shape = "String", type = "string"), CustomSecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Packages = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), VolumeConfigurations = structure(list(structure(list(MountPoint = structure(logical(0), 
            shape = "String", type = "string"), RaidLevel = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            NumberOfDisks = structure(logical(0), shape = "Integer", 
                type = "integer", box = TRUE), Size = structure(logical(0), 
                shape = "Integer", type = "integer", box = TRUE), 
            VolumeType = structure(logical(0), shape = "String", 
                type = "string"), Iops = structure(logical(0), 
                shape = "Integer", type = "integer", box = TRUE), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                type = "boolean", box = TRUE)), shape = "VolumeConfiguration", 
            type = "structure")), shape = "VolumeConfigurations", 
            type = "list"), EnableAutoHealing = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        AutoAssignElasticIps = structure(logical(0), shape = "Boolean", 
            type = "boolean", box = TRUE), AutoAssignPublicIps = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        CustomRecipes = structure(list(Setup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Configure = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Deploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Undeploy = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list"), Shutdown = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list")), shape = "Recipes", type = "structure"), 
        InstallUpdatesOnBoot = structure(logical(0), shape = "Boolean", 
            type = "boolean", box = TRUE), UseEbsOptimizedInstances = structure(logical(0), 
            shape = "Boolean", type = "boolean", box = TRUE), 
        LifecycleEventConfiguration = structure(list(Shutdown = structure(list(ExecutionTimeout = structure(logical(0), 
            shape = "Integer", type = "integer", box = TRUE), 
            DelayUntilElbConnectionsDrained = structure(logical(0), 
                shape = "Boolean", type = "boolean", box = TRUE)), 
            shape = "ShutdownEventConfiguration", type = "structure")), 
            shape = "LifecycleEventConfiguration", type = "structure")), 
        shape = "UpdateLayerRequest", type = "structure")
    return(populate(args, shape))
}

update_layer_output <- function () 
{
    return(list())
}

update_my_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SshPublicKey = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateMyUserProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_my_user_profile_output <- function () 
{
    return(list())
}

update_rds_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RdsDbInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), DbUser = structure(logical(0), 
        shape = "String", type = "string"), DbPassword = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateRdsDbInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_rds_db_instance_output <- function () 
{
    return(list())
}

update_stack_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StackId = structure(logical(0), shape = "String", 
        type = "string"), Name = structure(logical(0), shape = "String", 
        type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StackAttributes", 
        type = "map"), ServiceRoleArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultInstanceProfileArn = structure(logical(0), 
        shape = "String", type = "string"), DefaultOs = structure(logical(0), 
        shape = "String", type = "string"), HostnameTheme = structure(logical(0), 
        shape = "String", type = "string"), DefaultAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DefaultSubnetId = structure(logical(0), 
        shape = "String", type = "string"), CustomJson = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationManager = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string")), shape = "StackConfigurationManager", 
        type = "structure"), ChefConfiguration = structure(list(ManageBerkshelf = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), BerkshelfVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "ChefConfiguration", 
        type = "structure"), UseCustomCookbooks = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), CustomCookbooksSource = structure(list(Type = structure(logical(0), 
        shape = "SourceType", type = "string"), Url = structure(logical(0), 
        shape = "String", type = "string"), Username = structure(logical(0), 
        shape = "String", type = "string"), Password = structure(logical(0), 
        shape = "String", type = "string"), SshKey = structure(logical(0), 
        shape = "String", type = "string"), Revision = structure(logical(0), 
        shape = "String", type = "string")), shape = "Source", 
        type = "structure"), DefaultSshKeyName = structure(logical(0), 
        shape = "String", type = "string"), DefaultRootDeviceType = structure(logical(0), 
        shape = "RootDeviceType", type = "string"), UseOpsworksSecurityGroups = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE), AgentVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateStackRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_stack_output <- function () 
{
    return(list())
}

update_user_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamUserArn = structure(logical(0), 
        shape = "String", type = "string"), SshUsername = structure(logical(0), 
        shape = "String", type = "string"), SshPublicKey = structure(logical(0), 
        shape = "String", type = "string"), AllowSelfManagement = structure(logical(0), 
        shape = "Boolean", type = "boolean", box = TRUE)), shape = "UpdateUserProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_profile_output <- function () 
{
    return(list())
}

update_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), MountPoint = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_volume_output <- function () 
{
    return(list())
}
