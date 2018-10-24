copy_backup_to_region_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationRegion = structure(logical(0), 
        shape = "Region", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d"), 
        BackupId = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}")), 
        shape = "CopyBackupToRegionRequest", type = "structure")
    return(populate(args, shape))
}

copy_backup_to_region_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationBackup = structure(list(CreateTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SourceRegion = structure(logical(0), 
        shape = "Region", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d"), 
        SourceBackup = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        SourceCluster = structure(logical(0), shape = "ClusterId", 
            type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}")), 
        shape = "DestinationBackup", type = "structure")), shape = "CopyBackupToRegionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubnetIds = structure(list(structure(logical(0), 
        shape = "SubnetId", type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}")), 
        shape = "SubnetIds", type = "list", max = 10L, min = 1L), 
        HsmType = structure(logical(0), shape = "HsmType", type = "string", 
            pattern = "(hsm1\\.medium)"), SourceBackupId = structure(logical(0), 
            shape = "BackupId", type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}")), 
        shape = "CreateClusterRequest", type = "structure")
    return(populate(args, shape))
}

create_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(BackupPolicy = structure(logical(0), 
        shape = "BackupPolicy", type = "string"), ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        CreateTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), Hsms = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "ExternalAz", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]"), 
            ClusterId = structure(logical(0), shape = "ClusterId", 
                type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
            SubnetId = structure(logical(0), shape = "SubnetId", 
                type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}"), 
            EniId = structure(logical(0), shape = "EniId", type = "string", 
                pattern = "eni-[0-9a-fA-F]{8,17}"), EniIp = structure(logical(0), 
                shape = "IpAddress", type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
            HsmId = structure(logical(0), shape = "HsmId", type = "string", 
                pattern = "hsm-[2-7a-zA-Z]{11,16}"), State = structure(logical(0), 
                shape = "HsmState", type = "string"), StateMessage = structure(logical(0), 
                shape = "String", type = "string")), shape = "Hsm", 
            type = "structure")), shape = "Hsms", type = "list"), 
        HsmType = structure(logical(0), shape = "HsmType", type = "string", 
            pattern = "(hsm1\\.medium)"), PreCoPassword = structure(logical(0), 
            shape = "PreCoPassword", type = "string", max = 32L, 
            min = 7L), SecurityGroup = structure(logical(0), 
            shape = "SecurityGroup", type = "string", pattern = "sg-[0-9a-fA-F]"), 
        SourceBackupId = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        State = structure(logical(0), shape = "ClusterState", 
            type = "string"), StateMessage = structure(logical(0), 
            shape = "StateMessage", type = "string", max = 300L, 
            pattern = ".*"), SubnetMapping = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}")), 
            shape = "ExternalSubnetMapping", type = "map"), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "vpc-[0-9a-fA-F]"), 
        Certificates = structure(list(ClusterCsr = structure(logical(0), 
            shape = "Cert", type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            HsmCertificate = structure(logical(0), shape = "Cert", 
                type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            AwsHardwareCertificate = structure(logical(0), shape = "Cert", 
                type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            ManufacturerHardwareCertificate = structure(logical(0), 
                shape = "Cert", type = "string", max = 5000L, 
                pattern = "[a-zA-Z0-9+-/=\\s]*"), ClusterCertificate = structure(logical(0), 
                shape = "Cert", type = "string", max = 5000L, 
                pattern = "[a-zA-Z0-9+-/=\\s]*")), shape = "Certificates", 
            type = "structure")), shape = "Cluster", type = "structure")), 
        shape = "CreateClusterResponse", type = "structure")
    return(populate(args, shape))
}

create_hsm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        AvailabilityZone = structure(logical(0), shape = "ExternalAz", 
            type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")), 
        shape = "CreateHsmRequest", type = "structure")
    return(populate(args, shape))
}

create_hsm_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Hsm = structure(list(AvailabilityZone = structure(logical(0), 
        shape = "ExternalAz", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]"), 
        ClusterId = structure(logical(0), shape = "ClusterId", 
            type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}"), 
        EniId = structure(logical(0), shape = "EniId", type = "string", 
            pattern = "eni-[0-9a-fA-F]{8,17}"), EniIp = structure(logical(0), 
            shape = "IpAddress", type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
        HsmId = structure(logical(0), shape = "HsmId", type = "string", 
            pattern = "hsm-[2-7a-zA-Z]{11,16}"), State = structure(logical(0), 
            shape = "HsmState", type = "string"), StateMessage = structure(logical(0), 
            shape = "String", type = "string")), shape = "Hsm", 
        type = "structure")), shape = "CreateHsmResponse", type = "structure")
    return(populate(args, shape))
}

delete_backup_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}")), 
        shape = "DeleteBackupRequest", type = "structure")
    return(populate(args, shape))
}

delete_backup_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Backup = structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        BackupState = structure(logical(0), shape = "BackupState", 
            type = "string"), ClusterId = structure(logical(0), 
            shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        CreateTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), CopyTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), SourceRegion = structure(logical(0), 
            shape = "Region", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d"), 
        SourceBackup = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        SourceCluster = structure(logical(0), shape = "ClusterId", 
            type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        DeleteTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "Backup", type = "structure")), 
        shape = "DeleteBackupResponse", type = "structure")
    return(populate(args, shape))
}

delete_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}")), 
        shape = "DeleteClusterRequest", type = "structure")
    return(populate(args, shape))
}

delete_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cluster = structure(list(BackupPolicy = structure(logical(0), 
        shape = "BackupPolicy", type = "string"), ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        CreateTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), Hsms = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "ExternalAz", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]"), 
            ClusterId = structure(logical(0), shape = "ClusterId", 
                type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
            SubnetId = structure(logical(0), shape = "SubnetId", 
                type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}"), 
            EniId = structure(logical(0), shape = "EniId", type = "string", 
                pattern = "eni-[0-9a-fA-F]{8,17}"), EniIp = structure(logical(0), 
                shape = "IpAddress", type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
            HsmId = structure(logical(0), shape = "HsmId", type = "string", 
                pattern = "hsm-[2-7a-zA-Z]{11,16}"), State = structure(logical(0), 
                shape = "HsmState", type = "string"), StateMessage = structure(logical(0), 
                shape = "String", type = "string")), shape = "Hsm", 
            type = "structure")), shape = "Hsms", type = "list"), 
        HsmType = structure(logical(0), shape = "HsmType", type = "string", 
            pattern = "(hsm1\\.medium)"), PreCoPassword = structure(logical(0), 
            shape = "PreCoPassword", type = "string", max = 32L, 
            min = 7L), SecurityGroup = structure(logical(0), 
            shape = "SecurityGroup", type = "string", pattern = "sg-[0-9a-fA-F]"), 
        SourceBackupId = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        State = structure(logical(0), shape = "ClusterState", 
            type = "string"), StateMessage = structure(logical(0), 
            shape = "StateMessage", type = "string", max = 300L, 
            pattern = ".*"), SubnetMapping = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}")), 
            shape = "ExternalSubnetMapping", type = "map"), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "vpc-[0-9a-fA-F]"), 
        Certificates = structure(list(ClusterCsr = structure(logical(0), 
            shape = "Cert", type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            HsmCertificate = structure(logical(0), shape = "Cert", 
                type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            AwsHardwareCertificate = structure(logical(0), shape = "Cert", 
                type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            ManufacturerHardwareCertificate = structure(logical(0), 
                shape = "Cert", type = "string", max = 5000L, 
                pattern = "[a-zA-Z0-9+-/=\\s]*"), ClusterCertificate = structure(logical(0), 
                shape = "Cert", type = "string", max = 5000L, 
                pattern = "[a-zA-Z0-9+-/=\\s]*")), shape = "Certificates", 
            type = "structure")), shape = "Cluster", type = "structure")), 
        shape = "DeleteClusterResponse", type = "structure")
    return(populate(args, shape))
}

delete_hsm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        HsmId = structure(logical(0), shape = "HsmId", type = "string", 
            pattern = "hsm-[2-7a-zA-Z]{11,16}"), EniId = structure(logical(0), 
            shape = "EniId", type = "string", pattern = "eni-[0-9a-fA-F]{8,17}"), 
        EniIp = structure(logical(0), shape = "IpAddress", type = "string", 
            pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")), 
        shape = "DeleteHsmRequest", type = "structure")
    return(populate(args, shape))
}

delete_hsm_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmId = structure(logical(0), shape = "HsmId", 
        type = "string", pattern = "hsm-[2-7a-zA-Z]{11,16}")), 
        shape = "DeleteHsmResponse", type = "structure")
    return(populate(args, shape))
}

describe_backups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 256L, pattern = ".*"), 
        MaxResults = structure(logical(0), shape = "MaxSize", 
            type = "integer", max = 100L, min = 1L), Filters = structure(list(structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "Strings", 
            type = "list")), shape = "Filters", type = "map"), 
        SortAscending = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "DescribeBackupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_backups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Backups = structure(list(structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        BackupState = structure(logical(0), shape = "BackupState", 
            type = "string"), ClusterId = structure(logical(0), 
            shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        CreateTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), CopyTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), SourceRegion = structure(logical(0), 
            shape = "Region", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d"), 
        SourceBackup = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        SourceCluster = structure(logical(0), shape = "ClusterId", 
            type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        DeleteTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "Backup", type = "structure")), 
        shape = "Backups", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 256L, pattern = ".*")), 
        shape = "DescribeBackupsResponse", type = "structure")
    return(populate(args, shape))
}

describe_clusters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "Strings", 
        type = "list")), shape = "Filters", type = "map"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 256L, pattern = ".*"), 
        MaxResults = structure(logical(0), shape = "MaxSize", 
            type = "integer", max = 100L, min = 1L)), shape = "DescribeClustersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_clusters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Clusters = structure(list(structure(list(BackupPolicy = structure(logical(0), 
        shape = "BackupPolicy", type = "string"), ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        CreateTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), Hsms = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "ExternalAz", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]"), 
            ClusterId = structure(logical(0), shape = "ClusterId", 
                type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
            SubnetId = structure(logical(0), shape = "SubnetId", 
                type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}"), 
            EniId = structure(logical(0), shape = "EniId", type = "string", 
                pattern = "eni-[0-9a-fA-F]{8,17}"), EniIp = structure(logical(0), 
                shape = "IpAddress", type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
            HsmId = structure(logical(0), shape = "HsmId", type = "string", 
                pattern = "hsm-[2-7a-zA-Z]{11,16}"), State = structure(logical(0), 
                shape = "HsmState", type = "string"), StateMessage = structure(logical(0), 
                shape = "String", type = "string")), shape = "Hsm", 
            type = "structure")), shape = "Hsms", type = "list"), 
        HsmType = structure(logical(0), shape = "HsmType", type = "string", 
            pattern = "(hsm1\\.medium)"), PreCoPassword = structure(logical(0), 
            shape = "PreCoPassword", type = "string", max = 32L, 
            min = 7L), SecurityGroup = structure(logical(0), 
            shape = "SecurityGroup", type = "string", pattern = "sg-[0-9a-fA-F]"), 
        SourceBackupId = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        State = structure(logical(0), shape = "ClusterState", 
            type = "string"), StateMessage = structure(logical(0), 
            shape = "StateMessage", type = "string", max = 300L, 
            pattern = ".*"), SubnetMapping = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", pattern = "subnet-[0-9a-fA-F]{8,17}")), 
            shape = "ExternalSubnetMapping", type = "map"), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "vpc-[0-9a-fA-F]"), 
        Certificates = structure(list(ClusterCsr = structure(logical(0), 
            shape = "Cert", type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            HsmCertificate = structure(logical(0), shape = "Cert", 
                type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            AwsHardwareCertificate = structure(logical(0), shape = "Cert", 
                type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), 
            ManufacturerHardwareCertificate = structure(logical(0), 
                shape = "Cert", type = "string", max = 5000L, 
                pattern = "[a-zA-Z0-9+-/=\\s]*"), ClusterCertificate = structure(logical(0), 
                shape = "Cert", type = "string", max = 5000L, 
                pattern = "[a-zA-Z0-9+-/=\\s]*")), shape = "Certificates", 
            type = "structure")), shape = "Cluster", type = "structure")), 
        shape = "Clusters", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 256L, pattern = ".*")), 
        shape = "DescribeClustersResponse", type = "structure")
    return(populate(args, shape))
}

initialize_cluster_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClusterId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        SignedCert = structure(logical(0), shape = "Cert", type = "string", 
            max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*"), TrustAnchor = structure(logical(0), 
            shape = "Cert", type = "string", max = 5000L, pattern = "[a-zA-Z0-9+-/=\\s]*")), 
        shape = "InitializeClusterRequest", type = "structure")
    return(populate(args, shape))
}

initialize_cluster_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(logical(0), shape = "ClusterState", 
        type = "string"), StateMessage = structure(logical(0), 
        shape = "StateMessage", type = "string", max = 300L, 
        pattern = ".*")), shape = "InitializeClusterResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 256L, pattern = ".*"), MaxResults = structure(logical(0), 
            shape = "MaxSize", type = "integer", max = 100L, 
            min = 1L)), shape = "ListTagsRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 256L, pattern = ".*")), 
        shape = "ListTagsResponse", type = "structure")
    return(populate(args, shape))
}

restore_backup_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}")), 
        shape = "RestoreBackupRequest", type = "structure")
    return(populate(args, shape))
}

restore_backup_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Backup = structure(list(BackupId = structure(logical(0), 
        shape = "BackupId", type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        BackupState = structure(logical(0), shape = "BackupState", 
            type = "string"), ClusterId = structure(logical(0), 
            shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        CreateTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), CopyTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), SourceRegion = structure(logical(0), 
            shape = "Region", type = "string", pattern = "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d"), 
        SourceBackup = structure(logical(0), shape = "BackupId", 
            type = "string", pattern = "backup-[2-7a-zA-Z]{11,16}"), 
        SourceCluster = structure(logical(0), shape = "ClusterId", 
            type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        DeleteTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "Backup", type = "structure")), 
        shape = "RestoreBackupResponse", type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        TagList = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 1L)), shape = "TagResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ClusterId", type = "string", pattern = "cluster-[2-7a-zA-Z]{11,16}"), 
        TagKeyList = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list", max = 50L, min = 1L)), 
        shape = "UntagResourceRequest", type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}
