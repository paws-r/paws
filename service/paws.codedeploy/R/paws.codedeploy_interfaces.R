add_tags_to_on_premises_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "Key", type = "string"), Value = structure(logical(0), 
        shape = "Value", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", locationName = "tags"), 
        InstanceNames = structure(list(structure(logical(0), 
            shape = "InstanceName", type = "string")), shape = "InstanceNameList", 
            type = "list", locationName = "instanceNames")), 
        shape = "AddTagsToOnPremisesInstancesInput", type = "structure")
    return(populate(args, shape))
}

add_tags_to_on_premises_instances_output <- function () 
{
    return(list())
}

batch_get_application_revisions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), Revisions = structure(list(structure(list(RevisionType = structure(logical(0), 
        shape = "RevisionLocationType", type = "string", locationName = "revisionType"), 
        S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
        GitHubLocation = structure(list(Repository = structure(logical(0), 
            shape = "Repository", type = "string", locationName = "repository"), 
            CommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "commitId")), 
            shape = "GitHubLocation", type = "structure", locationName = "gitHubLocation"), 
        String = structure(list(Content = structure(logical(0), 
            shape = "RawStringContent", type = "string", locationName = "content"), 
            Sha256 = structure(logical(0), shape = "RawStringSha256", 
                type = "string", locationName = "sha256")), shape = "RawString", 
            type = "structure", locationName = "string")), shape = "RevisionLocation", 
        type = "structure")), shape = "RevisionLocationList", 
        type = "list", locationName = "revisions")), shape = "BatchGetApplicationRevisionsInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_application_revisions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string", locationName = "errorMessage"), 
        Revisions = structure(list(structure(list(RevisionLocation = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "revisionLocation"), 
            GenericRevisionInfo = structure(list(Description = structure(logical(0), 
                shape = "Description", type = "string", locationName = "description"), 
                DeploymentGroups = structure(list(structure(logical(0), 
                  shape = "DeploymentGroupName", type = "string", 
                  max = 100L, min = 1L)), shape = "DeploymentGroupsList", 
                  type = "list", locationName = "deploymentGroups"), 
                FirstUsedTime = structure(logical(0), shape = "Timestamp", 
                  type = "timestamp", locationName = "firstUsedTime"), 
                LastUsedTime = structure(logical(0), shape = "Timestamp", 
                  type = "timestamp", locationName = "lastUsedTime"), 
                RegisterTime = structure(logical(0), shape = "Timestamp", 
                  type = "timestamp", locationName = "registerTime")), 
                shape = "GenericRevisionInfo", type = "structure", 
                locationName = "genericRevisionInfo")), shape = "RevisionInfo", 
            type = "structure")), shape = "RevisionInfoList", 
            type = "list", locationName = "revisions")), shape = "BatchGetApplicationRevisionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationNames = structure(list(structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L)), shape = "ApplicationsList", type = "list", 
        locationName = "applicationNames")), shape = "BatchGetApplicationsInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationsInfo = structure(list(structure(list(ApplicationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", locationName = "applicationId"), 
        ApplicationName = structure(logical(0), shape = "ApplicationName", 
            type = "string", max = 100L, min = 1L, locationName = "applicationName"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createTime"), 
        LinkedToGitHub = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "linkedToGitHub"), 
        GitHubAccountName = structure(logical(0), shape = "GitHubAccountTokenName", 
            type = "string", locationName = "gitHubAccountName"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "ApplicationInfo", type = "structure")), shape = "ApplicationsInfoList", 
        type = "list", locationName = "applicationsInfo")), shape = "BatchGetApplicationsOutput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_deployment_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupNames = structure(list(structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L)), shape = "DeploymentGroupsList", type = "list", 
        locationName = "deploymentGroupNames")), shape = "BatchGetDeploymentGroupsInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_deployment_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentGroupsInfo = structure(list(structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupId = structure(logical(0), 
        shape = "DeploymentGroupId", type = "string", locationName = "deploymentGroupId"), 
        DeploymentGroupName = structure(logical(0), shape = "DeploymentGroupName", 
            type = "string", max = 100L, min = 1L, locationName = "deploymentGroupName"), 
        DeploymentConfigName = structure(logical(0), shape = "DeploymentConfigName", 
            type = "string", max = 100L, min = 1L, locationName = "deploymentConfigName"), 
        Ec2TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list", locationName = "ec2TagFilters"), OnPremisesInstanceTagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list", 
            locationName = "onPremisesInstanceTagFilters"), AutoScalingGroups = structure(list(structure(list(Name = structure(logical(0), 
            shape = "AutoScalingGroupName", type = "string", 
            locationName = "name"), Hook = structure(logical(0), 
            shape = "AutoScalingGroupHook", type = "string", 
            locationName = "hook")), shape = "AutoScalingGroup", 
            type = "structure")), shape = "AutoScalingGroupList", 
            type = "list", locationName = "autoScalingGroups"), 
        ServiceRoleArn = structure(logical(0), shape = "Role", 
            type = "string", locationName = "serviceRoleArn"), 
        TargetRevision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "targetRevision"), 
        TriggerConfigurations = structure(list(structure(list(TriggerName = structure(logical(0), 
            shape = "TriggerName", type = "string", locationName = "triggerName"), 
            TriggerTargetArn = structure(logical(0), shape = "TriggerTargetArn", 
                type = "string", locationName = "triggerTargetArn"), 
            TriggerEvents = structure(list(structure(logical(0), 
                shape = "TriggerEventType", type = "string")), 
                shape = "TriggerEventTypeList", type = "list", 
                locationName = "triggerEvents")), shape = "TriggerConfig", 
            type = "structure")), shape = "TriggerConfigList", 
            type = "list", locationName = "triggerConfigurations"), 
        AlarmConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            IgnorePollAlarmFailure = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "ignorePollAlarmFailure"), 
            Alarms = structure(list(structure(list(Name = structure(logical(0), 
                shape = "AlarmName", type = "string", locationName = "name")), 
                shape = "Alarm", type = "structure")), shape = "AlarmList", 
                type = "list", locationName = "alarms")), shape = "AlarmConfiguration", 
            type = "structure", locationName = "alarmConfiguration"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        DeploymentStyle = structure(list(DeploymentType = structure(logical(0), 
            shape = "DeploymentType", type = "string", locationName = "deploymentType"), 
            DeploymentOption = structure(logical(0), shape = "DeploymentOption", 
                type = "string", locationName = "deploymentOption")), 
            shape = "DeploymentStyle", type = "structure", locationName = "deploymentStyle"), 
        BlueGreenDeploymentConfiguration = structure(list(TerminateBlueInstancesOnDeploymentSuccess = structure(list(Action = structure(logical(0), 
            shape = "InstanceAction", type = "string", locationName = "action"), 
            TerminationWaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "terminationWaitTimeInMinutes")), 
            shape = "BlueInstanceTerminationOption", type = "structure", 
            locationName = "terminateBlueInstancesOnDeploymentSuccess"), 
            DeploymentReadyOption = structure(list(ActionOnTimeout = structure(logical(0), 
                shape = "DeploymentReadyAction", type = "string", 
                locationName = "actionOnTimeout"), WaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "waitTimeInMinutes")), 
                shape = "DeploymentReadyOption", type = "structure", 
                locationName = "deploymentReadyOption"), GreenFleetProvisioningOption = structure(list(Action = structure(logical(0), 
                shape = "GreenFleetProvisioningAction", type = "string", 
                locationName = "action")), shape = "GreenFleetProvisioningOption", 
                type = "structure", locationName = "greenFleetProvisioningOption")), 
            shape = "BlueGreenDeploymentConfiguration", type = "structure", 
            locationName = "blueGreenDeploymentConfiguration"), 
        LoadBalancerInfo = structure(list(ElbInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ELBName", type = "string", locationName = "name")), 
            shape = "ELBInfo", type = "structure")), shape = "ELBInfoList", 
            type = "list", locationName = "elbInfoList"), TargetGroupInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "TargetGroupName", type = "string", locationName = "name")), 
            shape = "TargetGroupInfo", type = "structure")), 
            shape = "TargetGroupInfoList", type = "list", locationName = "targetGroupInfoList")), 
            shape = "LoadBalancerInfo", type = "structure", locationName = "loadBalancerInfo"), 
        LastSuccessfulDeployment = structure(list(DeploymentId = structure(logical(0), 
            shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
            Status = structure(logical(0), shape = "DeploymentStatus", 
                type = "string", locationName = "status"), EndTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp", locationName = "endTime"), 
            CreateTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createTime")), 
            shape = "LastDeploymentInfo", type = "structure", 
            locationName = "lastSuccessfulDeployment"), LastAttemptedDeployment = structure(list(DeploymentId = structure(logical(0), 
            shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
            Status = structure(logical(0), shape = "DeploymentStatus", 
                type = "string", locationName = "status"), EndTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp", locationName = "endTime"), 
            CreateTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createTime")), 
            shape = "LastDeploymentInfo", type = "structure", 
            locationName = "lastAttemptedDeployment"), Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet"), 
        OnPremisesTagSet = structure(list(OnPremisesTagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list")), 
            shape = "OnPremisesTagSetList", type = "list", locationName = "onPremisesTagSetList")), 
            shape = "OnPremisesTagSet", type = "structure", locationName = "onPremisesTagSet"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "DeploymentGroupInfo", type = "structure")), 
        shape = "DeploymentGroupInfoList", type = "list", locationName = "deploymentGroupsInfo"), 
        ErrorMessage = structure(logical(0), shape = "ErrorMessage", 
            type = "string", locationName = "errorMessage")), 
        shape = "BatchGetDeploymentGroupsOutput", type = "structure")
    return(populate(args, shape))
}

batch_get_deployment_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        InstanceIds = structure(list(structure(logical(0), shape = "InstanceId", 
            type = "string")), shape = "InstancesList", type = "list", 
            locationName = "instanceIds")), shape = "BatchGetDeploymentInstancesInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_deployment_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstancesSummary = structure(list(structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", locationName = "instanceId"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string", locationName = "status"), 
        LastUpdatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedAt"), 
        LifecycleEvents = structure(list(structure(list(LifecycleEventName = structure(logical(0), 
            shape = "LifecycleEventName", type = "string", locationName = "lifecycleEventName"), 
            Diagnostics = structure(list(ErrorCode = structure(logical(0), 
                shape = "LifecycleErrorCode", type = "string", 
                locationName = "errorCode"), ScriptName = structure(logical(0), 
                shape = "ScriptName", type = "string", locationName = "scriptName"), 
                Message = structure(logical(0), shape = "LifecycleMessage", 
                  type = "string", locationName = "message"), 
                LogTail = structure(logical(0), shape = "LogTail", 
                  type = "string", locationName = "logTail")), 
                shape = "Diagnostics", type = "structure", locationName = "diagnostics"), 
            StartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "startTime"), 
            EndTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "endTime"), 
            Status = structure(logical(0), shape = "LifecycleEventStatus", 
                type = "string", locationName = "status")), shape = "LifecycleEvent", 
            type = "structure")), shape = "LifecycleEventList", 
            type = "list", locationName = "lifecycleEvents"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            type = "string", locationName = "instanceType")), 
        shape = "InstanceSummary", type = "structure")), shape = "InstanceSummaryList", 
        type = "list", locationName = "instancesSummary"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string", locationName = "errorMessage")), 
        shape = "BatchGetDeploymentInstancesOutput", type = "structure")
    return(populate(args, shape))
}

batch_get_deployments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentIds = structure(list(structure(logical(0), 
        shape = "DeploymentId", type = "string")), shape = "DeploymentsList", 
        type = "list", locationName = "deploymentIds")), shape = "BatchGetDeploymentsInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_deployments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentsInfo = structure(list(structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName"), DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName"), DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        PreviousRevision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "previousRevision"), 
        Revision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "revision"), 
        Status = structure(logical(0), shape = "DeploymentStatus", 
            type = "string", locationName = "status"), ErrorInformation = structure(list(Code = structure(logical(0), 
            shape = "ErrorCode", type = "string", locationName = "code"), 
            Message = structure(logical(0), shape = "ErrorMessage", 
                type = "string", locationName = "message")), 
            shape = "ErrorInformation", type = "structure", locationName = "errorInformation"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createTime"), 
        StartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startTime"), 
        CompleteTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "completeTime"), 
        DeploymentOverview = structure(list(Pending = structure(logical(0), 
            shape = "InstanceCount", type = "long"), InProgress = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Succeeded = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Failed = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Skipped = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Ready = structure(logical(0), 
            shape = "InstanceCount", type = "long")), shape = "DeploymentOverview", 
            type = "structure", locationName = "deploymentOverview"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", locationName = "description"), Creator = structure(logical(0), 
            shape = "DeploymentCreator", type = "string", locationName = "creator"), 
        IgnoreApplicationStopFailures = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "ignoreApplicationStopFailures"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        UpdateOutdatedInstancesOnly = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "updateOutdatedInstancesOnly"), 
        RollbackInfo = structure(list(RollbackDeploymentId = structure(logical(0), 
            shape = "DeploymentId", type = "string", locationName = "rollbackDeploymentId"), 
            RollbackTriggeringDeploymentId = structure(logical(0), 
                shape = "DeploymentId", type = "string", locationName = "rollbackTriggeringDeploymentId"), 
            RollbackMessage = structure(logical(0), shape = "Description", 
                type = "string", locationName = "rollbackMessage")), 
            shape = "RollbackInfo", type = "structure", locationName = "rollbackInfo"), 
        DeploymentStyle = structure(list(DeploymentType = structure(logical(0), 
            shape = "DeploymentType", type = "string", locationName = "deploymentType"), 
            DeploymentOption = structure(logical(0), shape = "DeploymentOption", 
                type = "string", locationName = "deploymentOption")), 
            shape = "DeploymentStyle", type = "structure", locationName = "deploymentStyle"), 
        TargetInstances = structure(list(TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list", locationName = "tagFilters"), AutoScalingGroups = structure(list(structure(logical(0), 
            shape = "AutoScalingGroupName", type = "string")), 
            shape = "AutoScalingGroupNameList", type = "list", 
            locationName = "autoScalingGroups"), Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet")), 
            shape = "TargetInstances", type = "structure", locationName = "targetInstances"), 
        InstanceTerminationWaitTimeStarted = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "instanceTerminationWaitTimeStarted"), 
        BlueGreenDeploymentConfiguration = structure(list(TerminateBlueInstancesOnDeploymentSuccess = structure(list(Action = structure(logical(0), 
            shape = "InstanceAction", type = "string", locationName = "action"), 
            TerminationWaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "terminationWaitTimeInMinutes")), 
            shape = "BlueInstanceTerminationOption", type = "structure", 
            locationName = "terminateBlueInstancesOnDeploymentSuccess"), 
            DeploymentReadyOption = structure(list(ActionOnTimeout = structure(logical(0), 
                shape = "DeploymentReadyAction", type = "string", 
                locationName = "actionOnTimeout"), WaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "waitTimeInMinutes")), 
                shape = "DeploymentReadyOption", type = "structure", 
                locationName = "deploymentReadyOption"), GreenFleetProvisioningOption = structure(list(Action = structure(logical(0), 
                shape = "GreenFleetProvisioningAction", type = "string", 
                locationName = "action")), shape = "GreenFleetProvisioningOption", 
                type = "structure", locationName = "greenFleetProvisioningOption")), 
            shape = "BlueGreenDeploymentConfiguration", type = "structure", 
            locationName = "blueGreenDeploymentConfiguration"), 
        LoadBalancerInfo = structure(list(ElbInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ELBName", type = "string", locationName = "name")), 
            shape = "ELBInfo", type = "structure")), shape = "ELBInfoList", 
            type = "list", locationName = "elbInfoList"), TargetGroupInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "TargetGroupName", type = "string", locationName = "name")), 
            shape = "TargetGroupInfo", type = "structure")), 
            shape = "TargetGroupInfoList", type = "list", locationName = "targetGroupInfoList")), 
            shape = "LoadBalancerInfo", type = "structure", locationName = "loadBalancerInfo"), 
        AdditionalDeploymentStatusInfo = structure(logical(0), 
            shape = "AdditionalDeploymentStatusInfo", type = "string", 
            deprecated = TRUE, locationName = "additionalDeploymentStatusInfo"), 
        FileExistsBehavior = structure(logical(0), shape = "FileExistsBehavior", 
            type = "string", locationName = "fileExistsBehavior"), 
        DeploymentStatusMessages = structure(list(structure(logical(0), 
            shape = "ErrorMessage", type = "string")), shape = "DeploymentStatusMessageList", 
            type = "list", locationName = "deploymentStatusMessages"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "DeploymentInfo", type = "structure")), shape = "DeploymentsInfoList", 
        type = "list", locationName = "deploymentsInfo")), shape = "BatchGetDeploymentsOutput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_on_premises_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceNames = structure(list(structure(logical(0), 
        shape = "InstanceName", type = "string")), shape = "InstanceNameList", 
        type = "list", locationName = "instanceNames")), shape = "BatchGetOnPremisesInstancesInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_on_premises_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceInfos = structure(list(structure(list(InstanceName = structure(logical(0), 
        shape = "InstanceName", type = "string", locationName = "instanceName"), 
        IamSessionArn = structure(logical(0), shape = "IamSessionArn", 
            type = "string", locationName = "iamSessionArn"), 
        IamUserArn = structure(logical(0), shape = "IamUserArn", 
            type = "string", locationName = "iamUserArn"), InstanceArn = structure(logical(0), 
            shape = "InstanceArn", type = "string", locationName = "instanceArn"), 
        RegisterTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "registerTime"), 
        DeregisterTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "deregisterTime"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list", 
            locationName = "tags")), shape = "InstanceInfo", 
        type = "structure")), shape = "InstanceInfoList", type = "list", 
        locationName = "instanceInfos")), shape = "BatchGetOnPremisesInstancesOutput", 
        type = "structure")
    return(populate(args, shape))
}

continue_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId")), 
        shape = "ContinueDeploymentInput", type = "structure")
    return(populate(args, shape))
}

continue_deployment_output <- function () 
{
    return(list())
}

create_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), ComputePlatform = structure(logical(0), 
        shape = "ComputePlatform", type = "string", locationName = "computePlatform")), 
        shape = "CreateApplicationInput", type = "structure")
    return(populate(args, shape))
}

create_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", locationName = "applicationId")), 
        shape = "CreateApplicationOutput", type = "structure")
    return(populate(args, shape))
}

create_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName"), Revision = structure(list(RevisionType = structure(logical(0), 
        shape = "RevisionLocationType", type = "string", locationName = "revisionType"), 
        S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
        GitHubLocation = structure(list(Repository = structure(logical(0), 
            shape = "Repository", type = "string", locationName = "repository"), 
            CommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "commitId")), 
            shape = "GitHubLocation", type = "structure", locationName = "gitHubLocation"), 
        String = structure(list(Content = structure(logical(0), 
            shape = "RawStringContent", type = "string", locationName = "content"), 
            Sha256 = structure(logical(0), shape = "RawStringSha256", 
                type = "string", locationName = "sha256")), shape = "RawString", 
            type = "structure", locationName = "string")), shape = "RevisionLocation", 
        type = "structure", locationName = "revision"), DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName"), Description = structure(logical(0), 
        shape = "Description", type = "string", locationName = "description"), 
        IgnoreApplicationStopFailures = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "ignoreApplicationStopFailures"), 
        TargetInstances = structure(list(TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list", locationName = "tagFilters"), AutoScalingGroups = structure(list(structure(logical(0), 
            shape = "AutoScalingGroupName", type = "string")), 
            shape = "AutoScalingGroupNameList", type = "list", 
            locationName = "autoScalingGroups"), Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet")), 
            shape = "TargetInstances", type = "structure", locationName = "targetInstances"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        UpdateOutdatedInstancesOnly = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "updateOutdatedInstancesOnly"), 
        FileExistsBehavior = structure(logical(0), shape = "FileExistsBehavior", 
            type = "string", locationName = "fileExistsBehavior")), 
        shape = "CreateDeploymentInput", type = "structure")
    return(populate(args, shape))
}

create_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId")), 
        shape = "CreateDeploymentOutput", type = "structure")
    return(populate(args, shape))
}

create_deployment_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName"), MinimumHealthyHosts = structure(list(Value = structure(logical(0), 
        shape = "MinimumHealthyHostsValue", type = "integer", 
        locationName = "value"), Type = structure(logical(0), 
        shape = "MinimumHealthyHostsType", type = "string", locationName = "type")), 
        shape = "MinimumHealthyHosts", type = "structure", locationName = "minimumHealthyHosts"), 
        TrafficRoutingConfig = structure(list(Type = structure(logical(0), 
            shape = "TrafficRoutingType", type = "string", locationName = "type"), 
            TimeBasedCanary = structure(list(CanaryPercentage = structure(logical(0), 
                shape = "Percentage", type = "integer", locationName = "canaryPercentage"), 
                CanaryInterval = structure(logical(0), shape = "WaitTimeInMins", 
                  type = "integer", locationName = "canaryInterval")), 
                shape = "TimeBasedCanary", type = "structure", 
                locationName = "timeBasedCanary"), TimeBasedLinear = structure(list(LinearPercentage = structure(logical(0), 
                shape = "Percentage", type = "integer", locationName = "linearPercentage"), 
                LinearInterval = structure(logical(0), shape = "WaitTimeInMins", 
                  type = "integer", locationName = "linearInterval")), 
                shape = "TimeBasedLinear", type = "structure", 
                locationName = "timeBasedLinear")), shape = "TrafficRoutingConfig", 
            type = "structure", locationName = "trafficRoutingConfig"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "CreateDeploymentConfigInput", type = "structure")
    return(populate(args, shape))
}

create_deployment_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentConfigId = structure(logical(0), 
        shape = "DeploymentConfigId", type = "string", locationName = "deploymentConfigId")), 
        shape = "CreateDeploymentConfigOutput", type = "structure")
    return(populate(args, shape))
}

create_deployment_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName"), DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName"), Ec2TagFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "Key", type = "string"), Value = structure(logical(0), 
        shape = "Value", type = "string"), Type = structure(logical(0), 
        shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
        type = "structure")), shape = "EC2TagFilterList", type = "list", 
        locationName = "ec2TagFilters"), OnPremisesInstanceTagFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "Key", type = "string"), Value = structure(logical(0), 
        shape = "Value", type = "string"), Type = structure(logical(0), 
        shape = "TagFilterType", type = "string")), shape = "TagFilter", 
        type = "structure")), shape = "TagFilterList", type = "list", 
        locationName = "onPremisesInstanceTagFilters"), AutoScalingGroups = structure(list(structure(logical(0), 
        shape = "AutoScalingGroupName", type = "string")), shape = "AutoScalingGroupNameList", 
        type = "list", locationName = "autoScalingGroups"), ServiceRoleArn = structure(logical(0), 
        shape = "Role", type = "string", locationName = "serviceRoleArn"), 
        TriggerConfigurations = structure(list(structure(list(TriggerName = structure(logical(0), 
            shape = "TriggerName", type = "string", locationName = "triggerName"), 
            TriggerTargetArn = structure(logical(0), shape = "TriggerTargetArn", 
                type = "string", locationName = "triggerTargetArn"), 
            TriggerEvents = structure(list(structure(logical(0), 
                shape = "TriggerEventType", type = "string")), 
                shape = "TriggerEventTypeList", type = "list", 
                locationName = "triggerEvents")), shape = "TriggerConfig", 
            type = "structure")), shape = "TriggerConfigList", 
            type = "list", locationName = "triggerConfigurations"), 
        AlarmConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            IgnorePollAlarmFailure = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "ignorePollAlarmFailure"), 
            Alarms = structure(list(structure(list(Name = structure(logical(0), 
                shape = "AlarmName", type = "string", locationName = "name")), 
                shape = "Alarm", type = "structure")), shape = "AlarmList", 
                type = "list", locationName = "alarms")), shape = "AlarmConfiguration", 
            type = "structure", locationName = "alarmConfiguration"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        DeploymentStyle = structure(list(DeploymentType = structure(logical(0), 
            shape = "DeploymentType", type = "string", locationName = "deploymentType"), 
            DeploymentOption = structure(logical(0), shape = "DeploymentOption", 
                type = "string", locationName = "deploymentOption")), 
            shape = "DeploymentStyle", type = "structure", locationName = "deploymentStyle"), 
        BlueGreenDeploymentConfiguration = structure(list(TerminateBlueInstancesOnDeploymentSuccess = structure(list(Action = structure(logical(0), 
            shape = "InstanceAction", type = "string", locationName = "action"), 
            TerminationWaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "terminationWaitTimeInMinutes")), 
            shape = "BlueInstanceTerminationOption", type = "structure", 
            locationName = "terminateBlueInstancesOnDeploymentSuccess"), 
            DeploymentReadyOption = structure(list(ActionOnTimeout = structure(logical(0), 
                shape = "DeploymentReadyAction", type = "string", 
                locationName = "actionOnTimeout"), WaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "waitTimeInMinutes")), 
                shape = "DeploymentReadyOption", type = "structure", 
                locationName = "deploymentReadyOption"), GreenFleetProvisioningOption = structure(list(Action = structure(logical(0), 
                shape = "GreenFleetProvisioningAction", type = "string", 
                locationName = "action")), shape = "GreenFleetProvisioningOption", 
                type = "structure", locationName = "greenFleetProvisioningOption")), 
            shape = "BlueGreenDeploymentConfiguration", type = "structure", 
            locationName = "blueGreenDeploymentConfiguration"), 
        LoadBalancerInfo = structure(list(ElbInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ELBName", type = "string", locationName = "name")), 
            shape = "ELBInfo", type = "structure")), shape = "ELBInfoList", 
            type = "list", locationName = "elbInfoList"), TargetGroupInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "TargetGroupName", type = "string", locationName = "name")), 
            shape = "TargetGroupInfo", type = "structure")), 
            shape = "TargetGroupInfoList", type = "list", locationName = "targetGroupInfoList")), 
            shape = "LoadBalancerInfo", type = "structure", locationName = "loadBalancerInfo"), 
        Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet"), 
        OnPremisesTagSet = structure(list(OnPremisesTagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list")), 
            shape = "OnPremisesTagSetList", type = "list", locationName = "onPremisesTagSetList")), 
            shape = "OnPremisesTagSet", type = "structure", locationName = "onPremisesTagSet")), 
        shape = "CreateDeploymentGroupInput", type = "structure")
    return(populate(args, shape))
}

create_deployment_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentGroupId = structure(logical(0), 
        shape = "DeploymentGroupId", type = "string", locationName = "deploymentGroupId")), 
        shape = "CreateDeploymentGroupOutput", type = "structure")
    return(populate(args, shape))
}

delete_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName")), shape = "DeleteApplicationInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_output <- function () 
{
    return(list())
}

delete_deployment_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName")), shape = "DeleteDeploymentConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_deployment_config_output <- function () 
{
    return(list())
}

delete_deployment_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName")), shape = "DeleteDeploymentGroupInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_deployment_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HooksNotCleanedUp = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AutoScalingGroupName", type = "string", locationName = "name"), 
        Hook = structure(logical(0), shape = "AutoScalingGroupHook", 
            type = "string", locationName = "hook")), shape = "AutoScalingGroup", 
        type = "structure")), shape = "AutoScalingGroupList", 
        type = "list", locationName = "hooksNotCleanedUp")), 
        shape = "DeleteDeploymentGroupOutput", type = "structure")
    return(populate(args, shape))
}

delete_git_hub_account_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TokenName = structure(logical(0), 
        shape = "GitHubAccountTokenName", type = "string", locationName = "tokenName")), 
        shape = "DeleteGitHubAccountTokenInput", type = "structure")
    return(populate(args, shape))
}

delete_git_hub_account_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TokenName = structure(logical(0), 
        shape = "GitHubAccountTokenName", type = "string", locationName = "tokenName")), 
        shape = "DeleteGitHubAccountTokenOutput", type = "structure")
    return(populate(args, shape))
}

deregister_on_premises_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "InstanceName", type = "string", locationName = "instanceName")), 
        shape = "DeregisterOnPremisesInstanceInput", type = "structure")
    return(populate(args, shape))
}

deregister_on_premises_instance_output <- function () 
{
    return(list())
}

get_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName")), shape = "GetApplicationInput", 
        type = "structure")
    return(populate(args, shape))
}

get_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Application = structure(list(ApplicationId = structure(logical(0), 
        shape = "ApplicationId", type = "string", locationName = "applicationId"), 
        ApplicationName = structure(logical(0), shape = "ApplicationName", 
            type = "string", max = 100L, min = 1L, locationName = "applicationName"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createTime"), 
        LinkedToGitHub = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "linkedToGitHub"), 
        GitHubAccountName = structure(logical(0), shape = "GitHubAccountTokenName", 
            type = "string", locationName = "gitHubAccountName"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "ApplicationInfo", type = "structure", locationName = "application")), 
        shape = "GetApplicationOutput", type = "structure")
    return(populate(args, shape))
}

get_application_revision_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), Revision = structure(list(RevisionType = structure(logical(0), 
        shape = "RevisionLocationType", type = "string", locationName = "revisionType"), 
        S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
        GitHubLocation = structure(list(Repository = structure(logical(0), 
            shape = "Repository", type = "string", locationName = "repository"), 
            CommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "commitId")), 
            shape = "GitHubLocation", type = "structure", locationName = "gitHubLocation"), 
        String = structure(list(Content = structure(logical(0), 
            shape = "RawStringContent", type = "string", locationName = "content"), 
            Sha256 = structure(logical(0), shape = "RawStringSha256", 
                type = "string", locationName = "sha256")), shape = "RawString", 
            type = "structure", locationName = "string")), shape = "RevisionLocation", 
        type = "structure", locationName = "revision")), shape = "GetApplicationRevisionInput", 
        type = "structure")
    return(populate(args, shape))
}

get_application_revision_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), Revision = structure(list(RevisionType = structure(logical(0), 
        shape = "RevisionLocationType", type = "string", locationName = "revisionType"), 
        S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
        GitHubLocation = structure(list(Repository = structure(logical(0), 
            shape = "Repository", type = "string", locationName = "repository"), 
            CommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "commitId")), 
            shape = "GitHubLocation", type = "structure", locationName = "gitHubLocation"), 
        String = structure(list(Content = structure(logical(0), 
            shape = "RawStringContent", type = "string", locationName = "content"), 
            Sha256 = structure(logical(0), shape = "RawStringSha256", 
                type = "string", locationName = "sha256")), shape = "RawString", 
            type = "structure", locationName = "string")), shape = "RevisionLocation", 
        type = "structure", locationName = "revision"), RevisionInfo = structure(list(Description = structure(logical(0), 
        shape = "Description", type = "string", locationName = "description"), 
        DeploymentGroups = structure(list(structure(logical(0), 
            shape = "DeploymentGroupName", type = "string", max = 100L, 
            min = 1L)), shape = "DeploymentGroupsList", type = "list", 
            locationName = "deploymentGroups"), FirstUsedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "firstUsedTime"), 
        LastUsedTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUsedTime"), 
        RegisterTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "registerTime")), 
        shape = "GenericRevisionInfo", type = "structure", locationName = "revisionInfo")), 
        shape = "GetApplicationRevisionOutput", type = "structure")
    return(populate(args, shape))
}

get_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId")), 
        shape = "GetDeploymentInput", type = "structure")
    return(populate(args, shape))
}

get_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentInfo = structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName"), DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName"), DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        PreviousRevision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "previousRevision"), 
        Revision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "revision"), 
        Status = structure(logical(0), shape = "DeploymentStatus", 
            type = "string", locationName = "status"), ErrorInformation = structure(list(Code = structure(logical(0), 
            shape = "ErrorCode", type = "string", locationName = "code"), 
            Message = structure(logical(0), shape = "ErrorMessage", 
                type = "string", locationName = "message")), 
            shape = "ErrorInformation", type = "structure", locationName = "errorInformation"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createTime"), 
        StartTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startTime"), 
        CompleteTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "completeTime"), 
        DeploymentOverview = structure(list(Pending = structure(logical(0), 
            shape = "InstanceCount", type = "long"), InProgress = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Succeeded = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Failed = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Skipped = structure(logical(0), 
            shape = "InstanceCount", type = "long"), Ready = structure(logical(0), 
            shape = "InstanceCount", type = "long")), shape = "DeploymentOverview", 
            type = "structure", locationName = "deploymentOverview"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", locationName = "description"), Creator = structure(logical(0), 
            shape = "DeploymentCreator", type = "string", locationName = "creator"), 
        IgnoreApplicationStopFailures = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "ignoreApplicationStopFailures"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        UpdateOutdatedInstancesOnly = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "updateOutdatedInstancesOnly"), 
        RollbackInfo = structure(list(RollbackDeploymentId = structure(logical(0), 
            shape = "DeploymentId", type = "string", locationName = "rollbackDeploymentId"), 
            RollbackTriggeringDeploymentId = structure(logical(0), 
                shape = "DeploymentId", type = "string", locationName = "rollbackTriggeringDeploymentId"), 
            RollbackMessage = structure(logical(0), shape = "Description", 
                type = "string", locationName = "rollbackMessage")), 
            shape = "RollbackInfo", type = "structure", locationName = "rollbackInfo"), 
        DeploymentStyle = structure(list(DeploymentType = structure(logical(0), 
            shape = "DeploymentType", type = "string", locationName = "deploymentType"), 
            DeploymentOption = structure(logical(0), shape = "DeploymentOption", 
                type = "string", locationName = "deploymentOption")), 
            shape = "DeploymentStyle", type = "structure", locationName = "deploymentStyle"), 
        TargetInstances = structure(list(TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list", locationName = "tagFilters"), AutoScalingGroups = structure(list(structure(logical(0), 
            shape = "AutoScalingGroupName", type = "string")), 
            shape = "AutoScalingGroupNameList", type = "list", 
            locationName = "autoScalingGroups"), Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet")), 
            shape = "TargetInstances", type = "structure", locationName = "targetInstances"), 
        InstanceTerminationWaitTimeStarted = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "instanceTerminationWaitTimeStarted"), 
        BlueGreenDeploymentConfiguration = structure(list(TerminateBlueInstancesOnDeploymentSuccess = structure(list(Action = structure(logical(0), 
            shape = "InstanceAction", type = "string", locationName = "action"), 
            TerminationWaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "terminationWaitTimeInMinutes")), 
            shape = "BlueInstanceTerminationOption", type = "structure", 
            locationName = "terminateBlueInstancesOnDeploymentSuccess"), 
            DeploymentReadyOption = structure(list(ActionOnTimeout = structure(logical(0), 
                shape = "DeploymentReadyAction", type = "string", 
                locationName = "actionOnTimeout"), WaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "waitTimeInMinutes")), 
                shape = "DeploymentReadyOption", type = "structure", 
                locationName = "deploymentReadyOption"), GreenFleetProvisioningOption = structure(list(Action = structure(logical(0), 
                shape = "GreenFleetProvisioningAction", type = "string", 
                locationName = "action")), shape = "GreenFleetProvisioningOption", 
                type = "structure", locationName = "greenFleetProvisioningOption")), 
            shape = "BlueGreenDeploymentConfiguration", type = "structure", 
            locationName = "blueGreenDeploymentConfiguration"), 
        LoadBalancerInfo = structure(list(ElbInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ELBName", type = "string", locationName = "name")), 
            shape = "ELBInfo", type = "structure")), shape = "ELBInfoList", 
            type = "list", locationName = "elbInfoList"), TargetGroupInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "TargetGroupName", type = "string", locationName = "name")), 
            shape = "TargetGroupInfo", type = "structure")), 
            shape = "TargetGroupInfoList", type = "list", locationName = "targetGroupInfoList")), 
            shape = "LoadBalancerInfo", type = "structure", locationName = "loadBalancerInfo"), 
        AdditionalDeploymentStatusInfo = structure(logical(0), 
            shape = "AdditionalDeploymentStatusInfo", type = "string", 
            deprecated = TRUE, locationName = "additionalDeploymentStatusInfo"), 
        FileExistsBehavior = structure(logical(0), shape = "FileExistsBehavior", 
            type = "string", locationName = "fileExistsBehavior"), 
        DeploymentStatusMessages = structure(list(structure(logical(0), 
            shape = "ErrorMessage", type = "string")), shape = "DeploymentStatusMessageList", 
            type = "list", locationName = "deploymentStatusMessages"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "DeploymentInfo", type = "structure", locationName = "deploymentInfo")), 
        shape = "GetDeploymentOutput", type = "structure")
    return(populate(args, shape))
}

get_deployment_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentConfigName = structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentConfigName")), shape = "GetDeploymentConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

get_deployment_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentConfigInfo = structure(list(DeploymentConfigId = structure(logical(0), 
        shape = "DeploymentConfigId", type = "string", locationName = "deploymentConfigId"), 
        DeploymentConfigName = structure(logical(0), shape = "DeploymentConfigName", 
            type = "string", max = 100L, min = 1L, locationName = "deploymentConfigName"), 
        MinimumHealthyHosts = structure(list(Value = structure(logical(0), 
            shape = "MinimumHealthyHostsValue", type = "integer", 
            locationName = "value"), Type = structure(logical(0), 
            shape = "MinimumHealthyHostsType", type = "string", 
            locationName = "type")), shape = "MinimumHealthyHosts", 
            type = "structure", locationName = "minimumHealthyHosts"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createTime"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform"), 
        TrafficRoutingConfig = structure(list(Type = structure(logical(0), 
            shape = "TrafficRoutingType", type = "string", locationName = "type"), 
            TimeBasedCanary = structure(list(CanaryPercentage = structure(logical(0), 
                shape = "Percentage", type = "integer", locationName = "canaryPercentage"), 
                CanaryInterval = structure(logical(0), shape = "WaitTimeInMins", 
                  type = "integer", locationName = "canaryInterval")), 
                shape = "TimeBasedCanary", type = "structure", 
                locationName = "timeBasedCanary"), TimeBasedLinear = structure(list(LinearPercentage = structure(logical(0), 
                shape = "Percentage", type = "integer", locationName = "linearPercentage"), 
                LinearInterval = structure(logical(0), shape = "WaitTimeInMins", 
                  type = "integer", locationName = "linearInterval")), 
                shape = "TimeBasedLinear", type = "structure", 
                locationName = "timeBasedLinear")), shape = "TrafficRoutingConfig", 
            type = "structure", locationName = "trafficRoutingConfig")), 
        shape = "DeploymentConfigInfo", type = "structure", locationName = "deploymentConfigInfo")), 
        shape = "GetDeploymentConfigOutput", type = "structure")
    return(populate(args, shape))
}

get_deployment_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName")), shape = "GetDeploymentGroupInput", 
        type = "structure")
    return(populate(args, shape))
}

get_deployment_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentGroupInfo = structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupId = structure(logical(0), 
        shape = "DeploymentGroupId", type = "string", locationName = "deploymentGroupId"), 
        DeploymentGroupName = structure(logical(0), shape = "DeploymentGroupName", 
            type = "string", max = 100L, min = 1L, locationName = "deploymentGroupName"), 
        DeploymentConfigName = structure(logical(0), shape = "DeploymentConfigName", 
            type = "string", max = 100L, min = 1L, locationName = "deploymentConfigName"), 
        Ec2TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list", locationName = "ec2TagFilters"), OnPremisesInstanceTagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list", 
            locationName = "onPremisesInstanceTagFilters"), AutoScalingGroups = structure(list(structure(list(Name = structure(logical(0), 
            shape = "AutoScalingGroupName", type = "string", 
            locationName = "name"), Hook = structure(logical(0), 
            shape = "AutoScalingGroupHook", type = "string", 
            locationName = "hook")), shape = "AutoScalingGroup", 
            type = "structure")), shape = "AutoScalingGroupList", 
            type = "list", locationName = "autoScalingGroups"), 
        ServiceRoleArn = structure(logical(0), shape = "Role", 
            type = "string", locationName = "serviceRoleArn"), 
        TargetRevision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "targetRevision"), 
        TriggerConfigurations = structure(list(structure(list(TriggerName = structure(logical(0), 
            shape = "TriggerName", type = "string", locationName = "triggerName"), 
            TriggerTargetArn = structure(logical(0), shape = "TriggerTargetArn", 
                type = "string", locationName = "triggerTargetArn"), 
            TriggerEvents = structure(list(structure(logical(0), 
                shape = "TriggerEventType", type = "string")), 
                shape = "TriggerEventTypeList", type = "list", 
                locationName = "triggerEvents")), shape = "TriggerConfig", 
            type = "structure")), shape = "TriggerConfigList", 
            type = "list", locationName = "triggerConfigurations"), 
        AlarmConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            IgnorePollAlarmFailure = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "ignorePollAlarmFailure"), 
            Alarms = structure(list(structure(list(Name = structure(logical(0), 
                shape = "AlarmName", type = "string", locationName = "name")), 
                shape = "Alarm", type = "structure")), shape = "AlarmList", 
                type = "list", locationName = "alarms")), shape = "AlarmConfiguration", 
            type = "structure", locationName = "alarmConfiguration"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        DeploymentStyle = structure(list(DeploymentType = structure(logical(0), 
            shape = "DeploymentType", type = "string", locationName = "deploymentType"), 
            DeploymentOption = structure(logical(0), shape = "DeploymentOption", 
                type = "string", locationName = "deploymentOption")), 
            shape = "DeploymentStyle", type = "structure", locationName = "deploymentStyle"), 
        BlueGreenDeploymentConfiguration = structure(list(TerminateBlueInstancesOnDeploymentSuccess = structure(list(Action = structure(logical(0), 
            shape = "InstanceAction", type = "string", locationName = "action"), 
            TerminationWaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "terminationWaitTimeInMinutes")), 
            shape = "BlueInstanceTerminationOption", type = "structure", 
            locationName = "terminateBlueInstancesOnDeploymentSuccess"), 
            DeploymentReadyOption = structure(list(ActionOnTimeout = structure(logical(0), 
                shape = "DeploymentReadyAction", type = "string", 
                locationName = "actionOnTimeout"), WaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "waitTimeInMinutes")), 
                shape = "DeploymentReadyOption", type = "structure", 
                locationName = "deploymentReadyOption"), GreenFleetProvisioningOption = structure(list(Action = structure(logical(0), 
                shape = "GreenFleetProvisioningAction", type = "string", 
                locationName = "action")), shape = "GreenFleetProvisioningOption", 
                type = "structure", locationName = "greenFleetProvisioningOption")), 
            shape = "BlueGreenDeploymentConfiguration", type = "structure", 
            locationName = "blueGreenDeploymentConfiguration"), 
        LoadBalancerInfo = structure(list(ElbInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ELBName", type = "string", locationName = "name")), 
            shape = "ELBInfo", type = "structure")), shape = "ELBInfoList", 
            type = "list", locationName = "elbInfoList"), TargetGroupInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "TargetGroupName", type = "string", locationName = "name")), 
            shape = "TargetGroupInfo", type = "structure")), 
            shape = "TargetGroupInfoList", type = "list", locationName = "targetGroupInfoList")), 
            shape = "LoadBalancerInfo", type = "structure", locationName = "loadBalancerInfo"), 
        LastSuccessfulDeployment = structure(list(DeploymentId = structure(logical(0), 
            shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
            Status = structure(logical(0), shape = "DeploymentStatus", 
                type = "string", locationName = "status"), EndTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp", locationName = "endTime"), 
            CreateTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createTime")), 
            shape = "LastDeploymentInfo", type = "structure", 
            locationName = "lastSuccessfulDeployment"), LastAttemptedDeployment = structure(list(DeploymentId = structure(logical(0), 
            shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
            Status = structure(logical(0), shape = "DeploymentStatus", 
                type = "string", locationName = "status"), EndTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp", locationName = "endTime"), 
            CreateTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "createTime")), 
            shape = "LastDeploymentInfo", type = "structure", 
            locationName = "lastAttemptedDeployment"), Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet"), 
        OnPremisesTagSet = structure(list(OnPremisesTagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list")), 
            shape = "OnPremisesTagSetList", type = "list", locationName = "onPremisesTagSetList")), 
            shape = "OnPremisesTagSet", type = "structure", locationName = "onPremisesTagSet"), 
        ComputePlatform = structure(logical(0), shape = "ComputePlatform", 
            type = "string", locationName = "computePlatform")), 
        shape = "DeploymentGroupInfo", type = "structure", locationName = "deploymentGroupInfo")), 
        shape = "GetDeploymentGroupOutput", type = "structure")
    return(populate(args, shape))
}

get_deployment_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", locationName = "instanceId")), shape = "GetDeploymentInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

get_deployment_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceSummary = structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        InstanceId = structure(logical(0), shape = "InstanceId", 
            type = "string", locationName = "instanceId"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string", locationName = "status"), 
        LastUpdatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedAt"), 
        LifecycleEvents = structure(list(structure(list(LifecycleEventName = structure(logical(0), 
            shape = "LifecycleEventName", type = "string", locationName = "lifecycleEventName"), 
            Diagnostics = structure(list(ErrorCode = structure(logical(0), 
                shape = "LifecycleErrorCode", type = "string", 
                locationName = "errorCode"), ScriptName = structure(logical(0), 
                shape = "ScriptName", type = "string", locationName = "scriptName"), 
                Message = structure(logical(0), shape = "LifecycleMessage", 
                  type = "string", locationName = "message"), 
                LogTail = structure(logical(0), shape = "LogTail", 
                  type = "string", locationName = "logTail")), 
                shape = "Diagnostics", type = "structure", locationName = "diagnostics"), 
            StartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "startTime"), 
            EndTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "endTime"), 
            Status = structure(logical(0), shape = "LifecycleEventStatus", 
                type = "string", locationName = "status")), shape = "LifecycleEvent", 
            type = "structure")), shape = "LifecycleEventList", 
            type = "list", locationName = "lifecycleEvents"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            type = "string", locationName = "instanceType")), 
        shape = "InstanceSummary", type = "structure", locationName = "instanceSummary")), 
        shape = "GetDeploymentInstanceOutput", type = "structure")
    return(populate(args, shape))
}

get_on_premises_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "InstanceName", type = "string", locationName = "instanceName")), 
        shape = "GetOnPremisesInstanceInput", type = "structure")
    return(populate(args, shape))
}

get_on_premises_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceInfo = structure(list(InstanceName = structure(logical(0), 
        shape = "InstanceName", type = "string", locationName = "instanceName"), 
        IamSessionArn = structure(logical(0), shape = "IamSessionArn", 
            type = "string", locationName = "iamSessionArn"), 
        IamUserArn = structure(logical(0), shape = "IamUserArn", 
            type = "string", locationName = "iamUserArn"), InstanceArn = structure(logical(0), 
            shape = "InstanceArn", type = "string", locationName = "instanceArn"), 
        RegisterTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "registerTime"), 
        DeregisterTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "deregisterTime"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list", 
            locationName = "tags")), shape = "InstanceInfo", 
        type = "structure", locationName = "instanceInfo")), 
        shape = "GetOnPremisesInstanceOutput", type = "structure")
    return(populate(args, shape))
}

list_application_revisions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), SortBy = structure(logical(0), 
        shape = "ApplicationRevisionSortBy", type = "string", 
        locationName = "sortBy"), SortOrder = structure(logical(0), 
        shape = "SortOrder", type = "string", locationName = "sortOrder"), 
        S3Bucket = structure(logical(0), shape = "S3Bucket", 
            type = "string", locationName = "s3Bucket"), S3KeyPrefix = structure(logical(0), 
            shape = "S3Key", type = "string", locationName = "s3KeyPrefix"), 
        Deployed = structure(logical(0), shape = "ListStateFilterAction", 
            type = "string", locationName = "deployed"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListApplicationRevisionsInput", type = "structure")
    return(populate(args, shape))
}

list_application_revisions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Revisions = structure(list(structure(list(RevisionType = structure(logical(0), 
        shape = "RevisionLocationType", type = "string", locationName = "revisionType"), 
        S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
        GitHubLocation = structure(list(Repository = structure(logical(0), 
            shape = "Repository", type = "string", locationName = "repository"), 
            CommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "commitId")), 
            shape = "GitHubLocation", type = "structure", locationName = "gitHubLocation"), 
        String = structure(list(Content = structure(logical(0), 
            shape = "RawStringContent", type = "string", locationName = "content"), 
            Sha256 = structure(logical(0), shape = "RawStringSha256", 
                type = "string", locationName = "sha256")), shape = "RawString", 
            type = "structure", locationName = "string")), shape = "RevisionLocation", 
        type = "structure")), shape = "RevisionLocationList", 
        type = "list", locationName = "revisions"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListApplicationRevisionsOutput", type = "structure")
    return(populate(args, shape))
}

list_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListApplicationsInput", type = "structure")
    return(populate(args, shape))
}

list_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Applications = structure(list(structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L)), shape = "ApplicationsList", type = "list", 
        locationName = "applications"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListApplicationsOutput", type = "structure")
    return(populate(args, shape))
}

list_deployment_configs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDeploymentConfigsInput", type = "structure")
    return(populate(args, shape))
}

list_deployment_configs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentConfigsList = structure(list(structure(logical(0), 
        shape = "DeploymentConfigName", type = "string", max = 100L, 
        min = 1L)), shape = "DeploymentConfigsList", type = "list", 
        locationName = "deploymentConfigsList"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDeploymentConfigsOutput", type = "structure")
    return(populate(args, shape))
}

list_deployment_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDeploymentGroupsInput", type = "structure")
    return(populate(args, shape))
}

list_deployment_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroups = structure(list(structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L)), shape = "DeploymentGroupsList", type = "list", 
        locationName = "deploymentGroups"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDeploymentGroupsOutput", type = "structure")
    return(populate(args, shape))
}

list_deployment_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), InstanceStatusFilter = structure(list(structure(logical(0), 
            shape = "InstanceStatus", type = "string")), shape = "InstanceStatusList", 
            type = "list", locationName = "instanceStatusFilter"), 
        InstanceTypeFilter = structure(list(structure(logical(0), 
            shape = "InstanceType", type = "string")), shape = "InstanceTypeList", 
            type = "list", locationName = "instanceTypeFilter")), 
        shape = "ListDeploymentInstancesInput", type = "structure")
    return(populate(args, shape))
}

list_deployment_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstancesList = structure(list(structure(logical(0), 
        shape = "InstanceId", type = "string")), shape = "InstancesList", 
        type = "list", locationName = "instancesList"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDeploymentInstancesOutput", type = "structure")
    return(populate(args, shape))
}

list_deployments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), DeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "deploymentGroupName"), IncludeOnlyStatuses = structure(list(structure(logical(0), 
        shape = "DeploymentStatus", type = "string")), shape = "DeploymentStatusList", 
        type = "list", locationName = "includeOnlyStatuses"), 
        CreateTimeRange = structure(list(Start = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "start"), 
            End = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "end")), shape = "TimeRange", 
            type = "structure", locationName = "createTimeRange"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListDeploymentsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_deployments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Deployments = structure(list(structure(logical(0), 
        shape = "DeploymentId", type = "string")), shape = "DeploymentsList", 
        type = "list", locationName = "deployments"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListDeploymentsOutput", type = "structure")
    return(populate(args, shape))
}

list_git_hub_account_token_names_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListGitHubAccountTokenNamesInput", type = "structure")
    return(populate(args, shape))
}

list_git_hub_account_token_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TokenNameList = structure(list(structure(logical(0), 
        shape = "GitHubAccountTokenName", type = "string")), 
        shape = "GitHubAccountTokenNameList", type = "list", 
        locationName = "tokenNameList"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListGitHubAccountTokenNamesOutput", type = "structure")
    return(populate(args, shape))
}

list_on_premises_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistrationStatus = structure(logical(0), 
        shape = "RegistrationStatus", type = "string", locationName = "registrationStatus"), 
        TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list", 
            locationName = "tagFilters"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListOnPremisesInstancesInput", type = "structure")
    return(populate(args, shape))
}

list_on_premises_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceNames = structure(list(structure(logical(0), 
        shape = "InstanceName", type = "string")), shape = "InstanceNameList", 
        type = "list", locationName = "instanceNames"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListOnPremisesInstancesOutput", type = "structure")
    return(populate(args, shape))
}

put_lifecycle_event_hook_execution_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        LifecycleEventHookExecutionId = structure(logical(0), 
            shape = "LifecycleEventHookExecutionId", type = "string", 
            locationName = "lifecycleEventHookExecutionId"), 
        Status = structure(logical(0), shape = "LifecycleEventStatus", 
            type = "string", locationName = "status")), shape = "PutLifecycleEventHookExecutionStatusInput", 
        type = "structure")
    return(populate(args, shape))
}

put_lifecycle_event_hook_execution_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LifecycleEventHookExecutionId = structure(logical(0), 
        shape = "LifecycleEventHookExecutionId", type = "string", 
        locationName = "lifecycleEventHookExecutionId")), shape = "PutLifecycleEventHookExecutionStatusOutput", 
        type = "structure")
    return(populate(args, shape))
}

register_application_revision_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), Description = structure(logical(0), 
        shape = "Description", type = "string", locationName = "description"), 
        Revision = structure(list(RevisionType = structure(logical(0), 
            shape = "RevisionLocationType", type = "string", 
            locationName = "revisionType"), S3Location = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", locationName = "bucket"), 
            Key = structure(logical(0), shape = "S3Key", type = "string", 
                locationName = "key"), BundleType = structure(logical(0), 
                shape = "BundleType", type = "string", locationName = "bundleType"), 
            Version = structure(logical(0), shape = "VersionId", 
                type = "string", locationName = "version"), ETag = structure(logical(0), 
                shape = "ETag", type = "string", locationName = "eTag")), 
            shape = "S3Location", type = "structure", locationName = "s3Location"), 
            GitHubLocation = structure(list(Repository = structure(logical(0), 
                shape = "Repository", type = "string", locationName = "repository"), 
                CommitId = structure(logical(0), shape = "CommitId", 
                  type = "string", locationName = "commitId")), 
                shape = "GitHubLocation", type = "structure", 
                locationName = "gitHubLocation"), String = structure(list(Content = structure(logical(0), 
                shape = "RawStringContent", type = "string", 
                locationName = "content"), Sha256 = structure(logical(0), 
                shape = "RawStringSha256", type = "string", locationName = "sha256")), 
                shape = "RawString", type = "structure", locationName = "string")), 
            shape = "RevisionLocation", type = "structure", locationName = "revision")), 
        shape = "RegisterApplicationRevisionInput", type = "structure")
    return(populate(args, shape))
}

register_application_revision_output <- function () 
{
    return(list())
}

register_on_premises_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "InstanceName", type = "string", locationName = "instanceName"), 
        IamSessionArn = structure(logical(0), shape = "IamSessionArn", 
            type = "string", locationName = "iamSessionArn"), 
        IamUserArn = structure(logical(0), shape = "IamUserArn", 
            type = "string", locationName = "iamUserArn")), shape = "RegisterOnPremisesInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

register_on_premises_instance_output <- function () 
{
    return(list())
}

remove_tags_from_on_premises_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "Key", type = "string"), Value = structure(logical(0), 
        shape = "Value", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", locationName = "tags"), 
        InstanceNames = structure(list(structure(logical(0), 
            shape = "InstanceName", type = "string")), shape = "InstanceNameList", 
            type = "list", locationName = "instanceNames")), 
        shape = "RemoveTagsFromOnPremisesInstancesInput", type = "structure")
    return(populate(args, shape))
}

remove_tags_from_on_premises_instances_output <- function () 
{
    return(list())
}

skip_wait_time_for_instance_termination_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId")), 
        shape = "SkipWaitTimeForInstanceTerminationInput", type = "structure")
    return(populate(args, shape))
}

skip_wait_time_for_instance_termination_output <- function () 
{
    return(list())
}

stop_deployment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeploymentId = structure(logical(0), 
        shape = "DeploymentId", type = "string", locationName = "deploymentId"), 
        AutoRollbackEnabled = structure(logical(0), shape = "NullableBoolean", 
            type = "boolean", locationName = "autoRollbackEnabled")), 
        shape = "StopDeploymentInput", type = "structure")
    return(populate(args, shape))
}

stop_deployment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "StopStatus", 
        type = "string", locationName = "status"), StatusMessage = structure(logical(0), 
        shape = "Message", type = "string", locationName = "statusMessage")), 
        shape = "StopDeploymentOutput", type = "structure")
    return(populate(args, shape))
}

update_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), NewApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "newApplicationName")), shape = "UpdateApplicationInput", 
        type = "structure")
    return(populate(args, shape))
}

update_application_output <- function () 
{
    return(list())
}

update_deployment_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 100L, 
        min = 1L, locationName = "applicationName"), CurrentDeploymentGroupName = structure(logical(0), 
        shape = "DeploymentGroupName", type = "string", max = 100L, 
        min = 1L, locationName = "currentDeploymentGroupName"), 
        NewDeploymentGroupName = structure(logical(0), shape = "DeploymentGroupName", 
            type = "string", max = 100L, min = 1L, locationName = "newDeploymentGroupName"), 
        DeploymentConfigName = structure(logical(0), shape = "DeploymentConfigName", 
            type = "string", max = 100L, min = 1L, locationName = "deploymentConfigName"), 
        Ec2TagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list", locationName = "ec2TagFilters"), OnPremisesInstanceTagFilters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list", 
            locationName = "onPremisesInstanceTagFilters"), AutoScalingGroups = structure(list(structure(logical(0), 
            shape = "AutoScalingGroupName", type = "string")), 
            shape = "AutoScalingGroupNameList", type = "list", 
            locationName = "autoScalingGroups"), ServiceRoleArn = structure(logical(0), 
            shape = "Role", type = "string", locationName = "serviceRoleArn"), 
        TriggerConfigurations = structure(list(structure(list(TriggerName = structure(logical(0), 
            shape = "TriggerName", type = "string", locationName = "triggerName"), 
            TriggerTargetArn = structure(logical(0), shape = "TriggerTargetArn", 
                type = "string", locationName = "triggerTargetArn"), 
            TriggerEvents = structure(list(structure(logical(0), 
                shape = "TriggerEventType", type = "string")), 
                shape = "TriggerEventTypeList", type = "list", 
                locationName = "triggerEvents")), shape = "TriggerConfig", 
            type = "structure")), shape = "TriggerConfigList", 
            type = "list", locationName = "triggerConfigurations"), 
        AlarmConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            IgnorePollAlarmFailure = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "ignorePollAlarmFailure"), 
            Alarms = structure(list(structure(list(Name = structure(logical(0), 
                shape = "AlarmName", type = "string", locationName = "name")), 
                shape = "Alarm", type = "structure")), shape = "AlarmList", 
                type = "list", locationName = "alarms")), shape = "AlarmConfiguration", 
            type = "structure", locationName = "alarmConfiguration"), 
        AutoRollbackConfiguration = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "enabled"), 
            Events = structure(list(structure(logical(0), shape = "AutoRollbackEvent", 
                type = "string")), shape = "AutoRollbackEventsList", 
                type = "list", locationName = "events")), shape = "AutoRollbackConfiguration", 
            type = "structure", locationName = "autoRollbackConfiguration"), 
        DeploymentStyle = structure(list(DeploymentType = structure(logical(0), 
            shape = "DeploymentType", type = "string", locationName = "deploymentType"), 
            DeploymentOption = structure(logical(0), shape = "DeploymentOption", 
                type = "string", locationName = "deploymentOption")), 
            shape = "DeploymentStyle", type = "structure", locationName = "deploymentStyle"), 
        BlueGreenDeploymentConfiguration = structure(list(TerminateBlueInstancesOnDeploymentSuccess = structure(list(Action = structure(logical(0), 
            shape = "InstanceAction", type = "string", locationName = "action"), 
            TerminationWaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "terminationWaitTimeInMinutes")), 
            shape = "BlueInstanceTerminationOption", type = "structure", 
            locationName = "terminateBlueInstancesOnDeploymentSuccess"), 
            DeploymentReadyOption = structure(list(ActionOnTimeout = structure(logical(0), 
                shape = "DeploymentReadyAction", type = "string", 
                locationName = "actionOnTimeout"), WaitTimeInMinutes = structure(logical(0), 
                shape = "Duration", type = "integer", locationName = "waitTimeInMinutes")), 
                shape = "DeploymentReadyOption", type = "structure", 
                locationName = "deploymentReadyOption"), GreenFleetProvisioningOption = structure(list(Action = structure(logical(0), 
                shape = "GreenFleetProvisioningAction", type = "string", 
                locationName = "action")), shape = "GreenFleetProvisioningOption", 
                type = "structure", locationName = "greenFleetProvisioningOption")), 
            shape = "BlueGreenDeploymentConfiguration", type = "structure", 
            locationName = "blueGreenDeploymentConfiguration"), 
        LoadBalancerInfo = structure(list(ElbInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ELBName", type = "string", locationName = "name")), 
            shape = "ELBInfo", type = "structure")), shape = "ELBInfoList", 
            type = "list", locationName = "elbInfoList"), TargetGroupInfoList = structure(list(structure(list(Name = structure(logical(0), 
            shape = "TargetGroupName", type = "string", locationName = "name")), 
            shape = "TargetGroupInfo", type = "structure")), 
            shape = "TargetGroupInfoList", type = "list", locationName = "targetGroupInfoList")), 
            shape = "LoadBalancerInfo", type = "structure", locationName = "loadBalancerInfo"), 
        Ec2TagSet = structure(list(Ec2TagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "EC2TagFilterType", type = "string")), shape = "EC2TagFilter", 
            type = "structure")), shape = "EC2TagFilterList", 
            type = "list")), shape = "EC2TagSetList", type = "list", 
            locationName = "ec2TagSetList")), shape = "EC2TagSet", 
            type = "structure", locationName = "ec2TagSet"), 
        OnPremisesTagSet = structure(list(OnPremisesTagSetList = structure(list(structure(list(structure(list(Key = structure(logical(0), 
            shape = "Key", type = "string"), Value = structure(logical(0), 
            shape = "Value", type = "string"), Type = structure(logical(0), 
            shape = "TagFilterType", type = "string")), shape = "TagFilter", 
            type = "structure")), shape = "TagFilterList", type = "list")), 
            shape = "OnPremisesTagSetList", type = "list", locationName = "onPremisesTagSetList")), 
            shape = "OnPremisesTagSet", type = "structure", locationName = "onPremisesTagSet")), 
        shape = "UpdateDeploymentGroupInput", type = "structure")
    return(populate(args, shape))
}

update_deployment_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HooksNotCleanedUp = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AutoScalingGroupName", type = "string", locationName = "name"), 
        Hook = structure(logical(0), shape = "AutoScalingGroupHook", 
            type = "string", locationName = "hook")), shape = "AutoScalingGroup", 
        type = "structure")), shape = "AutoScalingGroupList", 
        type = "list", locationName = "hooksNotCleanedUp")), 
        shape = "UpdateDeploymentGroupOutput", type = "structure")
    return(populate(args, shape))
}
