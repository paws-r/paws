attach_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "InstanceIds", type = "list"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AttachInstancesQuery", type = "structure")
    return(populate(args, shape))
}

attach_instances_output <- function () 
{
    return(list())
}

attach_load_balancer_target_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TargetGroupARNs = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen511", type = "string", max = 511L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TargetGroupARNs", type = "list")), shape = "AttachLoadBalancerTargetGroupsType", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancer_target_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AttachLoadBalancerTargetGroupsResultType", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LoadBalancerNames = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LoadBalancerNames", type = "list")), shape = "AttachLoadBalancersType", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AttachLoadBalancersResultType", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_scheduled_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionNames = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ScheduledActionNames", type = "list")), 
        shape = "BatchDeleteScheduledActionType", type = "structure")
    return(populate(args, shape))
}

batch_delete_scheduled_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedScheduledActions = structure(list(structure(list(ScheduledActionName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ErrorCode = structure(logical(0), shape = "XmlStringMaxLen64", 
            type = "string", max = 64L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ErrorMessage = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "FailedScheduledUpdateGroupActionRequest", type = "structure")), 
        shape = "FailedScheduledUpdateGroupActionRequests", type = "list")), 
        shape = "BatchDeleteScheduledActionAnswer", type = "structure")
    return(populate(args, shape))
}

batch_put_scheduled_update_group_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledUpdateGroupActions = structure(list(structure(list(ScheduledActionName = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            StartTime = structure(logical(0), shape = "TimestampType", 
                type = "timestamp"), EndTime = structure(logical(0), 
                shape = "TimestampType", type = "timestamp"), 
            Recurrence = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            MinSize = structure(logical(0), shape = "AutoScalingGroupMinSize", 
                type = "integer"), MaxSize = structure(logical(0), 
                shape = "AutoScalingGroupMaxSize", type = "integer"), 
            DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
                type = "integer")), shape = "ScheduledUpdateGroupActionRequest", 
            type = "structure")), shape = "ScheduledUpdateGroupActionRequests", 
            type = "list")), shape = "BatchPutScheduledUpdateGroupActionType", 
        type = "structure")
    return(populate(args, shape))
}

batch_put_scheduled_update_group_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedScheduledUpdateGroupActions = structure(list(structure(list(ScheduledActionName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ErrorCode = structure(logical(0), shape = "XmlStringMaxLen64", 
            type = "string", max = 64L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ErrorMessage = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "FailedScheduledUpdateGroupActionRequest", type = "structure")), 
        shape = "FailedScheduledUpdateGroupActionRequests", type = "list")), 
        shape = "BatchPutScheduledUpdateGroupActionAnswer", type = "structure")
    return(populate(args, shape))
}

complete_lifecycle_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleHookName = structure(logical(0), 
        shape = "AsciiStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LifecycleActionToken = structure(logical(0), shape = "LifecycleActionToken", 
            type = "string", max = 36L, min = 36L), LifecycleActionResult = structure(logical(0), 
            shape = "LifecycleActionResult", type = "string"), 
        InstanceId = structure(logical(0), shape = "XmlStringMaxLen19", 
            type = "string", max = 19L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "CompleteLifecycleActionType", type = "structure")
    return(populate(args, shape))
}

complete_lifecycle_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CompleteLifecycleActionAnswer", 
        type = "structure")
    return(populate(args, shape))
}

create_auto_scaling_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchConfigurationName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LaunchTemplateName = structure(logical(0), shape = "LaunchTemplateName", 
                type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
            Version = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LaunchTemplateSpecification", type = "structure"), 
        InstanceId = structure(logical(0), shape = "XmlStringMaxLen19", 
            type = "string", max = 19L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MinSize = structure(logical(0), shape = "AutoScalingGroupMinSize", 
            type = "integer"), MaxSize = structure(logical(0), 
            shape = "AutoScalingGroupMaxSize", type = "integer"), 
        DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
            type = "integer"), DefaultCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "AvailabilityZones", type = "list", min = 1L), 
        LoadBalancerNames = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LoadBalancerNames", type = "list"), TargetGroupARNs = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen511", type = "string", max = 511L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TargetGroupARNs", type = "list"), HealthCheckType = structure(logical(0), 
            shape = "XmlStringMaxLen32", type = "string", max = 32L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HealthCheckGracePeriod = structure(logical(0), shape = "HealthCheckGracePeriod", 
            type = "integer"), PlacementGroup = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        VPCZoneIdentifier = structure(logical(0), shape = "XmlStringMaxLen2047", 
            type = "string", max = 2047L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TerminationPolicies = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen1600", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TerminationPolicies", type = "list"), NewInstancesProtectedFromScaleIn = structure(logical(0), 
            shape = "InstanceProtected", type = "boolean"), LifecycleHookSpecificationList = structure(list(structure(list(LifecycleHookName = structure(logical(0), 
            shape = "AsciiStringMaxLen255", type = "string", 
            max = 255L, min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+"), 
            LifecycleTransition = structure(logical(0), shape = "LifecycleTransition", 
                type = "string"), NotificationMetadata = structure(logical(0), 
                shape = "XmlStringMaxLen1023", type = "string", 
                max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            HeartbeatTimeout = structure(logical(0), shape = "HeartbeatTimeout", 
                type = "integer"), DefaultResult = structure(logical(0), 
                shape = "LifecycleActionResult", type = "string"), 
            NotificationTargetARN = structure(logical(0), shape = "NotificationTargetResourceName", 
                type = "string", max = 1600L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            RoleARN = structure(logical(0), shape = "ResourceName", 
                type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LifecycleHookSpecification", type = "structure")), 
            shape = "LifecycleHookSpecifications", type = "list"), 
        Tags = structure(list(structure(list(ResourceId = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ResourceType = structure(logical(0), shape = "XmlString", 
                type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Key = structure(logical(0), shape = "TagKey", type = "string", 
                max = 128L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            PropagateAtLaunch = structure(logical(0), shape = "PropagateAtLaunch", 
                type = "boolean")), shape = "Tag", type = "structure")), 
            shape = "Tags", type = "list"), ServiceLinkedRoleARN = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "CreateAutoScalingGroupType", type = "structure")
    return(populate(args, shape))
}

create_auto_scaling_group_output <- function () 
{
    return(list())
}

create_launch_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchConfigurationName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ImageId = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        KeyName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        SecurityGroups = structure(list(structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "SecurityGroups", type = "list"), ClassicLinkVPCId = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ClassicLinkVPCSecurityGroups = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ClassicLinkVPCSecurityGroups", type = "list"), 
        UserData = structure(logical(0), shape = "XmlStringUserData", 
            type = "string", max = 21847L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceId = structure(logical(0), shape = "XmlStringMaxLen19", 
            type = "string", max = 19L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceType = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        KernelId = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        RamdiskId = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        BlockDeviceMappings = structure(list(structure(list(VirtualName = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            DeviceName = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Ebs = structure(list(SnapshotId = structure(logical(0), 
                shape = "XmlStringMaxLen255", type = "string", 
                max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                VolumeSize = structure(logical(0), shape = "BlockDeviceEbsVolumeSize", 
                  type = "integer", max = 16384L, min = 1L), 
                VolumeType = structure(logical(0), shape = "BlockDeviceEbsVolumeType", 
                  type = "string", max = 255L, min = 1L), DeleteOnTermination = structure(logical(0), 
                  shape = "BlockDeviceEbsDeleteOnTermination", 
                  type = "boolean"), Iops = structure(logical(0), 
                  shape = "BlockDeviceEbsIops", type = "integer", 
                  max = 20000L, min = 100L), Encrypted = structure(logical(0), 
                  shape = "BlockDeviceEbsEncrypted", type = "boolean")), 
                shape = "Ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "NoDevice", type = "boolean")), shape = "BlockDeviceMapping", 
            type = "structure")), shape = "BlockDeviceMappings", 
            type = "list"), InstanceMonitoring = structure(list(Enabled = structure(logical(0), 
            shape = "MonitoringEnabled", type = "boolean")), 
            shape = "InstanceMonitoring", type = "structure"), 
        SpotPrice = structure(logical(0), shape = "SpotPrice", 
            type = "string", max = 255L, min = 1L), IamInstanceProfile = structure(logical(0), 
            shape = "XmlStringMaxLen1600", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        EbsOptimized = structure(logical(0), shape = "EbsOptimized", 
            type = "boolean"), AssociatePublicIpAddress = structure(logical(0), 
            shape = "AssociatePublicIpAddress", type = "boolean"), 
        PlacementTenancy = structure(logical(0), shape = "XmlStringMaxLen64", 
            type = "string", max = 64L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "CreateLaunchConfigurationType", type = "structure")
    return(populate(args, shape))
}

create_launch_configuration_output <- function () 
{
    return(list())
}

create_or_update_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(ResourceId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ResourceType = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Key = structure(logical(0), shape = "TagKey", type = "string", 
            max = 128L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PropagateAtLaunch = structure(logical(0), shape = "PropagateAtLaunch", 
            type = "boolean")), shape = "Tag", type = "structure")), 
        shape = "Tags", type = "list")), shape = "CreateOrUpdateTagsType", 
        type = "structure")
    return(populate(args, shape))
}

create_or_update_tags_output <- function () 
{
    return(list())
}

delete_auto_scaling_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ForceDelete = structure(logical(0), shape = "ForceDelete", 
            type = "boolean")), shape = "DeleteAutoScalingGroupType", 
        type = "structure")
    return(populate(args, shape))
}

delete_auto_scaling_group_output <- function () 
{
    return(list())
}

delete_launch_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchConfigurationName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "LaunchConfigurationNameType", type = "structure")
    return(populate(args, shape))
}

delete_launch_configuration_output <- function () 
{
    return(list())
}

delete_lifecycle_hook_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleHookName = structure(logical(0), 
        shape = "AsciiStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DeleteLifecycleHookType", type = "structure")
    return(populate(args, shape))
}

delete_lifecycle_hook_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLifecycleHookAnswer", 
        type = "structure")
    return(populate(args, shape))
}

delete_notification_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TopicARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DeleteNotificationConfigurationType", type = "structure")
    return(populate(args, shape))
}

delete_notification_configuration_output <- function () 
{
    return(list())
}

delete_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DeletePolicyType", type = "structure")
    return(populate(args, shape))
}

delete_policy_output <- function () 
{
    return(list())
}

delete_scheduled_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DeleteScheduledActionType", type = "structure")
    return(populate(args, shape))
}

delete_scheduled_action_output <- function () 
{
    return(list())
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(ResourceId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ResourceType = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Key = structure(logical(0), shape = "TagKey", type = "string", 
            max = 128L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PropagateAtLaunch = structure(logical(0), shape = "PropagateAtLaunch", 
            type = "boolean")), shape = "Tag", type = "structure")), 
        shape = "Tags", type = "list")), shape = "DeleteTagsType", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function () 
{
    return(list())
}

describe_account_limits_input <- function () 
{
    return(list())
}

describe_account_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxNumberOfAutoScalingGroups = structure(logical(0), 
        shape = "MaxNumberOfAutoScalingGroups", type = "integer"), 
        MaxNumberOfLaunchConfigurations = structure(logical(0), 
            shape = "MaxNumberOfLaunchConfigurations", type = "integer"), 
        NumberOfAutoScalingGroups = structure(logical(0), shape = "NumberOfAutoScalingGroups", 
            type = "integer"), NumberOfLaunchConfigurations = structure(logical(0), 
            shape = "NumberOfLaunchConfigurations", type = "integer")), 
        shape = "DescribeAccountLimitsAnswer", type = "structure")
    return(populate(args, shape))
}

describe_adjustment_types_input <- function () 
{
    return(list())
}

describe_adjustment_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdjustmentTypes = structure(list(structure(list(AdjustmentType = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AdjustmentType", type = "structure")), shape = "AdjustmentTypes", 
        type = "list")), shape = "DescribeAdjustmentTypesAnswer", 
        type = "structure")
    return(populate(args, shape))
}

describe_auto_scaling_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupNames = structure(list(structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingGroupNames", type = "list"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "AutoScalingGroupNamesType", 
        type = "structure")
    return(populate(args, shape))
}

describe_auto_scaling_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroups = structure(list(structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchConfigurationName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LaunchTemplateName = structure(logical(0), shape = "LaunchTemplateName", 
                type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
            Version = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LaunchTemplateSpecification", type = "structure"), 
        MinSize = structure(logical(0), shape = "AutoScalingGroupMinSize", 
            type = "integer"), MaxSize = structure(logical(0), 
            shape = "AutoScalingGroupMaxSize", type = "integer"), 
        DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
            type = "integer"), DefaultCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "AvailabilityZones", type = "list", min = 1L), 
        LoadBalancerNames = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LoadBalancerNames", type = "list"), TargetGroupARNs = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen511", type = "string", max = 511L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TargetGroupARNs", type = "list"), HealthCheckType = structure(logical(0), 
            shape = "XmlStringMaxLen32", type = "string", max = 32L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HealthCheckGracePeriod = structure(logical(0), shape = "HealthCheckGracePeriod", 
            type = "integer"), Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
            shape = "XmlStringMaxLen19", type = "string", max = 19L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            AvailabilityZone = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LifecycleState = structure(logical(0), shape = "LifecycleState", 
                type = "string"), HealthStatus = structure(logical(0), 
                shape = "XmlStringMaxLen32", type = "string", 
                max = 32L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LaunchConfigurationName = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
                shape = "XmlStringMaxLen255", type = "string", 
                max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                LaunchTemplateName = structure(logical(0), shape = "LaunchTemplateName", 
                  type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
                Version = structure(logical(0), shape = "XmlStringMaxLen255", 
                  type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "LaunchTemplateSpecification", type = "structure"), 
            ProtectedFromScaleIn = structure(logical(0), shape = "InstanceProtected", 
                type = "boolean")), shape = "Instance", type = "structure")), 
            shape = "Instances", type = "list"), CreatedTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), SuspendedProcesses = structure(list(structure(list(ProcessName = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            SuspensionReason = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "SuspendedProcess", type = "structure")), 
            shape = "SuspendedProcesses", type = "list"), PlacementGroup = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        VPCZoneIdentifier = structure(logical(0), shape = "XmlStringMaxLen2047", 
            type = "string", max = 2047L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        EnabledMetrics = structure(list(structure(list(Metric = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Granularity = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "EnabledMetric", type = "structure")), shape = "EnabledMetrics", 
            type = "list"), Status = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Tags = structure(list(structure(list(ResourceId = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ResourceType = structure(logical(0), shape = "XmlString", 
                type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Key = structure(logical(0), shape = "TagKey", type = "string", 
                max = 128L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            PropagateAtLaunch = structure(logical(0), shape = "PropagateAtLaunch", 
                type = "boolean")), shape = "TagDescription", 
            type = "structure")), shape = "TagDescriptionList", 
            type = "list"), TerminationPolicies = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen1600", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TerminationPolicies", type = "list"), NewInstancesProtectedFromScaleIn = structure(logical(0), 
            shape = "InstanceProtected", type = "boolean"), ServiceLinkedRoleARN = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingGroup", type = "structure")), shape = "AutoScalingGroups", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingGroupsType", type = "structure")
    return(populate(args, shape))
}

describe_auto_scaling_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "InstanceIds", type = "list"), MaxRecords = structure(logical(0), 
        shape = "MaxRecords", type = "integer"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeAutoScalingInstancesType", type = "structure")
    return(populate(args, shape))
}

describe_auto_scaling_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingInstances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AvailabilityZone = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LifecycleState = structure(logical(0), shape = "XmlStringMaxLen32", 
            type = "string", max = 32L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HealthStatus = structure(logical(0), shape = "XmlStringMaxLen32", 
            type = "string", max = 32L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchConfigurationName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LaunchTemplateName = structure(logical(0), shape = "LaunchTemplateName", 
                type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
            Version = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LaunchTemplateSpecification", type = "structure"), 
        ProtectedFromScaleIn = structure(logical(0), shape = "InstanceProtected", 
            type = "boolean")), shape = "AutoScalingInstanceDetails", 
        type = "structure")), shape = "AutoScalingInstances", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingInstancesType", type = "structure")
    return(populate(args, shape))
}

describe_auto_scaling_notification_types_input <- function () 
{
    return(list())
}

describe_auto_scaling_notification_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingNotificationTypes = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingNotificationTypes", type = "list")), 
        shape = "DescribeAutoScalingNotificationTypesAnswer", 
        type = "structure")
    return(populate(args, shape))
}

describe_launch_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchConfigurationNames = structure(list(structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "LaunchConfigurationNames", type = "list"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "LaunchConfigurationNamesType", 
        type = "structure")
    return(populate(args, shape))
}

describe_launch_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchConfigurations = structure(list(structure(list(LaunchConfigurationName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchConfigurationARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ImageId = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        KeyName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        SecurityGroups = structure(list(structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "SecurityGroups", type = "list"), ClassicLinkVPCId = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ClassicLinkVPCSecurityGroups = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ClassicLinkVPCSecurityGroups", type = "list"), 
        UserData = structure(logical(0), shape = "XmlStringUserData", 
            type = "string", max = 21847L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        InstanceType = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        KernelId = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        RamdiskId = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        BlockDeviceMappings = structure(list(structure(list(VirtualName = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            DeviceName = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Ebs = structure(list(SnapshotId = structure(logical(0), 
                shape = "XmlStringMaxLen255", type = "string", 
                max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                VolumeSize = structure(logical(0), shape = "BlockDeviceEbsVolumeSize", 
                  type = "integer", max = 16384L, min = 1L), 
                VolumeType = structure(logical(0), shape = "BlockDeviceEbsVolumeType", 
                  type = "string", max = 255L, min = 1L), DeleteOnTermination = structure(logical(0), 
                  shape = "BlockDeviceEbsDeleteOnTermination", 
                  type = "boolean"), Iops = structure(logical(0), 
                  shape = "BlockDeviceEbsIops", type = "integer", 
                  max = 20000L, min = 100L), Encrypted = structure(logical(0), 
                  shape = "BlockDeviceEbsEncrypted", type = "boolean")), 
                shape = "Ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "NoDevice", type = "boolean")), shape = "BlockDeviceMapping", 
            type = "structure")), shape = "BlockDeviceMappings", 
            type = "list"), InstanceMonitoring = structure(list(Enabled = structure(logical(0), 
            shape = "MonitoringEnabled", type = "boolean")), 
            shape = "InstanceMonitoring", type = "structure"), 
        SpotPrice = structure(logical(0), shape = "SpotPrice", 
            type = "string", max = 255L, min = 1L), IamInstanceProfile = structure(logical(0), 
            shape = "XmlStringMaxLen1600", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        CreatedTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EbsOptimized = structure(logical(0), 
            shape = "EbsOptimized", type = "boolean"), AssociatePublicIpAddress = structure(logical(0), 
            shape = "AssociatePublicIpAddress", type = "boolean"), 
        PlacementTenancy = structure(logical(0), shape = "XmlStringMaxLen64", 
            type = "string", max = 64L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "LaunchConfiguration", type = "structure")), 
        shape = "LaunchConfigurations", type = "list"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "LaunchConfigurationsType", type = "structure")
    return(populate(args, shape))
}

describe_lifecycle_hook_types_input <- function () 
{
    return(list())
}

describe_lifecycle_hook_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleHookTypes = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingNotificationTypes", type = "list")), 
        shape = "DescribeLifecycleHookTypesAnswer", type = "structure")
    return(populate(args, shape))
}

describe_lifecycle_hooks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LifecycleHookNames = structure(list(structure(logical(0), 
            shape = "AsciiStringMaxLen255", type = "string", 
            max = 255L, min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+")), 
            shape = "LifecycleHookNames", type = "list", max = 50L)), 
        shape = "DescribeLifecycleHooksType", type = "structure")
    return(populate(args, shape))
}

describe_lifecycle_hooks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleHooks = structure(list(structure(list(LifecycleHookName = structure(logical(0), 
        shape = "AsciiStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LifecycleTransition = structure(logical(0), shape = "LifecycleTransition", 
            type = "string"), NotificationTargetARN = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        RoleARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NotificationMetadata = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HeartbeatTimeout = structure(logical(0), shape = "HeartbeatTimeout", 
            type = "integer"), GlobalTimeout = structure(logical(0), 
            shape = "GlobalTimeout", type = "integer"), DefaultResult = structure(logical(0), 
            shape = "LifecycleActionResult", type = "string")), 
        shape = "LifecycleHook", type = "structure")), shape = "LifecycleHooks", 
        type = "list")), shape = "DescribeLifecycleHooksAnswer", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_target_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "DescribeLoadBalancerTargetGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancer_target_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerTargetGroups = structure(list(structure(list(LoadBalancerTargetGroupARN = structure(logical(0), 
        shape = "XmlStringMaxLen511", type = "string", max = 511L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        State = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "LoadBalancerTargetGroupState", type = "structure")), 
        shape = "LoadBalancerTargetGroupStates", type = "list"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeLoadBalancerTargetGroupsResponse", type = "structure")
    return(populate(args, shape))
}

describe_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "DescribeLoadBalancersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancers = structure(list(structure(list(LoadBalancerName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        State = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "LoadBalancerState", type = "structure")), shape = "LoadBalancerStates", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeLoadBalancersResponse", type = "structure")
    return(populate(args, shape))
}

describe_metric_collection_types_input <- function () 
{
    return(list())
}

describe_metric_collection_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metrics = structure(list(structure(list(Metric = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "MetricCollectionType", type = "structure")), 
        shape = "MetricCollectionTypes", type = "list"), Granularities = structure(list(structure(list(Granularity = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "MetricGranularityType", type = "structure")), 
        shape = "MetricGranularityTypes", type = "list")), shape = "DescribeMetricCollectionTypesAnswer", 
        type = "structure")
    return(populate(args, shape))
}

describe_notification_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupNames = structure(list(structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "AutoScalingGroupNames", type = "list"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "DescribeNotificationConfigurationsType", 
        type = "structure")
    return(populate(args, shape))
}

describe_notification_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotificationConfigurations = structure(list(structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TopicARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NotificationType = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "NotificationConfiguration", type = "structure")), 
        shape = "NotificationConfigurations", type = "list"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeNotificationConfigurationsAnswer", type = "structure")
    return(populate(args, shape))
}

describe_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyNames = structure(list(structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "PolicyNames", type = "list"), PolicyTypes = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen64", type = "string", max = 64L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "PolicyTypes", type = "list"), NextToken = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "DescribePoliciesType", 
        type = "structure")
    return(populate(args, shape))
}

describe_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScalingPolicies = structure(list(structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyType = structure(logical(0), shape = "XmlStringMaxLen64", 
            type = "string", max = 64L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AdjustmentType = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MinAdjustmentStep = structure(logical(0), shape = "MinAdjustmentStep", 
            type = "integer", deprecated = TRUE), MinAdjustmentMagnitude = structure(logical(0), 
            shape = "MinAdjustmentMagnitude", type = "integer"), 
        ScalingAdjustment = structure(logical(0), shape = "PolicyIncrement", 
            type = "integer"), Cooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), StepAdjustments = structure(list(structure(list(MetricIntervalLowerBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), MetricIntervalUpperBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), ScalingAdjustment = structure(logical(0), 
            shape = "PolicyIncrement", type = "integer")), shape = "StepAdjustment", 
            type = "structure")), shape = "StepAdjustments", 
            type = "list"), MetricAggregationType = structure(logical(0), 
            shape = "XmlStringMaxLen32", type = "string", max = 32L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        EstimatedInstanceWarmup = structure(logical(0), shape = "EstimatedInstanceWarmup", 
            type = "integer"), Alarms = structure(list(structure(list(AlarmName = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            AlarmARN = structure(logical(0), shape = "ResourceName", 
                type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Alarm", type = "structure")), shape = "Alarms", 
            type = "list"), TargetTrackingConfiguration = structure(list(PredefinedMetricSpecification = structure(list(PredefinedMetricType = structure(logical(0), 
            shape = "MetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "XmlStringMaxLen1023", type = "string", max = 1023L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "PredefinedMetricSpecification", type = "structure"), 
            CustomizedMetricSpecification = structure(list(MetricName = structure(logical(0), 
                shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
                shape = "MetricNamespace", type = "string"), 
                Dimensions = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "MetricDimensionName", type = "string"), 
                  Value = structure(logical(0), shape = "MetricDimensionValue", 
                    type = "string")), shape = "MetricDimension", 
                  type = "structure")), shape = "MetricDimensions", 
                  type = "list"), Statistic = structure(logical(0), 
                  shape = "MetricStatistic", type = "string"), 
                Unit = structure(logical(0), shape = "MetricUnit", 
                  type = "string")), shape = "CustomizedMetricSpecification", 
                type = "structure"), TargetValue = structure(logical(0), 
                shape = "MetricScale", type = "double"), DisableScaleIn = structure(logical(0), 
                shape = "DisableScaleIn", type = "boolean")), 
            shape = "TargetTrackingConfiguration", type = "structure")), 
        shape = "ScalingPolicy", type = "structure")), shape = "ScalingPolicies", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "PoliciesType", type = "structure")
    return(populate(args, shape))
}

describe_scaling_activities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivityIds = structure(list(structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ActivityIds", type = "list"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "DescribeScalingActivitiesType", type = "structure")
    return(populate(args, shape))
}

describe_scaling_activities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activities = structure(list(structure(list(ActivityId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Description = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Cause = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "ScalingActivityStatusCode", type = "string"), 
        StatusMessage = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Progress = structure(logical(0), shape = "Progress", 
            type = "integer"), Details = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "Activity", type = "structure")), shape = "Activities", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ActivitiesType", type = "structure")
    return(populate(args, shape))
}

describe_scaling_process_types_input <- function () 
{
    return(list())
}

describe_scaling_process_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Processes = structure(list(structure(list(ProcessName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ProcessType", type = "structure")), shape = "Processes", 
        type = "list")), shape = "ProcessesType", type = "structure")
    return(populate(args, shape))
}

describe_scheduled_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionNames = structure(list(structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ScheduledActionNames", type = "list"), StartTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), NextToken = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "DescribeScheduledActionsType", 
        type = "structure")
    return(populate(args, shape))
}

describe_scheduled_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledUpdateGroupActions = structure(list(structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "XmlStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Time = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), StartTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), Recurrence = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MinSize = structure(logical(0), shape = "AutoScalingGroupMinSize", 
            type = "integer"), MaxSize = structure(logical(0), 
            shape = "AutoScalingGroupMaxSize", type = "integer"), 
        DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
            type = "integer")), shape = "ScheduledUpdateGroupAction", 
        type = "structure")), shape = "ScheduledUpdateGroupActions", 
        type = "list"), NextToken = structure(logical(0), shape = "XmlString", 
        type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ScheduledActionsType", type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Values = structure(list(structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Values", type = "list")), shape = "Filter", 
        type = "structure")), shape = "Filters", type = "list"), 
        NextToken = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MaxRecords = structure(logical(0), shape = "MaxRecords", 
            type = "integer")), shape = "DescribeTagsType", type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(ResourceId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ResourceType = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Key = structure(logical(0), shape = "TagKey", type = "string", 
            max = 128L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PropagateAtLaunch = structure(logical(0), shape = "PropagateAtLaunch", 
            type = "boolean")), shape = "TagDescription", type = "structure")), 
        shape = "TagDescriptionList", type = "list"), NextToken = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "TagsType", type = "structure")
    return(populate(args, shape))
}

describe_termination_policy_types_input <- function () 
{
    return(list())
}

describe_termination_policy_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TerminationPolicyTypes = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen1600", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "TerminationPolicies", type = "list")), shape = "DescribeTerminationPolicyTypesAnswer", 
        type = "structure")
    return(populate(args, shape))
}

detach_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "InstanceIds", type = "list"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ShouldDecrementDesiredCapacity = structure(logical(0), 
            shape = "ShouldDecrementDesiredCapacity", type = "boolean")), 
        shape = "DetachInstancesQuery", type = "structure")
    return(populate(args, shape))
}

detach_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activities = structure(list(structure(list(ActivityId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Description = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Cause = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "ScalingActivityStatusCode", type = "string"), 
        StatusMessage = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Progress = structure(logical(0), shape = "Progress", 
            type = "integer"), Details = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "Activity", type = "structure")), shape = "Activities", 
        type = "list")), shape = "DetachInstancesAnswer", type = "structure")
    return(populate(args, shape))
}

detach_load_balancer_target_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TargetGroupARNs = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen511", type = "string", max = 511L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TargetGroupARNs", type = "list")), shape = "DetachLoadBalancerTargetGroupsType", 
        type = "structure")
    return(populate(args, shape))
}

detach_load_balancer_target_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DetachLoadBalancerTargetGroupsResultType", 
        type = "structure")
    return(populate(args, shape))
}

detach_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LoadBalancerNames = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LoadBalancerNames", type = "list")), shape = "DetachLoadBalancersType", 
        type = "structure")
    return(populate(args, shape))
}

detach_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DetachLoadBalancersResultType", 
        type = "structure")
    return(populate(args, shape))
}

disable_metrics_collection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Metrics = structure(list(structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Metrics", type = "list")), shape = "DisableMetricsCollectionQuery", 
        type = "structure")
    return(populate(args, shape))
}

disable_metrics_collection_output <- function () 
{
    return(list())
}

enable_metrics_collection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Metrics = structure(list(structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Metrics", type = "list"), Granularity = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "EnableMetricsCollectionQuery", type = "structure")
    return(populate(args, shape))
}

enable_metrics_collection_output <- function () 
{
    return(list())
}

enter_standby_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "InstanceIds", type = "list"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ShouldDecrementDesiredCapacity = structure(logical(0), 
            shape = "ShouldDecrementDesiredCapacity", type = "boolean")), 
        shape = "EnterStandbyQuery", type = "structure")
    return(populate(args, shape))
}

enter_standby_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activities = structure(list(structure(list(ActivityId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Description = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Cause = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "ScalingActivityStatusCode", type = "string"), 
        StatusMessage = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Progress = structure(logical(0), shape = "Progress", 
            type = "integer"), Details = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "Activity", type = "structure")), shape = "Activities", 
        type = "list")), shape = "EnterStandbyAnswer", type = "structure")
    return(populate(args, shape))
}

execute_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HonorCooldown = structure(logical(0), shape = "HonorCooldown", 
            type = "boolean"), MetricValue = structure(logical(0), 
            shape = "MetricScale", type = "double"), BreachThreshold = structure(logical(0), 
            shape = "MetricScale", type = "double")), shape = "ExecutePolicyType", 
        type = "structure")
    return(populate(args, shape))
}

execute_policy_output <- function () 
{
    return(list())
}

exit_standby_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "InstanceIds", type = "list"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ExitStandbyQuery", type = "structure")
    return(populate(args, shape))
}

exit_standby_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activities = structure(list(structure(list(ActivityId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Description = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Cause = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "ScalingActivityStatusCode", type = "string"), 
        StatusMessage = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Progress = structure(logical(0), shape = "Progress", 
            type = "integer"), Details = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "Activity", type = "structure")), shape = "Activities", 
        type = "list")), shape = "ExitStandbyAnswer", type = "structure")
    return(populate(args, shape))
}

put_lifecycle_hook_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleHookName = structure(logical(0), 
        shape = "AsciiStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LifecycleTransition = structure(logical(0), shape = "LifecycleTransition", 
            type = "string"), RoleARN = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NotificationTargetARN = structure(logical(0), shape = "NotificationTargetResourceName", 
            type = "string", max = 1600L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NotificationMetadata = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HeartbeatTimeout = structure(logical(0), shape = "HeartbeatTimeout", 
            type = "integer"), DefaultResult = structure(logical(0), 
            shape = "LifecycleActionResult", type = "string")), 
        shape = "PutLifecycleHookType", type = "structure")
    return(populate(args, shape))
}

put_lifecycle_hook_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutLifecycleHookAnswer", 
        type = "structure")
    return(populate(args, shape))
}

put_notification_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TopicARN = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NotificationTypes = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "AutoScalingNotificationTypes", type = "list")), 
        shape = "PutNotificationConfigurationType", type = "structure")
    return(populate(args, shape))
}

put_notification_configuration_output <- function () 
{
    return(list())
}

put_scaling_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        PolicyType = structure(logical(0), shape = "XmlStringMaxLen64", 
            type = "string", max = 64L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AdjustmentType = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MinAdjustmentStep = structure(logical(0), shape = "MinAdjustmentStep", 
            type = "integer", deprecated = TRUE), MinAdjustmentMagnitude = structure(logical(0), 
            shape = "MinAdjustmentMagnitude", type = "integer"), 
        ScalingAdjustment = structure(logical(0), shape = "PolicyIncrement", 
            type = "integer"), Cooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), MetricAggregationType = structure(logical(0), 
            shape = "XmlStringMaxLen32", type = "string", max = 32L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StepAdjustments = structure(list(structure(list(MetricIntervalLowerBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), MetricIntervalUpperBound = structure(logical(0), 
            shape = "MetricScale", type = "double"), ScalingAdjustment = structure(logical(0), 
            shape = "PolicyIncrement", type = "integer")), shape = "StepAdjustment", 
            type = "structure")), shape = "StepAdjustments", 
            type = "list"), EstimatedInstanceWarmup = structure(logical(0), 
            shape = "EstimatedInstanceWarmup", type = "integer"), 
        TargetTrackingConfiguration = structure(list(PredefinedMetricSpecification = structure(list(PredefinedMetricType = structure(logical(0), 
            shape = "MetricType", type = "string"), ResourceLabel = structure(logical(0), 
            shape = "XmlStringMaxLen1023", type = "string", max = 1023L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "PredefinedMetricSpecification", type = "structure"), 
            CustomizedMetricSpecification = structure(list(MetricName = structure(logical(0), 
                shape = "MetricName", type = "string"), Namespace = structure(logical(0), 
                shape = "MetricNamespace", type = "string"), 
                Dimensions = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "MetricDimensionName", type = "string"), 
                  Value = structure(logical(0), shape = "MetricDimensionValue", 
                    type = "string")), shape = "MetricDimension", 
                  type = "structure")), shape = "MetricDimensions", 
                  type = "list"), Statistic = structure(logical(0), 
                  shape = "MetricStatistic", type = "string"), 
                Unit = structure(logical(0), shape = "MetricUnit", 
                  type = "string")), shape = "CustomizedMetricSpecification", 
                type = "structure"), TargetValue = structure(logical(0), 
                shape = "MetricScale", type = "double"), DisableScaleIn = structure(logical(0), 
                shape = "DisableScaleIn", type = "boolean")), 
            shape = "TargetTrackingConfiguration", type = "structure")), 
        shape = "PutScalingPolicyType", type = "structure")
    return(populate(args, shape))
}

put_scaling_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyARN = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Alarms = structure(list(structure(list(AlarmName = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            AlarmARN = structure(logical(0), shape = "ResourceName", 
                type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "Alarm", type = "structure")), shape = "Alarms", 
            type = "list")), shape = "PolicyARNType", type = "structure")
    return(populate(args, shape))
}

put_scheduled_update_group_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScheduledActionName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Time = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), StartTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), Recurrence = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        MinSize = structure(logical(0), shape = "AutoScalingGroupMinSize", 
            type = "integer"), MaxSize = structure(logical(0), 
            shape = "AutoScalingGroupMaxSize", type = "integer"), 
        DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
            type = "integer")), shape = "PutScheduledUpdateGroupActionType", 
        type = "structure")
    return(populate(args, shape))
}

put_scheduled_update_group_action_output <- function () 
{
    return(list())
}

record_lifecycle_action_heartbeat_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleHookName = structure(logical(0), 
        shape = "AsciiStringMaxLen255", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z0-9\\-_\\/]+"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LifecycleActionToken = structure(logical(0), shape = "LifecycleActionToken", 
            type = "string", max = 36L, min = 36L), InstanceId = structure(logical(0), 
            shape = "XmlStringMaxLen19", type = "string", max = 19L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "RecordLifecycleActionHeartbeatType", type = "structure")
    return(populate(args, shape))
}

record_lifecycle_action_heartbeat_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RecordLifecycleActionHeartbeatAnswer", 
        type = "structure")
    return(populate(args, shape))
}

resume_processes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalingProcesses = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ProcessNames", type = "list")), shape = "ScalingProcessQuery", 
        type = "structure")
    return(populate(args, shape))
}

resume_processes_output <- function () 
{
    return(list())
}

set_desired_capacity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
            type = "integer"), HonorCooldown = structure(logical(0), 
            shape = "HonorCooldown", type = "boolean")), shape = "SetDesiredCapacityType", 
        type = "structure")
    return(populate(args, shape))
}

set_desired_capacity_output <- function () 
{
    return(list())
}

set_instance_health_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HealthStatus = structure(logical(0), shape = "XmlStringMaxLen32", 
            type = "string", max = 32L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ShouldRespectGracePeriod = structure(logical(0), shape = "ShouldRespectGracePeriod", 
            type = "boolean")), shape = "SetInstanceHealthQuery", 
        type = "structure")
    return(populate(args, shape))
}

set_instance_health_output <- function () 
{
    return(list())
}

set_instance_protection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "InstanceIds", type = "list"), AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ProtectedFromScaleIn = structure(logical(0), shape = "ProtectedFromScaleIn", 
            type = "boolean")), shape = "SetInstanceProtectionQuery", 
        type = "structure")
    return(populate(args, shape))
}

set_instance_protection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetInstanceProtectionAnswer", 
        type = "structure")
    return(populate(args, shape))
}

suspend_processes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ScalingProcesses = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ProcessNames", type = "list")), shape = "ScalingProcessQuery", 
        type = "structure")
    return(populate(args, shape))
}

suspend_processes_output <- function () 
{
    return(list())
}

terminate_instance_in_auto_scaling_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "XmlStringMaxLen19", type = "string", max = 19L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ShouldDecrementDesiredCapacity = structure(logical(0), 
            shape = "ShouldDecrementDesiredCapacity", type = "boolean")), 
        shape = "TerminateInstanceInAutoScalingGroupType", type = "structure")
    return(populate(args, shape))
}

terminate_instance_in_auto_scaling_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Activity = structure(list(ActivityId = structure(logical(0), 
        shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        AutoScalingGroupName = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Description = structure(logical(0), shape = "XmlString", 
            type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Cause = structure(logical(0), shape = "XmlStringMaxLen1023", 
            type = "string", max = 1023L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartTime = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), EndTime = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "ScalingActivityStatusCode", type = "string"), 
        StatusMessage = structure(logical(0), shape = "XmlStringMaxLen255", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Progress = structure(logical(0), shape = "Progress", 
            type = "integer"), Details = structure(logical(0), 
            shape = "XmlString", type = "string", pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "Activity", type = "structure")), shape = "ActivityType", 
        type = "structure")
    return(populate(args, shape))
}

update_auto_scaling_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoScalingGroupName = structure(logical(0), 
        shape = "ResourceName", type = "string", max = 1600L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchConfigurationName = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 1600L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LaunchTemplateName = structure(logical(0), shape = "LaunchTemplateName", 
                type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
            Version = structure(logical(0), shape = "XmlStringMaxLen255", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "LaunchTemplateSpecification", type = "structure"), 
        MinSize = structure(logical(0), shape = "AutoScalingGroupMinSize", 
            type = "integer"), MaxSize = structure(logical(0), 
            shape = "AutoScalingGroupMaxSize", type = "integer"), 
        DesiredCapacity = structure(logical(0), shape = "AutoScalingGroupDesiredCapacity", 
            type = "integer"), DefaultCooldown = structure(logical(0), 
            shape = "Cooldown", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "AvailabilityZones", type = "list", min = 1L), 
        HealthCheckType = structure(logical(0), shape = "XmlStringMaxLen32", 
            type = "string", max = 32L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        HealthCheckGracePeriod = structure(logical(0), shape = "HealthCheckGracePeriod", 
            type = "integer"), PlacementGroup = structure(logical(0), 
            shape = "XmlStringMaxLen255", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        VPCZoneIdentifier = structure(logical(0), shape = "XmlStringMaxLen2047", 
            type = "string", max = 2047L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        TerminationPolicies = structure(list(structure(logical(0), 
            shape = "XmlStringMaxLen1600", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "TerminationPolicies", type = "list"), NewInstancesProtectedFromScaleIn = structure(logical(0), 
            shape = "InstanceProtected", type = "boolean"), ServiceLinkedRoleARN = structure(logical(0), 
            shape = "ResourceName", type = "string", max = 1600L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "UpdateAutoScalingGroupType", type = "structure")
    return(populate(args, shape))
}

update_auto_scaling_group_output <- function () 
{
    return(list())
}
