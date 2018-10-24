activate_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActivationKey = structure(logical(0), 
        shape = "ActivationKey", type = "string", max = 50L, 
        min = 1L), GatewayName = structure(logical(0), shape = "GatewayName", 
        type = "string", max = 255L, min = 2L, pattern = "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$"), 
        GatewayTimezone = structure(logical(0), shape = "GatewayTimezone", 
            type = "string", max = 10L, min = 3L), GatewayRegion = structure(logical(0), 
            shape = "RegionId", type = "string", max = 25L, min = 1L), 
        GatewayType = structure(logical(0), shape = "GatewayType", 
            type = "string", max = 20L, min = 2L), TapeDriveType = structure(logical(0), 
            shape = "TapeDriveType", type = "string", max = 50L, 
            min = 2L), MediumChangerType = structure(logical(0), 
            shape = "MediumChangerType", type = "string", max = 50L, 
            min = 2L)), shape = "ActivateGatewayInput", type = "structure")
    return(populate(args, shape))
}

activate_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ActivateGatewayOutput", type = "structure")
    return(populate(args, shape))
}

add_cache_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskIds = structure(list(structure(logical(0), shape = "DiskId", 
            type = "string", max = 300L, min = 1L)), shape = "DiskIds", 
            type = "list")), shape = "AddCacheInput", type = "structure")
    return(populate(args, shape))
}

add_cache_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "AddCacheOutput", type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 500L, min = 50L), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list")), 
        shape = "AddTagsToResourceInput", type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 500L, min = 50L)), 
        shape = "AddTagsToResourceOutput", type = "structure")
    return(populate(args, shape))
}

add_upload_buffer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskIds = structure(list(structure(logical(0), shape = "DiskId", 
            type = "string", max = 300L, min = 1L)), shape = "DiskIds", 
            type = "list")), shape = "AddUploadBufferInput", 
        type = "structure")
    return(populate(args, shape))
}

add_upload_buffer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "AddUploadBufferOutput", type = "structure")
    return(populate(args, shape))
}

add_working_storage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskIds = structure(list(structure(logical(0), shape = "DiskId", 
            type = "string", max = 300L, min = 1L)), shape = "DiskIds", 
            type = "list")), shape = "AddWorkingStorageInput", 
        type = "structure")
    return(populate(args, shape))
}

add_working_storage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "AddWorkingStorageOutput", type = "structure")
    return(populate(args, shape))
}

cancel_archival_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeARN = structure(logical(0), shape = "TapeARN", type = "string", 
            max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "CancelArchivalInput", type = "structure")
    return(populate(args, shape))
}

cancel_archival_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "CancelArchivalOutput", type = "structure")
    return(populate(args, shape))
}

cancel_retrieval_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeARN = structure(logical(0), shape = "TapeARN", type = "string", 
            max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "CancelRetrievalInput", type = "structure")
    return(populate(args, shape))
}

cancel_retrieval_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "CancelRetrievalOutput", type = "structure")
    return(populate(args, shape))
}

create_cachedi_scsi_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        VolumeSizeInBytes = structure(logical(0), shape = "long", 
            type = "long"), SnapshotId = structure(logical(0), 
            shape = "SnapshotId", type = "string", pattern = "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z"), 
        TargetName = structure(logical(0), shape = "TargetName", 
            type = "string", max = 200L, min = 1L, pattern = "^[-\\.;a-z0-9]+$"), 
        SourceVolumeARN = structure(logical(0), shape = "VolumeARN", 
            type = "string", max = 500L, min = 50L), NetworkInterfaceId = structure(logical(0), 
            shape = "NetworkInterfaceId", type = "string", pattern = "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            type = "string", max = 100L, min = 5L), KMSEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateCachediSCSIVolumeInput", type = "structure")
    return(populate(args, shape))
}

create_cachedi_scsi_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        TargetARN = structure(logical(0), shape = "TargetARN", 
            type = "string", max = 800L, min = 50L)), shape = "CreateCachediSCSIVolumeOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_nfs_file_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "ClientToken", type = "string", max = 100L, min = 5L), 
        NFSFileShareDefaults = structure(list(FileMode = structure(logical(0), 
            shape = "PermissionMode", type = "string", max = 4L, 
            min = 1L, pattern = "^[0-7]{4}$"), DirectoryMode = structure(logical(0), 
            shape = "PermissionMode", type = "string", max = 4L, 
            min = 1L, pattern = "^[0-7]{4}$"), GroupId = structure(logical(0), 
            shape = "PermissionId", type = "long", max = 4294967294, 
            min = 0L), OwnerId = structure(logical(0), shape = "PermissionId", 
            type = "long", max = 4294967294, min = 0L)), shape = "NFSFileShareDefaults", 
            type = "structure"), GatewayARN = structure(logical(0), 
            shape = "GatewayARN", type = "string", max = 500L, 
            min = 50L), KMSEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L), 
        Role = structure(logical(0), shape = "Role", type = "string", 
            max = 2048L, min = 20L), LocationARN = structure(logical(0), 
            shape = "LocationARN", type = "string", max = 310L, 
            min = 16L), DefaultStorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string", max = 20L, 
            min = 5L), ObjectACL = structure(logical(0), shape = "ObjectACL", 
            type = "string"), ClientList = structure(list(structure(logical(0), 
            shape = "IPV4AddressCIDR", type = "string", pattern = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([0-9]|[1-2][0-9]|3[0-2]))?$")), 
            shape = "FileShareClientList", type = "list", max = 100L, 
            min = 1L), Squash = structure(logical(0), shape = "Squash", 
            type = "string", max = 15L, min = 5L), ReadOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), GuessMIMETypeEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequesterPays = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "CreateNFSFileShareInput", 
        type = "structure")
    return(populate(args, shape))
}

create_nfs_file_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "CreateNFSFileShareOutput", type = "structure")
    return(populate(args, shape))
}

create_smb_file_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "ClientToken", type = "string", max = 100L, min = 5L), 
        GatewayARN = structure(logical(0), shape = "GatewayARN", 
            type = "string", max = 500L, min = 50L), KMSEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L), 
        Role = structure(logical(0), shape = "Role", type = "string", 
            max = 2048L, min = 20L), LocationARN = structure(logical(0), 
            shape = "LocationARN", type = "string", max = 310L, 
            min = 16L), DefaultStorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string", max = 20L, 
            min = 5L), ObjectACL = structure(logical(0), shape = "ObjectACL", 
            type = "string"), ReadOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), GuessMIMETypeEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequesterPays = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ValidUserList = structure(list(structure(logical(0), 
            shape = "FileShareUser", type = "string", max = 64L, 
            min = 1L)), shape = "FileShareUserList", type = "list", 
            max = 100L, min = 0L), InvalidUserList = structure(list(structure(logical(0), 
            shape = "FileShareUser", type = "string", max = 64L, 
            min = 1L)), shape = "FileShareUserList", type = "list", 
            max = 100L, min = 0L), Authentication = structure(logical(0), 
            shape = "Authentication", type = "string", max = 15L, 
            min = 5L)), shape = "CreateSMBFileShareInput", type = "structure")
    return(populate(args, shape))
}

create_smb_file_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "CreateSMBFileShareOutput", type = "structure")
    return(populate(args, shape))
}

create_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        SnapshotDescription = structure(logical(0), shape = "SnapshotDescription", 
            type = "string", max = 255L, min = 1L)), shape = "CreateSnapshotInput", 
        type = "structure")
    return(populate(args, shape))
}

create_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", pattern = "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z")), 
        shape = "CreateSnapshotOutput", type = "structure")
    return(populate(args, shape))
}

create_snapshot_from_volume_recovery_point_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        SnapshotDescription = structure(logical(0), shape = "SnapshotDescription", 
            type = "string", max = 255L, min = 1L)), shape = "CreateSnapshotFromVolumeRecoveryPointInput", 
        type = "structure")
    return(populate(args, shape))
}

create_snapshot_from_volume_recovery_point_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "SnapshotId", type = "string", pattern = "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z"), 
        VolumeARN = structure(logical(0), shape = "VolumeARN", 
            type = "string", max = 500L, min = 50L), VolumeRecoveryPointTime = structure(logical(0), 
            shape = "string", type = "string")), shape = "CreateSnapshotFromVolumeRecoveryPointOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_storedi_scsi_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskId = structure(logical(0), shape = "DiskId", type = "string", 
            max = 300L, min = 1L), SnapshotId = structure(logical(0), 
            shape = "SnapshotId", type = "string", pattern = "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z"), 
        PreserveExistingData = structure(logical(0), shape = "boolean", 
            type = "boolean"), TargetName = structure(logical(0), 
            shape = "TargetName", type = "string", max = 200L, 
            min = 1L, pattern = "^[-\\.;a-z0-9]+$"), NetworkInterfaceId = structure(logical(0), 
            shape = "NetworkInterfaceId", type = "string", pattern = "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"), 
        KMSEncrypted = structure(logical(0), shape = "Boolean", 
            type = "boolean"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateStorediSCSIVolumeInput", type = "structure")
    return(populate(args, shape))
}

create_storedi_scsi_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        VolumeSizeInBytes = structure(logical(0), shape = "long", 
            type = "long"), TargetARN = structure(logical(0), 
            shape = "TargetARN", type = "string", max = 800L, 
            min = 50L)), shape = "CreateStorediSCSIVolumeOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_tape_with_barcode_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeSizeInBytes = structure(logical(0), shape = "TapeSize", 
            type = "long"), TapeBarcode = structure(logical(0), 
            shape = "TapeBarcode", type = "string", max = 16L, 
            min = 7L, pattern = "^[A-Z0-9]*$"), KMSEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateTapeWithBarcodeInput", type = "structure")
    return(populate(args, shape))
}

create_tape_with_barcode_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "CreateTapeWithBarcodeOutput", type = "structure")
    return(populate(args, shape))
}

create_tapes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeSizeInBytes = structure(logical(0), shape = "TapeSize", 
            type = "long"), ClientToken = structure(logical(0), 
            shape = "ClientToken", type = "string", max = 100L, 
            min = 5L), NumTapesToCreate = structure(logical(0), 
            shape = "NumTapesToCreate", type = "integer", max = 10L, 
            min = 1L), TapeBarcodePrefix = structure(logical(0), 
            shape = "TapeBarcodePrefix", type = "string", max = 4L, 
            min = 1L, pattern = "^[A-Z]*$"), KMSEncrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateTapesInput", type = "structure")
    return(populate(args, shape))
}

create_tapes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARNs = structure(list(structure(logical(0), 
        shape = "TapeARN", type = "string", max = 500L, min = 50L, 
        pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "TapeARNs", type = "list")), shape = "CreateTapesOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_bandwidth_rate_limit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        BandwidthType = structure(logical(0), shape = "BandwidthType", 
            type = "string", max = 25L, min = 3L)), shape = "DeleteBandwidthRateLimitInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_bandwidth_rate_limit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteBandwidthRateLimitOutput", type = "structure")
    return(populate(args, shape))
}

delete_chap_credentials_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetARN = structure(logical(0), 
        shape = "TargetARN", type = "string", max = 800L, min = 50L), 
        InitiatorName = structure(logical(0), shape = "IqnName", 
            type = "string", max = 255L, min = 1L, pattern = "[0-9a-z:.-]+")), 
        shape = "DeleteChapCredentialsInput", type = "structure")
    return(populate(args, shape))
}

delete_chap_credentials_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetARN = structure(logical(0), 
        shape = "TargetARN", type = "string", max = 800L, min = 50L), 
        InitiatorName = structure(logical(0), shape = "IqnName", 
            type = "string", max = 255L, min = 1L, pattern = "[0-9a-z:.-]+")), 
        shape = "DeleteChapCredentialsOutput", type = "structure")
    return(populate(args, shape))
}

delete_file_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), ForceDelete = structure(logical(0), shape = "boolean", 
        type = "boolean")), shape = "DeleteFileShareInput", type = "structure")
    return(populate(args, shape))
}

delete_file_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "DeleteFileShareOutput", type = "structure")
    return(populate(args, shape))
}

delete_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteGatewayInput", type = "structure")
    return(populate(args, shape))
}

delete_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteGatewayOutput", type = "structure")
    return(populate(args, shape))
}

delete_snapshot_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteSnapshotScheduleInput", type = "structure")
    return(populate(args, shape))
}

delete_snapshot_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteSnapshotScheduleOutput", type = "structure")
    return(populate(args, shape))
}

delete_tape_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeARN = structure(logical(0), shape = "TapeARN", type = "string", 
            max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "DeleteTapeInput", type = "structure")
    return(populate(args, shape))
}

delete_tape_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "DeleteTapeOutput", type = "structure")
    return(populate(args, shape))
}

delete_tape_archive_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "DeleteTapeArchiveInput", type = "structure")
    return(populate(args, shape))
}

delete_tape_archive_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "DeleteTapeArchiveOutput", type = "structure")
    return(populate(args, shape))
}

delete_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteVolumeInput", type = "structure")
    return(populate(args, shape))
}

delete_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "DeleteVolumeOutput", type = "structure")
    return(populate(args, shape))
}

describe_bandwidth_rate_limit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeBandwidthRateLimitInput", type = "structure")
    return(populate(args, shape))
}

describe_bandwidth_rate_limit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        AverageUploadRateLimitInBitsPerSec = structure(logical(0), 
            shape = "BandwidthUploadRateLimit", type = "long", 
            min = 51200L), AverageDownloadRateLimitInBitsPerSec = structure(logical(0), 
            shape = "BandwidthDownloadRateLimit", type = "long", 
            min = 102400L)), shape = "DescribeBandwidthRateLimitOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_cache_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeCacheInput", type = "structure")
    return(populate(args, shape))
}

describe_cache_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskIds = structure(list(structure(logical(0), shape = "DiskId", 
            type = "string", max = 300L, min = 1L)), shape = "DiskIds", 
            type = "list"), CacheAllocatedInBytes = structure(logical(0), 
            shape = "long", type = "long"), CacheUsedPercentage = structure(logical(0), 
            shape = "double", type = "double"), CacheDirtyPercentage = structure(logical(0), 
            shape = "double", type = "double"), CacheHitPercentage = structure(logical(0), 
            shape = "double", type = "double"), CacheMissPercentage = structure(logical(0), 
            shape = "double", type = "double")), shape = "DescribeCacheOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_cachedi_scsi_volumes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARNs = structure(list(structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "VolumeARNs", type = "list")), shape = "DescribeCachediSCSIVolumesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_cachedi_scsi_volumes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CachediSCSIVolumes = structure(list(structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        VolumeId = structure(logical(0), shape = "VolumeId", 
            type = "string", max = 30L, min = 12L), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string", max = 100L, 
            min = 3L), VolumeStatus = structure(logical(0), shape = "VolumeStatus", 
            type = "string", max = 50L, min = 3L), VolumeSizeInBytes = structure(logical(0), 
            shape = "long", type = "long"), VolumeProgress = structure(logical(0), 
            shape = "DoubleObject", type = "double"), SourceSnapshotId = structure(logical(0), 
            shape = "SnapshotId", type = "string", pattern = "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z"), 
        VolumeiSCSIAttributes = structure(list(TargetARN = structure(logical(0), 
            shape = "TargetARN", type = "string", max = 800L, 
            min = 50L), NetworkInterfaceId = structure(logical(0), 
            shape = "NetworkInterfaceId", type = "string", pattern = "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"), 
            NetworkInterfacePort = structure(logical(0), shape = "integer", 
                type = "integer"), LunNumber = structure(logical(0), 
                shape = "PositiveIntObject", type = "integer", 
                min = 1L), ChapEnabled = structure(logical(0), 
                shape = "boolean", type = "boolean")), shape = "VolumeiSCSIAttributes", 
            type = "structure"), CreatedDate = structure(logical(0), 
            shape = "CreatedDate", type = "timestamp"), VolumeUsedInBytes = structure(logical(0), 
            shape = "VolumeUsedInBytes", type = "long"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "CachediSCSIVolume", type = "structure")), shape = "CachediSCSIVolumes", 
        type = "list")), shape = "DescribeCachediSCSIVolumesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_chap_credentials_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetARN = structure(logical(0), 
        shape = "TargetARN", type = "string", max = 800L, min = 50L)), 
        shape = "DescribeChapCredentialsInput", type = "structure")
    return(populate(args, shape))
}

describe_chap_credentials_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChapCredentials = structure(list(structure(list(TargetARN = structure(logical(0), 
        shape = "TargetARN", type = "string", max = 800L, min = 50L), 
        SecretToAuthenticateInitiator = structure(logical(0), 
            shape = "ChapSecret", type = "string", max = 100L, 
            min = 1L), InitiatorName = structure(logical(0), 
            shape = "IqnName", type = "string", max = 255L, min = 1L, 
            pattern = "[0-9a-z:.-]+"), SecretToAuthenticateTarget = structure(logical(0), 
            shape = "ChapSecret", type = "string", max = 100L, 
            min = 1L)), shape = "ChapInfo", type = "structure")), 
        shape = "ChapCredentials", type = "list")), shape = "DescribeChapCredentialsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_gateway_information_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeGatewayInformationInput", type = "structure")
    return(populate(args, shape))
}

describe_gateway_information_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        GatewayId = structure(logical(0), shape = "GatewayId", 
            type = "string", max = 30L, min = 12L), GatewayName = structure(logical(0), 
            shape = "string", type = "string"), GatewayTimezone = structure(logical(0), 
            shape = "GatewayTimezone", type = "string", max = 10L, 
            min = 3L), GatewayState = structure(logical(0), shape = "GatewayState", 
            type = "string", max = 25L, min = 2L), GatewayNetworkInterfaces = structure(list(structure(list(Ipv4Address = structure(logical(0), 
            shape = "string", type = "string"), MacAddress = structure(logical(0), 
            shape = "string", type = "string"), Ipv6Address = structure(logical(0), 
            shape = "string", type = "string")), shape = "NetworkInterface", 
            type = "structure")), shape = "GatewayNetworkInterfaces", 
            type = "list"), GatewayType = structure(logical(0), 
            shape = "GatewayType", type = "string", max = 20L, 
            min = 2L), NextUpdateAvailabilityDate = structure(logical(0), 
            shape = "NextUpdateAvailabilityDate", type = "string", 
            max = 25L, min = 1L), LastSoftwareUpdate = structure(logical(0), 
            shape = "LastSoftwareUpdate", type = "string", max = 25L, 
            min = 1L)), shape = "DescribeGatewayInformationOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_maintenance_start_time_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeMaintenanceStartTimeInput", type = "structure")
    return(populate(args, shape))
}

describe_maintenance_start_time_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        HourOfDay = structure(logical(0), shape = "HourOfDay", 
            type = "integer", max = 23L, min = 0L), MinuteOfHour = structure(logical(0), 
            shape = "MinuteOfHour", type = "integer", max = 59L, 
            min = 0L), DayOfWeek = structure(logical(0), shape = "DayOfWeek", 
            type = "integer", max = 6L, min = 0L), Timezone = structure(logical(0), 
            shape = "GatewayTimezone", type = "string", max = 10L, 
            min = 3L)), shape = "DescribeMaintenanceStartTimeOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_nfs_file_shares_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARNList = structure(list(structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "FileShareARNList", type = "list", 
        max = 10L, min = 1L)), shape = "DescribeNFSFileSharesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_nfs_file_shares_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NFSFileShareInfoList = structure(list(structure(list(NFSFileShareDefaults = structure(list(FileMode = structure(logical(0), 
        shape = "PermissionMode", type = "string", max = 4L, 
        min = 1L, pattern = "^[0-7]{4}$"), DirectoryMode = structure(logical(0), 
        shape = "PermissionMode", type = "string", max = 4L, 
        min = 1L, pattern = "^[0-7]{4}$"), GroupId = structure(logical(0), 
        shape = "PermissionId", type = "long", max = 4294967294, 
        min = 0L), OwnerId = structure(logical(0), shape = "PermissionId", 
        type = "long", max = 4294967294, min = 0L)), shape = "NFSFileShareDefaults", 
        type = "structure"), FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), FileShareId = structure(logical(0), shape = "FileShareId", 
        type = "string", max = 30L, min = 12L), FileShareStatus = structure(logical(0), 
        shape = "FileShareStatus", type = "string", max = 50L, 
        min = 3L), GatewayARN = structure(logical(0), shape = "GatewayARN", 
        type = "string", max = 500L, min = 50L), KMSEncrypted = structure(logical(0), 
        shape = "boolean", type = "boolean"), KMSKey = structure(logical(0), 
        shape = "KMSKey", type = "string", max = 2048L, min = 20L), 
        Path = structure(logical(0), shape = "Path", type = "string"), 
        Role = structure(logical(0), shape = "Role", type = "string", 
            max = 2048L, min = 20L), LocationARN = structure(logical(0), 
            shape = "LocationARN", type = "string", max = 310L, 
            min = 16L), DefaultStorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string", max = 20L, 
            min = 5L), ObjectACL = structure(logical(0), shape = "ObjectACL", 
            type = "string"), ClientList = structure(list(structure(logical(0), 
            shape = "IPV4AddressCIDR", type = "string", pattern = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([0-9]|[1-2][0-9]|3[0-2]))?$")), 
            shape = "FileShareClientList", type = "list", max = 100L, 
            min = 1L), Squash = structure(logical(0), shape = "Squash", 
            type = "string", max = 15L, min = 5L), ReadOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), GuessMIMETypeEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequesterPays = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "NFSFileShareInfo", 
        type = "structure")), shape = "NFSFileShareInfoList", 
        type = "list")), shape = "DescribeNFSFileSharesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_smb_file_shares_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARNList = structure(list(structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "FileShareARNList", type = "list", 
        max = 10L, min = 1L)), shape = "DescribeSMBFileSharesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_smb_file_shares_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SMBFileShareInfoList = structure(list(structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), FileShareId = structure(logical(0), shape = "FileShareId", 
        type = "string", max = 30L, min = 12L), FileShareStatus = structure(logical(0), 
        shape = "FileShareStatus", type = "string", max = 50L, 
        min = 3L), GatewayARN = structure(logical(0), shape = "GatewayARN", 
        type = "string", max = 500L, min = 50L), KMSEncrypted = structure(logical(0), 
        shape = "boolean", type = "boolean"), KMSKey = structure(logical(0), 
        shape = "KMSKey", type = "string", max = 2048L, min = 20L), 
        Path = structure(logical(0), shape = "Path", type = "string"), 
        Role = structure(logical(0), shape = "Role", type = "string", 
            max = 2048L, min = 20L), LocationARN = structure(logical(0), 
            shape = "LocationARN", type = "string", max = 310L, 
            min = 16L), DefaultStorageClass = structure(logical(0), 
            shape = "StorageClass", type = "string", max = 20L, 
            min = 5L), ObjectACL = structure(logical(0), shape = "ObjectACL", 
            type = "string"), ReadOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), GuessMIMETypeEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequesterPays = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ValidUserList = structure(list(structure(logical(0), 
            shape = "FileShareUser", type = "string", max = 64L, 
            min = 1L)), shape = "FileShareUserList", type = "list", 
            max = 100L, min = 0L), InvalidUserList = structure(list(structure(logical(0), 
            shape = "FileShareUser", type = "string", max = 64L, 
            min = 1L)), shape = "FileShareUserList", type = "list", 
            max = 100L, min = 0L), Authentication = structure(logical(0), 
            shape = "Authentication", type = "string", max = 15L, 
            min = 5L)), shape = "SMBFileShareInfo", type = "structure")), 
        shape = "SMBFileShareInfoList", type = "list")), shape = "DescribeSMBFileSharesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_smb_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeSMBSettingsInput", type = "structure")
    return(populate(args, shape))
}

describe_smb_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", pattern = "^([a-z0-9]+(-[a-z0-9]+)*\\.)+[a-z]{2,}$"), 
        SMBGuestPasswordSet = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "DescribeSMBSettingsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshot_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeSnapshotScheduleInput", type = "structure")
    return(populate(args, shape))
}

describe_snapshot_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        StartAt = structure(logical(0), shape = "HourOfDay", 
            type = "integer", max = 23L, min = 0L), RecurrenceInHours = structure(logical(0), 
            shape = "RecurrenceInHours", type = "integer", max = 24L, 
            min = 1L), Description = structure(logical(0), shape = "Description", 
            type = "string", max = 255L, min = 1L), Timezone = structure(logical(0), 
            shape = "GatewayTimezone", type = "string", max = 10L, 
            min = 3L)), shape = "DescribeSnapshotScheduleOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_storedi_scsi_volumes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARNs = structure(list(structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "VolumeARNs", type = "list")), shape = "DescribeStorediSCSIVolumesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_storedi_scsi_volumes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StorediSCSIVolumes = structure(list(structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        VolumeId = structure(logical(0), shape = "VolumeId", 
            type = "string", max = 30L, min = 12L), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string", max = 100L, 
            min = 3L), VolumeStatus = structure(logical(0), shape = "VolumeStatus", 
            type = "string", max = 50L, min = 3L), VolumeSizeInBytes = structure(logical(0), 
            shape = "long", type = "long"), VolumeProgress = structure(logical(0), 
            shape = "DoubleObject", type = "double"), VolumeDiskId = structure(logical(0), 
            shape = "DiskId", type = "string", max = 300L, min = 1L), 
        SourceSnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", pattern = "\\Asnap-([0-9A-Fa-f]{8}|[0-9A-Fa-f]{17})\\z"), 
        PreservedExistingData = structure(logical(0), shape = "boolean", 
            type = "boolean"), VolumeiSCSIAttributes = structure(list(TargetARN = structure(logical(0), 
            shape = "TargetARN", type = "string", max = 800L, 
            min = 50L), NetworkInterfaceId = structure(logical(0), 
            shape = "NetworkInterfaceId", type = "string", pattern = "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"), 
            NetworkInterfacePort = structure(logical(0), shape = "integer", 
                type = "integer"), LunNumber = structure(logical(0), 
                shape = "PositiveIntObject", type = "integer", 
                min = 1L), ChapEnabled = structure(logical(0), 
                shape = "boolean", type = "boolean")), shape = "VolumeiSCSIAttributes", 
            type = "structure"), CreatedDate = structure(logical(0), 
            shape = "CreatedDate", type = "timestamp"), VolumeUsedInBytes = structure(logical(0), 
            shape = "VolumeUsedInBytes", type = "long"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "StorediSCSIVolume", type = "structure")), shape = "StorediSCSIVolumes", 
        type = "list")), shape = "DescribeStorediSCSIVolumesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tape_archives_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARNs = structure(list(structure(logical(0), 
        shape = "TapeARN", type = "string", max = 500L, min = 50L, 
        pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "TapeARNs", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string", max = 1000L, min = 1L), 
        Limit = structure(logical(0), shape = "PositiveIntObject", 
            type = "integer", min = 1L)), shape = "DescribeTapeArchivesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tape_archives_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeArchives = structure(list(structure(list(TapeARN = structure(logical(0), 
        shape = "TapeARN", type = "string", max = 500L, min = 50L, 
        pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$"), 
        TapeBarcode = structure(logical(0), shape = "TapeBarcode", 
            type = "string", max = 16L, min = 7L, pattern = "^[A-Z0-9]*$"), 
        TapeCreatedDate = structure(logical(0), shape = "Time", 
            type = "timestamp"), TapeSizeInBytes = structure(logical(0), 
            shape = "TapeSize", type = "long"), CompletionTime = structure(logical(0), 
            shape = "Time", type = "timestamp"), RetrievedTo = structure(logical(0), 
            shape = "GatewayARN", type = "string", max = 500L, 
            min = 50L), TapeStatus = structure(logical(0), shape = "TapeArchiveStatus", 
            type = "string"), TapeUsedInBytes = structure(logical(0), 
            shape = "TapeUsage", type = "long"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "TapeArchive", type = "structure")), shape = "TapeArchives", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string", max = 1000L, min = 1L)), shape = "DescribeTapeArchivesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tape_recovery_points_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L), Limit = structure(logical(0), 
            shape = "PositiveIntObject", type = "integer", min = 1L)), 
        shape = "DescribeTapeRecoveryPointsInput", type = "structure")
    return(populate(args, shape))
}

describe_tape_recovery_points_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeRecoveryPointInfos = structure(list(structure(list(TapeARN = structure(logical(0), 
            shape = "TapeARN", type = "string", max = 500L, min = 50L, 
            pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$"), 
            TapeRecoveryPointTime = structure(logical(0), shape = "Time", 
                type = "timestamp"), TapeSizeInBytes = structure(logical(0), 
                shape = "TapeSize", type = "long"), TapeStatus = structure(logical(0), 
                shape = "TapeRecoveryPointStatus", type = "string")), 
            shape = "TapeRecoveryPointInfo", type = "structure")), 
            shape = "TapeRecoveryPointInfos", type = "list"), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L)), shape = "DescribeTapeRecoveryPointsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tapes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        TapeARNs = structure(list(structure(logical(0), shape = "TapeARN", 
            type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
            shape = "TapeARNs", type = "list"), Marker = structure(logical(0), 
            shape = "Marker", type = "string", max = 1000L, min = 1L), 
        Limit = structure(logical(0), shape = "PositiveIntObject", 
            type = "integer", min = 1L)), shape = "DescribeTapesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tapes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tapes = structure(list(structure(list(TapeARN = structure(logical(0), 
        shape = "TapeARN", type = "string", max = 500L, min = 50L, 
        pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$"), 
        TapeBarcode = structure(logical(0), shape = "TapeBarcode", 
            type = "string", max = 16L, min = 7L, pattern = "^[A-Z0-9]*$"), 
        TapeCreatedDate = structure(logical(0), shape = "Time", 
            type = "timestamp"), TapeSizeInBytes = structure(logical(0), 
            shape = "TapeSize", type = "long"), TapeStatus = structure(logical(0), 
            shape = "TapeStatus", type = "string"), VTLDevice = structure(logical(0), 
            shape = "VTLDeviceARN", type = "string", max = 500L, 
            min = 50L), Progress = structure(logical(0), shape = "DoubleObject", 
            type = "double"), TapeUsedInBytes = structure(logical(0), 
            shape = "TapeUsage", type = "long"), KMSKey = structure(logical(0), 
            shape = "KMSKey", type = "string", max = 2048L, min = 20L)), 
        shape = "Tape", type = "structure")), shape = "Tapes", 
        type = "list"), Marker = structure(logical(0), shape = "Marker", 
        type = "string", max = 1000L, min = 1L)), shape = "DescribeTapesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_upload_buffer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeUploadBufferInput", type = "structure")
    return(populate(args, shape))
}

describe_upload_buffer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskIds = structure(list(structure(logical(0), shape = "DiskId", 
            type = "string", max = 300L, min = 1L)), shape = "DiskIds", 
            type = "list"), UploadBufferUsedInBytes = structure(logical(0), 
            shape = "long", type = "long"), UploadBufferAllocatedInBytes = structure(logical(0), 
            shape = "long", type = "long")), shape = "DescribeUploadBufferOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_vtl_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        VTLDeviceARNs = structure(list(structure(logical(0), 
            shape = "VTLDeviceARN", type = "string", max = 500L, 
            min = 50L)), shape = "VTLDeviceARNs", type = "list"), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L), Limit = structure(logical(0), 
            shape = "PositiveIntObject", type = "integer", min = 1L)), 
        shape = "DescribeVTLDevicesInput", type = "structure")
    return(populate(args, shape))
}

describe_vtl_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        VTLDevices = structure(list(structure(list(VTLDeviceARN = structure(logical(0), 
            shape = "VTLDeviceARN", type = "string", max = 500L, 
            min = 50L), VTLDeviceType = structure(logical(0), 
            shape = "VTLDeviceType", type = "string"), VTLDeviceVendor = structure(logical(0), 
            shape = "VTLDeviceVendor", type = "string"), VTLDeviceProductIdentifier = structure(logical(0), 
            shape = "VTLDeviceProductIdentifier", type = "string"), 
            DeviceiSCSIAttributes = structure(list(TargetARN = structure(logical(0), 
                shape = "TargetARN", type = "string", max = 800L, 
                min = 50L), NetworkInterfaceId = structure(logical(0), 
                shape = "NetworkInterfaceId", type = "string", 
                pattern = "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"), 
                NetworkInterfacePort = structure(logical(0), 
                  shape = "integer", type = "integer"), ChapEnabled = structure(logical(0), 
                  shape = "boolean", type = "boolean")), shape = "DeviceiSCSIAttributes", 
                type = "structure")), shape = "VTLDevice", type = "structure")), 
            shape = "VTLDevices", type = "list"), Marker = structure(logical(0), 
            shape = "Marker", type = "string", max = 1000L, min = 1L)), 
        shape = "DescribeVTLDevicesOutput", type = "structure")
    return(populate(args, shape))
}

describe_working_storage_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DescribeWorkingStorageInput", type = "structure")
    return(populate(args, shape))
}

describe_working_storage_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DiskIds = structure(list(structure(logical(0), shape = "DiskId", 
            type = "string", max = 300L, min = 1L)), shape = "DiskIds", 
            type = "list"), WorkingStorageUsedInBytes = structure(logical(0), 
            shape = "long", type = "long"), WorkingStorageAllocatedInBytes = structure(logical(0), 
            shape = "long", type = "long")), shape = "DescribeWorkingStorageOutput", 
        type = "structure")
    return(populate(args, shape))
}

disable_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DisableGatewayInput", type = "structure")
    return(populate(args, shape))
}

disable_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "DisableGatewayOutput", type = "structure")
    return(populate(args, shape))
}

join_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        DomainName = structure(logical(0), shape = "DomainName", 
            type = "string", pattern = "^([a-z0-9]+(-[a-z0-9]+)*\\.)+[a-z]{2,}$"), 
        UserName = structure(logical(0), shape = "DomainUserName", 
            type = "string", pattern = "^\\w[\\w\\.\\- ]*$"), 
        Password = structure(logical(0), shape = "DomainUserPassword", 
            type = "string", pattern = "^[ -~]+$", sensitive = TRUE)), 
        shape = "JoinDomainInput", type = "structure")
    return(populate(args, shape))
}

join_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "JoinDomainOutput", type = "structure")
    return(populate(args, shape))
}

list_file_shares_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        Limit = structure(logical(0), shape = "PositiveIntObject", 
            type = "integer", min = 1L), Marker = structure(logical(0), 
            shape = "Marker", type = "string", max = 1000L, min = 1L)), 
        shape = "ListFileSharesInput", type = "structure")
    return(populate(args, shape))
}

list_file_shares_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string", max = 1000L, min = 1L), NextMarker = structure(logical(0), 
        shape = "Marker", type = "string", max = 1000L, min = 1L), 
        FileShareInfoList = structure(list(structure(list(FileShareType = structure(logical(0), 
            shape = "FileShareType", type = "string"), FileShareARN = structure(logical(0), 
            shape = "FileShareARN", type = "string", max = 500L, 
            min = 50L), FileShareId = structure(logical(0), shape = "FileShareId", 
            type = "string", max = 30L, min = 12L), FileShareStatus = structure(logical(0), 
            shape = "FileShareStatus", type = "string", max = 50L, 
            min = 3L), GatewayARN = structure(logical(0), shape = "GatewayARN", 
            type = "string", max = 500L, min = 50L)), shape = "FileShareInfo", 
            type = "structure")), shape = "FileShareInfoList", 
            type = "list")), shape = "ListFileSharesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "Marker", 
        type = "string", max = 1000L, min = 1L), Limit = structure(logical(0), 
        shape = "PositiveIntObject", type = "integer", min = 1L)), 
        shape = "ListGatewaysInput", type = "structure")
    return(populate(args, shape))
}

list_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Gateways = structure(list(structure(list(GatewayId = structure(logical(0), 
        shape = "GatewayId", type = "string", max = 30L, min = 12L), 
        GatewayARN = structure(logical(0), shape = "GatewayARN", 
            type = "string", max = 500L, min = 50L), GatewayType = structure(logical(0), 
            shape = "GatewayType", type = "string", max = 20L, 
            min = 2L), GatewayOperationalState = structure(logical(0), 
            shape = "GatewayOperationalState", type = "string", 
            max = 25L, min = 2L), GatewayName = structure(logical(0), 
            shape = "string", type = "string")), shape = "GatewayInfo", 
        type = "structure")), shape = "Gateways", type = "list"), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L)), shape = "ListGatewaysOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_local_disks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ListLocalDisksInput", type = "structure")
    return(populate(args, shape))
}

list_local_disks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        Disks = structure(list(structure(list(DiskId = structure(logical(0), 
            shape = "DiskId", type = "string", max = 300L, min = 1L), 
            DiskPath = structure(logical(0), shape = "string", 
                type = "string"), DiskNode = structure(logical(0), 
                shape = "string", type = "string"), DiskStatus = structure(logical(0), 
                shape = "string", type = "string"), DiskSizeInBytes = structure(logical(0), 
                shape = "long", type = "long"), DiskAllocationType = structure(logical(0), 
                shape = "DiskAllocationType", type = "string", 
                max = 100L, min = 3L), DiskAllocationResource = structure(logical(0), 
                shape = "string", type = "string")), shape = "Disk", 
            type = "structure")), shape = "Disks", type = "list")), 
        shape = "ListLocalDisksOutput", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 500L, min = 50L), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L), Limit = structure(logical(0), 
            shape = "PositiveIntObject", type = "integer", min = 1L)), 
        shape = "ListTagsForResourceInput", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 500L, min = 50L), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L)), shape = "Tag", 
            type = "structure")), shape = "Tags", type = "list")), 
        shape = "ListTagsForResourceOutput", type = "structure")
    return(populate(args, shape))
}

list_tapes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARNs = structure(list(structure(logical(0), 
        shape = "TapeARN", type = "string", max = 500L, min = 50L, 
        pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "TapeARNs", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string", max = 1000L, min = 1L), 
        Limit = structure(logical(0), shape = "PositiveIntObject", 
            type = "integer", min = 1L)), shape = "ListTapesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_tapes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeInfos = structure(list(structure(list(TapeARN = structure(logical(0), 
        shape = "TapeARN", type = "string", max = 500L, min = 50L, 
        pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$"), 
        TapeBarcode = structure(logical(0), shape = "TapeBarcode", 
            type = "string", max = 16L, min = 7L, pattern = "^[A-Z0-9]*$"), 
        TapeSizeInBytes = structure(logical(0), shape = "TapeSize", 
            type = "long"), TapeStatus = structure(logical(0), 
            shape = "TapeStatus", type = "string"), GatewayARN = structure(logical(0), 
            shape = "GatewayARN", type = "string", max = 500L, 
            min = 50L)), shape = "TapeInfo", type = "structure")), 
        shape = "TapeInfos", type = "list"), Marker = structure(logical(0), 
        shape = "Marker", type = "string", max = 1000L, min = 1L)), 
        shape = "ListTapesOutput", type = "structure")
    return(populate(args, shape))
}

list_volume_initiators_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "ListVolumeInitiatorsInput", type = "structure")
    return(populate(args, shape))
}

list_volume_initiators_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Initiators = structure(list(structure(logical(0), 
        shape = "Initiator", type = "string", max = 50L, min = 1L)), 
        shape = "Initiators", type = "list")), shape = "ListVolumeInitiatorsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_volume_recovery_points_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ListVolumeRecoveryPointsInput", type = "structure")
    return(populate(args, shape))
}

list_volume_recovery_points_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        VolumeRecoveryPointInfos = structure(list(structure(list(VolumeARN = structure(logical(0), 
            shape = "VolumeARN", type = "string", max = 500L, 
            min = 50L), VolumeSizeInBytes = structure(logical(0), 
            shape = "long", type = "long"), VolumeUsageInBytes = structure(logical(0), 
            shape = "long", type = "long"), VolumeRecoveryPointTime = structure(logical(0), 
            shape = "string", type = "string")), shape = "VolumeRecoveryPointInfo", 
            type = "structure")), shape = "VolumeRecoveryPointInfos", 
            type = "list")), shape = "ListVolumeRecoveryPointsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_volumes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L), Limit = structure(logical(0), 
            shape = "PositiveIntObject", type = "integer", min = 1L)), 
        shape = "ListVolumesInput", type = "structure")
    return(populate(args, shape))
}

list_volumes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        Marker = structure(logical(0), shape = "Marker", type = "string", 
            max = 1000L, min = 1L), VolumeInfos = structure(list(structure(list(VolumeARN = structure(logical(0), 
            shape = "VolumeARN", type = "string", max = 500L, 
            min = 50L), VolumeId = structure(logical(0), shape = "VolumeId", 
            type = "string", max = 30L, min = 12L), GatewayARN = structure(logical(0), 
            shape = "GatewayARN", type = "string", max = 500L, 
            min = 50L), GatewayId = structure(logical(0), shape = "GatewayId", 
            type = "string", max = 30L, min = 12L), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string", max = 100L, 
            min = 3L), VolumeSizeInBytes = structure(logical(0), 
            shape = "long", type = "long")), shape = "VolumeInfo", 
            type = "structure")), shape = "VolumeInfos", type = "list")), 
        shape = "ListVolumesOutput", type = "structure")
    return(populate(args, shape))
}

notify_when_uploaded_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "NotifyWhenUploadedInput", type = "structure")
    return(populate(args, shape))
}

notify_when_uploaded_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), NotificationId = structure(logical(0), shape = "NotificationId", 
        type = "string", max = 2048L, min = 1L)), shape = "NotifyWhenUploadedOutput", 
        type = "structure")
    return(populate(args, shape))
}

refresh_cache_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), FolderList = structure(list(structure(logical(0), 
        shape = "Folder", type = "string", max = 1024L, min = 1L)), 
        shape = "FolderList", type = "list", max = 50L, min = 1L), 
        Recursive = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "RefreshCacheInput", 
        type = "structure")
    return(populate(args, shape))
}

refresh_cache_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), NotificationId = structure(logical(0), shape = "NotificationId", 
        type = "string", max = 2048L, min = 1L)), shape = "RefreshCacheOutput", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 500L, min = 50L), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeys", type = "list")), shape = "RemoveTagsFromResourceInput", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 500L, min = 50L)), 
        shape = "RemoveTagsFromResourceOutput", type = "structure")
    return(populate(args, shape))
}

reset_cache_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ResetCacheInput", type = "structure")
    return(populate(args, shape))
}

reset_cache_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ResetCacheOutput", type = "structure")
    return(populate(args, shape))
}

retrieve_tape_archive_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$"), 
        GatewayARN = structure(logical(0), shape = "GatewayARN", 
            type = "string", max = 500L, min = 50L)), shape = "RetrieveTapeArchiveInput", 
        type = "structure")
    return(populate(args, shape))
}

retrieve_tape_archive_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "RetrieveTapeArchiveOutput", type = "structure")
    return(populate(args, shape))
}

retrieve_tape_recovery_point_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$"), 
        GatewayARN = structure(logical(0), shape = "GatewayARN", 
            type = "string", max = 500L, min = 50L)), shape = "RetrieveTapeRecoveryPointInput", 
        type = "structure")
    return(populate(args, shape))
}

retrieve_tape_recovery_point_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TapeARN = structure(logical(0), shape = "TapeARN", 
        type = "string", max = 500L, min = 50L, pattern = "^arn:(aws|aws-cn|aws-us-gov):storagegateway:[a-z\\-0-9]+:[0-9]+:tape\\/[0-9A-Z]{7,16}$")), 
        shape = "RetrieveTapeRecoveryPointOutput", type = "structure")
    return(populate(args, shape))
}

set_local_console_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        LocalConsolePassword = structure(logical(0), shape = "LocalConsolePassword", 
            type = "string", max = 512L, min = 6L, pattern = "^[ -~]+$", 
            sensitive = TRUE)), shape = "SetLocalConsolePasswordInput", 
        type = "structure")
    return(populate(args, shape))
}

set_local_console_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "SetLocalConsolePasswordOutput", type = "structure")
    return(populate(args, shape))
}

set_smb_guest_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        Password = structure(logical(0), shape = "SMBGuestPassword", 
            type = "string", max = 512L, min = 6L, pattern = "^[ -~]+$", 
            sensitive = TRUE)), shape = "SetSMBGuestPasswordInput", 
        type = "structure")
    return(populate(args, shape))
}

set_smb_guest_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "SetSMBGuestPasswordOutput", type = "structure")
    return(populate(args, shape))
}

shutdown_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ShutdownGatewayInput", type = "structure")
    return(populate(args, shape))
}

shutdown_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "ShutdownGatewayOutput", type = "structure")
    return(populate(args, shape))
}

start_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "StartGatewayInput", type = "structure")
    return(populate(args, shape))
}

start_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "StartGatewayOutput", type = "structure")
    return(populate(args, shape))
}

update_bandwidth_rate_limit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        AverageUploadRateLimitInBitsPerSec = structure(logical(0), 
            shape = "BandwidthUploadRateLimit", type = "long", 
            min = 51200L), AverageDownloadRateLimitInBitsPerSec = structure(logical(0), 
            shape = "BandwidthDownloadRateLimit", type = "long", 
            min = 102400L)), shape = "UpdateBandwidthRateLimitInput", 
        type = "structure")
    return(populate(args, shape))
}

update_bandwidth_rate_limit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "UpdateBandwidthRateLimitOutput", type = "structure")
    return(populate(args, shape))
}

update_chap_credentials_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetARN = structure(logical(0), 
        shape = "TargetARN", type = "string", max = 800L, min = 50L), 
        SecretToAuthenticateInitiator = structure(logical(0), 
            shape = "ChapSecret", type = "string", max = 100L, 
            min = 1L), InitiatorName = structure(logical(0), 
            shape = "IqnName", type = "string", max = 255L, min = 1L, 
            pattern = "[0-9a-z:.-]+"), SecretToAuthenticateTarget = structure(logical(0), 
            shape = "ChapSecret", type = "string", max = 100L, 
            min = 1L)), shape = "UpdateChapCredentialsInput", 
        type = "structure")
    return(populate(args, shape))
}

update_chap_credentials_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TargetARN = structure(logical(0), 
        shape = "TargetARN", type = "string", max = 800L, min = 50L), 
        InitiatorName = structure(logical(0), shape = "IqnName", 
            type = "string", max = 255L, min = 1L, pattern = "[0-9a-z:.-]+")), 
        shape = "UpdateChapCredentialsOutput", type = "structure")
    return(populate(args, shape))
}

update_gateway_information_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        GatewayName = structure(logical(0), shape = "GatewayName", 
            type = "string", max = 255L, min = 2L, pattern = "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$"), 
        GatewayTimezone = structure(logical(0), shape = "GatewayTimezone", 
            type = "string", max = 10L, min = 3L)), shape = "UpdateGatewayInformationInput", 
        type = "structure")
    return(populate(args, shape))
}

update_gateway_information_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        GatewayName = structure(logical(0), shape = "string", 
            type = "string")), shape = "UpdateGatewayInformationOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_gateway_software_now_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "UpdateGatewaySoftwareNowInput", type = "structure")
    return(populate(args, shape))
}

update_gateway_software_now_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "UpdateGatewaySoftwareNowOutput", type = "structure")
    return(populate(args, shape))
}

update_maintenance_start_time_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L), 
        HourOfDay = structure(logical(0), shape = "HourOfDay", 
            type = "integer", max = 23L, min = 0L), MinuteOfHour = structure(logical(0), 
            shape = "MinuteOfHour", type = "integer", max = 59L, 
            min = 0L), DayOfWeek = structure(logical(0), shape = "DayOfWeek", 
            type = "integer", max = 6L, min = 0L)), shape = "UpdateMaintenanceStartTimeInput", 
        type = "structure")
    return(populate(args, shape))
}

update_maintenance_start_time_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayARN = structure(logical(0), 
        shape = "GatewayARN", type = "string", max = 500L, min = 50L)), 
        shape = "UpdateMaintenanceStartTimeOutput", type = "structure")
    return(populate(args, shape))
}

update_nfs_file_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), KMSEncrypted = structure(logical(0), shape = "Boolean", 
        type = "boolean"), KMSKey = structure(logical(0), shape = "KMSKey", 
        type = "string", max = 2048L, min = 20L), NFSFileShareDefaults = structure(list(FileMode = structure(logical(0), 
        shape = "PermissionMode", type = "string", max = 4L, 
        min = 1L, pattern = "^[0-7]{4}$"), DirectoryMode = structure(logical(0), 
        shape = "PermissionMode", type = "string", max = 4L, 
        min = 1L, pattern = "^[0-7]{4}$"), GroupId = structure(logical(0), 
        shape = "PermissionId", type = "long", max = 4294967294, 
        min = 0L), OwnerId = structure(logical(0), shape = "PermissionId", 
        type = "long", max = 4294967294, min = 0L)), shape = "NFSFileShareDefaults", 
        type = "structure"), DefaultStorageClass = structure(logical(0), 
        shape = "StorageClass", type = "string", max = 20L, min = 5L), 
        ObjectACL = structure(logical(0), shape = "ObjectACL", 
            type = "string"), ClientList = structure(list(structure(logical(0), 
            shape = "IPV4AddressCIDR", type = "string", pattern = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([0-9]|[1-2][0-9]|3[0-2]))?$")), 
            shape = "FileShareClientList", type = "list", max = 100L, 
            min = 1L), Squash = structure(logical(0), shape = "Squash", 
            type = "string", max = 15L, min = 5L), ReadOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), GuessMIMETypeEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequesterPays = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "UpdateNFSFileShareInput", 
        type = "structure")
    return(populate(args, shape))
}

update_nfs_file_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "UpdateNFSFileShareOutput", type = "structure")
    return(populate(args, shape))
}

update_smb_file_share_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L), KMSEncrypted = structure(logical(0), shape = "Boolean", 
        type = "boolean"), KMSKey = structure(logical(0), shape = "KMSKey", 
        type = "string", max = 2048L, min = 20L), DefaultStorageClass = structure(logical(0), 
        shape = "StorageClass", type = "string", max = 20L, min = 5L), 
        ObjectACL = structure(logical(0), shape = "ObjectACL", 
            type = "string"), ReadOnly = structure(logical(0), 
            shape = "Boolean", type = "boolean"), GuessMIMETypeEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RequesterPays = structure(logical(0), 
            shape = "Boolean", type = "boolean"), ValidUserList = structure(list(structure(logical(0), 
            shape = "FileShareUser", type = "string", max = 64L, 
            min = 1L)), shape = "FileShareUserList", type = "list", 
            max = 100L, min = 0L), InvalidUserList = structure(list(structure(logical(0), 
            shape = "FileShareUser", type = "string", max = 64L, 
            min = 1L)), shape = "FileShareUserList", type = "list", 
            max = 100L, min = 0L)), shape = "UpdateSMBFileShareInput", 
        type = "structure")
    return(populate(args, shape))
}

update_smb_file_share_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileShareARN = structure(logical(0), 
        shape = "FileShareARN", type = "string", max = 500L, 
        min = 50L)), shape = "UpdateSMBFileShareOutput", type = "structure")
    return(populate(args, shape))
}

update_snapshot_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L), 
        StartAt = structure(logical(0), shape = "HourOfDay", 
            type = "integer", max = 23L, min = 0L), RecurrenceInHours = structure(logical(0), 
            shape = "RecurrenceInHours", type = "integer", max = 24L, 
            min = 1L), Description = structure(logical(0), shape = "Description", 
            type = "string", max = 255L, min = 1L)), shape = "UpdateSnapshotScheduleInput", 
        type = "structure")
    return(populate(args, shape))
}

update_snapshot_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeARN = structure(logical(0), 
        shape = "VolumeARN", type = "string", max = 500L, min = 50L)), 
        shape = "UpdateSnapshotScheduleOutput", type = "structure")
    return(populate(args, shape))
}

update_vtl_device_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VTLDeviceARN = structure(logical(0), 
        shape = "VTLDeviceARN", type = "string", max = 500L, 
        min = 50L), DeviceType = structure(logical(0), shape = "DeviceType", 
        type = "string", max = 50L, min = 2L)), shape = "UpdateVTLDeviceTypeInput", 
        type = "structure")
    return(populate(args, shape))
}

update_vtl_device_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VTLDeviceARN = structure(logical(0), 
        shape = "VTLDeviceARN", type = "string", max = 500L, 
        min = 50L)), shape = "UpdateVTLDeviceTypeOutput", type = "structure")
    return(populate(args, shape))
}
