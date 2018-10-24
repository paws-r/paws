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
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CopyDBClusterSnapshotMessage", type = "structure")
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
            shape = "BooleanOptional", type = "boolean")), shape = "CreateDBClusterMessage", 
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
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
        shape = "BooleanOptional", deprecated = TRUE, type = "boolean"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), DBClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), StorageType = structure(logical(0), 
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
            shape = "String", type = "string"), EnableCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "CreateDBInstanceMessage", 
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
            type = "structure")), shape = "PendingModifiedValues", 
            type = "structure"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MultiAZ = structure(logical(0), 
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
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
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
            shape = "String", type = "string"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "DBInstance", type = "structure", 
        wrapper = TRUE)), shape = "CreateDBInstanceResult", type = "structure")
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
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
            type = "structure")), shape = "PendingModifiedValues", 
            type = "structure"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MultiAZ = structure(logical(0), 
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
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
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
            shape = "String", type = "string"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "DBInstance", type = "structure", 
        wrapper = TRUE)), shape = "DeleteDBInstanceResult", type = "structure")
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DBClusterParameterGroupDetails", 
        type = "structure")
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
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
            shape = "Boolean", type = "boolean")), shape = "DBEngineVersion", 
        locationName = "DBEngineVersion", type = "structure")), 
        shape = "DBEngineVersionList", type = "list")), shape = "DBEngineVersionMessage", 
        type = "structure")
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
            type = "structure")), shape = "PendingModifiedValues", 
            type = "structure"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MultiAZ = structure(logical(0), 
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
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
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
            shape = "String", type = "string"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "DBInstance", locationName = "DBInstance", 
        type = "structure", wrapper = TRUE)), shape = "DBInstanceList", 
        type = "list")), shape = "DBInstanceMessage", type = "structure")
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DBParameterGroupDetails", 
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "EngineDefaults", type = "structure", 
        wrapper = TRUE)), shape = "DescribeEngineDefaultClusterParametersResult", 
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "EngineDefaults", type = "structure", 
        wrapper = TRUE)), shape = "DescribeEngineDefaultParametersResult", 
        type = "structure")
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
            shape = "DoubleOptional", type = "double")), shape = "OrderableDBInstanceOption", 
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
        type = "list")), shape = "ValidDBInstanceModificationsMessage", 
        type = "structure", wrapper = TRUE)), shape = "DescribeValidDBInstanceModificationsResult", 
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
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
        shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyDBClusterMessage", 
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "ModifyDBClusterParameterGroupMessage", 
        type = "structure")
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
        shape = "BooleanOptional", deprecated = TRUE, type = "boolean"), 
        MonitoringRoleArn = structure(logical(0), shape = "String", 
            type = "string"), DomainIAMRoleName = structure(logical(0), 
            shape = "String", type = "string"), PromotionTier = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), EnableIAMDatabaseAuthentication = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnablePerformanceInsights = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), PerformanceInsightsKMSKeyId = structure(logical(0), 
            shape = "String", type = "string"), CloudwatchLogsExportConfiguration = structure(list(EnableLogTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list"), DisableLogTypes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "CloudwatchLogsExportConfiguration", 
            type = "structure")), shape = "ModifyDBInstanceMessage", 
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
            type = "structure")), shape = "PendingModifiedValues", 
            type = "structure"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MultiAZ = structure(logical(0), 
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
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
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
            shape = "String", type = "string"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "DBInstance", type = "structure", 
        wrapper = TRUE)), shape = "ModifyDBInstanceResult", type = "structure")
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "ModifyDBParameterGroupMessage", 
        type = "structure")
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "PromoteReadReplicaDBClusterResult", 
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
            type = "structure")), shape = "PendingModifiedValues", 
            type = "structure"), LatestRestorableTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), MultiAZ = structure(logical(0), 
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
            shape = "Boolean", deprecated = TRUE, type = "boolean"), 
        StatusInfos = structure(list(structure(list(StatusType = structure(logical(0), 
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
            shape = "String", type = "string"), EnabledCloudwatchLogsExports = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "LogTypeList", 
            type = "list")), shape = "DBInstance", type = "structure", 
        wrapper = TRUE)), shape = "RebootDBInstanceResult", type = "structure")
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "ResetDBClusterParameterGroupMessage", 
        type = "structure")
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
        shape = "ApplyMethod", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "ResetDBParameterGroupMessage", 
        type = "structure")
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
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
            shape = "String", type = "string")), shape = "DBClusterRole", 
            locationName = "DBClusterRole", type = "structure")), 
            shape = "DBClusterRoles", type = "list"), IAMDatabaseAuthenticationEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), CloneGroupId = structure(logical(0), 
            shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "DBCluster", 
        type = "structure", wrapper = TRUE)), shape = "RestoreDBClusterToPointInTimeResult", 
        type = "structure")
    return(populate(args, shape))
}
