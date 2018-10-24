add_instance_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceFleet = structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InstanceFleetType = structure(logical(0), shape = "InstanceFleetType", 
                type = "string"), TargetOnDemandCapacity = structure(logical(0), 
                shape = "WholeNumber", type = "integer", min = 0L), 
            TargetSpotCapacity = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L), InstanceTypeConfigs = structure(list(structure(list(InstanceType = structure(logical(0), 
                shape = "InstanceType", type = "string", max = 256L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                WeightedCapacity = structure(logical(0), shape = "WholeNumber", 
                  type = "integer", min = 0L), BidPrice = structure(logical(0), 
                  shape = "XmlStringMaxLen256", type = "string", 
                  max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                BidPriceAsPercentageOfOnDemandPrice = structure(logical(0), 
                  shape = "NonNegativeDouble", type = "double", 
                  min = 0), EbsConfiguration = structure(list(EbsBlockDeviceConfigs = structure(list(structure(list(VolumeSpecification = structure(list(VolumeType = structure(logical(0), 
                  shape = "String", type = "string"), Iops = structure(logical(0), 
                  shape = "Integer", type = "integer"), SizeInGB = structure(logical(0), 
                  shape = "Integer", type = "integer")), shape = "VolumeSpecification", 
                  type = "structure"), VolumesPerInstance = structure(logical(0), 
                  shape = "Integer", type = "integer")), shape = "EbsBlockDeviceConfig", 
                  type = "structure")), shape = "EbsBlockDeviceConfigList", 
                  type = "list"), EbsOptimized = structure(logical(0), 
                  shape = "BooleanObject", type = "boolean")), 
                  shape = "EbsConfiguration", type = "structure"), 
                Configurations = structure(list(structure(list(Classification = structure(logical(0), 
                  shape = "String", type = "string"), Configurations = structure(logical(0), 
                  shape = "ConfigurationList", type = "list"), 
                  Properties = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "StringMap", 
                    type = "map")), shape = "Configuration", 
                  type = "structure")), shape = "ConfigurationList", 
                  type = "list")), shape = "InstanceTypeConfig", 
                type = "structure")), shape = "InstanceTypeConfigList", 
                type = "list"), LaunchSpecifications = structure(list(SpotSpecification = structure(list(TimeoutDurationMinutes = structure(logical(0), 
                shape = "WholeNumber", type = "integer", min = 0L), 
                TimeoutAction = structure(logical(0), shape = "SpotProvisioningTimeoutAction", 
                  type = "string"), BlockDurationMinutes = structure(logical(0), 
                  shape = "WholeNumber", type = "integer", min = 0L)), 
                shape = "SpotProvisioningSpecification", type = "structure")), 
                shape = "InstanceFleetProvisioningSpecifications", 
                type = "structure")), shape = "InstanceFleetConfig", 
            type = "structure")), shape = "AddInstanceFleetInput", 
        type = "structure")
    return(populate(args, shape))
}

add_instance_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceFleetId = structure(logical(0), shape = "InstanceFleetId", 
            type = "string")), shape = "AddInstanceFleetOutput", 
        type = "structure")
    return(populate(args, shape))
}

add_instance_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceGroups = structure(list(structure(list(Name = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Market = structure(logical(0), shape = "MarketType", 
            type = "string"), InstanceRole = structure(logical(0), 
            shape = "InstanceRoleType", type = "string"), BidPrice = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceCount = structure(logical(0), shape = "Integer", 
            type = "integer"), Configurations = structure(list(structure(list(Classification = structure(logical(0), 
            shape = "String", type = "string"), Configurations = structure(logical(0), 
            shape = "ConfigurationList", type = "list"), Properties = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map")), shape = "Configuration", type = "structure")), 
            shape = "ConfigurationList", type = "list"), EbsConfiguration = structure(list(EbsBlockDeviceConfigs = structure(list(structure(list(VolumeSpecification = structure(list(VolumeType = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "Integer", type = "integer"), SizeInGB = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "VolumeSpecification", 
            type = "structure"), VolumesPerInstance = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "EbsBlockDeviceConfig", 
            type = "structure")), shape = "EbsBlockDeviceConfigList", 
            type = "list"), EbsOptimized = structure(logical(0), 
            shape = "BooleanObject", type = "boolean")), shape = "EbsConfiguration", 
            type = "structure"), AutoScalingPolicy = structure(list(Constraints = structure(list(MinCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ScalingConstraints", 
            type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), Action = structure(list(Market = structure(logical(0), 
            shape = "MarketType", type = "string"), SimpleScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
            shape = "AdjustmentType", type = "string"), ScalingAdjustment = structure(logical(0), 
            shape = "Integer", type = "integer"), CoolDown = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "SimpleScalingPolicyConfiguration", 
            type = "structure")), shape = "ScalingAction", type = "structure"), 
            Trigger = structure(list(CloudWatchAlarmDefinition = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string"), 
                EvaluationPeriods = structure(logical(0), shape = "Integer", 
                  type = "integer"), MetricName = structure(logical(0), 
                  shape = "String", type = "string"), Namespace = structure(logical(0), 
                  shape = "String", type = "string"), Period = structure(logical(0), 
                  shape = "Integer", type = "integer"), Statistic = structure(logical(0), 
                  shape = "Statistic", type = "string"), Threshold = structure(logical(0), 
                  shape = "NonNegativeDouble", type = "double", 
                  min = 0), Unit = structure(logical(0), shape = "Unit", 
                  type = "string"), Dimensions = structure(list(structure(list(Key = structure(logical(0), 
                  shape = "String", type = "string"), Value = structure(logical(0), 
                  shape = "String", type = "string")), shape = "MetricDimension", 
                  type = "structure")), shape = "MetricDimensionList", 
                  type = "list")), shape = "CloudWatchAlarmDefinition", 
                type = "structure")), shape = "ScalingTrigger", 
                type = "structure")), shape = "ScalingRule", 
            type = "structure")), shape = "ScalingRuleList", 
            type = "list")), shape = "AutoScalingPolicy", type = "structure")), 
        shape = "InstanceGroupConfig", type = "structure")), 
        shape = "InstanceGroupConfigList", type = "list"), JobFlowId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AddInstanceGroupsInput", type = "structure")
    return(populate(args, shape))
}

add_instance_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlowId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceGroupIds = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "InstanceGroupIdsList", type = "list")), 
        shape = "AddInstanceGroupsOutput", type = "structure")
    return(populate(args, shape))
}

add_job_flow_steps_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlowId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Steps = structure(list(structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ActionOnFailure = structure(logical(0), shape = "ActionOnFailure", 
                type = "string"), HadoopJarStep = structure(list(Properties = structure(list(structure(list(Key = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Value = structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "KeyValue", type = "structure")), shape = "KeyValueList", 
                type = "list"), Jar = structure(logical(0), shape = "XmlString", 
                type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                MainClass = structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Args = structure(list(structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringList", type = "list")), shape = "HadoopJarStepConfig", 
                type = "structure")), shape = "StepConfig", type = "structure")), 
            shape = "StepConfigList", type = "list")), shape = "AddJobFlowStepsInput", 
        type = "structure")
    return(populate(args, shape))
}

add_job_flow_steps_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StepIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "StepIdsList", type = "list")), shape = "AddJobFlowStepsOutput", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "AddTagsInput", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsOutput", type = "structure")
    return(populate(args, shape))
}

cancel_steps_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StepIds = structure(list(structure(logical(0), shape = "XmlStringMaxLen256", 
            type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "StepIdsList", type = "list")), shape = "CancelStepsInput", 
        type = "structure")
    return(populate(args, shape))
}

cancel_steps_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CancelStepsInfoList = structure(list(structure(list(StepId = structure(logical(0), 
        shape = "StepId", type = "string"), Status = structure(logical(0), 
        shape = "CancelStepsRequestStatus", type = "string"), 
        Reason = structure(logical(0), shape = "String", type = "string")), 
        shape = "CancelStepsInfo", type = "structure")), shape = "CancelStepsInfoList", 
        type = "list")), shape = "CancelStepsOutput", type = "structure")
    return(populate(args, shape))
}

create_security_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "XmlString", 
        type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        SecurityConfiguration = structure(logical(0), shape = "String", 
            type = "string")), shape = "CreateSecurityConfigurationInput", 
        type = "structure")
    return(populate(args, shape))
}

create_security_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "XmlString", 
        type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        CreationDateTime = structure(logical(0), shape = "Date", 
            type = "timestamp")), shape = "CreateSecurityConfigurationOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_security_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "XmlString", 
        type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DeleteSecurityConfigurationInput", type = "structure")
    return(populate(args, shape))
}

delete_security_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSecurityConfigurationOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string")), shape = "DescribeClusterInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(Id = structure(logical(0), 
        shape = "ClusterId", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(list(State = structure(logical(0), 
        shape = "ClusterState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
        shape = "ClusterStateChangeReasonCode", type = "string"), 
        Message = structure(logical(0), shape = "String", type = "string")), 
        shape = "ClusterStateChangeReason", type = "structure"), 
        Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "ClusterTimeline", 
            type = "structure")), shape = "ClusterStatus", type = "structure"), 
        Ec2InstanceAttributes = structure(list(Ec2KeyName = structure(logical(0), 
            shape = "String", type = "string"), Ec2SubnetId = structure(logical(0), 
            shape = "String", type = "string"), RequestedEc2SubnetIds = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "XmlStringMaxLen256List", type = "list"), 
            Ec2AvailabilityZone = structure(logical(0), shape = "String", 
                type = "string"), RequestedEc2AvailabilityZones = structure(list(structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "XmlStringMaxLen256List", type = "list"), 
            IamInstanceProfile = structure(logical(0), shape = "String", 
                type = "string"), EmrManagedMasterSecurityGroup = structure(logical(0), 
                shape = "String", type = "string"), EmrManagedSlaveSecurityGroup = structure(logical(0), 
                shape = "String", type = "string"), ServiceAccessSecurityGroup = structure(logical(0), 
                shape = "String", type = "string"), AdditionalMasterSecurityGroups = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list"), AdditionalSlaveSecurityGroups = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "StringList", 
                type = "list")), shape = "Ec2InstanceAttributes", 
            type = "structure"), InstanceCollectionType = structure(logical(0), 
            shape = "InstanceCollectionType", type = "string"), 
        LogUri = structure(logical(0), shape = "String", type = "string"), 
        RequestedAmiVersion = structure(logical(0), shape = "String", 
            type = "string"), RunningAmiVersion = structure(logical(0), 
            shape = "String", type = "string"), ReleaseLabel = structure(logical(0), 
            shape = "String", type = "string"), AutoTerminate = structure(logical(0), 
            shape = "Boolean", type = "boolean"), TerminationProtected = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VisibleToAllUsers = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Applications = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string"), Args = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AdditionalInfo = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map")), shape = "Application", type = "structure")), 
            shape = "ApplicationList", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list"), 
        ServiceRole = structure(logical(0), shape = "String", 
            type = "string"), NormalizedInstanceHours = structure(logical(0), 
            shape = "Integer", type = "integer"), MasterPublicDnsName = structure(logical(0), 
            shape = "String", type = "string"), Configurations = structure(list(structure(list(Classification = structure(logical(0), 
            shape = "String", type = "string"), Configurations = structure(logical(0), 
            shape = "ConfigurationList", type = "list"), Properties = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map")), shape = "Configuration", type = "structure")), 
            shape = "ConfigurationList", type = "list"), SecurityConfiguration = structure(logical(0), 
            shape = "XmlString", type = "string", max = 10280L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingRole = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScaleDownBehavior = structure(logical(0), shape = "ScaleDownBehavior", 
            type = "string"), CustomAmiId = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        EbsRootVolumeSize = structure(logical(0), shape = "Integer", 
            type = "integer"), RepoUpgradeOnBoot = structure(logical(0), 
            shape = "RepoUpgradeOnBoot", type = "string"), KerberosAttributes = structure(list(Realm = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            KdcAdminPassword = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            CrossRealmTrustPrincipalPassword = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ADDomainJoinUser = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ADDomainJoinPassword = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "KerberosAttributes", type = "structure")), 
        shape = "Cluster", type = "structure")), shape = "DescribeClusterOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_job_flows_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreatedAfter = structure(logical(0), 
        shape = "Date", type = "timestamp"), CreatedBefore = structure(logical(0), 
        shape = "Date", type = "timestamp"), JobFlowIds = structure(list(structure(logical(0), 
        shape = "XmlString", type = "string", max = 10280L, min = 0L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "XmlStringList", type = "list"), JobFlowStates = structure(list(structure(logical(0), 
        shape = "JobFlowExecutionState", type = "string")), shape = "JobFlowExecutionStateList", 
        type = "list")), shape = "DescribeJobFlowsInput", type = "structure")
    return(populate(args, shape))
}

describe_job_flows_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlows = structure(list(structure(list(JobFlowId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Name = structure(logical(0), shape = "XmlStringMaxLen256", 
            type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LogUri = structure(logical(0), shape = "XmlString", type = "string", 
            max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AmiVersion = structure(logical(0), shape = "XmlStringMaxLen256", 
            type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ExecutionStatusDetail = structure(list(State = structure(logical(0), 
            shape = "JobFlowExecutionState", type = "string"), 
            CreationDateTime = structure(logical(0), shape = "Date", 
                type = "timestamp"), StartDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp"), LastStateChangeReason = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "JobFlowExecutionStatusDetail", type = "structure"), 
        Instances = structure(list(MasterInstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            MasterPublicDnsName = structure(logical(0), shape = "XmlString", 
                type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            MasterInstanceId = structure(logical(0), shape = "XmlString", 
                type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            SlaveInstanceType = structure(logical(0), shape = "InstanceType", 
                type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InstanceCount = structure(logical(0), shape = "Integer", 
                type = "integer"), InstanceGroups = structure(list(structure(list(InstanceGroupId = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Name = structure(logical(0), shape = "XmlStringMaxLen256", 
                  type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Market = structure(logical(0), shape = "MarketType", 
                  type = "string"), InstanceRole = structure(logical(0), 
                  shape = "InstanceRoleType", type = "string"), 
                BidPrice = structure(logical(0), shape = "XmlStringMaxLen256", 
                  type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InstanceType = structure(logical(0), shape = "InstanceType", 
                  type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InstanceRequestCount = structure(logical(0), 
                  shape = "Integer", type = "integer"), InstanceRunningCount = structure(logical(0), 
                  shape = "Integer", type = "integer"), State = structure(logical(0), 
                  shape = "InstanceGroupState", type = "string"), 
                LastStateChangeReason = structure(logical(0), 
                  shape = "XmlString", type = "string", max = 10280L, 
                  min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                CreationDateTime = structure(logical(0), shape = "Date", 
                  type = "timestamp"), StartDateTime = structure(logical(0), 
                  shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
                  shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
                  shape = "Date", type = "timestamp")), shape = "InstanceGroupDetail", 
                type = "structure")), shape = "InstanceGroupDetailList", 
                type = "list"), NormalizedInstanceHours = structure(logical(0), 
                shape = "Integer", type = "integer"), Ec2KeyName = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Ec2SubnetId = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                AvailabilityZones = structure(list(structure(logical(0), 
                  shape = "XmlStringMaxLen256", type = "string", 
                  max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringMaxLen256List", type = "list")), 
                shape = "PlacementType", type = "structure"), 
            KeepJobFlowAliveWhenNoSteps = structure(logical(0), 
                shape = "Boolean", type = "boolean"), TerminationProtected = structure(logical(0), 
                shape = "Boolean", type = "boolean"), HadoopVersion = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "JobFlowInstancesDetail", type = "structure"), 
        Steps = structure(list(structure(list(StepConfig = structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ActionOnFailure = structure(logical(0), shape = "ActionOnFailure", 
                type = "string"), HadoopJarStep = structure(list(Properties = structure(list(structure(list(Key = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Value = structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "KeyValue", type = "structure")), shape = "KeyValueList", 
                type = "list"), Jar = structure(logical(0), shape = "XmlString", 
                type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                MainClass = structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Args = structure(list(structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringList", type = "list")), shape = "HadoopJarStepConfig", 
                type = "structure")), shape = "StepConfig", type = "structure"), 
            ExecutionStatusDetail = structure(list(State = structure(logical(0), 
                shape = "StepExecutionState", type = "string"), 
                CreationDateTime = structure(logical(0), shape = "Date", 
                  type = "timestamp"), StartDateTime = structure(logical(0), 
                  shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
                  shape = "Date", type = "timestamp"), LastStateChangeReason = structure(logical(0), 
                  shape = "XmlString", type = "string", max = 10280L, 
                  min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "StepExecutionStatusDetail", type = "structure")), 
            shape = "StepDetail", type = "structure")), shape = "StepDetailList", 
            type = "list"), BootstrapActions = structure(list(structure(list(BootstrapActionConfig = structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ScriptBootstrapAction = structure(list(Path = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Args = structure(list(structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringList", type = "list")), shape = "ScriptBootstrapActionConfig", 
                type = "structure")), shape = "BootstrapActionConfig", 
            type = "structure")), shape = "BootstrapActionDetail", 
            type = "structure")), shape = "BootstrapActionDetailList", 
            type = "list"), SupportedProducts = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "SupportedProductsList", type = "list"), 
        VisibleToAllUsers = structure(logical(0), shape = "Boolean", 
            type = "boolean"), JobFlowRole = structure(logical(0), 
            shape = "XmlString", type = "string", max = 10280L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ServiceRole = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingRole = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScaleDownBehavior = structure(logical(0), shape = "ScaleDownBehavior", 
            type = "string")), shape = "JobFlowDetail", type = "structure")), 
        shape = "JobFlowDetailList", type = "list")), shape = "DescribeJobFlowsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_security_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "XmlString", 
        type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeSecurityConfigurationInput", type = "structure")
    return(populate(args, shape))
}

describe_security_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "XmlString", 
        type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        SecurityConfiguration = structure(logical(0), shape = "String", 
            type = "string"), CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "DescribeSecurityConfigurationOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_step_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), StepId = structure(logical(0), 
        shape = "StepId", type = "string")), shape = "DescribeStepInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_step_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Step = structure(list(Id = structure(logical(0), 
        shape = "StepId", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Config = structure(list(Jar = structure(logical(0), 
        shape = "String", type = "string"), Properties = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringMap", 
        type = "map"), MainClass = structure(logical(0), shape = "String", 
        type = "string"), Args = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list")), shape = "HadoopStepConfig", type = "structure"), 
        ActionOnFailure = structure(logical(0), shape = "ActionOnFailure", 
            type = "string"), Status = structure(list(State = structure(logical(0), 
            shape = "StepState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "StepStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string")), shape = "StepStateChangeReason", 
            type = "structure"), FailureDetails = structure(list(Reason = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string"), LogFile = structure(logical(0), 
            shape = "String", type = "string")), shape = "FailureDetails", 
            type = "structure"), Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), StartDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "StepTimeline", 
            type = "structure")), shape = "StepStatus", type = "structure")), 
        shape = "Step", type = "structure")), shape = "DescribeStepOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_bootstrap_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListBootstrapActionsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_bootstrap_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BootstrapActions = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), ScriptPath = structure(logical(0), 
        shape = "String", type = "string"), Args = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list")), shape = "Command", type = "structure")), 
        shape = "CommandList", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListBootstrapActionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreatedAfter = structure(logical(0), 
        shape = "Date", type = "timestamp"), CreatedBefore = structure(logical(0), 
        shape = "Date", type = "timestamp"), ClusterStates = structure(list(structure(logical(0), 
        shape = "ClusterState", type = "string")), shape = "ClusterStateList", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "ListClustersInput", type = "structure")
    return(populate(args, shape))
}

list_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Clusters = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ClusterId", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(list(State = structure(logical(0), 
        shape = "ClusterState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
        shape = "ClusterStateChangeReasonCode", type = "string"), 
        Message = structure(logical(0), shape = "String", type = "string")), 
        shape = "ClusterStateChangeReason", type = "structure"), 
        Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "ClusterTimeline", 
            type = "structure")), shape = "ClusterStatus", type = "structure"), 
        NormalizedInstanceHours = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "ClusterSummary", type = "structure")), 
        shape = "ClusterSummaryList", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListClustersOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_fleets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListInstanceFleetsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_fleets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceFleets = structure(list(structure(list(Id = structure(logical(0), 
        shape = "InstanceFleetId", type = "string"), Name = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Status = structure(list(State = structure(logical(0), 
            shape = "InstanceFleetState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "InstanceFleetStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string")), shape = "InstanceFleetStateChangeReason", 
            type = "structure"), Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "InstanceFleetTimeline", 
            type = "structure")), shape = "InstanceFleetStatus", 
            type = "structure"), InstanceFleetType = structure(logical(0), 
            shape = "InstanceFleetType", type = "string"), TargetOnDemandCapacity = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        TargetSpotCapacity = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), ProvisionedOnDemandCapacity = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
        ProvisionedSpotCapacity = structure(logical(0), shape = "WholeNumber", 
            type = "integer", min = 0L), InstanceTypeSpecifications = structure(list(structure(list(InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            WeightedCapacity = structure(logical(0), shape = "WholeNumber", 
                type = "integer", min = 0L), BidPrice = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            BidPriceAsPercentageOfOnDemandPrice = structure(logical(0), 
                shape = "NonNegativeDouble", type = "double", 
                min = 0), Configurations = structure(list(structure(list(Classification = structure(logical(0), 
                shape = "String", type = "string"), Configurations = structure(logical(0), 
                shape = "ConfigurationList", type = "list"), 
                Properties = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "StringMap", 
                  type = "map")), shape = "Configuration", type = "structure")), 
                shape = "ConfigurationList", type = "list"), 
            EbsBlockDevices = structure(list(structure(list(VolumeSpecification = structure(list(VolumeType = structure(logical(0), 
                shape = "String", type = "string"), Iops = structure(logical(0), 
                shape = "Integer", type = "integer"), SizeInGB = structure(logical(0), 
                shape = "Integer", type = "integer")), shape = "VolumeSpecification", 
                type = "structure"), Device = structure(logical(0), 
                shape = "String", type = "string")), shape = "EbsBlockDevice", 
                type = "structure")), shape = "EbsBlockDeviceList", 
                type = "list"), EbsOptimized = structure(logical(0), 
                shape = "BooleanObject", type = "boolean")), 
            shape = "InstanceTypeSpecification", type = "structure")), 
            shape = "InstanceTypeSpecificationList", type = "list"), 
        LaunchSpecifications = structure(list(SpotSpecification = structure(list(TimeoutDurationMinutes = structure(logical(0), 
            shape = "WholeNumber", type = "integer", min = 0L), 
            TimeoutAction = structure(logical(0), shape = "SpotProvisioningTimeoutAction", 
                type = "string"), BlockDurationMinutes = structure(logical(0), 
                shape = "WholeNumber", type = "integer", min = 0L)), 
            shape = "SpotProvisioningSpecification", type = "structure")), 
            shape = "InstanceFleetProvisioningSpecifications", 
            type = "structure")), shape = "InstanceFleet", type = "structure")), 
        shape = "InstanceFleetList", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListInstanceFleetsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListInstanceGroupsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceGroups = structure(list(structure(list(Id = structure(logical(0), 
        shape = "InstanceGroupId", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Market = structure(logical(0), 
        shape = "MarketType", type = "string"), InstanceGroupType = structure(logical(0), 
        shape = "InstanceGroupType", type = "string"), BidPrice = structure(logical(0), 
        shape = "String", type = "string"), InstanceType = structure(logical(0), 
        shape = "InstanceType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        RequestedInstanceCount = structure(logical(0), shape = "Integer", 
            type = "integer"), RunningInstanceCount = structure(logical(0), 
            shape = "Integer", type = "integer"), Status = structure(list(State = structure(logical(0), 
            shape = "InstanceGroupState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "InstanceGroupStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string")), shape = "InstanceGroupStateChangeReason", 
            type = "structure"), Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "InstanceGroupTimeline", 
            type = "structure")), shape = "InstanceGroupStatus", 
            type = "structure"), Configurations = structure(list(structure(list(Classification = structure(logical(0), 
            shape = "String", type = "string"), Configurations = structure(logical(0), 
            shape = "ConfigurationList", type = "list"), Properties = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map")), shape = "Configuration", type = "structure")), 
            shape = "ConfigurationList", type = "list"), EbsBlockDevices = structure(list(structure(list(VolumeSpecification = structure(list(VolumeType = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "Integer", type = "integer"), SizeInGB = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "VolumeSpecification", 
            type = "structure"), Device = structure(logical(0), 
            shape = "String", type = "string")), shape = "EbsBlockDevice", 
            type = "structure")), shape = "EbsBlockDeviceList", 
            type = "list"), EbsOptimized = structure(logical(0), 
            shape = "BooleanObject", type = "boolean"), ShrinkPolicy = structure(list(DecommissionTimeout = structure(logical(0), 
            shape = "Integer", type = "integer"), InstanceResizePolicy = structure(list(InstancesToTerminate = structure(list(structure(logical(0), 
            shape = "InstanceId", type = "string")), shape = "EC2InstanceIdsList", 
            type = "list"), InstancesToProtect = structure(list(structure(logical(0), 
            shape = "InstanceId", type = "string")), shape = "EC2InstanceIdsList", 
            type = "list"), InstanceTerminationTimeout = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "InstanceResizePolicy", 
            type = "structure")), shape = "ShrinkPolicy", type = "structure"), 
        AutoScalingPolicy = structure(list(Status = structure(list(State = structure(logical(0), 
            shape = "AutoScalingPolicyState", type = "string"), 
            StateChangeReason = structure(list(Code = structure(logical(0), 
                shape = "AutoScalingPolicyStateChangeReasonCode", 
                type = "string"), Message = structure(logical(0), 
                shape = "String", type = "string")), shape = "AutoScalingPolicyStateChangeReason", 
                type = "structure")), shape = "AutoScalingPolicyStatus", 
            type = "structure"), Constraints = structure(list(MinCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ScalingConstraints", 
            type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), Action = structure(list(Market = structure(logical(0), 
            shape = "MarketType", type = "string"), SimpleScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
            shape = "AdjustmentType", type = "string"), ScalingAdjustment = structure(logical(0), 
            shape = "Integer", type = "integer"), CoolDown = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "SimpleScalingPolicyConfiguration", 
            type = "structure")), shape = "ScalingAction", type = "structure"), 
            Trigger = structure(list(CloudWatchAlarmDefinition = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string"), 
                EvaluationPeriods = structure(logical(0), shape = "Integer", 
                  type = "integer"), MetricName = structure(logical(0), 
                  shape = "String", type = "string"), Namespace = structure(logical(0), 
                  shape = "String", type = "string"), Period = structure(logical(0), 
                  shape = "Integer", type = "integer"), Statistic = structure(logical(0), 
                  shape = "Statistic", type = "string"), Threshold = structure(logical(0), 
                  shape = "NonNegativeDouble", type = "double", 
                  min = 0), Unit = structure(logical(0), shape = "Unit", 
                  type = "string"), Dimensions = structure(list(structure(list(Key = structure(logical(0), 
                  shape = "String", type = "string"), Value = structure(logical(0), 
                  shape = "String", type = "string")), shape = "MetricDimension", 
                  type = "structure")), shape = "MetricDimensionList", 
                  type = "list")), shape = "CloudWatchAlarmDefinition", 
                type = "structure")), shape = "ScalingTrigger", 
                type = "structure")), shape = "ScalingRule", 
            type = "structure")), shape = "ScalingRuleList", 
            type = "list")), shape = "AutoScalingPolicyDescription", 
            type = "structure")), shape = "InstanceGroup", type = "structure")), 
        shape = "InstanceGroupList", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListInstanceGroupsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), InstanceGroupId = structure(logical(0), 
        shape = "InstanceGroupId", type = "string"), InstanceGroupTypes = structure(list(structure(logical(0), 
        shape = "InstanceGroupType", type = "string")), shape = "InstanceGroupTypeList", 
        type = "list"), InstanceFleetId = structure(logical(0), 
        shape = "InstanceFleetId", type = "string"), InstanceFleetType = structure(logical(0), 
        shape = "InstanceFleetType", type = "string"), InstanceStates = structure(list(structure(logical(0), 
        shape = "InstanceState", type = "string")), shape = "InstanceStateList", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "ListInstancesInput", type = "structure")
    return(populate(args, shape))
}

list_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(Id = structure(logical(0), 
        shape = "InstanceId", type = "string"), Ec2InstanceId = structure(logical(0), 
        shape = "InstanceId", type = "string"), PublicDnsName = structure(logical(0), 
        shape = "String", type = "string"), PublicIpAddress = structure(logical(0), 
        shape = "String", type = "string"), PrivateDnsName = structure(logical(0), 
        shape = "String", type = "string"), PrivateIpAddress = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(list(State = structure(logical(0), 
        shape = "InstanceState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
        shape = "InstanceStateChangeReasonCode", type = "string"), 
        Message = structure(logical(0), shape = "String", type = "string")), 
        shape = "InstanceStateChangeReason", type = "structure"), 
        Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), ReadyDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "InstanceTimeline", 
            type = "structure")), shape = "InstanceStatus", type = "structure"), 
        InstanceGroupId = structure(logical(0), shape = "String", 
            type = "string"), InstanceFleetId = structure(logical(0), 
            shape = "InstanceFleetId", type = "string"), Market = structure(logical(0), 
            shape = "MarketType", type = "string"), InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        EbsVolumes = structure(list(structure(list(Device = structure(logical(0), 
            shape = "String", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", type = "string")), shape = "EbsVolume", 
            type = "structure")), shape = "EbsVolumeList", type = "list")), 
        shape = "Instance", type = "structure")), shape = "InstanceList", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "ListInstancesOutput", type = "structure")
    return(populate(args, shape))
}

list_security_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "ListSecurityConfigurationsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_security_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityConfigurations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "XmlString", type = "string", max = 10280L, min = 0L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        CreationDateTime = structure(logical(0), shape = "Date", 
            type = "timestamp")), shape = "SecurityConfigurationSummary", 
        type = "structure")), shape = "SecurityConfigurationList", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "ListSecurityConfigurationsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_steps_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), StepStates = structure(list(structure(logical(0), 
        shape = "StepState", type = "string")), shape = "StepStateList", 
        type = "list"), StepIds = structure(list(structure(logical(0), 
        shape = "XmlString", type = "string", max = 10280L, min = 0L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "XmlStringList", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "ListStepsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_steps_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Steps = structure(list(structure(list(Id = structure(logical(0), 
        shape = "StepId", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Config = structure(list(Jar = structure(logical(0), 
        shape = "String", type = "string"), Properties = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringMap", 
        type = "map"), MainClass = structure(logical(0), shape = "String", 
        type = "string"), Args = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list")), shape = "HadoopStepConfig", type = "structure"), 
        ActionOnFailure = structure(logical(0), shape = "ActionOnFailure", 
            type = "string"), Status = structure(list(State = structure(logical(0), 
            shape = "StepState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
            shape = "StepStateChangeReasonCode", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                type = "string")), shape = "StepStateChangeReason", 
            type = "structure"), FailureDetails = structure(list(Reason = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string"), LogFile = structure(logical(0), 
            shape = "String", type = "string")), shape = "FailureDetails", 
            type = "structure"), Timeline = structure(list(CreationDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), StartDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "Date", type = "timestamp")), shape = "StepTimeline", 
            type = "structure")), shape = "StepStatus", type = "structure")), 
        shape = "StepSummary", type = "structure")), shape = "StepSummaryList", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "ListStepsOutput", type = "structure")
    return(populate(args, shape))
}

modify_instance_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), InstanceFleet = structure(list(InstanceFleetId = structure(logical(0), 
        shape = "InstanceFleetId", type = "string"), TargetOnDemandCapacity = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L), TargetSpotCapacity = structure(logical(0), 
        shape = "WholeNumber", type = "integer", min = 0L)), 
        shape = "InstanceFleetModifyConfig", type = "structure")), 
        shape = "ModifyInstanceFleetInput", type = "structure")
    return(populate(args, shape))
}

modify_instance_fleet_output <- function () 
{
    return(list())
}

modify_instance_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), InstanceGroups = structure(list(structure(list(InstanceGroupId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceCount = structure(logical(0), shape = "Integer", 
            type = "integer"), EC2InstanceIdsToTerminate = structure(list(structure(logical(0), 
            shape = "InstanceId", type = "string")), shape = "EC2InstanceIdsToTerminateList", 
            type = "list"), ShrinkPolicy = structure(list(DecommissionTimeout = structure(logical(0), 
            shape = "Integer", type = "integer"), InstanceResizePolicy = structure(list(InstancesToTerminate = structure(list(structure(logical(0), 
            shape = "InstanceId", type = "string")), shape = "EC2InstanceIdsList", 
            type = "list"), InstancesToProtect = structure(list(structure(logical(0), 
            shape = "InstanceId", type = "string")), shape = "EC2InstanceIdsList", 
            type = "list"), InstanceTerminationTimeout = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "InstanceResizePolicy", 
            type = "structure")), shape = "ShrinkPolicy", type = "structure")), 
        shape = "InstanceGroupModifyConfig", type = "structure")), 
        shape = "InstanceGroupModifyConfigList", type = "list")), 
        shape = "ModifyInstanceGroupsInput", type = "structure")
    return(populate(args, shape))
}

modify_instance_groups_output <- function () 
{
    return(list())
}

put_auto_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), InstanceGroupId = structure(logical(0), 
        shape = "InstanceGroupId", type = "string"), AutoScalingPolicy = structure(list(Constraints = structure(list(MinCapacity = structure(logical(0), 
        shape = "Integer", type = "integer"), MaxCapacity = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ScalingConstraints", 
        type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Action = structure(list(Market = structure(logical(0), 
        shape = "MarketType", type = "string"), SimpleScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
        shape = "AdjustmentType", type = "string"), ScalingAdjustment = structure(logical(0), 
        shape = "Integer", type = "integer"), CoolDown = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "SimpleScalingPolicyConfiguration", 
        type = "structure")), shape = "ScalingAction", type = "structure"), 
        Trigger = structure(list(CloudWatchAlarmDefinition = structure(list(ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), EvaluationPeriods = structure(logical(0), 
            shape = "Integer", type = "integer"), MetricName = structure(logical(0), 
            shape = "String", type = "string"), Namespace = structure(logical(0), 
            shape = "String", type = "string"), Period = structure(logical(0), 
            shape = "Integer", type = "integer"), Statistic = structure(logical(0), 
            shape = "Statistic", type = "string"), Threshold = structure(logical(0), 
            shape = "NonNegativeDouble", type = "double", min = 0), 
            Unit = structure(logical(0), shape = "Unit", type = "string"), 
            Dimensions = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", type = "string"), Value = structure(logical(0), 
                shape = "String", type = "string")), shape = "MetricDimension", 
                type = "structure")), shape = "MetricDimensionList", 
                type = "list")), shape = "CloudWatchAlarmDefinition", 
            type = "structure")), shape = "ScalingTrigger", type = "structure")), 
        shape = "ScalingRule", type = "structure")), shape = "ScalingRuleList", 
        type = "list")), shape = "AutoScalingPolicy", type = "structure")), 
        shape = "PutAutoScalingPolicyInput", type = "structure")
    return(populate(args, shape))
}

put_auto_scaling_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), InstanceGroupId = structure(logical(0), 
        shape = "InstanceGroupId", type = "string"), AutoScalingPolicy = structure(list(Status = structure(list(State = structure(logical(0), 
        shape = "AutoScalingPolicyState", type = "string"), StateChangeReason = structure(list(Code = structure(logical(0), 
        shape = "AutoScalingPolicyStateChangeReasonCode", type = "string"), 
        Message = structure(logical(0), shape = "String", type = "string")), 
        shape = "AutoScalingPolicyStateChangeReason", type = "structure")), 
        shape = "AutoScalingPolicyStatus", type = "structure"), 
        Constraints = structure(list(MinCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "ScalingConstraints", 
            type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), Action = structure(list(Market = structure(logical(0), 
            shape = "MarketType", type = "string"), SimpleScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
            shape = "AdjustmentType", type = "string"), ScalingAdjustment = structure(logical(0), 
            shape = "Integer", type = "integer"), CoolDown = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "SimpleScalingPolicyConfiguration", 
            type = "structure")), shape = "ScalingAction", type = "structure"), 
            Trigger = structure(list(CloudWatchAlarmDefinition = structure(list(ComparisonOperator = structure(logical(0), 
                shape = "ComparisonOperator", type = "string"), 
                EvaluationPeriods = structure(logical(0), shape = "Integer", 
                  type = "integer"), MetricName = structure(logical(0), 
                  shape = "String", type = "string"), Namespace = structure(logical(0), 
                  shape = "String", type = "string"), Period = structure(logical(0), 
                  shape = "Integer", type = "integer"), Statistic = structure(logical(0), 
                  shape = "Statistic", type = "string"), Threshold = structure(logical(0), 
                  shape = "NonNegativeDouble", type = "double", 
                  min = 0), Unit = structure(logical(0), shape = "Unit", 
                  type = "string"), Dimensions = structure(list(structure(list(Key = structure(logical(0), 
                  shape = "String", type = "string"), Value = structure(logical(0), 
                  shape = "String", type = "string")), shape = "MetricDimension", 
                  type = "structure")), shape = "MetricDimensionList", 
                  type = "list")), shape = "CloudWatchAlarmDefinition", 
                type = "structure")), shape = "ScalingTrigger", 
                type = "structure")), shape = "ScalingRule", 
            type = "structure")), shape = "ScalingRuleList", 
            type = "list")), shape = "AutoScalingPolicyDescription", 
        type = "structure")), shape = "PutAutoScalingPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_auto_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string"), InstanceGroupId = structure(logical(0), 
        shape = "InstanceGroupId", type = "string")), shape = "RemoveAutoScalingPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

remove_auto_scaling_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveAutoScalingPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list")), shape = "RemoveTagsInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsOutput", type = "structure")
    return(populate(args, shape))
}

run_job_flow_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "XmlStringMaxLen256", 
        type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LogUri = structure(logical(0), shape = "XmlString", type = "string", 
            max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AdditionalInfo = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AmiVersion = structure(logical(0), shape = "XmlStringMaxLen256", 
            type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ReleaseLabel = structure(logical(0), shape = "XmlStringMaxLen256", 
            type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Instances = structure(list(MasterInstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string", max = 256L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            SlaveInstanceType = structure(logical(0), shape = "InstanceType", 
                type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InstanceCount = structure(logical(0), shape = "Integer", 
                type = "integer"), InstanceGroups = structure(list(structure(list(Name = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Market = structure(logical(0), shape = "MarketType", 
                  type = "string"), InstanceRole = structure(logical(0), 
                  shape = "InstanceRoleType", type = "string"), 
                BidPrice = structure(logical(0), shape = "XmlStringMaxLen256", 
                  type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InstanceType = structure(logical(0), shape = "InstanceType", 
                  type = "string", max = 256L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InstanceCount = structure(logical(0), shape = "Integer", 
                  type = "integer"), Configurations = structure(list(structure(list(Classification = structure(logical(0), 
                  shape = "String", type = "string"), Configurations = structure(logical(0), 
                  shape = "ConfigurationList", type = "list"), 
                  Properties = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "StringMap", 
                    type = "map")), shape = "Configuration", 
                  type = "structure")), shape = "ConfigurationList", 
                  type = "list"), EbsConfiguration = structure(list(EbsBlockDeviceConfigs = structure(list(structure(list(VolumeSpecification = structure(list(VolumeType = structure(logical(0), 
                  shape = "String", type = "string"), Iops = structure(logical(0), 
                  shape = "Integer", type = "integer"), SizeInGB = structure(logical(0), 
                  shape = "Integer", type = "integer")), shape = "VolumeSpecification", 
                  type = "structure"), VolumesPerInstance = structure(logical(0), 
                  shape = "Integer", type = "integer")), shape = "EbsBlockDeviceConfig", 
                  type = "structure")), shape = "EbsBlockDeviceConfigList", 
                  type = "list"), EbsOptimized = structure(logical(0), 
                  shape = "BooleanObject", type = "boolean")), 
                  shape = "EbsConfiguration", type = "structure"), 
                AutoScalingPolicy = structure(list(Constraints = structure(list(MinCapacity = structure(logical(0), 
                  shape = "Integer", type = "integer"), MaxCapacity = structure(logical(0), 
                  shape = "Integer", type = "integer")), shape = "ScalingConstraints", 
                  type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "String", type = "string"), Description = structure(logical(0), 
                  shape = "String", type = "string"), Action = structure(list(Market = structure(logical(0), 
                  shape = "MarketType", type = "string"), SimpleScalingPolicyConfiguration = structure(list(AdjustmentType = structure(logical(0), 
                  shape = "AdjustmentType", type = "string"), 
                  ScalingAdjustment = structure(logical(0), shape = "Integer", 
                    type = "integer"), CoolDown = structure(logical(0), 
                    shape = "Integer", type = "integer")), shape = "SimpleScalingPolicyConfiguration", 
                  type = "structure")), shape = "ScalingAction", 
                  type = "structure"), Trigger = structure(list(CloudWatchAlarmDefinition = structure(list(ComparisonOperator = structure(logical(0), 
                  shape = "ComparisonOperator", type = "string"), 
                  EvaluationPeriods = structure(logical(0), shape = "Integer", 
                    type = "integer"), MetricName = structure(logical(0), 
                    shape = "String", type = "string"), Namespace = structure(logical(0), 
                    shape = "String", type = "string"), Period = structure(logical(0), 
                    shape = "Integer", type = "integer"), Statistic = structure(logical(0), 
                    shape = "Statistic", type = "string"), Threshold = structure(logical(0), 
                    shape = "NonNegativeDouble", type = "double", 
                    min = 0), Unit = structure(logical(0), shape = "Unit", 
                    type = "string"), Dimensions = structure(list(structure(list(Key = structure(logical(0), 
                    shape = "String", type = "string"), Value = structure(logical(0), 
                    shape = "String", type = "string")), shape = "MetricDimension", 
                    type = "structure")), shape = "MetricDimensionList", 
                    type = "list")), shape = "CloudWatchAlarmDefinition", 
                  type = "structure")), shape = "ScalingTrigger", 
                  type = "structure")), shape = "ScalingRule", 
                  type = "structure")), shape = "ScalingRuleList", 
                  type = "list")), shape = "AutoScalingPolicy", 
                  type = "structure")), shape = "InstanceGroupConfig", 
                type = "structure")), shape = "InstanceGroupConfigList", 
                type = "list"), InstanceFleets = structure(list(structure(list(Name = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InstanceFleetType = structure(logical(0), shape = "InstanceFleetType", 
                  type = "string"), TargetOnDemandCapacity = structure(logical(0), 
                  shape = "WholeNumber", type = "integer", min = 0L), 
                TargetSpotCapacity = structure(logical(0), shape = "WholeNumber", 
                  type = "integer", min = 0L), InstanceTypeConfigs = structure(list(structure(list(InstanceType = structure(logical(0), 
                  shape = "InstanceType", type = "string", max = 256L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                  WeightedCapacity = structure(logical(0), shape = "WholeNumber", 
                    type = "integer", min = 0L), BidPrice = structure(logical(0), 
                    shape = "XmlStringMaxLen256", type = "string", 
                    max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                  BidPriceAsPercentageOfOnDemandPrice = structure(logical(0), 
                    shape = "NonNegativeDouble", type = "double", 
                    min = 0), EbsConfiguration = structure(list(EbsBlockDeviceConfigs = structure(list(structure(list(VolumeSpecification = structure(list(VolumeType = structure(logical(0), 
                    shape = "String", type = "string"), Iops = structure(logical(0), 
                    shape = "Integer", type = "integer"), SizeInGB = structure(logical(0), 
                    shape = "Integer", type = "integer")), shape = "VolumeSpecification", 
                    type = "structure"), VolumesPerInstance = structure(logical(0), 
                    shape = "Integer", type = "integer")), shape = "EbsBlockDeviceConfig", 
                    type = "structure")), shape = "EbsBlockDeviceConfigList", 
                    type = "list"), EbsOptimized = structure(logical(0), 
                    shape = "BooleanObject", type = "boolean")), 
                    shape = "EbsConfiguration", type = "structure"), 
                  Configurations = structure(list(structure(list(Classification = structure(logical(0), 
                    shape = "String", type = "string"), Configurations = structure(logical(0), 
                    shape = "ConfigurationList", type = "list"), 
                    Properties = structure(list(structure(logical(0), 
                      shape = "String", type = "string")), shape = "StringMap", 
                      type = "map")), shape = "Configuration", 
                    type = "structure")), shape = "ConfigurationList", 
                    type = "list")), shape = "InstanceTypeConfig", 
                  type = "structure")), shape = "InstanceTypeConfigList", 
                  type = "list"), LaunchSpecifications = structure(list(SpotSpecification = structure(list(TimeoutDurationMinutes = structure(logical(0), 
                  shape = "WholeNumber", type = "integer", min = 0L), 
                  TimeoutAction = structure(logical(0), shape = "SpotProvisioningTimeoutAction", 
                    type = "string"), BlockDurationMinutes = structure(logical(0), 
                    shape = "WholeNumber", type = "integer", 
                    min = 0L)), shape = "SpotProvisioningSpecification", 
                  type = "structure")), shape = "InstanceFleetProvisioningSpecifications", 
                  type = "structure")), shape = "InstanceFleetConfig", 
                type = "structure")), shape = "InstanceFleetConfigList", 
                type = "list"), Ec2KeyName = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                AvailabilityZones = structure(list(structure(logical(0), 
                  shape = "XmlStringMaxLen256", type = "string", 
                  max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringMaxLen256List", type = "list")), 
                shape = "PlacementType", type = "structure"), 
            KeepJobFlowAliveWhenNoSteps = structure(logical(0), 
                shape = "Boolean", type = "boolean"), TerminationProtected = structure(logical(0), 
                shape = "Boolean", type = "boolean"), HadoopVersion = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Ec2SubnetId = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Ec2SubnetIds = structure(list(structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "XmlStringMaxLen256List", type = "list"), 
            EmrManagedMasterSecurityGroup = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            EmrManagedSlaveSecurityGroup = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ServiceAccessSecurityGroup = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            AdditionalMasterSecurityGroups = structure(list(structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "SecurityGroupsList", type = "list"), 
            AdditionalSlaveSecurityGroups = structure(list(structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "SecurityGroupsList", type = "list")), 
            shape = "JobFlowInstancesConfig", type = "structure"), 
        Steps = structure(list(structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ActionOnFailure = structure(logical(0), shape = "ActionOnFailure", 
                type = "string"), HadoopJarStep = structure(list(Properties = structure(list(structure(list(Key = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Value = structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "KeyValue", type = "structure")), shape = "KeyValueList", 
                type = "list"), Jar = structure(logical(0), shape = "XmlString", 
                type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                MainClass = structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Args = structure(list(structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringList", type = "list")), shape = "HadoopJarStepConfig", 
                type = "structure")), shape = "StepConfig", type = "structure")), 
            shape = "StepConfigList", type = "list"), BootstrapActions = structure(list(structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ScriptBootstrapAction = structure(list(Path = structure(logical(0), 
                shape = "XmlString", type = "string", max = 10280L, 
                min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                Args = structure(list(structure(logical(0), shape = "XmlString", 
                  type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                  shape = "XmlStringList", type = "list")), shape = "ScriptBootstrapActionConfig", 
                type = "structure")), shape = "BootstrapActionConfig", 
            type = "structure")), shape = "BootstrapActionConfigList", 
            type = "list"), SupportedProducts = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "SupportedProductsList", type = "list"), 
        NewSupportedProducts = structure(list(structure(list(Name = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Args = structure(list(structure(logical(0), shape = "XmlString", 
                type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "XmlStringList", type = "list")), shape = "SupportedProductConfig", 
            type = "structure")), shape = "NewSupportedProductsList", 
            type = "list"), Applications = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string"), Args = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AdditionalInfo = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map")), shape = "Application", type = "structure")), 
            shape = "ApplicationList", type = "list"), Configurations = structure(list(structure(list(Classification = structure(logical(0), 
            shape = "String", type = "string"), Configurations = structure(logical(0), 
            shape = "ConfigurationList", type = "list"), Properties = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map")), shape = "Configuration", type = "structure")), 
            shape = "ConfigurationList", type = "list"), VisibleToAllUsers = structure(logical(0), 
            shape = "Boolean", type = "boolean"), JobFlowRole = structure(logical(0), 
            shape = "XmlString", type = "string", max = 10280L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ServiceRole = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list"), 
        SecurityConfiguration = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingRole = structure(logical(0), shape = "XmlString", 
            type = "string", max = 10280L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScaleDownBehavior = structure(logical(0), shape = "ScaleDownBehavior", 
            type = "string"), CustomAmiId = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        EbsRootVolumeSize = structure(logical(0), shape = "Integer", 
            type = "integer"), RepoUpgradeOnBoot = structure(logical(0), 
            shape = "RepoUpgradeOnBoot", type = "string"), KerberosAttributes = structure(list(Realm = structure(logical(0), 
            shape = "XmlStringMaxLen256", type = "string", max = 256L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            KdcAdminPassword = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            CrossRealmTrustPrincipalPassword = structure(logical(0), 
                shape = "XmlStringMaxLen256", type = "string", 
                max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ADDomainJoinUser = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ADDomainJoinPassword = structure(logical(0), shape = "XmlStringMaxLen256", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "KerberosAttributes", type = "structure")), 
        shape = "RunJobFlowInput", type = "structure")
    return(populate(args, shape))
}

run_job_flow_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlowId = structure(logical(0), 
        shape = "XmlStringMaxLen256", type = "string", max = 256L, 
        min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "RunJobFlowOutput", type = "structure")
    return(populate(args, shape))
}

set_termination_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlowIds = structure(list(structure(logical(0), 
        shape = "XmlString", type = "string", max = 10280L, min = 0L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "XmlStringList", type = "list"), TerminationProtected = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "SetTerminationProtectionInput", 
        type = "structure")
    return(populate(args, shape))
}

set_termination_protection_output <- function () 
{
    return(list())
}

set_visible_to_all_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlowIds = structure(list(structure(logical(0), 
        shape = "XmlString", type = "string", max = 10280L, min = 0L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "XmlStringList", type = "list"), VisibleToAllUsers = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "SetVisibleToAllUsersInput", 
        type = "structure")
    return(populate(args, shape))
}

set_visible_to_all_users_output <- function () 
{
    return(list())
}

terminate_job_flows_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobFlowIds = structure(list(structure(logical(0), 
        shape = "XmlString", type = "string", max = 10280L, min = 0L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "XmlStringList", type = "list")), shape = "TerminateJobFlowsInput", 
        type = "structure")
    return(populate(args, shape))
}

terminate_job_flows_output <- function () 
{
    return(list())
}
