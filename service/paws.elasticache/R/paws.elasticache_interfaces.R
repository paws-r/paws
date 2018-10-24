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

add_tags_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "TagListMessage", type = "structure")
    return(populate(args, shape))
}

authorize_cache_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AuthorizeCacheSecurityGroupIngressMessage", 
        type = "structure")
    return(populate(args, shape))
}

authorize_cache_security_group_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroup = structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list")), shape = "CacheSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "AuthorizeCacheSecurityGroupIngressResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceSnapshotName = structure(logical(0), 
        shape = "String", type = "string"), TargetSnapshotName = structure(logical(0), 
        shape = "String", type = "string"), TargetBucket = structure(logical(0), 
        shape = "String", type = "string")), shape = "CopySnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

copy_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotName = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshotStatus = structure(logical(0), 
        shape = "String", type = "string"), SnapshotSource = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), TopicArn = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "Boolean", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
        shape = "String", type = "string"), NumNodeGroups = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        NodeSnapshots = structure(list(structure(list(CacheClusterId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupConfiguration = structure(list(NodeGroupId = structure(logical(0), 
            shape = "AllowedNodeGroupId", type = "string", max = 4L, 
            min = 1L, pattern = "\\d+"), Slots = structure(logical(0), 
            shape = "String", type = "string"), ReplicaCount = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), PrimaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), ReplicaAvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "AvailabilityZone", 
            type = "string")), shape = "AvailabilityZonesList", 
            type = "list")), shape = "NodeGroupConfiguration", 
            type = "structure"), CacheSize = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "NodeSnapshot", 
            locationName = "NodeSnapshot", type = "structure", 
            wrapper = TRUE)), shape = "NodeSnapshotList", type = "list")), 
        shape = "Snapshot", type = "structure", wrapper = TRUE)), 
        shape = "CopySnapshotResult", type = "structure")
    return(populate(args, shape))
}

create_cache_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), AZMode = structure(logical(0), 
        shape = "AZMode", type = "string"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), PreferredAvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "PreferredAvailabilityZone", 
        type = "string")), shape = "PreferredAvailabilityZoneList", 
        type = "list"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSecurityGroupNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheSecurityGroupName", 
        type = "string")), shape = "CacheSecurityGroupNameList", 
        type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SecurityGroupId", type = "string")), 
        shape = "SecurityGroupIdsList", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list"), 
        SnapshotArns = structure(list(structure(logical(0), shape = "String", 
            locationName = "SnapshotArn", type = "string")), 
            shape = "SnapshotArnsList", type = "list"), SnapshotName = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), NotificationTopicArn = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreateCacheClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_cache_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheCluster = structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClientDownloadLandingPage = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeIdsToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingModifiedValues", 
        type = "structure"), NotificationConfiguration = structure(list(TopicArn = structure(logical(0), 
        shape = "String", type = "string"), TopicStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "NotificationConfiguration", 
        type = "structure"), CacheSecurityGroups = structure(list(structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheSecurityGroupMembership", 
        locationName = "CacheSecurityGroup", type = "structure")), 
        shape = "CacheSecurityGroupMembershipList", type = "list"), 
        CacheParameterGroup = structure(list(CacheParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeIdsToReboot = structure(list(structure(logical(0), 
            shape = "String", locationName = "CacheNodeId", type = "string")), 
            shape = "CacheNodeIdsList", type = "list")), shape = "CacheParameterGroupStatus", 
            type = "structure"), CacheSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheNodes = structure(list(structure(list(CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), ParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), SourceCacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CustomerAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string")), shape = "CacheNode", 
            locationName = "CacheNode", type = "structure")), 
            shape = "CacheNodeList", type = "list"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecurityGroups = structure(list(structure(list(SecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "SecurityGroupMembership", 
            type = "structure")), shape = "SecurityGroupMembershipList", 
            type = "list"), ReplicationGroupId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CacheCluster", 
        type = "structure", wrapper = TRUE)), shape = "CreateCacheClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cache_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateCacheParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_cache_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroup = structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheParameterGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateCacheParameterGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cache_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateCacheSecurityGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_cache_security_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroup = structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list")), shape = "CacheSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateCacheSecurityGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_cache_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SubnetIdentifier", 
        type = "string")), shape = "SubnetIdentifierList", type = "list")), 
        shape = "CreateCacheSubnetGroupMessage", type = "structure")
    return(populate(args, shape))
}

create_cache_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSubnetGroup = structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure", wrapper = TRUE)), shape = "Subnet", 
        locationName = "Subnet", type = "structure")), shape = "SubnetList", 
        type = "list")), shape = "CacheSubnetGroup", type = "structure", 
        wrapper = TRUE)), shape = "CreateCacheSubnetGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_replication_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverEnabled = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), NumCacheClusters = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredCacheClusterAZs = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZonesList", type = "list"), 
        NumNodeGroups = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), ReplicasPerNodeGroup = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), NodeGroupConfiguration = structure(list(structure(list(NodeGroupId = structure(logical(0), 
            shape = "AllowedNodeGroupId", type = "string", max = 4L, 
            min = 1L, pattern = "\\d+"), Slots = structure(logical(0), 
            shape = "String", type = "string"), ReplicaCount = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), PrimaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), ReplicaAvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "AvailabilityZone", 
            type = "string")), shape = "AvailabilityZonesList", 
            type = "list")), shape = "NodeGroupConfiguration", 
            locationName = "NodeGroupConfiguration", type = "structure")), 
            shape = "NodeGroupConfigurationList", type = "list"), 
        CacheNodeType = structure(logical(0), shape = "String", 
            type = "string"), Engine = structure(logical(0), 
            shape = "String", type = "string"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), CacheParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheSecurityGroupNames = structure(list(structure(logical(0), 
            shape = "String", locationName = "CacheSecurityGroupName", 
            type = "string")), shape = "CacheSecurityGroupNameList", 
            type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "SecurityGroupId", 
            type = "string")), shape = "SecurityGroupIdsList", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            locationName = "Tag", type = "structure")), shape = "TagList", 
            type = "list"), SnapshotArns = structure(list(structure(logical(0), 
            shape = "String", locationName = "SnapshotArn", type = "string")), 
            shape = "SnapshotArnsList", type = "list"), SnapshotName = structure(logical(0), 
            shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), NotificationTopicArn = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthToken = structure(logical(0), 
            shape = "String", type = "string"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CreateReplicationGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_replication_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "CreateReplicationGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshotName = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotName = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshotStatus = structure(logical(0), 
        shape = "String", type = "string"), SnapshotSource = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), TopicArn = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "Boolean", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
        shape = "String", type = "string"), NumNodeGroups = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        NodeSnapshots = structure(list(structure(list(CacheClusterId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupConfiguration = structure(list(NodeGroupId = structure(logical(0), 
            shape = "AllowedNodeGroupId", type = "string", max = 4L, 
            min = 1L, pattern = "\\d+"), Slots = structure(logical(0), 
            shape = "String", type = "string"), ReplicaCount = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), PrimaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), ReplicaAvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "AvailabilityZone", 
            type = "string")), shape = "AvailabilityZonesList", 
            type = "list")), shape = "NodeGroupConfiguration", 
            type = "structure"), CacheSize = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "NodeSnapshot", 
            locationName = "NodeSnapshot", type = "structure", 
            wrapper = TRUE)), shape = "NodeSnapshotList", type = "list")), 
        shape = "Snapshot", type = "structure", wrapper = TRUE)), 
        shape = "CreateSnapshotResult", type = "structure")
    return(populate(args, shape))
}

decrease_replica_count_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), NewReplicaCount = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ReplicaConfiguration = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "AllowedNodeGroupId", type = "string", max = 4L, 
        min = 1L, pattern = "\\d+"), NewReplicaCount = structure(logical(0), 
        shape = "Integer", type = "integer"), PreferredAvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "PreferredAvailabilityZone", 
        type = "string")), shape = "PreferredAvailabilityZoneList", 
        type = "list")), shape = "ConfigureShard", locationName = "ConfigureShard", 
        type = "structure")), shape = "ReplicaConfigurationList", 
        type = "list"), ReplicasToRemove = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "RemoveReplicasList", 
        type = "list"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DecreaseReplicaCountMessage", 
        type = "structure")
    return(populate(args, shape))
}

decrease_replica_count_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "DecreaseReplicaCountResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_cache_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), FinalSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteCacheClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cache_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheCluster = structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClientDownloadLandingPage = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeIdsToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingModifiedValues", 
        type = "structure"), NotificationConfiguration = structure(list(TopicArn = structure(logical(0), 
        shape = "String", type = "string"), TopicStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "NotificationConfiguration", 
        type = "structure"), CacheSecurityGroups = structure(list(structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheSecurityGroupMembership", 
        locationName = "CacheSecurityGroup", type = "structure")), 
        shape = "CacheSecurityGroupMembershipList", type = "list"), 
        CacheParameterGroup = structure(list(CacheParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeIdsToReboot = structure(list(structure(logical(0), 
            shape = "String", locationName = "CacheNodeId", type = "string")), 
            shape = "CacheNodeIdsList", type = "list")), shape = "CacheParameterGroupStatus", 
            type = "structure"), CacheSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheNodes = structure(list(structure(list(CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), ParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), SourceCacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CustomerAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string")), shape = "CacheNode", 
            locationName = "CacheNode", type = "structure")), 
            shape = "CacheNodeList", type = "list"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecurityGroups = structure(list(structure(list(SecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "SecurityGroupMembership", 
            type = "structure")), shape = "SecurityGroupMembershipList", 
            type = "list"), ReplicationGroupId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CacheCluster", 
        type = "structure", wrapper = TRUE)), shape = "DeleteCacheClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_cache_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteCacheParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cache_parameter_group_output <- function () 
{
    return(list())
}

delete_cache_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteCacheSecurityGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cache_security_group_output <- function () 
{
    return(list())
}

delete_cache_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteCacheSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_cache_subnet_group_output <- function () 
{
    return(list())
}

delete_replication_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), RetainPrimaryCluster = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), FinalSnapshotIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteReplicationGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_replication_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "DeleteReplicationGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteSnapshotMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshot = structure(list(SnapshotName = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshotStatus = structure(logical(0), 
        shape = "String", type = "string"), SnapshotSource = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), TopicArn = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "Boolean", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
        shape = "String", type = "string"), NumNodeGroups = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        NodeSnapshots = structure(list(structure(list(CacheClusterId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupConfiguration = structure(list(NodeGroupId = structure(logical(0), 
            shape = "AllowedNodeGroupId", type = "string", max = 4L, 
            min = 1L, pattern = "\\d+"), Slots = structure(logical(0), 
            shape = "String", type = "string"), ReplicaCount = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), PrimaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), ReplicaAvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "AvailabilityZone", 
            type = "string")), shape = "AvailabilityZonesList", 
            type = "list")), shape = "NodeGroupConfiguration", 
            type = "structure"), CacheSize = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "NodeSnapshot", 
            locationName = "NodeSnapshot", type = "structure", 
            wrapper = TRUE)), shape = "NodeSnapshotList", type = "list")), 
        shape = "Snapshot", type = "structure", wrapper = TRUE)), 
        shape = "DeleteSnapshotResult", type = "structure")
    return(populate(args, shape))
}

describe_cache_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), ShowCacheNodeInfo = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), ShowCacheClustersNotInReplicationGroups = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "DescribeCacheClustersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), CacheClusters = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClientDownloadLandingPage = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeIdsToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingModifiedValues", 
        type = "structure"), NotificationConfiguration = structure(list(TopicArn = structure(logical(0), 
        shape = "String", type = "string"), TopicStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "NotificationConfiguration", 
        type = "structure"), CacheSecurityGroups = structure(list(structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheSecurityGroupMembership", 
        locationName = "CacheSecurityGroup", type = "structure")), 
        shape = "CacheSecurityGroupMembershipList", type = "list"), 
        CacheParameterGroup = structure(list(CacheParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeIdsToReboot = structure(list(structure(logical(0), 
            shape = "String", locationName = "CacheNodeId", type = "string")), 
            shape = "CacheNodeIdsList", type = "list")), shape = "CacheParameterGroupStatus", 
            type = "structure"), CacheSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheNodes = structure(list(structure(list(CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), ParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), SourceCacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CustomerAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string")), shape = "CacheNode", 
            locationName = "CacheNode", type = "structure")), 
            shape = "CacheNodeList", type = "list"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecurityGroups = structure(list(structure(list(SecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "SecurityGroupMembership", 
            type = "structure")), shape = "SecurityGroupMembershipList", 
            type = "list"), ReplicationGroupId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CacheCluster", 
        locationName = "CacheCluster", type = "structure", wrapper = TRUE)), 
        shape = "CacheClusterList", type = "list")), shape = "CacheClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_engine_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Engine = structure(logical(0), shape = "String", 
        type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), DefaultOnly = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DescribeCacheEngineVersionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_engine_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), CacheEngineVersions = structure(list(structure(list(Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), CacheEngineDescription = structure(logical(0), 
        shape = "String", type = "string"), CacheEngineVersionDescription = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheEngineVersion", 
        locationName = "CacheEngineVersion", type = "structure")), 
        shape = "CacheEngineVersionList", type = "list")), shape = "CacheEngineVersionMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_parameter_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeCacheParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_parameter_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), CacheParameterGroups = structure(list(structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheParameterGroup", 
        locationName = "CacheParameterGroup", type = "structure", 
        wrapper = TRUE)), shape = "CacheParameterGroupList", 
        type = "list")), shape = "CacheParameterGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeCacheParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ChangeType = structure(logical(0), 
        shape = "ChangeType", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list"), CacheNodeTypeSpecificParameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeTypeSpecificValues = structure(list(structure(list(CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheNodeTypeSpecificValue", 
        locationName = "CacheNodeTypeSpecificValue", type = "structure")), 
        shape = "CacheNodeTypeSpecificValueList", type = "list"), 
        ChangeType = structure(logical(0), shape = "ChangeType", 
            type = "string")), shape = "CacheNodeTypeSpecificParameter", 
        locationName = "CacheNodeTypeSpecificParameter", type = "structure")), 
        shape = "CacheNodeTypeSpecificParametersList", type = "list")), 
        shape = "CacheParameterGroupDetails", type = "structure")
    return(populate(args, shape))
}

describe_cache_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeCacheSecurityGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), CacheSecurityGroups = structure(list(structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list")), shape = "CacheSecurityGroup", 
        locationName = "CacheSecurityGroup", type = "structure", 
        wrapper = TRUE)), shape = "CacheSecurityGroups", type = "list")), 
        shape = "CacheSecurityGroupMessage", type = "structure")
    return(populate(args, shape))
}

describe_cache_subnet_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeCacheSubnetGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_subnet_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), CacheSubnetGroups = structure(list(structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure", wrapper = TRUE)), shape = "Subnet", 
        locationName = "Subnet", type = "structure")), shape = "SubnetList", 
        type = "list")), shape = "CacheSubnetGroup", locationName = "CacheSubnetGroup", 
        type = "structure", wrapper = TRUE)), shape = "CacheSubnetGroups", 
        type = "list")), shape = "CacheSubnetGroupMessage", type = "structure")
    return(populate(args, shape))
}

describe_engine_default_parameters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEngineDefaultParametersMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_engine_default_parameters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EngineDefaults = structure(list(CacheParameterGroupFamily = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ChangeType = structure(logical(0), 
        shape = "ChangeType", type = "string")), shape = "Parameter", 
        locationName = "Parameter", type = "structure")), shape = "ParametersList", 
        type = "list"), CacheNodeTypeSpecificParameters = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Source = structure(logical(0), 
        shape = "String", type = "string"), DataType = structure(logical(0), 
        shape = "String", type = "string"), AllowedValues = structure(logical(0), 
        shape = "String", type = "string"), IsModifiable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MinimumEngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeTypeSpecificValues = structure(list(structure(list(CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheNodeTypeSpecificValue", 
        locationName = "CacheNodeTypeSpecificValue", type = "structure")), 
        shape = "CacheNodeTypeSpecificValueList", type = "list"), 
        ChangeType = structure(logical(0), shape = "ChangeType", 
            type = "string")), shape = "CacheNodeTypeSpecificParameter", 
        locationName = "CacheNodeTypeSpecificParameter", type = "structure")), 
        shape = "CacheNodeTypeSpecificParametersList", type = "list")), 
        shape = "EngineDefaults", type = "structure", wrapper = TRUE)), 
        shape = "DescribeEngineDefaultParametersResult", type = "structure")
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
        shape = "String", type = "string"), Date = structure(logical(0), 
        shape = "TStamp", type = "timestamp")), shape = "Event", 
        locationName = "Event", type = "structure")), shape = "EventList", 
        type = "list")), shape = "EventsMessage", type = "structure")
    return(populate(args, shape))
}

describe_replication_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReplicationGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReplicationGroups = structure(list(structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        locationName = "ReplicationGroup", type = "structure", 
        wrapper = TRUE)), shape = "ReplicationGroupList", type = "list")), 
        shape = "ReplicationGroupMessage", type = "structure")
    return(populate(args, shape))
}

describe_reserved_cache_nodes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedCacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReservedCacheNodesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "String", type = "string"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReservedCacheNodesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_cache_nodes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedCacheNodes = structure(list(structure(list(ReservedCacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReservedCacheNodesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CacheNodeCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), State = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservationARN = structure(logical(0), shape = "String", 
            type = "string")), shape = "ReservedCacheNode", locationName = "ReservedCacheNode", 
        type = "structure", wrapper = TRUE)), shape = "ReservedCacheNodeList", 
        type = "list")), shape = "ReservedCacheNodeMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_cache_nodes_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedCacheNodesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "String", type = "string"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReservedCacheNodesOfferingsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_cache_nodes_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReservedCacheNodesOfferings = structure(list(structure(list(ReservedCacheNodesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list")), 
        shape = "ReservedCacheNodesOffering", locationName = "ReservedCacheNodesOffering", 
        type = "structure", wrapper = TRUE)), shape = "ReservedCacheNodesOfferingList", 
        type = "list")), shape = "ReservedCacheNodesOfferingMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshotName = structure(logical(0), 
        shape = "String", type = "string"), SnapshotSource = structure(logical(0), 
        shape = "String", type = "string"), Marker = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ShowNodeGroupConfig = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "DescribeSnapshotsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Snapshots = structure(list(structure(list(SnapshotName = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshotStatus = structure(logical(0), 
        shape = "String", type = "string"), SnapshotSource = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), TopicArn = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "Boolean", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
        shape = "String", type = "string"), NumNodeGroups = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        NodeSnapshots = structure(list(structure(list(CacheClusterId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), NodeGroupConfiguration = structure(list(NodeGroupId = structure(logical(0), 
            shape = "AllowedNodeGroupId", type = "string", max = 4L, 
            min = 1L, pattern = "\\d+"), Slots = structure(logical(0), 
            shape = "String", type = "string"), ReplicaCount = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), PrimaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), ReplicaAvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "AvailabilityZone", 
            type = "string")), shape = "AvailabilityZonesList", 
            type = "list")), shape = "NodeGroupConfiguration", 
            type = "structure"), CacheSize = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), SnapshotCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "NodeSnapshot", 
            locationName = "NodeSnapshot", type = "structure", 
            wrapper = TRUE)), shape = "NodeSnapshotList", type = "list")), 
        shape = "Snapshot", locationName = "Snapshot", type = "structure", 
        wrapper = TRUE)), shape = "SnapshotList", type = "list")), 
        shape = "DescribeSnapshotsListMessage", type = "structure")
    return(populate(args, shape))
}

increase_replica_count_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), NewReplicaCount = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ReplicaConfiguration = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "AllowedNodeGroupId", type = "string", max = 4L, 
        min = 1L, pattern = "\\d+"), NewReplicaCount = structure(logical(0), 
        shape = "Integer", type = "integer"), PreferredAvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "PreferredAvailabilityZone", 
        type = "string")), shape = "PreferredAvailabilityZoneList", 
        type = "list")), shape = "ConfigureShard", locationName = "ConfigureShard", 
        type = "structure")), shape = "ReplicaConfigurationList", 
        type = "list"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "IncreaseReplicaCountMessage", 
        type = "structure")
    return(populate(args, shape))
}

increase_replica_count_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "IncreaseReplicaCountResult", 
        type = "structure")
    return(populate(args, shape))
}

list_allowed_node_type_modifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListAllowedNodeTypeModificationsMessage", 
        type = "structure")
    return(populate(args, shape))
}

list_allowed_node_type_modifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScaleUpModifications = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeTypeList", 
        type = "list")), shape = "AllowedNodeTypeModificationsMessage", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListTagsForResourceMessage", 
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

modify_cache_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeIdsToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list"), AZMode = structure(logical(0), 
        shape = "AZMode", type = "string"), NewAvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "PreferredAvailabilityZone", 
        type = "string")), shape = "PreferredAvailabilityZoneList", 
        type = "list"), CacheSecurityGroupNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheSecurityGroupName", 
        type = "string")), shape = "CacheSecurityGroupNameList", 
        type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SecurityGroupId", type = "string")), 
        shape = "SecurityGroupIdsList", type = "list"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), NotificationTopicArn = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), NotificationTopicStatus = structure(logical(0), 
        shape = "String", type = "string"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyCacheClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cache_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheCluster = structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClientDownloadLandingPage = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeIdsToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingModifiedValues", 
        type = "structure"), NotificationConfiguration = structure(list(TopicArn = structure(logical(0), 
        shape = "String", type = "string"), TopicStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "NotificationConfiguration", 
        type = "structure"), CacheSecurityGroups = structure(list(structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheSecurityGroupMembership", 
        locationName = "CacheSecurityGroup", type = "structure")), 
        shape = "CacheSecurityGroupMembershipList", type = "list"), 
        CacheParameterGroup = structure(list(CacheParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeIdsToReboot = structure(list(structure(logical(0), 
            shape = "String", locationName = "CacheNodeId", type = "string")), 
            shape = "CacheNodeIdsList", type = "list")), shape = "CacheParameterGroupStatus", 
            type = "structure"), CacheSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheNodes = structure(list(structure(list(CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), ParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), SourceCacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CustomerAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string")), shape = "CacheNode", 
            locationName = "CacheNode", type = "structure")), 
            shape = "CacheNodeList", type = "list"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecurityGroups = structure(list(structure(list(SecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "SecurityGroupMembership", 
            type = "structure")), shape = "SecurityGroupMembershipList", 
            type = "list"), ReplicationGroupId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CacheCluster", 
        type = "structure", wrapper = TRUE)), shape = "ModifyCacheClusterResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_cache_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ParameterNameValues = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string")), shape = "ParameterNameValue", 
        locationName = "ParameterNameValue", type = "structure")), 
        shape = "ParameterNameValueList", type = "list")), shape = "ModifyCacheParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cache_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_cache_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SubnetIdentifier", 
        type = "string")), shape = "SubnetIdentifierList", type = "list")), 
        shape = "ModifyCacheSubnetGroupMessage", type = "structure")
    return(populate(args, shape))
}

modify_cache_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSubnetGroup = structure(list(CacheSubnetGroupName = structure(logical(0), 
        shape = "String", type = "string"), CacheSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure", wrapper = TRUE)), shape = "Subnet", 
        locationName = "Subnet", type = "structure")), shape = "SubnetList", 
        type = "list")), shape = "CacheSubnetGroup", type = "structure", 
        wrapper = TRUE)), shape = "ModifyCacheSubnetGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), ReplicationGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverEnabled = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), CacheSecurityGroupNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheSecurityGroupName", 
        type = "string")), shape = "CacheSecurityGroupNameList", 
        type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SecurityGroupId", type = "string")), 
        shape = "SecurityGroupIdsList", type = "list"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), NotificationTopicArn = structure(logical(0), 
        shape = "String", type = "string"), CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), NotificationTopicStatus = structure(logical(0), 
        shape = "String", type = "string"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), SnapshotRetentionLimit = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), NodeGroupId = structure(logical(0), 
        shape = "String", deprecated = TRUE, type = "string")), 
        shape = "ModifyReplicationGroupMessage", type = "structure")
    return(populate(args, shape))
}

modify_replication_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "ModifyReplicationGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_group_shard_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), NodeGroupCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ReshardingConfiguration = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "AllowedNodeGroupId", type = "string", max = 4L, 
        min = 1L, pattern = "\\d+"), PreferredAvailabilityZones = structure(list(structure(logical(0), 
        shape = "String", locationName = "AvailabilityZone", 
        type = "string")), shape = "AvailabilityZonesList", type = "list")), 
        shape = "ReshardingConfiguration", locationName = "ReshardingConfiguration", 
        type = "structure")), shape = "ReshardingConfigurationList", 
        type = "list"), NodeGroupsToRemove = structure(list(structure(logical(0), 
        shape = "AllowedNodeGroupId", locationName = "NodeGroupToRemove", 
        type = "string", max = 4L, min = 1L, pattern = "\\d+")), 
        shape = "NodeGroupsToRemoveList", type = "list"), NodeGroupsToRetain = structure(list(structure(logical(0), 
        shape = "AllowedNodeGroupId", locationName = "NodeGroupToRetain", 
        type = "string", max = 4L, min = 1L, pattern = "\\d+")), 
        shape = "NodeGroupsToRetainList", type = "list")), shape = "ModifyReplicationGroupShardConfigurationMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_group_shard_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "ModifyReplicationGroupShardConfigurationResult", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_cache_nodes_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedCacheNodesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), ReservedCacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeCount = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "PurchaseReservedCacheNodesOfferingMessage", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_cache_nodes_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedCacheNode = structure(list(ReservedCacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReservedCacheNodesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "Integer", type = "integer"), FixedPrice = structure(logical(0), 
        shape = "Double", type = "double"), UsagePrice = structure(logical(0), 
        shape = "Double", type = "double"), CacheNodeCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ProductDescription = structure(logical(0), 
        shape = "String", type = "string"), OfferingType = structure(logical(0), 
        shape = "String", type = "string"), State = structure(logical(0), 
        shape = "String", type = "string"), RecurringCharges = structure(list(structure(list(RecurringChargeAmount = structure(logical(0), 
        shape = "Double", type = "double"), RecurringChargeFrequency = structure(logical(0), 
        shape = "String", type = "string")), shape = "RecurringCharge", 
        locationName = "RecurringCharge", type = "structure", 
        wrapper = TRUE)), shape = "RecurringChargeList", type = "list"), 
        ReservationARN = structure(logical(0), shape = "String", 
            type = "string")), shape = "ReservedCacheNode", type = "structure", 
        wrapper = TRUE)), shape = "PurchaseReservedCacheNodesOfferingResult", 
        type = "structure")
    return(populate(args, shape))
}

reboot_cache_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeIdsToReboot = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list")), shape = "RebootCacheClusterMessage", 
        type = "structure")
    return(populate(args, shape))
}

reboot_cache_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheCluster = structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), ClientDownloadLandingPage = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string"), Engine = structure(logical(0), 
        shape = "String", type = "string"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterStatus = structure(logical(0), 
        shape = "String", type = "string"), NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CacheClusterCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(NumCacheNodes = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), CacheNodeIdsToRemove = structure(list(structure(logical(0), 
        shape = "String", locationName = "CacheNodeId", type = "string")), 
        shape = "CacheNodeIdsList", type = "list"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeType = structure(logical(0), 
        shape = "String", type = "string")), shape = "PendingModifiedValues", 
        type = "structure"), NotificationConfiguration = structure(list(TopicArn = structure(logical(0), 
        shape = "String", type = "string"), TopicStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "NotificationConfiguration", 
        type = "structure"), CacheSecurityGroups = structure(list(structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheSecurityGroupMembership", 
        locationName = "CacheSecurityGroup", type = "structure")), 
        shape = "CacheSecurityGroupMembershipList", type = "list"), 
        CacheParameterGroup = structure(list(CacheParameterGroupName = structure(logical(0), 
            shape = "String", type = "string"), ParameterApplyStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeIdsToReboot = structure(list(structure(logical(0), 
            shape = "String", locationName = "CacheNodeId", type = "string")), 
            shape = "CacheNodeIdsList", type = "list")), shape = "CacheParameterGroupStatus", 
            type = "structure"), CacheSubnetGroupName = structure(logical(0), 
            shape = "String", type = "string"), CacheNodes = structure(list(structure(list(CacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeStatus = structure(logical(0), 
            shape = "String", type = "string"), CacheNodeCreateTime = structure(logical(0), 
            shape = "TStamp", type = "timestamp"), Endpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), ParameterGroupStatus = structure(logical(0), 
            shape = "String", type = "string"), SourceCacheNodeId = structure(logical(0), 
            shape = "String", type = "string"), CustomerAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string")), shape = "CacheNode", 
            locationName = "CacheNode", type = "structure")), 
            shape = "CacheNodeList", type = "list"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecurityGroups = structure(list(structure(list(SecurityGroupId = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string")), shape = "SecurityGroupMembership", 
            type = "structure")), shape = "SecurityGroupMembershipList", 
            type = "list"), ReplicationGroupId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "CacheCluster", 
        type = "structure", wrapper = TRUE)), shape = "RebootCacheClusterResult", 
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

remove_tags_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", locationName = "Tag", 
        type = "structure")), shape = "TagList", type = "list")), 
        shape = "TagListMessage", type = "structure")
    return(populate(args, shape))
}

reset_cache_parameter_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string"), ResetAllParameters = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ParameterNameValues = structure(list(structure(list(ParameterName = structure(logical(0), 
        shape = "String", type = "string"), ParameterValue = structure(logical(0), 
        shape = "String", type = "string")), shape = "ParameterNameValue", 
        locationName = "ParameterNameValue", type = "structure")), 
        shape = "ParameterNameValueList", type = "list")), shape = "ResetCacheParameterGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

reset_cache_parameter_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheParameterGroupName = structure(logical(0), 
        shape = "String", type = "string")), shape = "CacheParameterGroupNameMessage", 
        type = "structure")
    return(populate(args, shape))
}

revoke_cache_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "RevokeCacheSecurityGroupIngressMessage", 
        type = "structure")
    return(populate(args, shape))
}

revoke_cache_security_group_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CacheSecurityGroup = structure(list(OwnerId = structure(logical(0), 
        shape = "String", type = "string"), CacheSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroups = structure(list(structure(list(Status = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), EC2SecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EC2SecurityGroup", 
        locationName = "EC2SecurityGroup", type = "structure")), 
        shape = "EC2SecurityGroupList", type = "list")), shape = "CacheSecurityGroup", 
        type = "structure", wrapper = TRUE)), shape = "RevokeCacheSecurityGroupIngressResult", 
        type = "structure")
    return(populate(args, shape))
}

test_failover_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), NodeGroupId = structure(logical(0), 
        shape = "AllowedNodeGroupId", type = "string", max = 4L, 
        min = 1L, pattern = "\\d+")), shape = "TestFailoverMessage", 
        type = "structure")
    return(populate(args, shape))
}

test_failover_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationGroup = structure(list(ReplicationGroupId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PendingModifiedValues = structure(list(PrimaryClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailoverStatus = structure(logical(0), 
        shape = "PendingAutomaticFailoverStatus", type = "string"), 
        Resharding = structure(list(SlotMigration = structure(list(ProgressPercentage = structure(logical(0), 
            shape = "Double", type = "double")), shape = "SlotMigration", 
            type = "structure")), shape = "ReshardingStatus", 
            type = "structure")), shape = "ReplicationGroupPendingModifiedValues", 
        type = "structure"), MemberClusters = structure(list(structure(logical(0), 
        shape = "String", locationName = "ClusterId", type = "string")), 
        shape = "ClusterIdList", type = "list"), NodeGroups = structure(list(structure(list(NodeGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), PrimaryEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), Slots = structure(logical(0), shape = "String", 
        type = "string"), NodeGroupMembers = structure(list(structure(list(CacheClusterId = structure(logical(0), 
        shape = "String", type = "string"), CacheNodeId = structure(logical(0), 
        shape = "String", type = "string"), ReadEndpoint = structure(list(Address = structure(logical(0), 
        shape = "String", type = "string"), Port = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Endpoint", 
        type = "structure"), PreferredAvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CurrentRole = structure(logical(0), 
        shape = "String", type = "string")), shape = "NodeGroupMember", 
        locationName = "NodeGroupMember", type = "structure")), 
        shape = "NodeGroupMemberList", type = "list")), shape = "NodeGroup", 
        locationName = "NodeGroup", type = "structure")), shape = "NodeGroupList", 
        type = "list"), SnapshottingClusterId = structure(logical(0), 
        shape = "String", type = "string"), AutomaticFailover = structure(logical(0), 
        shape = "AutomaticFailoverStatus", type = "string"), 
        ConfigurationEndpoint = structure(list(Address = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "Endpoint", 
            type = "structure"), SnapshotRetentionLimit = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), SnapshotWindow = structure(logical(0), 
            shape = "String", type = "string"), ClusterEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), CacheNodeType = structure(logical(0), 
            shape = "String", type = "string"), AuthTokenEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), TransitEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), AtRestEncryptionEnabled = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean")), shape = "ReplicationGroup", 
        type = "structure", wrapper = TRUE)), shape = "TestFailoverResult", 
        type = "structure")
    return(populate(args, shape))
}
