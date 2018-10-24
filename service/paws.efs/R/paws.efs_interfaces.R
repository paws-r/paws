create_file_system_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreationToken = structure(logical(0), 
        shape = "CreationToken", type = "string", max = 64L, 
        min = 1L), PerformanceMode = structure(logical(0), shape = "PerformanceMode", 
        type = "string"), Encrypted = structure(logical(0), shape = "Encrypted", 
        type = "boolean"), KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
        type = "string", max = 2048L, min = 1L), ThroughputMode = structure(logical(0), 
        shape = "ThroughputMode", type = "string"), ProvisionedThroughputInMibps = structure(logical(0), 
        shape = "ProvisionedThroughputInMibps", type = "double", 
        min = 0)), shape = "CreateFileSystemRequest", type = "structure")
    return(populate(args, shape))
}

create_file_system_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerId = structure(logical(0), shape = "AwsAccountId", 
        type = "string"), CreationToken = structure(logical(0), 
        shape = "CreationToken", type = "string", max = 64L, 
        min = 1L), FileSystemId = structure(logical(0), shape = "FileSystemId", 
        type = "string"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LifeCycleState = structure(logical(0), 
        shape = "LifeCycleState", type = "string"), Name = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L), NumberOfMountTargets = structure(logical(0), 
        shape = "MountTargetCount", type = "integer", min = 0L), 
        SizeInBytes = structure(list(Value = structure(logical(0), 
            shape = "FileSystemSizeValue", type = "long", min = 0L), 
            Timestamp = structure(logical(0), shape = "Timestamp", 
                type = "timestamp")), shape = "FileSystemSize", 
            type = "structure"), PerformanceMode = structure(logical(0), 
            shape = "PerformanceMode", type = "string"), Encrypted = structure(logical(0), 
            shape = "Encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 2048L, 
            min = 1L), ThroughputMode = structure(logical(0), 
            shape = "ThroughputMode", type = "string"), ProvisionedThroughputInMibps = structure(logical(0), 
            shape = "ProvisionedThroughputInMibps", type = "double", 
            min = 0)), shape = "FileSystemDescription", type = "structure")
    return(populate(args, shape))
}

create_mount_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileSystemId = structure(logical(0), 
        shape = "FileSystemId", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), IpAddress = structure(logical(0), 
        shape = "IpAddress", type = "string"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroup", type = "string")), shape = "SecurityGroups", 
        type = "list", max = 5L)), shape = "CreateMountTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_mount_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerId = structure(logical(0), shape = "AwsAccountId", 
        type = "string"), MountTargetId = structure(logical(0), 
        shape = "MountTargetId", type = "string"), FileSystemId = structure(logical(0), 
        shape = "FileSystemId", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), LifeCycleState = structure(logical(0), 
        shape = "LifeCycleState", type = "string"), IpAddress = structure(logical(0), 
        shape = "IpAddress", type = "string"), NetworkInterfaceId = structure(logical(0), 
        shape = "NetworkInterfaceId", type = "string")), shape = "MountTargetDescription", 
        type = "structure")
    return(populate(args, shape))
}

create_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "uri", locationName = "FileSystemId", 
        type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L)), shape = "Tag", type = "structure")), 
        shape = "Tags", type = "list")), shape = "CreateTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_tags_output <- function () 
{
    return(list())
}

delete_file_system_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "uri", locationName = "FileSystemId", 
        type = "string")), shape = "DeleteFileSystemRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_file_system_output <- function () 
{
    return(list())
}

delete_mount_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MountTargetId = structure(logical(0), 
        shape = "MountTargetId", location = "uri", locationName = "MountTargetId", 
        type = "string")), shape = "DeleteMountTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_mount_target_output <- function () 
{
    return(list())
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "uri", locationName = "FileSystemId", 
        type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeys", type = "list")), shape = "DeleteTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function () 
{
    return(list())
}

describe_file_systems_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxItems = structure(logical(0), 
        shape = "MaxItems", location = "querystring", locationName = "MaxItems", 
        type = "integer", min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "Marker", 
        type = "string"), CreationToken = structure(logical(0), 
        shape = "CreationToken", location = "querystring", locationName = "CreationToken", 
        type = "string", max = 64L, min = 1L), FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "querystring", locationName = "FileSystemId", 
        type = "string")), shape = "DescribeFileSystemsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_file_systems_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string"), FileSystems = structure(list(structure(list(OwnerId = structure(logical(0), 
        shape = "AwsAccountId", type = "string"), CreationToken = structure(logical(0), 
        shape = "CreationToken", type = "string", max = 64L, 
        min = 1L), FileSystemId = structure(logical(0), shape = "FileSystemId", 
        type = "string"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LifeCycleState = structure(logical(0), 
        shape = "LifeCycleState", type = "string"), Name = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L), NumberOfMountTargets = structure(logical(0), 
        shape = "MountTargetCount", type = "integer", min = 0L), 
        SizeInBytes = structure(list(Value = structure(logical(0), 
            shape = "FileSystemSizeValue", type = "long", min = 0L), 
            Timestamp = structure(logical(0), shape = "Timestamp", 
                type = "timestamp")), shape = "FileSystemSize", 
            type = "structure"), PerformanceMode = structure(logical(0), 
            shape = "PerformanceMode", type = "string"), Encrypted = structure(logical(0), 
            shape = "Encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 2048L, 
            min = 1L), ThroughputMode = structure(logical(0), 
            shape = "ThroughputMode", type = "string"), ProvisionedThroughputInMibps = structure(logical(0), 
            shape = "ProvisionedThroughputInMibps", type = "double", 
            min = 0)), shape = "FileSystemDescription", type = "structure")), 
        shape = "FileSystemDescriptions", type = "list"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "DescribeFileSystemsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_mount_target_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MountTargetId = structure(logical(0), 
        shape = "MountTargetId", location = "uri", locationName = "MountTargetId", 
        type = "string")), shape = "DescribeMountTargetSecurityGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_mount_target_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroup", type = "string")), shape = "SecurityGroups", 
        type = "list", max = 5L)), shape = "DescribeMountTargetSecurityGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_mount_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxItems = structure(logical(0), 
        shape = "MaxItems", location = "querystring", locationName = "MaxItems", 
        type = "integer", min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "Marker", 
        type = "string"), FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "querystring", locationName = "FileSystemId", 
        type = "string"), MountTargetId = structure(logical(0), 
        shape = "MountTargetId", location = "querystring", locationName = "MountTargetId", 
        type = "string")), shape = "DescribeMountTargetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_mount_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string"), MountTargets = structure(list(structure(list(OwnerId = structure(logical(0), 
        shape = "AwsAccountId", type = "string"), MountTargetId = structure(logical(0), 
        shape = "MountTargetId", type = "string"), FileSystemId = structure(logical(0), 
        shape = "FileSystemId", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string"), LifeCycleState = structure(logical(0), 
        shape = "LifeCycleState", type = "string"), IpAddress = structure(logical(0), 
        shape = "IpAddress", type = "string"), NetworkInterfaceId = structure(logical(0), 
        shape = "NetworkInterfaceId", type = "string")), shape = "MountTargetDescription", 
        type = "structure")), shape = "MountTargetDescriptions", 
        type = "list"), NextMarker = structure(logical(0), shape = "Marker", 
        type = "string")), shape = "DescribeMountTargetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxItems = structure(logical(0), 
        shape = "MaxItems", location = "querystring", locationName = "MaxItems", 
        type = "integer", min = 1L), Marker = structure(logical(0), 
        shape = "Marker", location = "querystring", locationName = "Marker", 
        type = "string"), FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "uri", locationName = "FileSystemId", 
        type = "string")), shape = "DescribeTagsRequest", type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L)), shape = "Tag", type = "structure")), 
        shape = "Tags", type = "list"), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string")), shape = "DescribeTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

modify_mount_target_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MountTargetId = structure(logical(0), 
        shape = "MountTargetId", location = "uri", locationName = "MountTargetId", 
        type = "string"), SecurityGroups = structure(list(structure(logical(0), 
        shape = "SecurityGroup", type = "string")), shape = "SecurityGroups", 
        type = "list", max = 5L)), shape = "ModifyMountTargetSecurityGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_mount_target_security_groups_output <- function () 
{
    return(list())
}

update_file_system_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileSystemId = structure(logical(0), 
        shape = "FileSystemId", location = "uri", locationName = "FileSystemId", 
        type = "string"), ThroughputMode = structure(logical(0), 
        shape = "ThroughputMode", type = "string"), ProvisionedThroughputInMibps = structure(logical(0), 
        shape = "ProvisionedThroughputInMibps", type = "double", 
        min = 0)), shape = "UpdateFileSystemRequest", type = "structure")
    return(populate(args, shape))
}

update_file_system_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerId = structure(logical(0), shape = "AwsAccountId", 
        type = "string"), CreationToken = structure(logical(0), 
        shape = "CreationToken", type = "string", max = 64L, 
        min = 1L), FileSystemId = structure(logical(0), shape = "FileSystemId", 
        type = "string"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LifeCycleState = structure(logical(0), 
        shape = "LifeCycleState", type = "string"), Name = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L), NumberOfMountTargets = structure(logical(0), 
        shape = "MountTargetCount", type = "integer", min = 0L), 
        SizeInBytes = structure(list(Value = structure(logical(0), 
            shape = "FileSystemSizeValue", type = "long", min = 0L), 
            Timestamp = structure(logical(0), shape = "Timestamp", 
                type = "timestamp")), shape = "FileSystemSize", 
            type = "structure"), PerformanceMode = structure(logical(0), 
            shape = "PerformanceMode", type = "string"), Encrypted = structure(logical(0), 
            shape = "Encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 2048L, 
            min = 1L), ThroughputMode = structure(logical(0), 
            shape = "ThroughputMode", type = "string"), ProvisionedThroughputInMibps = structure(logical(0), 
            shape = "ProvisionedThroughputInMibps", type = "double", 
            min = 0)), shape = "FileSystemDescription", type = "structure")
    return(populate(args, shape))
}
