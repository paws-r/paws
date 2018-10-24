accept_reserved_node_exchange_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedNodeId = structure(logical(0), 
        shape = "String", type = "string"), TargetReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AcceptReservedNodeExchangeInputMessage", 
        type = "structure")
    return(populate(args, shape))
}

accept_reserved_node_exchange_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExchangedReservedNode = structure(list(ReservedNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), NodeCount = structure(logical(0), 
        shape = "Integer", type = "integer"), State = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedNodeOfferingType = structure(logical(0), shape = "ReservedNodeOfferingType", 
            type = "string")), shape = "ReservedNode", type = "structure", 
        wrapper = TRUE)), shape = "AcceptReservedNodeExchangeOutputMessage", 
        type = "structure")
    return(populate(args, shape))
}

authorize_cluster_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AuthorizeClusterSecurityGroupIngressMessage", 
        type = "structure")
    return(populate(args, shape))
}

authorize_cluster_security_group_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroup = structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EC2SecurityGroup", locationName = "EC2SecurityGroup", 
        type = "structure")), shape = "EC2SecurityGroupList", 
        type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "IPRange", locationName = "IPRange", type = "structure")), 
        shape = "IPRangeList", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ClusterSecurityGroup", type = "structure", wrapper = TRUE)), 
        shape = "AuthorizeClusterSecurityGroupIngressResult", 
        type = "structure")
    return(populate(args, shape))
}

authorize_snapshot_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AccountWithRestoreAccess = structure(logical(0), 
        shape = "String", type = "string")), shape = "AuthorizeSnapshotAccessMessage", 
        type = "structure")
    return(populate(args, shape))
}

authorize_snapshot_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), DBName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), EncryptedWithHSM = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AccountsWithRestoreAccess = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "String", type = "string"), AccountAlias = structure(logical(0), 
        shape = "String", type = "string")), shape = "AccountWithRestoreAccess", 
        locationName = "AccountWithRestoreAccess", type = "structure")), 
        shape = "AccountsWithRestoreAccessList", type = "list"), 
        OwnerAccount = structure(logical(0), shape = "String", 
            type = "string"), TotalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), ActualIncrementalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), BackupProgressInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), CurrentBackupRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), EstimatedSecondsToCompletion = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), RestorableNodeTypes = structure(list(structure(logical(0), 
            shape = "String", locationName = "NodeType", type = "string")), 
            shape = "RestorableNodeTypeList", type = "list"), 
        EnhancedVpcRouting = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Snapshot", 
        type = "structure", wrapper = TRUE)), shape = "AuthorizeSnapshotAccessResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceSnapshotClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TargetSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "CopyClusterSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

copy_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), DBName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), EncryptedWithHSM = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AccountsWithRestoreAccess = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "String", type = "string"), AccountAlias = structure(logical(0), 
        shape = "String", type = "string")), shape = "AccountWithRestoreAccess", 
        locationName = "AccountWithRestoreAccess", type = "structure")), 
        shape = "AccountsWithRestoreAccessList", type = "list"), 
        OwnerAccount = structure(logical(0), shape = "String", 
            type = "string"), TotalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), ActualIncrementalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), BackupProgressInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), CurrentBackupRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), EstimatedSecondsToCompletion = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), RestorableNodeTypes = structure(list(structure(logical(0), 
            shape = "String", locationName = "NodeType", type = "string")), 
            shape = "RestorableNodeTypeList", type = "list"), 
        EnhancedVpcRouting = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Snapshot", 
        type = "structure", wrapper = TRUE)), shape = "CopyClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DBName = structure(logical(0), shape = "String", 
        type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), MasterUserPassword = structure(logical(0), 
        shape = "String", type = "string"), ClusterSecurityGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterSecurityGroupName", 
        type = "string")), shape = "ClusterSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), ClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), NumberOfNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Encrypted = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        KmsKeyId = structure(logical(0), shape = "String", type = "string"), 
        EnhancedVpcRouting = structure(logical(0), shape = "BooleanOptional", 
            type = "boolean"), AdditionalInfo = structure(logical(0), 
            shape = "String", type = "string"), IamRoles = structure(list(structure(logical(0), 
            shape = "String", locationName = "IamRoleArn", type = "string")), 
            shape = "IamRoleArnList", type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreateClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "CreateClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateClusterParameterGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterParameterGroup = structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ClusterParameterGroup", type = "structure", 
        wrapper = TRUE)), shape = "CreateClusterParameterGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateClusterSecurityGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_cluster_security_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroup = structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EC2SecurityGroup", locationName = "EC2SecurityGroup", 
        type = "structure")), shape = "EC2SecurityGroupList", 
        type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "IPRange", locationName = "IPRange", type = "structure")), 
        shape = "IPRangeList", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ClusterSecurityGroup", type = "structure", wrapper = TRUE)), 
        shape = "CreateClusterSecurityGroupResult", type = "structure")
    return(populate(args, shape))
}

create_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateClusterSnapshotMessage", type = "structure")
    return(populate(args, shape))
}

create_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), DBName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), EncryptedWithHSM = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AccountsWithRestoreAccess = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "String", type = "string"), AccountAlias = structure(logical(0), 
        shape = "String", type = "string")), shape = "AccountWithRestoreAccess", 
        locationName = "AccountWithRestoreAccess", type = "structure")), 
        shape = "AccountsWithRestoreAccessList", type = "list"), 
        OwnerAccount = structure(logical(0), shape = "String", 
            type = "string"), TotalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), ActualIncrementalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), BackupProgressInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), CurrentBackupRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), EstimatedSecondsToCompletion = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), RestorableNodeTypes = structure(list(structure(logical(0), 
            shape = "String", locationName = "NodeType", type = "string")), 
            shape = "RestorableNodeTypeList", type = "list"), 
        EnhancedVpcRouting = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Snapshot", 
        type = "structure", wrapper = TRUE)), shape = "CreateClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SubnetIdentifier", 
        type = "string")), shape = "SubnetIdentifierList", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "CreateClusterSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSubnetGroup = structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), SupportedPlatforms = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "SupportedPlatform", 
        locationName = "SupportedPlatform", type = "structure", 
        wrapper = TRUE)), shape = "SupportedPlatformsList", type = "list")), 
        shape = "AvailabilityZone", type = "structure", wrapper = TRUE), 
        SubnetStatus = structure(logical(0), shape = "String", 
            type = "string")), shape = "Subnet", locationName = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "ClusterSubnetGroup", type = "structure", 
        wrapper = TRUE)), shape = "CreateClusterSubnetGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Severity = structure(logical(0), 
        shape = "String", type = "string"), Enabled = structure(logical(0), 
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
        shape = "TStamp", type = "timestamp"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Severity = structure(logical(0), 
        shape = "String", type = "string"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EventSubscription", type = "structure", wrapper = TRUE)), 
        shape = "CreateEventSubscriptionResult", type = "structure")
    return(populate(args, shape))
}

create_hsm_client_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateHsmClientCertificateMessage", type = "structure")
    return(populate(args, shape))
}

create_hsm_client_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmClientCertificate = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), HsmClientCertificatePublicKey = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "HsmClientCertificate", type = "structure", wrapper = TRUE)), 
        shape = "CreateHsmClientCertificateResult", type = "structure")
    return(populate(args, shape))
}

create_hsm_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), HsmIpAddress = structure(logical(0), 
        shape = "String", type = "string"), HsmPartitionName = structure(logical(0), 
        shape = "String", type = "string"), HsmPartitionPassword = structure(logical(0), 
        shape = "String", type = "string"), HsmServerPublicCertificate = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateHsmConfigurationMessage", type = "structure")
    return(populate(args, shape))
}

create_hsm_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmConfiguration = structure(list(HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), HsmIpAddress = structure(logical(0), 
        shape = "String", type = "string"), HsmPartitionName = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "HsmConfiguration", type = "structure", wrapper = TRUE)), 
        shape = "CreateHsmConfigurationResult", type = "structure")
    return(populate(args, shape))
}

create_snapshot_copy_grant_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotCopyGrantName = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateSnapshotCopyGrantMessage", type = "structure")
    return(populate(args, shape))
}

create_snapshot_copy_grant_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotCopyGrant = structure(list(SnapshotCopyGrantName = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "SnapshotCopyGrant", type = "structure", wrapper = TRUE)), 
        shape = "CreateSnapshotCopyGrantResult", type = "structure")
    return(populate(args, shape))
}

create_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "CreateTagsMessage", type = "structure")
    return(populate(args, shape))
}

create_tags_output <- function () 
{
    return(list())
}

delete_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SkipFinalClusterSnapshot = structure(logical(0), 
        shape = "Boolean", type = "boolean"), FinalClusterSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "DeleteClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteClusterParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_parameter_group_output <- function () 
{
    return(list())
}

delete_cluster_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteClusterSecurityGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_security_group_output <- function () 
{
    return(list())
}

delete_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteClusterSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), DBName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), EncryptedWithHSM = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AccountsWithRestoreAccess = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "String", type = "string"), AccountAlias = structure(logical(0), 
        shape = "String", type = "string")), shape = "AccountWithRestoreAccess", 
        locationName = "AccountWithRestoreAccess", type = "structure")), 
        shape = "AccountsWithRestoreAccessList", type = "list"), 
        OwnerAccount = structure(logical(0), shape = "String", 
            type = "string"), TotalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), ActualIncrementalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), BackupProgressInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), CurrentBackupRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), EstimatedSecondsToCompletion = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), RestorableNodeTypes = structure(list(structure(logical(0), 
            shape = "String", locationName = "NodeType", type = "string")), 
            shape = "RestorableNodeTypeList", type = "list"), 
        EnhancedVpcRouting = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Snapshot", 
        type = "structure", wrapper = TRUE)), shape = "DeleteClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteClusterSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cluster_subnet_group_output <- function () 
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

delete_event_subscription_output <- function () 
{
    return(list())
}

delete_hsm_client_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteHsmClientCertificateMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_hsm_client_certificate_output <- function () 
{
    return(list())
}

delete_hsm_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteHsmConfigurationMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_hsm_configuration_output <- function () 
{
    return(list())
}

delete_snapshot_copy_grant_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotCopyGrantName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteSnapshotCopyGrantMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_snapshot_copy_grant_output <- function () 
{
    return(list())
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list")), shape = "DeleteTagsMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function () 
{
    return(list())
}

describe_cluster_db_revisions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeClusterDbRevisionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_db_revisions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ClusterDbRevisions = structure(list(structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), CurrentDatabaseRevision = structure(logical(0), 
        shape = "String", type = "string"), DatabaseRevisionReleaseDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), RevisionTargets = structure(list(structure(list(DatabaseRevision = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DatabaseRevisionReleaseDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp")), shape = "RevisionTarget", 
        locationName = "RevisionTarget", type = "structure")), 
        shape = "RevisionTargetsList", type = "list")), shape = "ClusterDbRevision", 
        locationName = "ClusterDbRevision", type = "structure")), 
        shape = "ClusterDbRevisionsList", type = "list")), shape = "ClusterDbRevisionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_parameter_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeClusterParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_parameter_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ClusterParameterGroup", locationName = "ClusterParameterGroup", 
        type = "structure", wrapper = TRUE)), shape = "ParameterGroupList", 
        type = "list")), shape = "ClusterParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeClusterParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "ParameterApplyType", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "ClusterParameterGroupDetails", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeClusterSecurityGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EC2SecurityGroup", locationName = "EC2SecurityGroup", 
        type = "structure")), shape = "EC2SecurityGroupList", 
        type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "IPRange", locationName = "IPRange", type = "structure")), 
        shape = "IPRangeList", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ClusterSecurityGroup", locationName = "ClusterSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "ClusterSecurityGroups", 
        type = "list")), shape = "ClusterSecurityGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), OwnerAccount = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list"), ClusterExists = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "DescribeClusterSnapshotsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Snapshots = structure(list(structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), DBName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), EncryptedWithHSM = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AccountsWithRestoreAccess = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "String", type = "string"), AccountAlias = structure(logical(0), 
        shape = "String", type = "string")), shape = "AccountWithRestoreAccess", 
        locationName = "AccountWithRestoreAccess", type = "structure")), 
        shape = "AccountsWithRestoreAccessList", type = "list"), 
        OwnerAccount = structure(logical(0), shape = "String", 
            type = "string"), TotalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), ActualIncrementalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), BackupProgressInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), CurrentBackupRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), EstimatedSecondsToCompletion = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), RestorableNodeTypes = structure(list(structure(logical(0), 
            shape = "String", locationName = "NodeType", type = "string")), 
            shape = "RestorableNodeTypeList", type = "list"), 
        EnhancedVpcRouting = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Snapshot", 
        locationName = "Snapshot", type = "structure", wrapper = TRUE)), 
        shape = "SnapshotList", type = "list")), shape = "SnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_subnet_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeClusterSubnetGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_subnet_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ClusterSubnetGroups = structure(list(structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), SupportedPlatforms = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "SupportedPlatform", 
        locationName = "SupportedPlatform", type = "structure", 
        wrapper = TRUE)), shape = "SupportedPlatformsList", type = "list")), 
        shape = "AvailabilityZone", type = "structure", wrapper = TRUE), 
        SubnetStatus = structure(logical(0), shape = "String", 
            type = "string")), shape = "Subnet", locationName = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "ClusterSubnetGroup", locationName = "ClusterSubnetGroup", 
        type = "structure", wrapper = TRUE)), shape = "ClusterSubnetGroups", 
        type = "list")), shape = "ClusterSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_tracks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaintenanceTrackName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeClusterTracksMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_tracks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaintenanceTracks = structure(list(structure(list(MaintenanceTrackName = structure(logical(0), 
        shape = "String", type = "string"), DatabaseVersion = structure(logical(0), 
        shape = "String", type = "string"), UpdateTargets = structure(list(structure(list(MaintenanceTrackName = structure(logical(0), 
        shape = "String", type = "string"), DatabaseVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "UpdateTarget", 
        locationName = "UpdateTarget", type = "structure")), 
        shape = "EligibleTracksToUpdateList", type = "list")), 
        shape = "MaintenanceTrack", locationName = "MaintenanceTrack", 
        type = "structure")), shape = "TrackList", type = "list"), 
        Marker = structure(logical(0), shape = "String", type = "string")), 
        shape = "TrackListMessage", type = "structure")
    return(populate(args, shape))
}

describe_cluster_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), ClusterParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeClusterVersionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cluster_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ClusterVersions = structure(list(structure(list(ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), ClusterParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterVersion", 
        locationName = "ClusterVersion", type = "structure")), 
        shape = "ClusterVersionList", type = "list")), shape = "ClusterVersionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeClustersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Clusters = structure(list(structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        locationName = "Cluster", type = "structure", wrapper = TRUE)), 
        shape = "ClusterList", type = "list")), shape = "ClustersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_default_cluster_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeDefaultClusterParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_default_cluster_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DefaultClusterParameters = structure(list(ParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "ParameterApplyType", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "DefaultClusterParameters", 
        type = "structure", wrapper = TRUE)), shape = "DescribeDefaultClusterParametersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_categories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceType = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEventCategoriesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_categories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventCategoriesMapList = structure(list(structure(list(SourceType = structure(logical(0), 
        shape = "String", type = "string"), Events = structure(list(structure(list(EventId = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), EventDescription = structure(logical(0), 
        shape = "String", type = "string"), Severity = structure(logical(0), 
        shape = "String", type = "string")), shape = "EventInfoMap", 
        locationName = "EventInfoMap", type = "structure", wrapper = TRUE)), 
        shape = "EventInfoMapList", type = "list")), shape = "EventCategoriesMap", 
        locationName = "EventCategoriesMap", type = "structure", 
        wrapper = TRUE)), shape = "EventCategoriesMapList", type = "list")), 
        shape = "EventCategoriesMessage", type = "structure")
    return(populate(args, shape))
}

describe_event_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeEventSubscriptionsMessage", 
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
        shape = "TStamp", type = "timestamp"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Severity = structure(logical(0), 
        shape = "String", type = "string"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EventSubscription", locationName = "EventSubscription", 
        type = "structure", wrapper = TRUE)), shape = "EventSubscriptionsList", 
        type = "list")), shape = "EventSubscriptionsMessage", 
        type = "structure")
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
        shape = "IntegerOptional", type = "integer"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEventsMessage", 
        type = "structure")
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
        shape = "EventCategoriesList", type = "list"), Severity = structure(logical(0), 
        shape = "String", type = "string"), Date = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), EventId = structure(logical(0), 
        shape = "String", type = "string")), shape = "Event", 
        locationName = "Event", type = "structure")), shape = "EventList", 
        type = "list")), shape = "EventsMessage", type = "structure")
    return(populate(args, shape))
}

describe_hsm_client_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeHsmClientCertificatesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_hsm_client_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), HsmClientCertificates = structure(list(structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), HsmClientCertificatePublicKey = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "HsmClientCertificate", locationName = "HsmClientCertificate", 
        type = "structure", wrapper = TRUE)), shape = "HsmClientCertificateList", 
        type = "list")), shape = "HsmClientCertificateMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_hsm_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeHsmConfigurationsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_hsm_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), HsmConfigurations = structure(list(structure(list(HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), HsmIpAddress = structure(logical(0), 
        shape = "String", type = "string"), HsmPartitionName = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "HsmConfiguration", locationName = "HsmConfiguration", 
        type = "structure", wrapper = TRUE)), shape = "HsmConfigurationList", 
        type = "list")), shape = "HsmConfigurationMessage", type = "structure")
    return(populate(args, shape))
}

describe_logging_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeLoggingStatusMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_logging_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), LastSuccessfulDeliveryTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), LastFailureTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string")), shape = "LoggingStatus", 
        type = "structure")
    return(populate(args, shape))
}

describe_orderable_cluster_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeOrderableClusterOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_orderable_cluster_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrderableClusterOptions = structure(list(structure(list(ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), ClusterType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), AvailabilityZones = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), SupportedPlatforms = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "SupportedPlatform", 
        locationName = "SupportedPlatform", type = "structure", 
        wrapper = TRUE)), shape = "SupportedPlatformsList", type = "list")), 
        shape = "AvailabilityZone", locationName = "AvailabilityZone", 
        type = "structure", wrapper = TRUE)), shape = "AvailabilityZoneList", 
        type = "list")), shape = "OrderableClusterOption", locationName = "OrderableClusterOption", 
        type = "structure", wrapper = TRUE)), shape = "OrderableClusterOptionsList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "OrderableClusterOptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_node_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReservedNodeOfferingsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_node_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedNodeOfferings = structure(list(structure(list(ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedNodeOfferingType = structure(logical(0), shape = "ReservedNodeOfferingType", 
            type = "string")), shape = "ReservedNodeOffering", 
        locationName = "ReservedNodeOffering", type = "structure", 
        wrapper = TRUE)), shape = "ReservedNodeOfferingList", 
        type = "list")), shape = "ReservedNodeOfferingsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_nodes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedNodeId = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReservedNodesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_nodes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedNodes = structure(list(structure(list(ReservedNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), NodeCount = structure(logical(0), 
        shape = "Integer", type = "integer"), State = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedNodeOfferingType = structure(logical(0), shape = "ReservedNodeOfferingType", 
            type = "string")), shape = "ReservedNode", locationName = "ReservedNode", 
        type = "structure", wrapper = TRUE)), shape = "ReservedNodeList", 
        type = "list")), shape = "ReservedNodesMessage", type = "structure")
    return(populate(args, shape))
}

describe_resize_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeResizeMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_resize_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetNodeType = structure(logical(0), 
        shape = "String", type = "string"), TargetNumberOfNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), TargetClusterType = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), ImportTablesCompleted = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ImportTablesCompleted", 
        type = "list"), ImportTablesInProgress = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ImportTablesInProgress", 
        type = "list"), ImportTablesNotStarted = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ImportTablesNotStarted", 
        type = "list"), AvgResizeRateInMegaBytesPerSecond = structure(logical(0), 
        shape = "DoubleOptional", type = "double"), TotalResizeDataInMegaBytes = structure(logical(0), 
        shape = "LongOptional", type = "long"), ProgressInMegaBytes = structure(logical(0), 
        shape = "LongOptional", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
        shape = "LongOptional", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
        shape = "LongOptional", type = "long"), ResizeType = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), TargetEncryptionType = structure(logical(0), 
        shape = "String", type = "string")), shape = "ResizeProgressMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshot_copy_grants_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotCopyGrantName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeSnapshotCopyGrantsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshot_copy_grants_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), SnapshotCopyGrants = structure(list(structure(list(SnapshotCopyGrantName = structure(logical(0), 
        shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "SnapshotCopyGrant", locationName = "SnapshotCopyGrant", 
        type = "structure", wrapper = TRUE)), shape = "SnapshotCopyGrantList", 
        type = "list")), shape = "SnapshotCopyGrantMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_table_restore_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), TableRestoreRequestId = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeTableRestoreStatusMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_table_restore_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TableRestoreStatusDetails = structure(list(structure(list(TableRestoreRequestId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "TableRestoreStatusType", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), RequestTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ProgressInMegaBytes = structure(logical(0), 
        shape = "LongOptional", type = "long"), TotalDataInMegaBytes = structure(logical(0), 
        shape = "LongOptional", type = "long"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceDatabaseName = structure(logical(0), 
        shape = "String", type = "string"), SourceSchemaName = structure(logical(0), 
        shape = "String", type = "string"), SourceTableName = structure(logical(0), 
        shape = "String", type = "string"), TargetDatabaseName = structure(logical(0), 
        shape = "String", type = "string"), TargetSchemaName = structure(logical(0), 
        shape = "String", type = "string"), NewTableName = structure(logical(0), 
        shape = "String", type = "string")), shape = "TableRestoreStatus", 
        locationName = "TableRestoreStatus", type = "structure", 
        wrapper = TRUE)), shape = "TableRestoreStatusList", type = "list"), 
        Marker = structure(logical(0), shape = "String", type = "string")), 
        shape = "TableRestoreStatusMessage", type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string"), ResourceType = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list"), TagValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "TagValue", type = "string")), 
        shape = "TagValueList", type = "list")), shape = "DescribeTagsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaggedResources = structure(list(structure(list(Tag = structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure"), 
        ResourceName = structure(logical(0), shape = "String", 
            type = "string"), ResourceType = structure(logical(0), 
            shape = "String", type = "string")), shape = "TaggedResource", 
        locationName = "TaggedResource", type = "structure")), 
        shape = "TaggedResourceList", type = "list"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "TaggedResourceListMessage", 
        type = "structure")
    return(populate(args, shape))
}

disable_logging_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DisableLoggingMessage", 
        type = "structure")
    return(populate(args, shape))
}

disable_logging_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), LastSuccessfulDeliveryTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), LastFailureTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string")), shape = "LoggingStatus", 
        type = "structure")
    return(populate(args, shape))
}

disable_snapshot_copy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DisableSnapshotCopyMessage", 
        type = "structure")
    return(populate(args, shape))
}

disable_snapshot_copy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "DisableSnapshotCopyResult", 
        type = "structure")
    return(populate(args, shape))
}

enable_logging_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string")), shape = "EnableLoggingMessage", 
        type = "structure")
    return(populate(args, shape))
}

enable_logging_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), BucketName = structure(logical(0), 
        shape = "String", type = "string"), S3KeyPrefix = structure(logical(0), 
        shape = "String", type = "string"), LastSuccessfulDeliveryTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), LastFailureTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string")), shape = "LoggingStatus", 
        type = "structure")
    return(populate(args, shape))
}

enable_snapshot_copy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DestinationRegion = structure(logical(0), 
        shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotCopyGrantName = structure(logical(0), 
        shape = "String", type = "string")), shape = "EnableSnapshotCopyMessage", 
        type = "structure")
    return(populate(args, shape))
}

enable_snapshot_copy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "EnableSnapshotCopyResult", 
        type = "structure")
    return(populate(args, shape))
}

get_cluster_credentials_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DbUser = structure(logical(0), shape = "String", 
        type = "string"), DbName = structure(logical(0), shape = "String", 
        type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), DurationSeconds = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AutoCreate = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), DbGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "DbGroup", type = "string")), 
        shape = "DbGroupList", type = "list")), shape = "GetClusterCredentialsMessage", 
        type = "structure")
    return(populate(args, shape))
}

get_cluster_credentials_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DbUser = structure(logical(0), shape = "String", 
        type = "string"), DbPassword = structure(logical(0), 
        shape = "SensitiveString", type = "string", sensitive = TRUE), 
        Expiration = structure(logical(0), shape = "TStamp", 
            type = "timestamp")), shape = "ClusterCredentials", 
        type = "structure")
    return(populate(args, shape))
}

get_reserved_node_exchange_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedNodeId = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetReservedNodeExchangeOfferingsInputMessage", 
        type = "structure")
    return(populate(args, shape))
}

get_reserved_node_exchange_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedNodeOfferings = structure(list(structure(list(ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedNodeOfferingType = structure(logical(0), shape = "ReservedNodeOfferingType", 
            type = "string")), shape = "ReservedNodeOffering", 
        locationName = "ReservedNodeOffering", type = "structure", 
        wrapper = TRUE)), shape = "ReservedNodeOfferingList", 
        type = "list")), shape = "GetReservedNodeExchangeOfferingsOutputMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ClusterSecurityGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterSecurityGroupName", 
        type = "string")), shape = "ClusterSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), MasterUserPassword = structure(logical(0), 
        shape = "String", type = "string"), ClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NewClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "ModifyClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_db_revision_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RevisionTarget = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyClusterDbRevisionMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_db_revision_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "ModifyClusterDbRevisionResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_iam_roles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AddIamRoles = structure(list(structure(logical(0), 
        shape = "String", locationName = "IamRoleArn", type = "string")), 
        shape = "IamRoleArnList", type = "list"), RemoveIamRoles = structure(list(structure(logical(0), 
        shape = "String", locationName = "IamRoleArn", type = "string")), 
        shape = "IamRoleArnList", type = "list")), shape = "ModifyClusterIamRolesMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_iam_roles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "ModifyClusterIamRolesResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "ParameterApplyType", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "ModifyClusterParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ParameterGroupStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cluster_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SubnetIdentifier", 
        type = "string")), shape = "SubnetIdentifierList", type = "list")), 
        shape = "ModifyClusterSubnetGroupMessage", type = "structure")
    return(populate(args, shape))
}

modify_cluster_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSubnetGroup = structure(list(ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), SupportedPlatforms = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "SupportedPlatform", 
        locationName = "SupportedPlatform", type = "structure", 
        wrapper = TRUE)), shape = "SupportedPlatformsList", type = "list")), 
        shape = "AvailabilityZone", type = "structure", wrapper = TRUE), 
        SubnetStatus = structure(logical(0), shape = "String", 
            type = "string")), shape = "Subnet", locationName = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list")), shape = "ClusterSubnetGroup", type = "structure", 
        wrapper = TRUE)), shape = "ModifyClusterSubnetGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Severity = structure(logical(0), 
        shape = "String", type = "string"), Enabled = structure(logical(0), 
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
        shape = "TStamp", type = "timestamp"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", locationName = "SourceId", type = "string")), 
        shape = "SourceIdsList", type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", locationName = "EventCategory", type = "string")), 
        shape = "EventCategoriesList", type = "list"), Severity = structure(logical(0), 
        shape = "String", type = "string"), Enabled = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EventSubscription", type = "structure", wrapper = TRUE)), 
        shape = "ModifyEventSubscriptionResult", type = "structure")
    return(populate(args, shape))
}

modify_snapshot_copy_retention_period_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ModifySnapshotCopyRetentionPeriodMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_snapshot_copy_retention_period_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "ModifySnapshotCopyRetentionPeriodResult", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_node_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), NodeCount = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "PurchaseReservedNodeOfferingMessage", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_node_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedNode = structure(list(ReservedNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReservedNodeOfferingId = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CurrencyCode = structure(logical(0), 
        shape = "String", type = "string"), NodeCount = structure(logical(0), 
        shape = "Integer", type = "integer"), State = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservedNodeOfferingType = structure(logical(0), shape = "ReservedNodeOfferingType", 
            type = "string")), shape = "ReservedNode", type = "structure", 
        wrapper = TRUE)), shape = "PurchaseReservedNodeOfferingResult", 
        type = "structure")
    return(populate(args, shape))
}

reboot_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "RebootClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

reboot_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "RebootClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

reset_cluster_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ResetAllParameters = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), ApplyType = structure(logical(0), 
        shape = "ParameterApplyType", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list")), shape = "ResetClusterParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

reset_cluster_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ParameterGroupStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

resize_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), Classic = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "ResizeClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

resize_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "ResizeClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

restore_from_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), ClusterSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), OwnerAccount = structure(logical(0), 
        shape = "String", type = "string"), HsmClientCertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ElasticIp = structure(logical(0), 
        shape = "String", type = "string"), ClusterParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ClusterSecurityGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterSecurityGroupName", 
        type = "string")), shape = "ClusterSecurityGroupNameList", 
        type = "list"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcSecurityGroupId", 
        type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), AdditionalInfo = structure(logical(0), 
        shape = "String", type = "string"), IamRoles = structure(list(structure(logical(0), 
        shape = "String", locationName = "IamRoleArn", type = "string")), 
        shape = "IamRoleArnList", type = "list"), MaintenanceTrackName = structure(logical(0), 
        shape = "String", type = "string")), shape = "RestoreFromClusterSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_from_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "RestoreFromClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

restore_table_from_cluster_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceDatabaseName = structure(logical(0), 
        shape = "String", type = "string"), SourceSchemaName = structure(logical(0), 
        shape = "String", type = "string"), SourceTableName = structure(logical(0), 
        shape = "String", type = "string"), TargetDatabaseName = structure(logical(0), 
        shape = "String", type = "string"), TargetSchemaName = structure(logical(0), 
        shape = "String", type = "string"), NewTableName = structure(logical(0), 
        shape = "String", type = "string")), shape = "RestoreTableFromClusterSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

restore_table_from_cluster_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TableRestoreStatus = structure(list(TableRestoreRequestId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "TableRestoreStatusType", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), RequestTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ProgressInMegaBytes = structure(logical(0), 
        shape = "LongOptional", type = "long"), TotalDataInMegaBytes = structure(logical(0), 
        shape = "LongOptional", type = "long"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceDatabaseName = structure(logical(0), 
        shape = "String", type = "string"), SourceSchemaName = structure(logical(0), 
        shape = "String", type = "string"), SourceTableName = structure(logical(0), 
        shape = "String", type = "string"), TargetDatabaseName = structure(logical(0), 
        shape = "String", type = "string"), TargetSchemaName = structure(logical(0), 
        shape = "String", type = "string"), NewTableName = structure(logical(0), 
        shape = "String", type = "string")), shape = "TableRestoreStatus", 
        type = "structure", wrapper = TRUE)), shape = "RestoreTableFromClusterSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

revoke_cluster_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RevokeClusterSecurityGroupIngressMessage", 
        type = "structure")
    return(populate(args, shape))
}

revoke_cluster_security_group_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterSecurityGroup = structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "EC2SecurityGroup", locationName = "EC2SecurityGroup", 
        type = "structure")), shape = "EC2SecurityGroupList", 
        type = "list"), IPRanges = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), CIDRIP = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "IPRange", locationName = "IPRange", type = "structure")), 
        shape = "IPRangeList", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "ClusterSecurityGroup", type = "structure", wrapper = TRUE)), 
        shape = "RevokeClusterSecurityGroupIngressResult", type = "structure")
    return(populate(args, shape))
}

revoke_snapshot_access_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AccountWithRestoreAccess = structure(logical(0), 
        shape = "String", type = "string")), shape = "RevokeSnapshotAccessMessage", 
        type = "structure")
    return(populate(args, shape))
}

revoke_snapshot_access_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SnapshotCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Status = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
        shape = "String", type = "string"), SnapshotType = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
        shape = "Integer", type = "integer"), DBName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), EncryptedWithHSM = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AccountsWithRestoreAccess = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "String", type = "string"), AccountAlias = structure(logical(0), 
        shape = "String", type = "string")), shape = "AccountWithRestoreAccess", 
        locationName = "AccountWithRestoreAccess", type = "structure")), 
        shape = "AccountsWithRestoreAccessList", type = "list"), 
        OwnerAccount = structure(logical(0), shape = "String", 
            type = "string"), TotalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), ActualIncrementalBackupSizeInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), BackupProgressInMegaBytes = structure(logical(0), 
            shape = "Double", type = "double"), CurrentBackupRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), EstimatedSecondsToCompletion = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), RestorableNodeTypes = structure(list(structure(logical(0), 
            shape = "String", locationName = "NodeType", type = "string")), 
            shape = "RestorableNodeTypeList", type = "list"), 
        EnhancedVpcRouting = structure(logical(0), shape = "Boolean", 
            type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string")), shape = "Snapshot", 
        type = "structure", wrapper = TRUE)), shape = "RevokeSnapshotAccessResult", 
        type = "structure")
    return(populate(args, shape))
}

rotate_encryption_key_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "RotateEncryptionKeyMessage", 
        type = "structure")
    return(populate(args, shape))
}

rotate_encryption_key_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(ClusterIdentifier = structure(logical(0), 
        shape = "String", type = "string"), NodeType = structure(logical(0), 
        shape = "String", type = "string"), ClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), ModifyStatus = structure(logical(0), 
        shape = "String", type = "string"), MasterUsername = structure(logical(0), 
        shape = "String", type = "string"), DBName = structure(logical(0), 
        shape = "String", type = "string"), Endpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
        shape = "Integer", type = "integer"), ClusterSecurityGroups = structure(list(structure(list(ClusterSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "ClusterSecurityGroupMembership", 
        locationName = "ClusterSecurityGroup", type = "structure")), 
        shape = "ClusterSecurityGroupMembershipList", type = "list"), 
        VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
            locationName = "VpcSecurityGroup", type = "structure")), 
            shape = "VpcSecurityGroupMembershipList", type = "list"), 
        ClusterParameterGroups = structure(list(structure(list(ParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ClusterParameterStatusList = structure(list(structure(list(ParameterName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyErrorDescription = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterParameterStatus", 
            type = "structure")), shape = "ClusterParameterStatusList", 
            type = "list")), shape = "ClusterParameterGroupStatus", 
            locationName = "ClusterParameterGroup", type = "structure")), 
            shape = "ClusterParameterGroupStatusList", type = "list"), 
        ClusterSubnetGroupName = structure(logical(0), shape = "String", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), PendingModifiedValues = structure(list(MasterUserPassword = structure(logical(0), 
            shape = "String", type = "string"), NodeType = structure(logical(0), 
            shape = "String", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterType = structure(logical(0), 
            shape = "String", type = "string"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AutomatedSnapshotRetentionPeriod = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), ClusterIdentifier = structure(logical(0), 
            shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EnhancedVpcRouting = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), EncryptionType = structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingModifiedValues", 
            type = "structure"), ClusterVersion = structure(logical(0), 
            shape = "String", type = "string"), AllowVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NumberOfNodes = structure(logical(0), 
            shape = "Integer", type = "integer"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RestoreStatus = structure(list(Status = structure(logical(0), 
            shape = "String", type = "string"), CurrentRestoreRateInMegaBytesPerSecond = structure(logical(0), 
            shape = "Double", type = "double"), SnapshotSizeInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ProgressInMegaBytes = structure(logical(0), 
            shape = "Long", type = "long"), ElapsedTimeInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), EstimatedTimeToCompletionInSeconds = structure(logical(0), 
            shape = "Long", type = "long")), shape = "RestoreStatus", 
            type = "structure"), HsmStatus = structure(list(HsmClientCertificateIdentifier = structure(logical(0), 
            shape = "String", type = "string"), HsmConfigurationIdentifier = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "HsmStatus", 
            type = "structure"), ClusterSnapshotCopyStatus = structure(list(DestinationRegion = structure(logical(0), 
            shape = "String", type = "string"), RetentionPeriod = structure(logical(0), 
            shape = "Long", type = "long"), SnapshotCopyGrantName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterSnapshotCopyStatus", 
            type = "structure"), ClusterPublicKey = structure(logical(0), 
            shape = "String", type = "string"), ClusterNodes = structure(list(structure(list(NodeRole = structure(logical(0), 
            shape = "String", type = "string"), PrivateIPAddress = structure(logical(0), 
            shape = "String", type = "string"), PublicIPAddress = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterNode", 
            type = "structure")), shape = "ClusterNodesList", 
            type = "list"), ElasticIpStatus = structure(list(ElasticIp = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticIpStatus", 
            type = "structure"), ClusterRevisionNumber = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EnhancedVpcRouting = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamRoles = structure(list(structure(list(IamRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ApplyStatus = structure(logical(0), 
            shape = "String", type = "string")), shape = "ClusterIamRole", 
            locationName = "ClusterIamRole", type = "structure")), 
            shape = "ClusterIamRoleList", type = "list"), PendingActions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PendingActionsList", 
            type = "list"), MaintenanceTrackName = structure(logical(0), 
            shape = "String", type = "string"), ElasticResizeNumberOfNodeOptions = structure(logical(0), 
            shape = "String", type = "string")), shape = "Cluster", 
        type = "structure", wrapper = TRUE)), shape = "RotateEncryptionKeyResult", 
        type = "structure")
    return(populate(args, shape))
}
