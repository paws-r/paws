add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "ARN", 
        type = "string"), TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "AddTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function () 
{
    return(list())
}

cancel_elasticsearch_service_software_update_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "CancelElasticsearchServiceSoftwareUpdateRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_elasticsearch_service_software_update_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceSoftwareOptions = structure(list(CurrentVersion = structure(logical(0), 
        shape = "String", type = "string"), NewVersion = structure(logical(0), 
        shape = "String", type = "string"), UpdateAvailable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Cancellable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), UpdateStatus = structure(logical(0), 
        shape = "DeploymentStatus", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), AutomatedUpdateDate = structure(logical(0), 
        shape = "DeploymentCloseDateTimeStamp", type = "timestamp")), 
        shape = "ServiceSoftwareOptions", type = "structure")), 
        shape = "CancelElasticsearchServiceSoftwareUpdateResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_elasticsearch_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+"), ElasticsearchVersion = structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string"), 
        ElasticsearchClusterConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
                shape = "ESPartitionInstanceType", type = "string"), 
            DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer")), shape = "ElasticsearchClusterConfig", 
            type = "structure"), EBSOptions = structure(list(EBSEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
            shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
            type = "structure"), AccessPolicies = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), SnapshotOptions = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), VPCOptions = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCOptions", type = "structure"), 
        CognitoOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
        EncryptionAtRestOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
        NodeToNodeEncryptionOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), AdvancedOptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), LogPublishingOptions = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map")), shape = "CreateElasticsearchDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_elasticsearch_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatus = structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", max = 64L, min = 1L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Endpoint = structure(logical(0), shape = "ServiceUrl", 
            type = "string"), Endpoints = structure(list(structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "EndpointsMap", 
            type = "map"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpgradeProcessing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ElasticsearchVersion = structure(logical(0), 
            shape = "ElasticsearchVersionString", type = "string"), 
        ElasticsearchClusterConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
                shape = "ESPartitionInstanceType", type = "string"), 
            DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer")), shape = "ElasticsearchClusterConfig", 
            type = "structure"), EBSOptions = structure(list(EBSEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
            shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
            type = "structure"), AccessPolicies = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), SnapshotOptions = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), VPCOptions = structure(list(VPCId = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCDerivedInfo", type = "structure"), 
        CognitoOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
        EncryptionAtRestOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
        NodeToNodeEncryptionOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), AdvancedOptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), LogPublishingOptions = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map"), ServiceSoftwareOptions = structure(list(CurrentVersion = structure(logical(0), 
            shape = "String", type = "string"), NewVersion = structure(logical(0), 
            shape = "String", type = "string"), UpdateAvailable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Cancellable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpdateStatus = structure(logical(0), 
            shape = "DeploymentStatus", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), AutomatedUpdateDate = structure(logical(0), 
            shape = "DeploymentCloseDateTimeStamp", type = "timestamp")), 
            shape = "ServiceSoftwareOptions", type = "structure")), 
        shape = "ElasticsearchDomainStatus", type = "structure")), 
        shape = "CreateElasticsearchDomainResponse", type = "structure")
    return(populate(args, shape))
}

delete_elasticsearch_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "uri", locationName = "DomainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+")), 
        shape = "DeleteElasticsearchDomainRequest", type = "structure")
    return(populate(args, shape))
}

delete_elasticsearch_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatus = structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", max = 64L, min = 1L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Endpoint = structure(logical(0), shape = "ServiceUrl", 
            type = "string"), Endpoints = structure(list(structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "EndpointsMap", 
            type = "map"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpgradeProcessing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ElasticsearchVersion = structure(logical(0), 
            shape = "ElasticsearchVersionString", type = "string"), 
        ElasticsearchClusterConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
                shape = "ESPartitionInstanceType", type = "string"), 
            DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer")), shape = "ElasticsearchClusterConfig", 
            type = "structure"), EBSOptions = structure(list(EBSEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
            shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
            type = "structure"), AccessPolicies = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), SnapshotOptions = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), VPCOptions = structure(list(VPCId = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCDerivedInfo", type = "structure"), 
        CognitoOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
        EncryptionAtRestOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
        NodeToNodeEncryptionOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), AdvancedOptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), LogPublishingOptions = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map"), ServiceSoftwareOptions = structure(list(CurrentVersion = structure(logical(0), 
            shape = "String", type = "string"), NewVersion = structure(logical(0), 
            shape = "String", type = "string"), UpdateAvailable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Cancellable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpdateStatus = structure(logical(0), 
            shape = "DeploymentStatus", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), AutomatedUpdateDate = structure(logical(0), 
            shape = "DeploymentCloseDateTimeStamp", type = "timestamp")), 
            shape = "ServiceSoftwareOptions", type = "structure")), 
        shape = "ElasticsearchDomainStatus", type = "structure")), 
        shape = "DeleteElasticsearchDomainResponse", type = "structure")
    return(populate(args, shape))
}

delete_elasticsearch_service_role_input <- function () 
{
    return(list())
}

delete_elasticsearch_service_role_output <- function () 
{
    return(list())
}

describe_elasticsearch_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "uri", locationName = "DomainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+")), 
        shape = "DescribeElasticsearchDomainRequest", type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatus = structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", max = 64L, min = 1L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Endpoint = structure(logical(0), shape = "ServiceUrl", 
            type = "string"), Endpoints = structure(list(structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "EndpointsMap", 
            type = "map"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpgradeProcessing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ElasticsearchVersion = structure(logical(0), 
            shape = "ElasticsearchVersionString", type = "string"), 
        ElasticsearchClusterConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
                shape = "ESPartitionInstanceType", type = "string"), 
            DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer")), shape = "ElasticsearchClusterConfig", 
            type = "structure"), EBSOptions = structure(list(EBSEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
            shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
            type = "structure"), AccessPolicies = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), SnapshotOptions = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), VPCOptions = structure(list(VPCId = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCDerivedInfo", type = "structure"), 
        CognitoOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
        EncryptionAtRestOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
        NodeToNodeEncryptionOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), AdvancedOptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), LogPublishingOptions = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map"), ServiceSoftwareOptions = structure(list(CurrentVersion = structure(logical(0), 
            shape = "String", type = "string"), NewVersion = structure(logical(0), 
            shape = "String", type = "string"), UpdateAvailable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Cancellable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpdateStatus = structure(logical(0), 
            shape = "DeploymentStatus", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), AutomatedUpdateDate = structure(logical(0), 
            shape = "DeploymentCloseDateTimeStamp", type = "timestamp")), 
            shape = "ServiceSoftwareOptions", type = "structure")), 
        shape = "ElasticsearchDomainStatus", type = "structure")), 
        shape = "DescribeElasticsearchDomainResponse", type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_domain_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "uri", locationName = "DomainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+")), 
        shape = "DescribeElasticsearchDomainConfigRequest", type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_domain_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainConfig = structure(list(ElasticsearchVersion = structure(list(Options = structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "ElasticsearchVersionStatus", 
        type = "structure"), ElasticsearchClusterConfig = structure(list(Options = structure(list(InstanceType = structure(logical(0), 
        shape = "ESPartitionInstanceType", type = "string"), 
        InstanceCount = structure(logical(0), shape = "IntegerClass", 
            type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
        DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
            type = "integer")), shape = "ElasticsearchClusterConfig", 
        type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "ElasticsearchClusterConfigStatus", 
        type = "structure"), EBSOptions = structure(list(Options = structure(list(EBSEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
        shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
        shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
        shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
        type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "EBSOptionsStatus", type = "structure"), 
        AccessPolicies = structure(list(Options = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AccessPoliciesStatus", 
            type = "structure"), SnapshotOptions = structure(list(Options = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "SnapshotOptionsStatus", 
            type = "structure"), VPCOptions = structure(list(Options = structure(list(VPCId = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCDerivedInfo", type = "structure"), 
            Status = structure(list(CreationDate = structure(logical(0), 
                shape = "UpdateTimestamp", type = "timestamp"), 
                UpdateDate = structure(logical(0), shape = "UpdateTimestamp", 
                  type = "timestamp"), UpdateVersion = structure(logical(0), 
                  shape = "UIntValue", type = "integer", min = 0L), 
                State = structure(logical(0), shape = "OptionState", 
                  type = "string"), PendingDeletion = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
                type = "structure")), shape = "VPCDerivedInfoStatus", 
            type = "structure"), CognitoOptions = structure(list(Options = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
            Status = structure(list(CreationDate = structure(logical(0), 
                shape = "UpdateTimestamp", type = "timestamp"), 
                UpdateDate = structure(logical(0), shape = "UpdateTimestamp", 
                  type = "timestamp"), UpdateVersion = structure(logical(0), 
                  shape = "UIntValue", type = "integer", min = 0L), 
                State = structure(logical(0), shape = "OptionState", 
                  type = "string"), PendingDeletion = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
                type = "structure")), shape = "CognitoOptionsStatus", 
            type = "structure"), EncryptionAtRestOptions = structure(list(Options = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
            Status = structure(list(CreationDate = structure(logical(0), 
                shape = "UpdateTimestamp", type = "timestamp"), 
                UpdateDate = structure(logical(0), shape = "UpdateTimestamp", 
                  type = "timestamp"), UpdateVersion = structure(logical(0), 
                  shape = "UIntValue", type = "integer", min = 0L), 
                State = structure(logical(0), shape = "OptionState", 
                  type = "string"), PendingDeletion = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
                type = "structure")), shape = "EncryptionAtRestOptionsStatus", 
            type = "structure"), NodeToNodeEncryptionOptions = structure(list(Options = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "NodeToNodeEncryptionOptionsStatus", 
            type = "structure"), AdvancedOptions = structure(list(Options = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AdvancedOptionsStatus", 
            type = "structure"), LogPublishingOptions = structure(list(Options = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "LogPublishingOptionsStatus", 
            type = "structure")), shape = "ElasticsearchDomainConfig", 
        type = "structure")), shape = "DescribeElasticsearchDomainConfigResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_domains_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainNames = structure(list(structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "DomainNameList", 
        type = "list")), shape = "DescribeElasticsearchDomainsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_domains_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainStatusList = structure(list(structure(list(DomainId = structure(logical(0), 
        shape = "DomainId", type = "string", max = 64L, min = 1L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        ARN = structure(logical(0), shape = "ARN", type = "string"), 
        Created = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Deleted = structure(logical(0), shape = "Boolean", type = "boolean"), 
        Endpoint = structure(logical(0), shape = "ServiceUrl", 
            type = "string"), Endpoints = structure(list(structure(logical(0), 
            shape = "ServiceUrl", type = "string")), shape = "EndpointsMap", 
            type = "map"), Processing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpgradeProcessing = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ElasticsearchVersion = structure(logical(0), 
            shape = "ElasticsearchVersionString", type = "string"), 
        ElasticsearchClusterConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
                shape = "ESPartitionInstanceType", type = "string"), 
            DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer")), shape = "ElasticsearchClusterConfig", 
            type = "structure"), EBSOptions = structure(list(EBSEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
            shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
            type = "structure"), AccessPolicies = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), SnapshotOptions = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), VPCOptions = structure(list(VPCId = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCDerivedInfo", type = "structure"), 
        CognitoOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
        EncryptionAtRestOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
        NodeToNodeEncryptionOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), AdvancedOptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), LogPublishingOptions = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map"), ServiceSoftwareOptions = structure(list(CurrentVersion = structure(logical(0), 
            shape = "String", type = "string"), NewVersion = structure(logical(0), 
            shape = "String", type = "string"), UpdateAvailable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Cancellable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UpdateStatus = structure(logical(0), 
            shape = "DeploymentStatus", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), AutomatedUpdateDate = structure(logical(0), 
            shape = "DeploymentCloseDateTimeStamp", type = "timestamp")), 
            shape = "ServiceSoftwareOptions", type = "structure")), 
        shape = "ElasticsearchDomainStatus", type = "structure")), 
        shape = "ElasticsearchDomainStatusList", type = "list")), 
        shape = "DescribeElasticsearchDomainsResponse", type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_instance_type_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "querystring", locationName = "domainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        InstanceType = structure(logical(0), shape = "ESPartitionInstanceType", 
            location = "uri", locationName = "InstanceType", 
            type = "string"), ElasticsearchVersion = structure(logical(0), 
            shape = "ElasticsearchVersionString", location = "uri", 
            locationName = "ElasticsearchVersion", type = "string")), 
        shape = "DescribeElasticsearchInstanceTypeLimitsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_elasticsearch_instance_type_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LimitsByRole = structure(list(structure(list(StorageTypes = structure(list(structure(list(StorageTypeName = structure(logical(0), 
        shape = "StorageTypeName", type = "string"), StorageSubTypeName = structure(logical(0), 
        shape = "StorageSubTypeName", type = "string"), StorageTypeLimits = structure(list(structure(list(LimitName = structure(logical(0), 
        shape = "LimitName", type = "string"), LimitValues = structure(list(structure(logical(0), 
        shape = "LimitValue", type = "string")), shape = "LimitValueList", 
        type = "list")), shape = "StorageTypeLimit", type = "structure")), 
        shape = "StorageTypeLimitList", type = "list")), shape = "StorageType", 
        type = "structure")), shape = "StorageTypeList", type = "list"), 
        InstanceLimits = structure(list(InstanceCountLimits = structure(list(MinimumInstanceCount = structure(logical(0), 
            shape = "MinimumInstanceCount", type = "integer"), 
            MaximumInstanceCount = structure(logical(0), shape = "MaximumInstanceCount", 
                type = "integer")), shape = "InstanceCountLimits", 
            type = "structure")), shape = "InstanceLimits", type = "structure"), 
        AdditionalLimits = structure(list(structure(list(LimitName = structure(logical(0), 
            shape = "LimitName", type = "string"), LimitValues = structure(list(structure(logical(0), 
            shape = "LimitValue", type = "string")), shape = "LimitValueList", 
            type = "list")), shape = "AdditionalLimit", type = "structure")), 
            shape = "AdditionalLimitList", type = "list")), shape = "Limits", 
        type = "structure")), shape = "LimitsByRole", type = "map")), 
        shape = "DescribeElasticsearchInstanceTypeLimitsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_elasticsearch_instance_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedElasticsearchInstanceOfferingId = structure(logical(0), 
        shape = "GUID", location = "querystring", locationName = "offeringId", 
        type = "string", pattern = "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 100L), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "DescribeReservedElasticsearchInstanceOfferingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_elasticsearch_instance_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), ReservedElasticsearchInstanceOfferings = structure(list(structure(list(ReservedElasticsearchInstanceOfferingId = structure(logical(0), 
        shape = "GUID", type = "string", pattern = "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"), 
        ElasticsearchInstanceType = structure(logical(0), shape = "ESPartitionInstanceType", 
            type = "string"), Duration = structure(logical(0), 
            shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
            shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
            shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
            shape = "String", type = "string"), PaymentOption = structure(logical(0), 
            shape = "ReservedElasticsearchInstancePaymentOption", 
            type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
            shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
            shape = "String", type = "string")), shape = "RecurringCharge", 
            type = "structure")), shape = "RecurringChargeList", 
            type = "list")), shape = "ReservedElasticsearchInstanceOffering", 
        type = "structure")), shape = "ReservedElasticsearchInstanceOfferingList", 
        type = "list")), shape = "DescribeReservedElasticsearchInstanceOfferingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_elasticsearch_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedElasticsearchInstanceId = structure(logical(0), 
        shape = "GUID", location = "querystring", locationName = "reservationId", 
        type = "string", pattern = "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 100L), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "DescribeReservedElasticsearchInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_elasticsearch_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", type = "string"), ReservedElasticsearchInstances = structure(list(structure(list(ReservationName = structure(logical(0), 
        shape = "ReservationToken", type = "string", max = 64L, 
        min = 5L), ReservedElasticsearchInstanceId = structure(logical(0), 
        shape = "GUID", type = "string", pattern = "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"), 
        ReservedElasticsearchInstanceOfferingId = structure(logical(0), 
            shape = "String", type = "string"), ElasticsearchInstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
        StartTime = structure(logical(0), shape = "UpdateTimestamp", 
            type = "timestamp"), Duration = structure(logical(0), 
            shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
            shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
            shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
            shape = "String", type = "string"), ElasticsearchInstanceCount = structure(logical(0), 
            shape = "Integer", type = "integer"), State = structure(logical(0), 
            shape = "String", type = "string"), PaymentOption = structure(logical(0), 
            shape = "ReservedElasticsearchInstancePaymentOption", 
            type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
            shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
            shape = "String", type = "string")), shape = "RecurringCharge", 
            type = "structure")), shape = "RecurringChargeList", 
            type = "list")), shape = "ReservedElasticsearchInstance", 
        type = "structure")), shape = "ReservedElasticsearchInstanceList", 
        type = "list")), shape = "DescribeReservedElasticsearchInstancesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_compatible_elasticsearch_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "querystring", locationName = "domainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+")), 
        shape = "GetCompatibleElasticsearchVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_compatible_elasticsearch_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CompatibleElasticsearchVersions = structure(list(structure(list(SourceVersion = structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string"), 
        TargetVersions = structure(list(structure(logical(0), 
            shape = "ElasticsearchVersionString", type = "string")), 
            shape = "ElasticsearchVersionList", type = "list")), 
        shape = "CompatibleVersionsMap", type = "structure")), 
        shape = "CompatibleElasticsearchVersionsList", type = "list")), 
        shape = "GetCompatibleElasticsearchVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_upgrade_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "uri", locationName = "DomainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 100L), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "GetUpgradeHistoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_upgrade_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UpgradeHistories = structure(list(structure(list(UpgradeName = structure(logical(0), 
        shape = "UpgradeName", type = "string"), StartTimestamp = structure(logical(0), 
        shape = "StartTimestamp", type = "timestamp"), UpgradeStatus = structure(logical(0), 
        shape = "UpgradeStatus", type = "string"), StepsList = structure(list(structure(list(UpgradeStep = structure(logical(0), 
        shape = "UpgradeStep", type = "string"), UpgradeStepStatus = structure(logical(0), 
        shape = "UpgradeStatus", type = "string"), Issues = structure(list(structure(logical(0), 
        shape = "Issue", type = "string")), shape = "Issues", 
        type = "list"), ProgressPercent = structure(logical(0), 
        shape = "Double", type = "double")), shape = "UpgradeStepItem", 
        type = "structure")), shape = "UpgradeStepsList", type = "list")), 
        shape = "UpgradeHistory", type = "structure")), shape = "UpgradeHistoryList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "GetUpgradeHistoryResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_upgrade_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "uri", locationName = "DomainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+")), 
        shape = "GetUpgradeStatusRequest", type = "structure")
    return(populate(args, shape))
}

get_upgrade_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UpgradeStep = structure(logical(0), 
        shape = "UpgradeStep", type = "string"), StepStatus = structure(logical(0), 
        shape = "UpgradeStatus", type = "string"), UpgradeName = structure(logical(0), 
        shape = "UpgradeName", type = "string")), shape = "GetUpgradeStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_domain_names_input <- function () 
{
    return(list())
}

list_domain_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainNames = structure(list(structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "DomainInfo", 
        type = "structure")), shape = "DomainInfoList", type = "list")), 
        shape = "ListDomainNamesResponse", type = "structure")
    return(populate(args, shape))
}

list_elasticsearch_instance_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticsearchVersion = structure(logical(0), 
        shape = "ElasticsearchVersionString", location = "uri", 
        locationName = "ElasticsearchVersion", type = "string"), 
        DomainName = structure(logical(0), shape = "DomainName", 
            location = "querystring", locationName = "domainName", 
            type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", max = 100L), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "ListElasticsearchInstanceTypesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_elasticsearch_instance_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticsearchInstanceTypes = structure(list(structure(logical(0), 
        shape = "ESPartitionInstanceType", type = "string")), 
        shape = "ElasticsearchInstanceTypeList", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListElasticsearchInstanceTypesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_elasticsearch_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 100L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListElasticsearchVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_elasticsearch_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticsearchVersions = structure(list(structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string")), 
        shape = "ElasticsearchVersionList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListElasticsearchVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "ARN", 
        location = "querystring", locationName = "arn", type = "string")), 
        shape = "ListTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "ListTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_elasticsearch_instance_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedElasticsearchInstanceOfferingId = structure(logical(0), 
        shape = "GUID", type = "string", pattern = "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"), 
        ReservationName = structure(logical(0), shape = "ReservationToken", 
            type = "string", max = 64L, min = 5L), InstanceCount = structure(logical(0), 
            shape = "InstanceCount", type = "integer", min = 1L)), 
        shape = "PurchaseReservedElasticsearchInstanceOfferingRequest", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_elasticsearch_instance_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedElasticsearchInstanceId = structure(logical(0), 
        shape = "GUID", type = "string", pattern = "\\p{XDigit}{8}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{4}-\\p{XDigit}{12}"), 
        ReservationName = structure(logical(0), shape = "ReservationToken", 
            type = "string", max = 64L, min = 5L)), shape = "PurchaseReservedElasticsearchInstanceOfferingResponse", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ARN = structure(logical(0), shape = "ARN", 
        type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list")), shape = "RemoveTagsRequest", type = "structure")
    return(populate(args, shape))
}

remove_tags_output <- function () 
{
    return(list())
}

start_elasticsearch_service_software_update_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+")), shape = "StartElasticsearchServiceSoftwareUpdateRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_elasticsearch_service_software_update_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceSoftwareOptions = structure(list(CurrentVersion = structure(logical(0), 
        shape = "String", type = "string"), NewVersion = structure(logical(0), 
        shape = "String", type = "string"), UpdateAvailable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Cancellable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), UpdateStatus = structure(logical(0), 
        shape = "DeploymentStatus", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), AutomatedUpdateDate = structure(logical(0), 
        shape = "DeploymentCloseDateTimeStamp", type = "timestamp")), 
        shape = "ServiceSoftwareOptions", type = "structure")), 
        shape = "StartElasticsearchServiceSoftwareUpdateResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_elasticsearch_domain_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", location = "uri", locationName = "DomainName", 
        type = "string", max = 28L, min = 3L, pattern = "[a-z][a-z0-9\\-]+"), 
        ElasticsearchClusterConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
                shape = "ESPartitionInstanceType", type = "string"), 
            DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
                type = "integer")), shape = "ElasticsearchClusterConfig", 
            type = "structure"), EBSOptions = structure(list(EBSEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
            shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
            type = "structure"), SnapshotOptions = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), VPCOptions = structure(list(SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCOptions", type = "structure"), 
        CognitoOptions = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
        AdvancedOptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), AccessPolicies = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), LogPublishingOptions = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map")), shape = "UpdateElasticsearchDomainConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_elasticsearch_domain_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainConfig = structure(list(ElasticsearchVersion = structure(list(Options = structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string"), 
        Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "ElasticsearchVersionStatus", 
        type = "structure"), ElasticsearchClusterConfig = structure(list(Options = structure(list(InstanceType = structure(logical(0), 
        shape = "ESPartitionInstanceType", type = "string"), 
        InstanceCount = structure(logical(0), shape = "IntegerClass", 
            type = "integer"), DedicatedMasterEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ZoneAwarenessEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DedicatedMasterType = structure(logical(0), 
            shape = "ESPartitionInstanceType", type = "string"), 
        DedicatedMasterCount = structure(logical(0), shape = "IntegerClass", 
            type = "integer")), shape = "ElasticsearchClusterConfig", 
        type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "ElasticsearchClusterConfigStatus", 
        type = "structure"), EBSOptions = structure(list(Options = structure(list(EBSEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VolumeType = structure(logical(0), 
        shape = "VolumeType", type = "string"), VolumeSize = structure(logical(0), 
        shape = "IntegerClass", type = "integer"), Iops = structure(logical(0), 
        shape = "IntegerClass", type = "integer")), shape = "EBSOptions", 
        type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
        shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
        shape = "UIntValue", type = "integer", min = 0L), State = structure(logical(0), 
        shape = "OptionState", type = "string"), PendingDeletion = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
        type = "structure")), shape = "EBSOptionsStatus", type = "structure"), 
        AccessPolicies = structure(list(Options = structure(logical(0), 
            shape = "PolicyDocument", type = "string"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AccessPoliciesStatus", 
            type = "structure"), SnapshotOptions = structure(list(Options = structure(list(AutomatedSnapshotStartHour = structure(logical(0), 
            shape = "IntegerClass", type = "integer")), shape = "SnapshotOptions", 
            type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "SnapshotOptionsStatus", 
            type = "structure"), VPCOptions = structure(list(Options = structure(list(VPCId = structure(logical(0), 
            shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "VPCDerivedInfo", type = "structure"), 
            Status = structure(list(CreationDate = structure(logical(0), 
                shape = "UpdateTimestamp", type = "timestamp"), 
                UpdateDate = structure(logical(0), shape = "UpdateTimestamp", 
                  type = "timestamp"), UpdateVersion = structure(logical(0), 
                  shape = "UIntValue", type = "integer", min = 0L), 
                State = structure(logical(0), shape = "OptionState", 
                  type = "string"), PendingDeletion = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
                type = "structure")), shape = "VPCDerivedInfoStatus", 
            type = "structure"), CognitoOptions = structure(list(Options = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), UserPoolId = structure(logical(0), 
            shape = "UserPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+_[0-9a-zA-Z]+"), IdentityPoolId = structure(logical(0), 
            shape = "IdentityPoolId", type = "string", max = 55L, 
            min = 1L, pattern = "[\\w-]+:[0-9a-f-]+"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L)), shape = "CognitoOptions", type = "structure"), 
            Status = structure(list(CreationDate = structure(logical(0), 
                shape = "UpdateTimestamp", type = "timestamp"), 
                UpdateDate = structure(logical(0), shape = "UpdateTimestamp", 
                  type = "timestamp"), UpdateVersion = structure(logical(0), 
                  shape = "UIntValue", type = "integer", min = 0L), 
                State = structure(logical(0), shape = "OptionState", 
                  type = "string"), PendingDeletion = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
                type = "structure")), shape = "CognitoOptionsStatus", 
            type = "structure"), EncryptionAtRestOptions = structure(list(Options = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 500L, 
            min = 1L)), shape = "EncryptionAtRestOptions", type = "structure"), 
            Status = structure(list(CreationDate = structure(logical(0), 
                shape = "UpdateTimestamp", type = "timestamp"), 
                UpdateDate = structure(logical(0), shape = "UpdateTimestamp", 
                  type = "timestamp"), UpdateVersion = structure(logical(0), 
                  shape = "UIntValue", type = "integer", min = 0L), 
                State = structure(logical(0), shape = "OptionState", 
                  type = "string"), PendingDeletion = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
                type = "structure")), shape = "EncryptionAtRestOptionsStatus", 
            type = "structure"), NodeToNodeEncryptionOptions = structure(list(Options = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NodeToNodeEncryptionOptions", 
            type = "structure"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "NodeToNodeEncryptionOptionsStatus", 
            type = "structure"), AdvancedOptions = structure(list(Options = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AdvancedOptions", 
            type = "map"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "AdvancedOptionsStatus", 
            type = "structure"), LogPublishingOptions = structure(list(Options = structure(list(structure(list(CloudWatchLogsLogGroupArn = structure(logical(0), 
            shape = "CloudWatchLogsLogGroupArn", type = "string"), 
            Enabled = structure(logical(0), shape = "Boolean", 
                type = "boolean")), shape = "LogPublishingOption", 
            type = "structure")), shape = "LogPublishingOptions", 
            type = "map"), Status = structure(list(CreationDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "UpdateTimestamp", type = "timestamp"), UpdateVersion = structure(logical(0), 
            shape = "UIntValue", type = "integer", min = 0L), 
            State = structure(logical(0), shape = "OptionState", 
                type = "string"), PendingDeletion = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "OptionStatus", 
            type = "structure")), shape = "LogPublishingOptionsStatus", 
            type = "structure")), shape = "ElasticsearchDomainConfig", 
        type = "structure")), shape = "UpdateElasticsearchDomainConfigResponse", 
        type = "structure")
    return(populate(args, shape))
}

upgrade_elasticsearch_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+"), TargetVersion = structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string"), 
        PerformCheckOnly = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "UpgradeElasticsearchDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

upgrade_elasticsearch_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", max = 28L, min = 3L, 
        pattern = "[a-z][a-z0-9\\-]+"), TargetVersion = structure(logical(0), 
        shape = "ElasticsearchVersionString", type = "string"), 
        PerformCheckOnly = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "UpgradeElasticsearchDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}
