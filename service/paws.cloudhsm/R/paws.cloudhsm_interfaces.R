add_tags_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        TagList = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L)), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list")), 
        shape = "AddTagsToResourceRequest", type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "String", 
        type = "string", pattern = "[\\w :+=./\\\\-]*")), shape = "AddTagsToResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_hapg_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Label = structure(logical(0), shape = "Label", 
        type = "string", pattern = "[a-zA-Z0-9_.-]{1,64}")), 
        shape = "CreateHapgRequest", type = "structure")
    return(populate(args, shape))
}

create_hapg_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgArn = structure(logical(0), shape = "HapgArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")), 
        shape = "CreateHapgResponse", type = "structure")
    return(populate(args, shape))
}

create_hsm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubnetId = structure(logical(0), 
        shape = "SubnetId", locationName = "SubnetId", type = "string", 
        pattern = "subnet-[0-9a-f]{8}"), SshKey = structure(logical(0), 
        shape = "SshKey", locationName = "SshKey", type = "string", 
        pattern = "[a-zA-Z0-9+/= ._:\\\\@-]*"), EniIp = structure(logical(0), 
        shape = "IpAddress", locationName = "EniIp", type = "string", 
        pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
        IamRoleArn = structure(logical(0), shape = "IamRoleArn", 
            locationName = "IamRoleArn", type = "string", pattern = "arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}"), 
        ExternalId = structure(logical(0), shape = "ExternalId", 
            locationName = "ExternalId", type = "string", pattern = "[\\w :+=./-]*"), 
        SubscriptionType = structure(logical(0), shape = "SubscriptionType", 
            locationName = "SubscriptionType", type = "string"), 
        ClientToken = structure(logical(0), shape = "ClientToken", 
            locationName = "ClientToken", type = "string", pattern = "[a-zA-Z0-9]{1,64}"), 
        SyslogIp = structure(logical(0), shape = "IpAddress", 
            locationName = "SyslogIp", type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")), 
        shape = "CreateHsmRequest", type = "structure", locationName = "CreateHsmRequest")
    return(populate(args, shape))
}

create_hsm_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmArn = structure(logical(0), shape = "HsmArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
        shape = "CreateHsmResponse", type = "structure")
    return(populate(args, shape))
}

create_luna_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Label = structure(logical(0), shape = "ClientLabel", 
        type = "string", pattern = "[a-zA-Z0-9_.-]{2,64}"), Certificate = structure(logical(0), 
        shape = "Certificate", type = "string", max = 2400L, 
        min = 600L, pattern = "[\\w :+=./\\n-]*")), shape = "CreateLunaClientRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_luna_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")), 
        shape = "CreateLunaClientResponse", type = "structure")
    return(populate(args, shape))
}

delete_hapg_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgArn = structure(logical(0), shape = "HapgArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")), 
        shape = "DeleteHapgRequest", type = "structure")
    return(populate(args, shape))
}

delete_hapg_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "String", 
        type = "string", pattern = "[\\w :+=./\\\\-]*")), shape = "DeleteHapgResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_hsm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmArn = structure(logical(0), shape = "HsmArn", 
        locationName = "HsmArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
        shape = "DeleteHsmRequest", type = "structure", locationName = "DeleteHsmRequest")
    return(populate(args, shape))
}

delete_hsm_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "String", 
        type = "string", pattern = "[\\w :+=./\\\\-]*")), shape = "DeleteHsmResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_luna_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")), 
        shape = "DeleteLunaClientRequest", type = "structure")
    return(populate(args, shape))
}

delete_luna_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "String", 
        type = "string", pattern = "[\\w :+=./\\\\-]*")), shape = "DeleteLunaClientResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_hapg_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgArn = structure(logical(0), shape = "HapgArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")), 
        shape = "DescribeHapgRequest", type = "structure")
    return(populate(args, shape))
}

describe_hapg_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgArn = structure(logical(0), shape = "HapgArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}"), 
        HapgSerial = structure(logical(0), shape = "String", 
            type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        HsmsLastActionFailed = structure(list(structure(logical(0), 
            shape = "HsmArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
            shape = "HsmList", type = "list"), HsmsPendingDeletion = structure(list(structure(logical(0), 
            shape = "HsmArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
            shape = "HsmList", type = "list"), HsmsPendingRegistration = structure(list(structure(logical(0), 
            shape = "HsmArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
            shape = "HsmList", type = "list"), Label = structure(logical(0), 
            shape = "Label", type = "string", pattern = "[a-zA-Z0-9_.-]{1,64}"), 
        LastModifiedTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "string", pattern = "\\d*"), PartitionSerialList = structure(list(structure(logical(0), 
            shape = "PartitionSerial", type = "string", pattern = "\\d{6,12}")), 
            shape = "PartitionSerialList", type = "list"), State = structure(logical(0), 
            shape = "CloudHsmObjectState", type = "string")), 
        shape = "DescribeHapgResponse", type = "structure")
    return(populate(args, shape))
}

describe_hsm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmArn = structure(logical(0), shape = "HsmArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}"), 
        HsmSerialNumber = structure(logical(0), shape = "HsmSerialNumber", 
            type = "string", pattern = "\\d{1,16}")), shape = "DescribeHsmRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_hsm_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmArn = structure(logical(0), shape = "HsmArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}"), 
        Status = structure(logical(0), shape = "HsmStatus", type = "string"), 
        StatusDetails = structure(logical(0), shape = "String", 
            type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        AvailabilityZone = structure(logical(0), shape = "AZ", 
            type = "string", pattern = "[a-zA-Z0-9\\-]*"), EniId = structure(logical(0), 
            shape = "EniId", type = "string", pattern = "eni-[0-9a-f]{8}"), 
        EniIp = structure(logical(0), shape = "IpAddress", type = "string", 
            pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
        SubscriptionType = structure(logical(0), shape = "SubscriptionType", 
            type = "string"), SubscriptionStartDate = structure(logical(0), 
            shape = "Timestamp", type = "string", pattern = "\\d*"), 
        SubscriptionEndDate = structure(logical(0), shape = "Timestamp", 
            type = "string", pattern = "\\d*"), VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "vpc-[0-9a-f]{8}"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            type = "string", pattern = "subnet-[0-9a-f]{8}"), 
        IamRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}"), 
        SerialNumber = structure(logical(0), shape = "HsmSerialNumber", 
            type = "string", pattern = "\\d{1,16}"), VendorName = structure(logical(0), 
            shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        HsmType = structure(logical(0), shape = "String", type = "string", 
            pattern = "[\\w :+=./\\\\-]*"), SoftwareVersion = structure(logical(0), 
            shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        SshPublicKey = structure(logical(0), shape = "SshKey", 
            type = "string", pattern = "[a-zA-Z0-9+/= ._:\\\\@-]*"), 
        SshKeyLastUpdated = structure(logical(0), shape = "Timestamp", 
            type = "string", pattern = "\\d*"), ServerCertUri = structure(logical(0), 
            shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        ServerCertLastUpdated = structure(logical(0), shape = "Timestamp", 
            type = "string", pattern = "\\d*"), Partitions = structure(list(structure(logical(0), 
            shape = "PartitionArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}/partition-[0-9]{6,12}")), 
            shape = "PartitionList", type = "list")), shape = "DescribeHsmResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_luna_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}"), 
        CertificateFingerprint = structure(logical(0), shape = "CertificateFingerprint", 
            type = "string", pattern = "([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]")), 
        shape = "DescribeLunaClientRequest", type = "structure")
    return(populate(args, shape))
}

describe_luna_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}"), 
        Certificate = structure(logical(0), shape = "Certificate", 
            type = "string", max = 2400L, min = 600L, pattern = "[\\w :+=./\\n-]*"), 
        CertificateFingerprint = structure(logical(0), shape = "CertificateFingerprint", 
            type = "string", pattern = "([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]"), 
        LastModifiedTimestamp = structure(logical(0), shape = "Timestamp", 
            type = "string", pattern = "\\d*"), Label = structure(logical(0), 
            shape = "Label", type = "string", pattern = "[a-zA-Z0-9_.-]{1,64}")), 
        shape = "DescribeLunaClientResponse", type = "structure")
    return(populate(args, shape))
}

get_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}"), 
        ClientVersion = structure(logical(0), shape = "ClientVersion", 
            type = "string"), HapgList = structure(list(structure(logical(0), 
            shape = "HapgArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")), 
            shape = "HapgList", type = "list")), shape = "GetConfigRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigType = structure(logical(0), 
        shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        ConfigFile = structure(logical(0), shape = "String", 
            type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        ConfigCred = structure(logical(0), shape = "String", 
            type = "string", pattern = "[\\w :+=./\\\\-]*")), 
        shape = "GetConfigResponse", type = "structure")
    return(populate(args, shape))
}

list_available_zones_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ListAvailableZonesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_available_zones_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AZList = structure(list(structure(logical(0), 
        shape = "AZ", type = "string", pattern = "[a-zA-Z0-9\\-]*")), 
        shape = "AZList", type = "list")), shape = "ListAvailableZonesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_hapgs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[a-zA-Z0-9+/]*")), 
        shape = "ListHapgsRequest", type = "structure")
    return(populate(args, shape))
}

list_hapgs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgList = structure(list(structure(logical(0), 
        shape = "HapgArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")), 
        shape = "HapgList", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[a-zA-Z0-9+/]*")), 
        shape = "ListHapgsResponse", type = "structure")
    return(populate(args, shape))
}

list_hsms_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[a-zA-Z0-9+/]*")), 
        shape = "ListHsmsRequest", type = "structure")
    return(populate(args, shape))
}

list_hsms_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmList = structure(list(structure(logical(0), 
        shape = "HsmArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
        shape = "HsmList", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[a-zA-Z0-9+/]*")), 
        shape = "ListHsmsResponse", type = "structure")
    return(populate(args, shape))
}

list_luna_clients_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[a-zA-Z0-9+/]*")), 
        shape = "ListLunaClientsRequest", type = "structure")
    return(populate(args, shape))
}

list_luna_clients_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientList = structure(list(structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")), 
        shape = "ClientList", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", pattern = "[a-zA-Z0-9+/]*")), 
        shape = "ListLunaClientsResponse", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*")), 
        shape = "ListTagsForResourceRequest", type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "ListTagsForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

modify_hapg_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgArn = structure(logical(0), shape = "HapgArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}"), 
        Label = structure(logical(0), shape = "Label", type = "string", 
            pattern = "[a-zA-Z0-9_.-]{1,64}"), PartitionSerialList = structure(list(structure(logical(0), 
            shape = "PartitionSerial", type = "string", pattern = "\\d{6,12}")), 
            shape = "PartitionSerialList", type = "list")), shape = "ModifyHapgRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_hapg_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HapgArn = structure(logical(0), shape = "HapgArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")), 
        shape = "ModifyHapgResponse", type = "structure")
    return(populate(args, shape))
}

modify_hsm_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmArn = structure(logical(0), shape = "HsmArn", 
        locationName = "HsmArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            locationName = "SubnetId", type = "string", pattern = "subnet-[0-9a-f]{8}"), 
        EniIp = structure(logical(0), shape = "IpAddress", locationName = "EniIp", 
            type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"), 
        IamRoleArn = structure(logical(0), shape = "IamRoleArn", 
            locationName = "IamRoleArn", type = "string", pattern = "arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}"), 
        ExternalId = structure(logical(0), shape = "ExternalId", 
            locationName = "ExternalId", type = "string", pattern = "[\\w :+=./-]*"), 
        SyslogIp = structure(logical(0), shape = "IpAddress", 
            locationName = "SyslogIp", type = "string", pattern = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")), 
        shape = "ModifyHsmRequest", type = "structure", locationName = "ModifyHsmRequest")
    return(populate(args, shape))
}

modify_hsm_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HsmArn = structure(logical(0), shape = "HsmArn", 
        type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")), 
        shape = "ModifyHsmResponse", type = "structure")
    return(populate(args, shape))
}

modify_luna_client_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}"), 
        Certificate = structure(logical(0), shape = "Certificate", 
            type = "string", max = 2400L, min = 600L, pattern = "[\\w :+=./\\n-]*")), 
        shape = "ModifyLunaClientRequest", type = "structure")
    return(populate(args, shape))
}

modify_luna_client_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientArn = structure(logical(0), 
        shape = "ClientArn", type = "string", pattern = "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")), 
        shape = "ModifyLunaClientResponse", type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", type = "string", pattern = "[\\w :+=./\\\\-]*"), 
        TagKeyList = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L)), shape = "TagKeyList", 
            type = "list")), shape = "RemoveTagsFromResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "String", 
        type = "string", pattern = "[\\w :+=./\\\\-]*")), shape = "RemoveTagsFromResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}
