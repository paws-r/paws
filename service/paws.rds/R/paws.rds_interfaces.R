add_role_to_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RoleArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "AddRoleToDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

add_role_to_db_cluster_output <- function () 
{
    return(list())
}

add_source_identifier_to_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SourceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "AddSourceIdentifierToSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

add_source_identifier_to_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EventSubscriptionArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventSubscription", 
        type = "structure", wrapper = TRUE)), shape = "AddSourceIdentifierToSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "AddTagsToResourceMessage", type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_output <- function () 
{
    return(list())
}

apply_pending_maintenance_action_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ApplyAction = structure(logical(0), 
        shape = "String", type = "string"), OptInType = structure(logical(0), 
        shape = "String", type = "string")), shape = "ApplyPendingMaintenanceActionMessage", 
        type = "structure")
    return(populate(args, shape))
}

apply_pending_maintenance_action_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourcePendingMaintenanceActions = structure(list(ResourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), PendingMaintenanceActionDetails = structure(list(structure(list(Action = structure(logical(0), 
        shape = "String", type = "string"), AutoAppliedAfterDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ForcedApplyDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), OptInStatus = structure(logical(0), 
        shape = "String", type = "string"), CurrentApplyDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingMaintenanceAction", 
        locationName = "PendingMaintenanceAction", type = "structure")), 
        shape = "PendingMaintenanceActionDetails", type = "list")), 
        shape = "ResourcePendingMaintenanceActions", type = "structure", 
        wrapper = TRUE)), shape = "ApplyPendingMaintenanceActionResult", 
        type = "structure")
    return(populate(args, shape))
}

authorize_db_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AuthorizeDBSecurityGroupIngressMessage", 
        type = "structure")
    return(populate(args, shape))
}

authorize_db_security_group_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroup = structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string")), shape = "IPRange", 
        locationName = "IPRange", type = "structure")), shape = "IPRangeList", 
        type = "list"), DBSecurityGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "AuthorizeDBSecurityGroupIngressResult", 
        type = "structure")
    return(populate(args, shape))
}

backtrack_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BacktrackTo = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Force = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), UseEarliestTimeOnPointInTimeUnavailable = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "BacktrackDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

backtrack_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BacktrackIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BacktrackTo = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), BacktrackedFrom = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), BacktrackRequestCreationTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterBacktrack", 
        type = "structure")
    return(populate(args, shape))
}

copy_db_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceDBClusterParameterGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBClusterParameterGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBClusterParameterGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CopyDBClusterParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

copy_db_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroup = structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DBClusterParameterGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterParameterGroup", 
        type = "structure", wrapper = TRUE)), shape = "CopyDBClusterParameterGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_db_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceDBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), PreSignedUrl = structure(logical(0), 
        shape = "String", type = "string"), CopyTags = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        SourceRegion = structure(logical(0), shape = "String", 
            type = "string")), shape = "CopyDBClusterSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

copy_db_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshot = structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        DBClusterSnapshotIdentifier = structure(logical(0), shape = "String", 
            type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "Integer", type = "integer"), Status = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), SnapshotType = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "Integer", type = "integer"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), SourceDBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBClusterSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "CopyDBClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_db_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceDBParameterGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBParameterGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBParameterGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CopyDBParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

copy_db_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroup = structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBParameterGroup", 
        type = "structure", wrapper = TRUE)), shape = "CopyDBParameterGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_db_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        CopyTags = structure(logical(0), shape = "BooleanOptional", 
            type = "boolean"), PreSignedUrl = structure(logical(0), 
            shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string")), shape = "CopyDBSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

copy_db_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshot = structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PercentProgress = structure(logical(0), 
        shape = "Integer", type = "integer"), SourceRegion = structure(logical(0), 
        shape = "String", type = "string"), SourceDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotArn = structure(logical(0), 
        shape = "String", type = "string"), Timezone = structure(logical(0), 
        shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "ProcessorFeature", 
        locationName = "ProcessorFeature", type = "structure")), 
        shape = "ProcessorFeatureList", type = "list")), shape = "DBSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "CopyDBSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_option_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceOptionGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetOptionGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetOptionGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CopyOptionGroupMessage", type = "structure")
    return(populate(args, shape))
}

copy_option_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroup = structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), Options = structure(list(structure(list(OptionName = structure(logical(0), 
        shape = "String", type = "string"), OptionDescription = structure(logical(0), 
        shape = "String", type = "string"), Persistent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Permanent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionVersion = structure(logical(0), 
        shape = "String", type = "string"), OptionSettings = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), DefaultValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsCollection = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionSetting", 
        locationName = "OptionSetting", type = "structure")), 
        shape = "OptionSettingConfigurationList", type = "list"), 
        DBSecurityGroupMemberships = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
            locationName = "DBSecurityGroup", type = "structure")), 
            shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroupMemberships = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list")), 
        shape = "Option", locationName = "Option", type = "structure")), 
        shape = "OptionsList", type = "list"), AllowsVpcAndNonVpcInstanceMemberships = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "OptionGroup", 
        type = "structure", wrapper = TRUE)), shape = "CopyOptionGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VpcSecurityGroupId", 
            type = "string")), shape = "VpcSecurityGroupIdList", 
            type = "list"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), PreferredBackupWindow = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), StorageEncrypted = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), PreSignedUrl = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfiguration = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfiguration", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreateDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateDBClusterParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_db_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroup = structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DBClusterParameterGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterParameterGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBClusterParameterGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateDBClusterSnapshotMessage", type = "structure")
    return(populate(args, shape))
}

create_db_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshot = structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        DBClusterSnapshotIdentifier = structure(logical(0), shape = "String", 
            type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "Integer", type = "integer"), Status = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), SnapshotType = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "Integer", type = "integer"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), SourceDBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBClusterSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBName = structure(logical(0), shape = "String", 
        type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), MasterUserPassword = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "DBSecurityGroupName", 
        type = "string")), shape = "DBSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), CharacterSetName = structure(logical(0), 
        shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        DBClusterIdentifier = structure(logical(0), shape = "String", 
            type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), TdeCredentialPassword = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), DomainIAMRoleName = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnablePerformanceInsights = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CreateDBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_db_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_instance_read_replica_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceDBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        DBSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), PreSignedUrl = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnablePerformanceInsights = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), UseDefaultProcessorFeatures = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreateDBInstanceReadReplicaMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_db_instance_read_replica_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBInstanceReadReplicaResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateDBParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_db_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroup = structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBParameterGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBParameterGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateDBSecurityGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_db_security_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroup = structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string")), shape = "IPRange", 
        locationName = "IPRange", type = "structure")), shape = "IPRangeList", 
        type = "list"), DBSecurityGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBSecurityGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateDBSnapshotMessage", type = "structure")
    return(populate(args, shape))
}

create_db_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshot = structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PercentProgress = structure(logical(0), 
        shape = "Integer", type = "integer"), SourceRegion = structure(logical(0), 
        shape = "String", type = "string"), SourceDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotArn = structure(logical(0), 
        shape = "String", type = "string"), Timezone = structure(logical(0), 
        shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "ProcessorFeature", 
        locationName = "ProcessorFeature", type = "structure")), 
        shape = "ProcessorFeatureList", type = "list")), shape = "DBSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_db_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SubnetIdentifier", 
        type = "string")), shape = "SubnetIdentifierList", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "CreateDBSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_db_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        locationName = "Subnet", type = "structure")), shape = "SubnetList", 
        type = "list"), DBSubnetGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSubnetGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateDBSubnetGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), SourceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), Enabled = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateEventSubscriptionMessage", type = "structure")
    return(populate(args, shape))
}

create_event_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EventSubscriptionArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventSubscription", 
        type = "structure", wrapper = TRUE)), shape = "CreateEventSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

create_option_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateOptionGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_option_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroup = structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), Options = structure(list(structure(list(OptionName = structure(logical(0), 
        shape = "String", type = "string"), OptionDescription = structure(logical(0), 
        shape = "String", type = "string"), Persistent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Permanent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionVersion = structure(logical(0), 
        shape = "String", type = "string"), OptionSettings = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), DefaultValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsCollection = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionSetting", 
        locationName = "OptionSetting", type = "structure")), 
        shape = "OptionSettingConfigurationList", type = "list"), 
        DBSecurityGroupMemberships = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
            locationName = "DBSecurityGroup", type = "structure")), 
            shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroupMemberships = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list")), 
        shape = "Option", locationName = "Option", type = "structure")), 
        shape = "OptionsList", type = "list"), AllowsVpcAndNonVpcInstanceMemberships = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "OptionGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateOptionGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SkipFinalSnapshot = structure(logical(0), 
        shape = "Boolean", type = "boolean"), FinalDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "DeleteDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBClusterParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_cluster_parameter_group_output <- function () 
{
    return(list())
}

delete_db_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBClusterSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshot = structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        DBClusterSnapshotIdentifier = structure(logical(0), shape = "String", 
            type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "Integer", type = "integer"), Status = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), SnapshotType = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "Integer", type = "integer"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), SourceDBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBClusterSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "DeleteDBClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SkipFinalSnapshot = structure(logical(0), 
        shape = "Boolean", type = "boolean"), FinalDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "DeleteDBInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_parameter_group_output <- function () 
{
    return(list())
}

delete_db_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBSecurityGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_security_group_output <- function () 
{
    return(list())
}

delete_db_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshot = structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PercentProgress = structure(logical(0), 
        shape = "Integer", type = "integer"), SourceRegion = structure(logical(0), 
        shape = "String", type = "string"), SourceDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotArn = structure(logical(0), 
        shape = "String", type = "string"), Timezone = structure(logical(0), 
        shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "ProcessorFeature", 
        locationName = "ProcessorFeature", type = "structure")), 
        shape = "ProcessorFeatureList", type = "list")), shape = "DBSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "DeleteDBSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDBSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_db_subnet_group_output <- function () 
{
    return(list())
}

delete_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteEventSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_event_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EventSubscriptionArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventSubscription", 
        type = "structure", wrapper = TRUE)), shape = "DeleteEventSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_option_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteOptionGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_option_group_output <- function () 
{
    return(list())
}

describe_account_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeAccountAttributesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountQuotas = structure(list(structure(list(AccountQuotaName = structure(logical(0), 
        shape = "String", type = "string"), Used = structure(logical(0), 
        shape = "Long", type = "long"), Max = structure(logical(0), 
        shape = "Long", type = "long")), shape = "AccountQuota", 
        locationName = "AccountQuota", type = "structure", wrapper = TRUE)), 
        shape = "AccountQuotaList", type = "list")), shape = "AccountAttributesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeCertificatesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificates = structure(list(structure(list(CertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), CertificateType = structure(logical(0), 
        shape = "String", type = "string"), Thumbprint = structure(logical(0), 
        shape = "String", type = "string"), ValidFrom = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ValidTill = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CertificateArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "Certificate", 
        locationName = "Certificate", type = "structure", wrapper = TRUE)), 
        shape = "CertificateList", type = "list"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "CertificateMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_backtracks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BacktrackIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBClusterBacktracksMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_backtracks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBClusterBacktracks = structure(list(structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BacktrackIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BacktrackTo = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), BacktrackedFrom = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), BacktrackRequestCreationTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterBacktrack", 
        locationName = "DBClusterBacktrack", type = "structure")), 
        shape = "DBClusterBacktrackList", type = "list")), shape = "DBClusterBacktrackMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_parameter_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBClusterParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_parameter_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBClusterParameterGroups = structure(list(structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DBClusterParameterGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterParameterGroup", 
        locationName = "DBClusterParameterGroup", type = "structure", 
        wrapper = TRUE)), shape = "DBClusterParameterGroupList", 
        type = "list")), shape = "DBClusterParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBClusterParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list"), 
        Marker = structure(logical(0), shape = "String", type = "string")), 
        shape = "DBClusterParameterGroupDetails", type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_snapshot_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeDBClusterSnapshotAttributesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_snapshot_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshotAttributesResult = structure(list(DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBClusterSnapshotAttributes = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "String", type = "string"), AttributeValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list")), shape = "DBClusterSnapshotAttribute", 
        locationName = "DBClusterSnapshotAttribute", type = "structure")), 
        shape = "DBClusterSnapshotAttributeList", type = "list")), 
        shape = "DBClusterSnapshotAttributesResult", type = "structure", 
        wrapper = TRUE)), shape = "DescribeDBClusterSnapshotAttributesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string"), IncludeShared = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IncludePublic = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DescribeDBClusterSnapshotsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_cluster_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBClusterSnapshots = structure(list(structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        DBClusterSnapshotIdentifier = structure(logical(0), shape = "String", 
            type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "Integer", type = "integer"), Status = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), SnapshotType = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "Integer", type = "integer"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), SourceDBClusterSnapshotArn = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBClusterSnapshot", 
        locationName = "DBClusterSnapshot", type = "structure", 
        wrapper = TRUE)), shape = "DBClusterSnapshotList", type = "list")), 
        shape = "DBClusterSnapshotMessage", type = "structure")
    return(populate(args, shape))
}

describe_db_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBClustersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBClusters = structure(list(structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        locationName = "DBCluster", type = "structure", wrapper = TRUE)), 
        shape = "DBClusterList", type = "list")), shape = "DBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_engine_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Engine = structure(logical(0), shape = "String", 
        type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string"), DefaultOnly = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ListSupportedCharacterSets = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), ListSupportedTimezones = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "DescribeDBEngineVersionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_engine_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBEngineVersions = structure(list(structure(list(Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), DBEngineDescription = structure(logical(0), 
        shape = "String", type = "string"), DBEngineVersionDescription = structure(logical(0), 
        shape = "String", type = "string"), DefaultCharacterSet = structure(list(CharacterSetName = structure(logical(0), 
        shape = "String", type = "string"), CharacterSetDescription = structure(logical(0), 
        shape = "String", type = "string")), shape = "CharacterSet", 
        type = "structure"), SupportedCharacterSets = structure(list(structure(list(CharacterSetName = structure(logical(0), 
        shape = "String", type = "string"), CharacterSetDescription = structure(logical(0), 
        shape = "String", type = "string")), shape = "CharacterSet", 
        locationName = "CharacterSet", type = "structure")), 
        shape = "SupportedCharacterSetsList", type = "list"), 
        ValidUpgradeTarget = structure(list(structure(list(Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), Description = structure(logical(0), 
            shape = "String", type = "string"), AutoUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IsMajorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "UpgradeTarget", 
            locationName = "UpgradeTarget", type = "structure")), 
            shape = "ValidUpgradeTargetList", type = "list"), 
        SupportedTimezones = structure(list(structure(list(TimezoneName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Timezone", 
            locationName = "Timezone", type = "structure")), 
            shape = "SupportedTimezonesList", type = "list"), 
        ExportableLogTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), SupportsLogExportsToCloudwatchLogs = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportsReadReplica = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportedEngineModes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "EngineModeList", 
            type = "list")), shape = "DBEngineVersion", locationName = "DBEngineVersion", 
        type = "structure")), shape = "DBEngineVersionList", 
        type = "list")), shape = "DBEngineVersionMessage", type = "structure")
    return(populate(args, shape))
}

describe_db_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBInstancesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBInstances = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        locationName = "DBInstance", type = "structure", wrapper = TRUE)), 
        shape = "DBInstanceList", type = "list")), shape = "DBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_log_files_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), FilenameContains = structure(logical(0), 
        shape = "String", type = "string"), FileLastWritten = structure(logical(0), 
        shape = "Long", type = "long"), FileSize = structure(logical(0), 
        shape = "Long", type = "long"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBLogFilesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_log_files_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DescribeDBLogFiles = structure(list(structure(list(LogFileName = structure(logical(0), 
        shape = "String", type = "string"), LastWritten = structure(logical(0), 
        shape = "Long", type = "long"), Size = structure(logical(0), 
        shape = "Long", type = "long")), shape = "DescribeDBLogFilesDetails", 
        locationName = "DescribeDBLogFilesDetails", type = "structure")), 
        shape = "DescribeDBLogFilesList", type = "list"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeDBLogFilesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_parameter_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_parameter_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBParameterGroup", 
        locationName = "DBParameterGroup", type = "structure", 
        wrapper = TRUE)), shape = "DBParameterGroupList", type = "list")), 
        shape = "DBParameterGroupsMessage", type = "structure")
    return(populate(args, shape))
}

describe_db_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list"), 
        Marker = structure(logical(0), shape = "String", type = "string")), 
        shape = "DBParameterGroupDetails", type = "structure")
    return(populate(args, shape))
}

describe_db_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBSecurityGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBSecurityGroups = structure(list(structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string")), shape = "IPRange", 
        locationName = "IPRange", type = "structure")), shape = "IPRangeList", 
        type = "list"), DBSecurityGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroup", 
        locationName = "DBSecurityGroup", type = "structure", 
        wrapper = TRUE)), shape = "DBSecurityGroups", type = "list")), 
        shape = "DBSecurityGroupMessage", type = "structure")
    return(populate(args, shape))
}

describe_db_snapshot_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeDBSnapshotAttributesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_snapshot_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotAttributesResult = structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotAttributes = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "String", type = "string"), AttributeValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list")), shape = "DBSnapshotAttribute", 
        locationName = "DBSnapshotAttribute", type = "structure", 
        wrapper = TRUE)), shape = "DBSnapshotAttributeList", 
        type = "list")), shape = "DBSnapshotAttributesResult", 
        type = "structure", wrapper = TRUE)), shape = "DescribeDBSnapshotAttributesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string"), IncludeShared = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IncludePublic = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DescribeDBSnapshotsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBSnapshots = structure(list(structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PercentProgress = structure(logical(0), 
        shape = "Integer", type = "integer"), SourceRegion = structure(logical(0), 
        shape = "String", type = "string"), SourceDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotArn = structure(logical(0), 
        shape = "String", type = "string"), Timezone = structure(logical(0), 
        shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "ProcessorFeature", 
        locationName = "ProcessorFeature", type = "structure")), 
        shape = "ProcessorFeatureList", type = "list")), shape = "DBSnapshot", 
        locationName = "DBSnapshot", type = "structure", wrapper = TRUE)), 
        shape = "DBSnapshotList", type = "list")), shape = "DBSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_subnet_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeDBSubnetGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_db_subnet_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), DBSubnetGroups = structure(list(structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        locationName = "Subnet", type = "structure")), shape = "SubnetList", 
        type = "list"), DBSubnetGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSubnetGroup", 
        locationName = "DBSubnetGroup", type = "structure", wrapper = TRUE)), 
        shape = "DBSubnetGroups", type = "list")), shape = "DBSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_engine_default_cluster_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeEngineDefaultClusterParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_engine_default_cluster_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EngineDefaults = structure(list(DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list")), 
        shape = "EngineDefaults", type = "structure", wrapper = TRUE)), 
        shape = "DescribeEngineDefaultClusterParametersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_engine_default_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeEngineDefaultParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_engine_default_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EngineDefaults = structure(list(DBParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list")), 
        shape = "EngineDefaults", type = "structure", wrapper = TRUE)), 
        shape = "DescribeEngineDefaultParametersResult", type = "structure")
    return(populate(args, shape))
}

describe_event_categories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceType = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list")), shape = "DescribeEventCategoriesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_categories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventCategoriesMapList = structure(list(structure(list(SourceType = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list")), shape = "EventCategoriesMap", 
        locationName = "EventCategoriesMap", type = "structure", 
        wrapper = TRUE)), shape = "EventCategoriesMapList", type = "list")), 
        shape = "EventCategoriesMessage", type = "structure")
    return(populate(args, shape))
}

describe_event_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeEventSubscriptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_subscriptions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), EventSubscriptionsList = structure(list(structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EventSubscriptionArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventSubscription", 
        locationName = "EventSubscription", type = "structure", 
        wrapper = TRUE)), shape = "EventSubscriptionsList", type = "list")), 
        shape = "EventSubscriptionsMessage", type = "structure")
    return(populate(args, shape))
}

describe_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeEventsMessage", type = "structure")
    return(populate(args, shape))
}

describe_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Events = structure(list(structure(list(SourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Date = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), SourceArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "Event", 
        locationName = "Event", type = "structure")), shape = "EventList", 
        type = "list")), shape = "EventsMessage", type = "structure")
    return(populate(args, shape))
}

describe_option_group_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeOptionGroupOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_option_group_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroupOptions = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), MinimumRequiredMinorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), PortRequired = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DefaultPort = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionsDependedOn = structure(list(structure(logical(0), 
        shape = "String", locationName = "OptionName", type = "string")), 
        shape = "OptionsDependedOn", type = "list"), OptionsConflictsWith = structure(list(structure(logical(0), 
        shape = "String", locationName = "OptionConflictName", 
        type = "string")), shape = "OptionsConflictsWith", type = "list"), 
        Persistent = structure(logical(0), shape = "Boolean", 
            type = "boolean"), Permanent = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequiresAutoMinorEngineVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), VpcOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportsOptionVersionDowngrade = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), OptionGroupOptionSettings = structure(list(structure(list(SettingName = structure(logical(0), 
            shape = "String", type = "string"), SettingDescription = structure(logical(0), 
            shape = "String", type = "string"), DefaultValue = structure(logical(0), 
            shape = "String", type = "string"), ApplyType = structure(logical(0), 
            shape = "String", type = "string"), AllowedValues = structure(logical(0), 
            shape = "String", type = "string"), IsModifiable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IsRequired = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MinimumEngineVersionPerAllowedValue = structure(list(structure(list(AllowedValue = structure(logical(0), 
            shape = "String", type = "string"), MinimumEngineVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "MinimumEngineVersionPerAllowedValue", 
            locationName = "MinimumEngineVersionPerAllowedValue", 
            type = "structure")), shape = "MinimumEngineVersionPerAllowedValueList", 
            type = "list")), shape = "OptionGroupOptionSetting", 
            locationName = "OptionGroupOptionSetting", type = "structure")), 
            shape = "OptionGroupOptionSettingsList", type = "list"), 
        OptionGroupOptionVersions = structure(list(structure(list(Version = structure(logical(0), 
            shape = "String", type = "string"), IsDefault = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "OptionVersion", 
            locationName = "OptionVersion", type = "structure")), 
            shape = "OptionGroupOptionVersionsList", type = "list")), 
        shape = "OptionGroupOption", locationName = "OptionGroupOption", 
        type = "structure")), shape = "OptionGroupOptionsList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "OptionGroupOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_option_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeOptionGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_option_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroupsList = structure(list(structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), Options = structure(list(structure(list(OptionName = structure(logical(0), 
        shape = "String", type = "string"), OptionDescription = structure(logical(0), 
        shape = "String", type = "string"), Persistent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Permanent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionVersion = structure(logical(0), 
        shape = "String", type = "string"), OptionSettings = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), DefaultValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsCollection = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionSetting", 
        locationName = "OptionSetting", type = "structure")), 
        shape = "OptionSettingConfigurationList", type = "list"), 
        DBSecurityGroupMemberships = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
            locationName = "DBSecurityGroup", type = "structure")), 
            shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroupMemberships = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list")), 
        shape = "Option", locationName = "Option", type = "structure")), 
        shape = "OptionsList", type = "list"), AllowsVpcAndNonVpcInstanceMemberships = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "OptionGroup", 
        locationName = "OptionGroup", type = "structure", wrapper = TRUE)), 
        shape = "OptionGroupsList", type = "list"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "OptionGroups", 
        type = "structure")
    return(populate(args, shape))
}

describe_orderable_db_instance_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Engine = structure(logical(0), shape = "String", 
        type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), Vpc = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeOrderableDBInstanceOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_orderable_db_instance_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrderableDBInstanceOptions = structure(list(structure(list(Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZones = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        locationName = "AvailabilityZone", type = "structure", 
        wrapper = TRUE)), shape = "AvailabilityZoneList", type = "list"), 
        MultiAZCapable = structure(logical(0), shape = "Boolean", 
            type = "boolean"), ReadReplicaCapable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Vpc = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportsStorageEncryption = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), SupportsIops = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportsEnhancedMonitoring = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportsIAMDatabaseAuthentication = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SupportsPerformanceInsights = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MinStorageSize = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxStorageSize = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MinIopsPerDbInstance = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxIopsPerDbInstance = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MinIopsPerGib = structure(logical(0), 
            shape = "DoubleOptional", type = "double"), MaxIopsPerGib = structure(logical(0), 
            shape = "DoubleOptional", type = "double"), AvailableProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), DefaultValue = structure(logical(0), 
            shape = "String", type = "string"), AllowedValues = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailableProcessorFeature", 
            locationName = "AvailableProcessorFeature", type = "structure")), 
            shape = "AvailableProcessorFeatureList", type = "list"), 
        SupportedEngineModes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "EngineModeList", 
            type = "list")), shape = "OrderableDBInstanceOption", 
        locationName = "OrderableDBInstanceOption", type = "structure", 
        wrapper = TRUE)), shape = "OrderableDBInstanceOptionsList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "OrderableDBInstanceOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_pending_maintenance_actions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "DescribePendingMaintenanceActionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_pending_maintenance_actions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PendingMaintenanceActions = structure(list(structure(list(ResourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), PendingMaintenanceActionDetails = structure(list(structure(list(Action = structure(logical(0), 
        shape = "String", type = "string"), AutoAppliedAfterDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ForcedApplyDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), OptInStatus = structure(logical(0), 
        shape = "String", type = "string"), CurrentApplyDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingMaintenanceAction", 
        locationName = "PendingMaintenanceAction", type = "structure")), 
        shape = "PendingMaintenanceActionDetails", type = "list")), 
        shape = "ResourcePendingMaintenanceActions", locationName = "ResourcePendingMaintenanceActions", 
        type = "structure", wrapper = TRUE)), shape = "PendingMaintenanceActions", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "PendingMaintenanceActionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_db_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedDBInstanceId = structure(logical(0), 
        shape = "String", type = "string"), ReservedDBInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "String", type = "string"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeReservedDBInstancesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_db_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedDBInstances = structure(list(structure(list(ReservedDBInstanceId = structure(logical(0), 
        shape = "String", type = "string"), ReservedDBInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "Boolean", type = "boolean"), State = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedDBInstanceArn = structure(logical(0), shape = "String", 
            type = "string")), shape = "ReservedDBInstance", 
        locationName = "ReservedDBInstance", type = "structure", 
        wrapper = TRUE)), shape = "ReservedDBInstanceList", type = "list")), 
        shape = "ReservedDBInstanceMessage", type = "structure")
    return(populate(args, shape))
}

describe_reserved_db_instances_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedDBInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "String", type = "string"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list"), MaxRecords = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeReservedDBInstancesOfferingsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_db_instances_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedDBInstancesOfferings = structure(list(structure(list(ReservedDBInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "Boolean", type = "boolean"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list")), 
        shape = "ReservedDBInstancesOffering", locationName = "ReservedDBInstancesOffering", 
        type = "structure", wrapper = TRUE)), shape = "ReservedDBInstancesOfferingList", 
        type = "list")), shape = "ReservedDBInstancesOfferingMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_source_regions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegionName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list")), shape = "DescribeSourceRegionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_source_regions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), SourceRegions = structure(list(structure(list(RegionName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "SourceRegion", 
        locationName = "SourceRegion", type = "structure")), 
        shape = "SourceRegionList", type = "list")), shape = "SourceRegionMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_valid_db_instance_modifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeValidDBInstanceModificationsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_valid_db_instance_modifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ValidDBInstanceModificationsMessage = structure(list(Storage = structure(list(structure(list(StorageType = structure(logical(0), 
        shape = "String", type = "string"), StorageSize = structure(list(structure(list(From = structure(logical(0), 
        shape = "Integer", type = "integer"), To = structure(logical(0), 
        shape = "Integer", type = "integer"), Step = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "Range", 
        locationName = "Range", type = "structure")), shape = "RangeList", 
        type = "list"), ProvisionedIops = structure(list(structure(list(From = structure(logical(0), 
        shape = "Integer", type = "integer"), To = structure(logical(0), 
        shape = "Integer", type = "integer"), Step = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "Range", 
        locationName = "Range", type = "structure")), shape = "RangeList", 
        type = "list"), IopsToStorageRatio = structure(list(structure(list(From = structure(logical(0), 
        shape = "Double", type = "double"), To = structure(logical(0), 
        shape = "Double", type = "double")), shape = "DoubleRange", 
        locationName = "DoubleRange", type = "structure")), shape = "DoubleRangeList", 
        type = "list")), shape = "ValidStorageOptions", locationName = "ValidStorageOptions", 
        type = "structure")), shape = "ValidStorageOptionsList", 
        type = "list"), ValidProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), DefaultValue = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailableProcessorFeature", 
        locationName = "AvailableProcessorFeature", type = "structure")), 
        shape = "AvailableProcessorFeatureList", type = "list")), 
        shape = "ValidDBInstanceModificationsMessage", type = "structure", 
        wrapper = TRUE)), shape = "DescribeValidDBInstanceModificationsResult", 
        type = "structure")
    return(populate(args, shape))
}

download_db_log_file_portion_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), LogFileName = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), NumberOfLines = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "DownloadDBLogFilePortionMessage", 
        type = "structure")
    return(populate(args, shape))
}

download_db_log_file_portion_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogFileData = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), AdditionalDataPending = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DownloadDBLogFilePortionDetails", 
        type = "structure")
    return(populate(args, shape))
}

failover_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "FailoverDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

failover_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "FailoverDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "FilterValueList", type = "list")), shape = "Filter", 
        locationName = "Filter", type = "structure")), shape = "FilterList", 
        type = "list")), shape = "ListTagsForResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "TagListMessage", type = "structure")
    return(populate(args, shape))
}

modify_current_db_cluster_capacity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Capacity = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SecondsBeforeTimeout = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), TimeoutAction = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyCurrentDBClusterCapacityMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_current_db_cluster_capacity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), PendingCapacity = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CurrentCapacity = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SecondsBeforeTimeout = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), TimeoutAction = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterCapacityInfo", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NewDBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BackupRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), Port = structure(logical(0), shape = "IntegerOptional", 
        type = "integer"), MasterUserPassword = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), BacktrackWindow = structure(logical(0), 
        shape = "LongOptional", type = "long"), CloudwatchLogsExportConfiguration = structure(list(EnableLogTypes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LogTypeList", 
        type = "list"), DisableLogTypes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LogTypeList", 
        type = "list")), shape = "CloudwatchLogsExportConfiguration", 
        type = "structure"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ScalingConfiguration = structure(list(MinCapacity = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "ScalingConfiguration", 
        type = "structure"), DeletionProtection = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "ModifyDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "ModifyDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list")), 
        shape = "ModifyDBClusterParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

modify_db_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_cluster_snapshot_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AttributeName = structure(logical(0), 
        shape = "String", type = "string"), ValuesToAdd = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list"), ValuesToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list")), shape = "ModifyDBClusterSnapshotAttributeMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_cluster_snapshot_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterSnapshotAttributesResult = structure(list(DBClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBClusterSnapshotAttributes = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "String", type = "string"), AttributeValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list")), shape = "DBClusterSnapshotAttribute", 
        locationName = "DBClusterSnapshotAttribute", type = "structure")), 
        shape = "DBClusterSnapshotAttributeList", type = "list")), 
        shape = "DBClusterSnapshotAttributesResult", type = "structure", 
        wrapper = TRUE)), shape = "ModifyDBClusterSnapshotAttributeResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "DBSecurityGroupName", 
        type = "string")), shape = "DBSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MasterUserPassword = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AllowMajorVersionUpgrade = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), NewDBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialPassword = structure(logical(0), 
        shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Domain = structure(logical(0), 
        shape = "String", type = "string"), CopyTagsToSnapshot = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), MonitoringInterval = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), DBPortNumber = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), MonitoringRoleArn = structure(logical(0), 
        shape = "String", type = "string"), DomainIAMRoleName = structure(logical(0), 
        shape = "String", type = "string"), PromotionTier = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), EnableIAMDatabaseAuthentication = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), EnablePerformanceInsights = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
        shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CloudwatchLogsExportConfiguration = structure(list(EnableLogTypes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LogTypeList", 
        type = "list"), DisableLogTypes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "LogTypeList", 
        type = "list")), shape = "CloudwatchLogsExportConfiguration", 
        type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "ProcessorFeature", 
        locationName = "ProcessorFeature", type = "structure")), 
        shape = "ProcessorFeatureList", type = "list"), UseDefaultProcessorFeatures = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), DeletionProtection = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "ModifyDBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "ModifyDBInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list")), 
        shape = "ModifyDBParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

modify_db_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyDBSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshot = structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Engine = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PercentProgress = structure(logical(0), 
        shape = "Integer", type = "integer"), SourceRegion = structure(logical(0), 
        shape = "String", type = "string"), SourceDBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), TdeCredentialArn = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotArn = structure(logical(0), 
        shape = "String", type = "string"), Timezone = structure(logical(0), 
        shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "ProcessorFeature", 
        locationName = "ProcessorFeature", type = "structure")), 
        shape = "ProcessorFeatureList", type = "list")), shape = "DBSnapshot", 
        type = "structure", wrapper = TRUE)), shape = "ModifyDBSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_snapshot_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AttributeName = structure(logical(0), 
        shape = "String", type = "string"), ValuesToAdd = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list"), ValuesToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list")), shape = "ModifyDBSnapshotAttributeMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_snapshot_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSnapshotAttributesResult = structure(list(DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotAttributes = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "String", type = "string"), AttributeValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeValue", type = "string")), 
        shape = "AttributeValueList", type = "list")), shape = "DBSnapshotAttribute", 
        locationName = "DBSnapshotAttribute", type = "structure", 
        wrapper = TRUE)), shape = "DBSnapshotAttributeList", 
        type = "list")), shape = "DBSnapshotAttributesResult", 
        type = "structure", wrapper = TRUE)), shape = "ModifyDBSnapshotAttributeResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_db_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SubnetIdentifier", 
        type = "string")), shape = "SubnetIdentifierList", type = "list")), 
        shape = "ModifyDBSubnetGroupMessage", type = "structure")
    return(populate(args, shape))
}

modify_db_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        locationName = "Subnet", type = "structure")), shape = "SubnetList", 
        type = "list"), DBSubnetGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSubnetGroup", 
        type = "structure", wrapper = TRUE)), shape = "ModifyDBSubnetGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "ModifyEventSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_event_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EventSubscriptionArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventSubscription", 
        type = "structure", wrapper = TRUE)), shape = "ModifyEventSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_option_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), OptionsToInclude = structure(list(structure(list(OptionName = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionVersion = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupMemberships = structure(list(structure(logical(0), 
        shape = "String", locationName = "DBSecurityGroupName", 
        type = "string")), shape = "DBSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupMemberships = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), OptionSettings = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), DefaultValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsCollection = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionSetting", 
        locationName = "OptionSetting", type = "structure")), 
        shape = "OptionSettingsList", type = "list")), shape = "OptionConfiguration", 
        locationName = "OptionConfiguration", type = "structure")), 
        shape = "OptionConfigurationList", type = "list"), OptionsToRemove = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "OptionNamesList", 
        type = "list"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ModifyOptionGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_option_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OptionGroup = structure(list(OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), EngineName = structure(logical(0), 
        shape = "String", type = "string"), MajorEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), Options = structure(list(structure(list(OptionName = structure(logical(0), 
        shape = "String", type = "string"), OptionDescription = structure(logical(0), 
        shape = "String", type = "string"), Persistent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Permanent = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionVersion = structure(logical(0), 
        shape = "String", type = "string"), OptionSettings = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), DefaultValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), IsCollection = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "OptionSetting", 
        locationName = "OptionSetting", type = "structure")), 
        shape = "OptionSettingConfigurationList", type = "list"), 
        DBSecurityGroupMemberships = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
            locationName = "DBSecurityGroup", type = "structure")), 
            shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroupMemberships = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list")), 
        shape = "Option", locationName = "Option", type = "structure")), 
        shape = "OptionsList", type = "list"), AllowsVpcAndNonVpcInstanceMemberships = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "OptionGroup", 
        type = "structure", wrapper = TRUE)), shape = "ModifyOptionGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

promote_read_replica_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string")), shape = "PromoteReadReplicaMessage", 
        type = "structure")
    return(populate(args, shape))
}

promote_read_replica_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "PromoteReadReplicaResult", 
        type = "structure")
    return(populate(args, shape))
}

promote_read_replica_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "PromoteReadReplicaDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

promote_read_replica_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "PromoteReadReplicaDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_db_instances_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedDBInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), ReservedDBInstanceId = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceCount = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "PurchaseReservedDBInstancesOfferingMessage", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_db_instances_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedDBInstance = structure(list(ReservedDBInstanceId = structure(logical(0), 
        shape = "String", type = "string"), ReservedDBInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "Boolean", type = "boolean"), State = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedDBInstanceArn = structure(logical(0), shape = "String", 
            type = "string")), shape = "ReservedDBInstance", 
        type = "structure", wrapper = TRUE)), shape = "PurchaseReservedDBInstancesOfferingResult", 
        type = "structure")
    return(populate(args, shape))
}

reboot_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ForceFailover = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "RebootDBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

reboot_db_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "RebootDBInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

remove_role_from_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RoleArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "RemoveRoleFromDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

remove_role_from_db_cluster_output <- function () 
{
    return(list())
}

remove_source_identifier_from_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SourceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "RemoveSourceIdentifierFromSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

remove_source_identifier_from_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EventSubscriptionArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventSubscription", 
        type = "structure", wrapper = TRUE)), shape = "RemoveSourceIdentifierFromSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "KeyList", 
        type = "list")), shape = "RemoveTagsFromResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_output <- function () 
{
    return(list())
}

reset_db_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ResetAllParameters = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list")), 
        shape = "ResetDBClusterParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

reset_db_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBClusterParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

reset_db_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ResetAllParameters = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ApplyMethod = structure(logical(0), 
        shape = "ApplyMethod", type = "string"), SupportedEngineModes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EngineModeList", 
        type = "list")), shape = "Parameter", locationName = "Parameter", 
        type = "structure")), shape = "ParametersList", type = "list")), 
        shape = "ResetDBParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

reset_db_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_cluster_from_s3_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VpcSecurityGroupId", 
            type = "string")), shape = "VpcSecurityGroupIdList", 
            type = "list"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), PreferredBackupWindow = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), StorageEncrypted = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SourceEngine = structure(logical(0), 
            shape = "String", type = "string"), SourceEngineVersion = structure(logical(0), 
            shape = "String", type = "string"), S3BucketName = structure(logical(0), 
            shape = "String", type = "string"), S3Prefix = structure(logical(0), 
            shape = "String", type = "string"), S3IngestionRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "RestoreDBClusterFromS3Message", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_cluster_from_s3_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBClusterFromS3Result", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_cluster_from_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        DBClusterIdentifier = structure(logical(0), shape = "String", 
            type = "string"), SnapshotIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VpcSecurityGroupId", 
            type = "string")), shape = "VpcSecurityGroupIdList", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfiguration = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfiguration", 
            type = "structure"), DBClusterParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "RestoreDBClusterFromSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_cluster_from_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBClusterFromSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_cluster_to_point_in_time_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RestoreType = structure(logical(0), 
        shape = "String", type = "string"), SourceDBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RestoreToTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), UseLatestRestorableTime = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        KmsKeyId = structure(logical(0), shape = "String", type = "string"), 
        EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), DBClusterParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "RestoreDBClusterToPointInTimeMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_cluster_to_point_in_time_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBClusterToPointInTimeResult", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_instance_from_db_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), TdeCredentialPassword = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), DomainIAMRoleName = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), UseDefaultProcessorFeatures = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "RestoreDBInstanceFromDBSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_instance_from_db_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBInstanceFromDBSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_instance_from_s3_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBName = structure(logical(0), shape = "String", 
        type = "string"), DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), MasterUserPassword = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "DBSecurityGroupName", 
        type = "string")), shape = "DBSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), DBParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SourceEngine = structure(logical(0), 
            shape = "String", type = "string"), SourceEngineVersion = structure(logical(0), 
            shape = "String", type = "string"), S3BucketName = structure(logical(0), 
            shape = "String", type = "string"), S3Prefix = structure(logical(0), 
            shape = "String", type = "string"), S3IngestionRoleArn = structure(logical(0), 
            shape = "String", type = "string"), EnablePerformanceInsights = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), UseDefaultProcessorFeatures = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "RestoreDBInstanceFromS3Message", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_instance_from_s3_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBInstanceFromS3Result", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_instance_to_point_in_time_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceDBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetDBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RestoreTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), UseLatestRestorableTime = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), LicenseModel = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), Iops = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), OptionGroupName = structure(logical(0), 
        shape = "String", type = "string"), CopyTagsToSnapshot = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), TdeCredentialPassword = structure(logical(0), 
            shape = "String", type = "string"), Domain = structure(logical(0), 
            shape = "String", type = "string"), DomainIAMRoleName = structure(logical(0), 
            shape = "String", type = "string"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), UseDefaultProcessorFeatures = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), DeletionProtection = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "RestoreDBInstanceToPointInTimeMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_db_instance_to_point_in_time_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBInstanceToPointInTimeResult", 
        type = "structure")
    return(populate(args, shape))
}

revoke_db_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RevokeDBSecurityGroupIngressMessage", 
        type = "structure")
    return(populate(args, shape))
}

revoke_db_security_group_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBSecurityGroup = structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), DBSecurityGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string")), shape = "IPRange", 
        locationName = "IPRange", type = "structure")), shape = "IPRangeList", 
        type = "list"), DBSecurityGroupArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "RevokeDBSecurityGroupIngressResult", 
        type = "structure")
    return(populate(args, shape))
}

start_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "StartDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

start_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "StartDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

start_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "StartDBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

start_db_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "StartDBInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

stop_db_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "StopDBClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

stop_db_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBCluster = structure(list(AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZones", type = "list"), 
        BackupRetentionPeriod = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), CharacterSetName = structure(logical(0), 
            shape = "String", type = "string"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBClusterParameterGroup = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroup = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), PercentProgress = structure(logical(0), 
            shape = "String", type = "string"), EarliestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(logical(0), 
            shape = "String", type = "string"), ReaderEndpoint = structure(logical(0), 
            shape = "String", type = "string"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUsername = structure(logical(0), 
            shape = "String", type = "string"), DBClusterOptionGroupMemberships = structure(list(structure(list(DBClusterOptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterOptionGroupStatus", 
            locationName = "DBClusterOptionGroup", type = "structure")), 
            shape = "DBClusterOptionGroupMemberships", type = "list"), 
        PreferredBackupWindow = structure(logical(0), shape = "String", 
            type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), ReplicationSourceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaIdentifier", 
            type = "string")), shape = "ReadReplicaIdentifierList", 
            type = "list"), DBClusterMembers = structure(list(structure(list(DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), IsClusterWriter = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DBClusterParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "DBClusterMember", 
            locationName = "DBClusterMember", type = "structure", 
            wrapper = TRUE)), shape = "DBClusterMemberList", 
            type = "list"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        HostedZoneId = structure(logical(0), shape = "String", 
            type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbClusterResourceId = structure(logical(0), 
            shape = "String", type = "string"), DBClusterArn = structure(logical(0), 
            shape = "String", type = "string"), AssociatedRoles = structure(list(structure(list(RoleArn = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FeatureName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), EarliestBacktrackTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), BacktrackWindow = structure(logical(0), 
            shape = "LongOptional", type = "long"), BacktrackConsumedChangeRecords = structure(logical(0), 
            shape = "LongOptional", type = "long"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), Capacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EngineMode = structure(logical(0), 
            shape = "String", type = "string"), ScalingConfigurationInfo = structure(list(MinCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MaxCapacity = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), AutoPause = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SecondsUntilAutoPause = structure(logical(0), 
            shape = "IntegerOptional", type = "integer")), shape = "ScalingConfigurationInfo", 
            type = "structure"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "StopDBClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

stop_db_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "StopDBInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

stop_db_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBInstance = structure(list(DBInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), DBInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), HostedZoneId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Endpoint", 
        type = "structure"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredBackupWindow = structure(logical(0), 
        shape = "String", type = "string"), BackupRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), DBSecurityGroups = structure(list(structure(list(DBSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "DBSecurityGroupMembership", 
        locationName = "DBSecurityGroup", type = "structure")), 
        shape = "DBSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroupMembership", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        DBParameterGroups = structure(list(structure(list(DBParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBParameterGroupStatus", 
            locationName = "DBParameterGroup", type = "structure")), 
            shape = "DBParameterGroupStatusList", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            type = "string"), DBSubnetGroup = structure(list(DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupDescription = structure(logical(0), 
            shape = "String", type = "string"), VpcId = structure(logical(0), 
            shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
            shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "AvailabilityZone", 
            type = "structure", wrapper = TRUE), SubnetStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "Subnet", 
            locationName = "Subnet", type = "structure")), shape = "SubnetList", 
            type = "list"), DBSubnetGroupArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBSubnetGroup", 
            type = "structure", wrapper = TRUE), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(DBInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), BackupRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DBSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), PendingCloudwatchLogsExports = structure(list(LogTypesToEnable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), LogTypesToDisable = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "PendingCloudwatchLogsExports", 
            type = "structure"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list")), 
            shape = "PendingModifiedValues", type = "structure"), 
        LatestRestorableTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ReadReplicaSourceDBInstanceIdentifier = structure(logical(0), 
            shape = "String", type = "string"), ReadReplicaDBInstanceIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBInstanceIdentifier", 
            type = "string")), shape = "ReadReplicaDBInstanceIdentifierList", 
            type = "list"), ReadReplicaDBClusterIdentifiers = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReadReplicaDBClusterIdentifier", 
            type = "string")), shape = "ReadReplicaDBClusterIdentifierList", 
            type = "list"), LicenseModel = structure(logical(0), 
            shape = "String", type = "string"), Iops = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), OptionGroupMemberships = structure(list(structure(list(OptionGroupName = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "OptionGroupMembership", 
            locationName = "OptionGroupMembership", type = "structure")), 
            shape = "OptionGroupMembershipList", type = "list"), 
        CharacterSetName = structure(logical(0), shape = "String", 
            type = "string"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
            shape = "String", type = "string"), Normal = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Status = structure(logical(0), 
            shape = "String", type = "string"), Message = structure(logical(0), 
            shape = "String", type = "string")), shape = "DBInstanceStatusInfo", 
            locationName = "DBInstanceStatusInfo", type = "structure")), 
            shape = "DBInstanceStatusInfoList", type = "list"), 
        StorageType = structure(logical(0), shape = "String", 
            type = "string"), TdeCredentialArn = structure(logical(0), 
            shape = "String", type = "string"), DbInstancePort = structure(logical(0), 
            shape = "Integer", type = "integer"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), DbiResourceId = structure(logical(0), 
            shape = "String", type = "string"), CACertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), DomainMemberships = structure(list(structure(list(Domain = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), FQDN = structure(logical(0), 
            shape = "String", type = "string"), IAMRoleName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DomainMembership", 
            locationName = "DomainMembership", type = "structure")), 
            shape = "DomainMembershipList", type = "list"), CopyTagsToSnapshot = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MonitoringInterval = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnhancedMonitoringResourceArn = structure(logical(0), 
            shape = "String", type = "string"), MonitoringRoleArn = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DBInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), Timezone = structure(logical(0), 
            shape = "String", type = "string"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), PerformanceInsightsEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), PerformanceInsightsRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), ProcessorFeatures = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ProcessorFeature", 
            locationName = "ProcessorFeature", type = "structure")), 
            shape = "ProcessorFeatureList", type = "list"), DeletionProtection = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "StopDBInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}
