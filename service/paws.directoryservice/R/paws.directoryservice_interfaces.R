accept_shared_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "AcceptSharedDirectoryRequest", type = "structure")
    return(populate(args, shape))
}

accept_shared_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectory = structure(list(OwnerAccountId = structure(logical(0), 
        shape = "CustomerId", type = "string", pattern = "^(\\d{12})$"), 
        OwnerDirectoryId = structure(logical(0), shape = "DirectoryId", 
            type = "string", pattern = "^d-[0-9a-f]{10}$"), ShareMethod = structure(logical(0), 
            shape = "ShareMethod", type = "string"), SharedAccountId = structure(logical(0), 
            shape = "CustomerId", type = "string", pattern = "^(\\d{12})$"), 
        SharedDirectoryId = structure(logical(0), shape = "DirectoryId", 
            type = "string", pattern = "^d-[0-9a-f]{10}$"), ShareStatus = structure(logical(0), 
            shape = "ShareStatus", type = "string"), ShareNotes = structure(logical(0), 
            shape = "Notes", type = "string", max = 1024L, sensitive = TRUE), 
        CreatedDateTime = structure(logical(0), shape = "CreatedDateTime", 
            type = "timestamp"), LastUpdatedDateTime = structure(logical(0), 
            shape = "LastUpdatedDateTime", type = "timestamp")), 
        shape = "SharedDirectory", type = "structure")), shape = "AcceptSharedDirectoryResult", 
        type = "structure")
    return(populate(args, shape))
}

add_ip_routes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        IpRoutes = structure(list(structure(list(CidrIp = structure(logical(0), 
            shape = "CidrIp", type = "string", pattern = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", max = 128L, min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$")), 
            shape = "IpRoute", type = "structure")), shape = "IpRoutes", 
            type = "list"), UpdateSecurityGroupForDirectoryControllers = structure(logical(0), 
            shape = "UpdateSecurityGroupForDirectoryControllers", 
            type = "boolean")), shape = "AddIpRoutesRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_ip_routes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddIpRoutesResult", type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string", pattern = "^[d]-[0-9a-f]{10}$"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "Tags", 
            type = "list")), shape = "AddTagsToResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsToResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_schema_extension_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        SchemaExtensionId = structure(logical(0), shape = "SchemaExtensionId", 
            type = "string", pattern = "^e-[0-9a-f]{10}$")), 
        shape = "CancelSchemaExtensionRequest", type = "structure")
    return(populate(args, shape))
}

cancel_schema_extension_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CancelSchemaExtensionResult", 
        type = "structure")
    return(populate(args, shape))
}

connect_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DirectoryName", 
        type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"), 
        ShortName = structure(logical(0), shape = "DirectoryShortName", 
            type = "string", pattern = "^[^\\\\/:*?\\\"\\<\\>|.]+[^\\\\/:*?\\\"<>|]*$"), 
        Password = structure(logical(0), shape = "ConnectPassword", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 128L, min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"), 
        Size = structure(logical(0), shape = "DirectorySize", 
            type = "string"), ConnectSettings = structure(list(VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
            SubnetIds = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")), 
                shape = "SubnetIds", type = "list"), CustomerDnsIps = structure(list(structure(logical(0), 
                shape = "IpAddr", type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
                shape = "DnsIpAddrs", type = "list"), CustomerUserName = structure(logical(0), 
                shape = "UserName", type = "string", min = 1L, 
                pattern = "[a-zA-Z0-9._-]+")), shape = "DirectoryConnectSettings", 
            type = "structure")), shape = "ConnectDirectoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

connect_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "ConnectDirectoryResult", type = "structure")
    return(populate(args, shape))
}

create_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        Alias = structure(logical(0), shape = "AliasName", type = "string", 
            max = 62L, min = 1L, pattern = "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*")), 
        shape = "CreateAliasRequest", type = "structure")
    return(populate(args, shape))
}

create_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        Alias = structure(logical(0), shape = "AliasName", type = "string", 
            max = 62L, min = 1L, pattern = "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*")), 
        shape = "CreateAliasResult", type = "structure")
    return(populate(args, shape))
}

create_computer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        ComputerName = structure(logical(0), shape = "ComputerName", 
            type = "string", max = 15L, min = 1L), Password = structure(logical(0), 
            shape = "ComputerPassword", type = "string", max = 64L, 
            min = 8L, pattern = "[\\u0020-\\u00FF]+", sensitive = TRUE), 
        OrganizationalUnitDistinguishedName = structure(logical(0), 
            shape = "OrganizationalUnitDN", type = "string", 
            max = 2000L, min = 1L), ComputerAttributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "AttributeName", type = "string", min = 1L), 
            Value = structure(logical(0), shape = "AttributeValue", 
                type = "string")), shape = "Attribute", type = "structure")), 
            shape = "Attributes", type = "list")), shape = "CreateComputerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_computer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Computer = structure(list(ComputerId = structure(logical(0), 
        shape = "SID", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), ComputerName = structure(logical(0), 
        shape = "ComputerName", type = "string", max = 15L, min = 1L), 
        ComputerAttributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "AttributeName", type = "string", min = 1L), 
            Value = structure(logical(0), shape = "AttributeValue", 
                type = "string")), shape = "Attribute", type = "structure")), 
            shape = "Attributes", type = "list")), shape = "Computer", 
        type = "structure")), shape = "CreateComputerResult", 
        type = "structure")
    return(populate(args, shape))
}

create_conditional_forwarder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RemoteDomainName = structure(logical(0), shape = "RemoteDomainName", 
            type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"), 
        DnsIpAddrs = structure(list(structure(logical(0), shape = "IpAddr", 
            type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
            shape = "DnsIpAddrs", type = "list")), shape = "CreateConditionalForwarderRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_conditional_forwarder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateConditionalForwarderResult", 
        type = "structure")
    return(populate(args, shape))
}

create_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DirectoryName", 
        type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"), 
        ShortName = structure(logical(0), shape = "DirectoryShortName", 
            type = "string", pattern = "^[^\\\\/:*?\\\"\\<\\>|.]+[^\\\\/:*?\\\"<>|]*$"), 
        Password = structure(logical(0), shape = "Password", 
            type = "string", pattern = "(?=^.{8,64}$)((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])|(?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s]))^.*", 
            sensitive = TRUE), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 128L, 
            min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"), 
        Size = structure(logical(0), shape = "DirectorySize", 
            type = "string"), VpcSettings = structure(list(VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
            SubnetIds = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")), 
                shape = "SubnetIds", type = "list")), shape = "DirectoryVpcSettings", 
            type = "structure")), shape = "CreateDirectoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "CreateDirectoryResult", type = "structure")
    return(populate(args, shape))
}

create_log_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        LogGroupName = structure(logical(0), shape = "LogGroupName", 
            type = "string", max = 512L, min = 1L, pattern = "[-._/#A-Za-z0-9]+")), 
        shape = "CreateLogSubscriptionRequest", type = "structure")
    return(populate(args, shape))
}

create_log_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateLogSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

create_microsoft_ad_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "DirectoryName", 
        type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"), 
        ShortName = structure(logical(0), shape = "DirectoryShortName", 
            type = "string", pattern = "^[^\\\\/:*?\\\"\\<\\>|.]+[^\\\\/:*?\\\"<>|]*$"), 
        Password = structure(logical(0), shape = "Password", 
            type = "string", pattern = "(?=^.{8,64}$)((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])|(?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s]))^.*", 
            sensitive = TRUE), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 128L, 
            min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"), 
        VpcSettings = structure(list(VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
            SubnetIds = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")), 
                shape = "SubnetIds", type = "list")), shape = "DirectoryVpcSettings", 
            type = "structure"), Edition = structure(logical(0), 
            shape = "DirectoryEdition", type = "string")), shape = "CreateMicrosoftADRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_microsoft_ad_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "CreateMicrosoftADResult", type = "structure")
    return(populate(args, shape))
}

create_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        Name = structure(logical(0), shape = "SnapshotName", 
            type = "string", max = 128L, min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$")), 
        shape = "CreateSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

create_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "SnapshotId", type = "string", pattern = "^s-[0-9a-f]{10}$")), 
        shape = "CreateSnapshotResult", type = "structure")
    return(populate(args, shape))
}

create_trust_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RemoteDomainName = structure(logical(0), shape = "RemoteDomainName", 
            type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"), 
        TrustPassword = structure(logical(0), shape = "TrustPassword", 
            type = "string", max = 128L, min = 1L, pattern = "(.|\\s)*\\S(.|\\s)*", 
            sensitive = TRUE), TrustDirection = structure(logical(0), 
            shape = "TrustDirection", type = "string"), TrustType = structure(logical(0), 
            shape = "TrustType", type = "string"), ConditionalForwarderIpAddrs = structure(list(structure(logical(0), 
            shape = "IpAddr", type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
            shape = "DnsIpAddrs", type = "list"), SelectiveAuth = structure(logical(0), 
            shape = "SelectiveAuth", type = "string")), shape = "CreateTrustRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_trust_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrustId = structure(logical(0), shape = "TrustId", 
        type = "string", pattern = "^t-[0-9a-f]{10}$")), shape = "CreateTrustResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_conditional_forwarder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RemoteDomainName = structure(logical(0), shape = "RemoteDomainName", 
            type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$")), 
        shape = "DeleteConditionalForwarderRequest", type = "structure")
    return(populate(args, shape))
}

delete_conditional_forwarder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteConditionalForwarderResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "DeleteDirectoryRequest", type = "structure")
    return(populate(args, shape))
}

delete_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "DeleteDirectoryResult", type = "structure")
    return(populate(args, shape))
}

delete_log_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "DeleteLogSubscriptionRequest", type = "structure")
    return(populate(args, shape))
}

delete_log_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLogSubscriptionResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "SnapshotId", type = "string", pattern = "^s-[0-9a-f]{10}$")), 
        shape = "DeleteSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

delete_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "SnapshotId", type = "string", pattern = "^s-[0-9a-f]{10}$")), 
        shape = "DeleteSnapshotResult", type = "structure")
    return(populate(args, shape))
}

delete_trust_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrustId = structure(logical(0), shape = "TrustId", 
        type = "string", pattern = "^t-[0-9a-f]{10}$"), DeleteAssociatedConditionalForwarder = structure(logical(0), 
        shape = "DeleteAssociatedConditionalForwarder", type = "boolean")), 
        shape = "DeleteTrustRequest", type = "structure")
    return(populate(args, shape))
}

delete_trust_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrustId = structure(logical(0), shape = "TrustId", 
        type = "string", pattern = "^t-[0-9a-f]{10}$")), shape = "DeleteTrustResult", 
        type = "structure")
    return(populate(args, shape))
}

deregister_event_topic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        TopicName = structure(logical(0), shape = "TopicName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "DeregisterEventTopicRequest", type = "structure")
    return(populate(args, shape))
}

deregister_event_topic_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeregisterEventTopicResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_conditional_forwarders_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RemoteDomainNames = structure(list(structure(logical(0), 
            shape = "RemoteDomainName", type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$")), 
            shape = "RemoteDomainNames", type = "list")), shape = "DescribeConditionalForwardersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_conditional_forwarders_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConditionalForwarders = structure(list(structure(list(RemoteDomainName = structure(logical(0), 
        shape = "RemoteDomainName", type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"), 
        DnsIpAddrs = structure(list(structure(logical(0), shape = "IpAddr", 
            type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
            shape = "DnsIpAddrs", type = "list"), ReplicationScope = structure(logical(0), 
            shape = "ReplicationScope", type = "string")), shape = "ConditionalForwarder", 
        type = "structure")), shape = "ConditionalForwarders", 
        type = "list")), shape = "DescribeConditionalForwardersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_directories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryIds = structure(list(structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "DirectoryIds", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), Limit = structure(logical(0), 
        shape = "Limit", type = "integer", min = 0L)), shape = "DescribeDirectoriesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_directories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryDescriptions = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        Name = structure(logical(0), shape = "DirectoryName", 
            type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"), 
        ShortName = structure(logical(0), shape = "DirectoryShortName", 
            type = "string", pattern = "^[^\\\\/:*?\\\"\\<\\>|.]+[^\\\\/:*?\\\"<>|]*$"), 
        Size = structure(logical(0), shape = "DirectorySize", 
            type = "string"), Edition = structure(logical(0), 
            shape = "DirectoryEdition", type = "string"), Alias = structure(logical(0), 
            shape = "AliasName", type = "string", max = 62L, 
            min = 1L, pattern = "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*"), 
        AccessUrl = structure(logical(0), shape = "AccessUrl", 
            type = "string", max = 128L, min = 1L), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 128L, 
            min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"), 
        DnsIpAddrs = structure(list(structure(logical(0), shape = "IpAddr", 
            type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
            shape = "DnsIpAddrs", type = "list"), Stage = structure(logical(0), 
            shape = "DirectoryStage", type = "string"), ShareStatus = structure(logical(0), 
            shape = "ShareStatus", type = "string"), ShareMethod = structure(logical(0), 
            shape = "ShareMethod", type = "string"), ShareNotes = structure(logical(0), 
            shape = "Notes", type = "string", max = 1024L, sensitive = TRUE), 
        LaunchTime = structure(logical(0), shape = "LaunchTime", 
            type = "timestamp"), StageLastUpdatedDateTime = structure(logical(0), 
            shape = "LastUpdatedDateTime", type = "timestamp"), 
        Type = structure(logical(0), shape = "DirectoryType", 
            type = "string"), VpcSettings = structure(list(VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
            SubnetIds = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")), 
                shape = "SubnetIds", type = "list"), SecurityGroupId = structure(logical(0), 
                shape = "SecurityGroupId", type = "string", pattern = "^(sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"), 
            AvailabilityZones = structure(list(structure(logical(0), 
                shape = "AvailabilityZone", type = "string")), 
                shape = "AvailabilityZones", type = "list")), 
            shape = "DirectoryVpcSettingsDescription", type = "structure"), 
        ConnectSettings = structure(list(VpcId = structure(logical(0), 
            shape = "VpcId", type = "string", pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
            SubnetIds = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")), 
                shape = "SubnetIds", type = "list"), CustomerUserName = structure(logical(0), 
                shape = "UserName", type = "string", min = 1L, 
                pattern = "[a-zA-Z0-9._-]+"), SecurityGroupId = structure(logical(0), 
                shape = "SecurityGroupId", type = "string", pattern = "^(sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"), 
            AvailabilityZones = structure(list(structure(logical(0), 
                shape = "AvailabilityZone", type = "string")), 
                shape = "AvailabilityZones", type = "list"), 
            ConnectIps = structure(list(structure(logical(0), 
                shape = "IpAddr", type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
                shape = "IpAddrs", type = "list")), shape = "DirectoryConnectSettingsDescription", 
            type = "structure"), RadiusSettings = structure(list(RadiusServers = structure(list(structure(logical(0), 
            shape = "Server", type = "string", max = 256L, min = 1L)), 
            shape = "Servers", type = "list"), RadiusPort = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 65535L, 
            min = 1025L), RadiusTimeout = structure(logical(0), 
            shape = "RadiusTimeout", type = "integer", max = 20L, 
            min = 1L), RadiusRetries = structure(logical(0), 
            shape = "RadiusRetries", type = "integer", max = 10L, 
            min = 0L), SharedSecret = structure(logical(0), shape = "RadiusSharedSecret", 
            type = "string", max = 512L, min = 8L, sensitive = TRUE), 
            AuthenticationProtocol = structure(logical(0), shape = "RadiusAuthenticationProtocol", 
                type = "string"), DisplayLabel = structure(logical(0), 
                shape = "RadiusDisplayLabel", type = "string", 
                max = 64L, min = 1L), UseSameUsername = structure(logical(0), 
                shape = "UseSameUsername", type = "boolean")), 
            shape = "RadiusSettings", type = "structure"), RadiusStatus = structure(logical(0), 
            shape = "RadiusStatus", type = "string"), StageReason = structure(logical(0), 
            shape = "StageReason", type = "string"), SsoEnabled = structure(logical(0), 
            shape = "SsoEnabled", type = "boolean"), DesiredNumberOfDomainControllers = structure(logical(0), 
            shape = "DesiredNumberOfDomainControllers", type = "integer", 
            min = 2L), OwnerDirectoryDescription = structure(list(DirectoryId = structure(logical(0), 
            shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
            AccountId = structure(logical(0), shape = "CustomerId", 
                type = "string", pattern = "^(\\d{12})$"), DnsIpAddrs = structure(list(structure(logical(0), 
                shape = "IpAddr", type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
                shape = "DnsIpAddrs", type = "list"), VpcSettings = structure(list(VpcId = structure(logical(0), 
                shape = "VpcId", type = "string", pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
                SubnetIds = structure(list(structure(logical(0), 
                  shape = "SubnetId", type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")), 
                  shape = "SubnetIds", type = "list"), SecurityGroupId = structure(logical(0), 
                  shape = "SecurityGroupId", type = "string", 
                  pattern = "^(sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"), 
                AvailabilityZones = structure(list(structure(logical(0), 
                  shape = "AvailabilityZone", type = "string")), 
                  shape = "AvailabilityZones", type = "list")), 
                shape = "DirectoryVpcSettingsDescription", type = "structure"), 
            RadiusSettings = structure(list(RadiusServers = structure(list(structure(logical(0), 
                shape = "Server", type = "string", max = 256L, 
                min = 1L)), shape = "Servers", type = "list"), 
                RadiusPort = structure(logical(0), shape = "PortNumber", 
                  type = "integer", max = 65535L, min = 1025L), 
                RadiusTimeout = structure(logical(0), shape = "RadiusTimeout", 
                  type = "integer", max = 20L, min = 1L), RadiusRetries = structure(logical(0), 
                  shape = "RadiusRetries", type = "integer", 
                  max = 10L, min = 0L), SharedSecret = structure(logical(0), 
                  shape = "RadiusSharedSecret", type = "string", 
                  max = 512L, min = 8L, sensitive = TRUE), AuthenticationProtocol = structure(logical(0), 
                  shape = "RadiusAuthenticationProtocol", type = "string"), 
                DisplayLabel = structure(logical(0), shape = "RadiusDisplayLabel", 
                  type = "string", max = 64L, min = 1L), UseSameUsername = structure(logical(0), 
                  shape = "UseSameUsername", type = "boolean")), 
                shape = "RadiusSettings", type = "structure"), 
            RadiusStatus = structure(logical(0), shape = "RadiusStatus", 
                type = "string")), shape = "OwnerDirectoryDescription", 
            type = "structure")), shape = "DirectoryDescription", 
        type = "structure")), shape = "DirectoryDescriptions", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeDirectoriesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_domain_controllers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        DomainControllerIds = structure(list(structure(logical(0), 
            shape = "DomainControllerId", type = "string", pattern = "^dc-[0-9a-f]{10}$")), 
            shape = "DomainControllerIds", type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), Limit = structure(logical(0), 
            shape = "Limit", type = "integer", min = 0L)), shape = "DescribeDomainControllersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_domain_controllers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainControllers = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        DomainControllerId = structure(logical(0), shape = "DomainControllerId", 
            type = "string", pattern = "^dc-[0-9a-f]{10}$"), 
        DnsIpAddr = structure(logical(0), shape = "IpAddr", type = "string", 
            pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"), 
        VpcId = structure(logical(0), shape = "VpcId", type = "string", 
            pattern = "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"), 
        SubnetId = structure(logical(0), shape = "SubnetId", 
            type = "string", pattern = "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$"), 
        AvailabilityZone = structure(logical(0), shape = "AvailabilityZone", 
            type = "string"), Status = structure(logical(0), 
            shape = "DomainControllerStatus", type = "string"), 
        StatusReason = structure(logical(0), shape = "DomainControllerStatusReason", 
            type = "string"), LaunchTime = structure(logical(0), 
            shape = "LaunchTime", type = "timestamp"), StatusLastUpdatedDateTime = structure(logical(0), 
            shape = "LastUpdatedDateTime", type = "timestamp")), 
        shape = "DomainController", type = "structure")), shape = "DomainControllers", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeDomainControllersResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_topics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        TopicNames = structure(list(structure(logical(0), shape = "TopicName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
            shape = "TopicNames", type = "list")), shape = "DescribeEventTopicsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_topics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventTopics = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        TopicName = structure(logical(0), shape = "TopicName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_-]+"), 
        TopicArn = structure(logical(0), shape = "TopicArn", 
            type = "string"), CreatedDateTime = structure(logical(0), 
            shape = "CreatedDateTime", type = "timestamp"), Status = structure(logical(0), 
            shape = "TopicStatus", type = "string")), shape = "EventTopic", 
        type = "structure")), shape = "EventTopics", type = "list")), 
        shape = "DescribeEventTopicsResult", type = "structure")
    return(populate(args, shape))
}

describe_shared_directories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerDirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        SharedDirectoryIds = structure(list(structure(logical(0), 
            shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
            shape = "DirectoryIds", type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), Limit = structure(logical(0), 
            shape = "Limit", type = "integer", min = 0L)), shape = "DescribeSharedDirectoriesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_shared_directories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectories = structure(list(structure(list(OwnerAccountId = structure(logical(0), 
        shape = "CustomerId", type = "string", pattern = "^(\\d{12})$"), 
        OwnerDirectoryId = structure(logical(0), shape = "DirectoryId", 
            type = "string", pattern = "^d-[0-9a-f]{10}$"), ShareMethod = structure(logical(0), 
            shape = "ShareMethod", type = "string"), SharedAccountId = structure(logical(0), 
            shape = "CustomerId", type = "string", pattern = "^(\\d{12})$"), 
        SharedDirectoryId = structure(logical(0), shape = "DirectoryId", 
            type = "string", pattern = "^d-[0-9a-f]{10}$"), ShareStatus = structure(logical(0), 
            shape = "ShareStatus", type = "string"), ShareNotes = structure(logical(0), 
            shape = "Notes", type = "string", max = 1024L, sensitive = TRUE), 
        CreatedDateTime = structure(logical(0), shape = "CreatedDateTime", 
            type = "timestamp"), LastUpdatedDateTime = structure(logical(0), 
            shape = "LastUpdatedDateTime", type = "timestamp")), 
        shape = "SharedDirectory", type = "structure")), shape = "SharedDirectories", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "DescribeSharedDirectoriesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        SnapshotIds = structure(list(structure(logical(0), shape = "SnapshotId", 
            type = "string", pattern = "^s-[0-9a-f]{10}$")), 
            shape = "SnapshotIds", type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), Limit = structure(logical(0), 
            shape = "Limit", type = "integer", min = 0L)), shape = "DescribeSnapshotsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshots = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            type = "string", pattern = "^s-[0-9a-f]{10}$"), Type = structure(logical(0), 
            shape = "SnapshotType", type = "string"), Name = structure(logical(0), 
            shape = "SnapshotName", type = "string", max = 128L, 
            min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"), 
        Status = structure(logical(0), shape = "SnapshotStatus", 
            type = "string"), StartTime = structure(logical(0), 
            shape = "StartTime", type = "timestamp")), shape = "Snapshot", 
        type = "structure")), shape = "Snapshots", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeSnapshotsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        TrustIds = structure(list(structure(logical(0), shape = "TrustId", 
            type = "string", pattern = "^t-[0-9a-f]{10}$")), 
            shape = "TrustIds", type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string"), Limit = structure(logical(0), 
            shape = "Limit", type = "integer", min = 0L)), shape = "DescribeTrustsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Trusts = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        TrustId = structure(logical(0), shape = "TrustId", type = "string", 
            pattern = "^t-[0-9a-f]{10}$"), RemoteDomainName = structure(logical(0), 
            shape = "RemoteDomainName", type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"), 
        TrustType = structure(logical(0), shape = "TrustType", 
            type = "string"), TrustDirection = structure(logical(0), 
            shape = "TrustDirection", type = "string"), TrustState = structure(logical(0), 
            shape = "TrustState", type = "string"), CreatedDateTime = structure(logical(0), 
            shape = "CreatedDateTime", type = "timestamp"), LastUpdatedDateTime = structure(logical(0), 
            shape = "LastUpdatedDateTime", type = "timestamp"), 
        StateLastUpdatedDateTime = structure(logical(0), shape = "StateLastUpdatedDateTime", 
            type = "timestamp"), TrustStateReason = structure(logical(0), 
            shape = "TrustStateReason", type = "string"), SelectiveAuth = structure(logical(0), 
            shape = "SelectiveAuth", type = "string")), shape = "Trust", 
        type = "structure")), shape = "Trusts", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "DescribeTrustsResult", 
        type = "structure")
    return(populate(args, shape))
}

disable_radius_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "DisableRadiusRequest", type = "structure")
    return(populate(args, shape))
}

disable_radius_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisableRadiusResult", 
        type = "structure")
    return(populate(args, shape))
}

disable_sso_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        UserName = structure(logical(0), shape = "UserName", 
            type = "string", min = 1L, pattern = "[a-zA-Z0-9._-]+"), 
        Password = structure(logical(0), shape = "ConnectPassword", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "DisableSsoRequest", type = "structure")
    return(populate(args, shape))
}

disable_sso_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisableSsoResult", type = "structure")
    return(populate(args, shape))
}

enable_radius_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RadiusSettings = structure(list(RadiusServers = structure(list(structure(logical(0), 
            shape = "Server", type = "string", max = 256L, min = 1L)), 
            shape = "Servers", type = "list"), RadiusPort = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 65535L, 
            min = 1025L), RadiusTimeout = structure(logical(0), 
            shape = "RadiusTimeout", type = "integer", max = 20L, 
            min = 1L), RadiusRetries = structure(logical(0), 
            shape = "RadiusRetries", type = "integer", max = 10L, 
            min = 0L), SharedSecret = structure(logical(0), shape = "RadiusSharedSecret", 
            type = "string", max = 512L, min = 8L, sensitive = TRUE), 
            AuthenticationProtocol = structure(logical(0), shape = "RadiusAuthenticationProtocol", 
                type = "string"), DisplayLabel = structure(logical(0), 
                shape = "RadiusDisplayLabel", type = "string", 
                max = 64L, min = 1L), UseSameUsername = structure(logical(0), 
                shape = "UseSameUsername", type = "boolean")), 
            shape = "RadiusSettings", type = "structure")), shape = "EnableRadiusRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_radius_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "EnableRadiusResult", 
        type = "structure")
    return(populate(args, shape))
}

enable_sso_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        UserName = structure(logical(0), shape = "UserName", 
            type = "string", min = 1L, pattern = "[a-zA-Z0-9._-]+"), 
        Password = structure(logical(0), shape = "ConnectPassword", 
            type = "string", max = 128L, min = 1L, sensitive = TRUE)), 
        shape = "EnableSsoRequest", type = "structure")
    return(populate(args, shape))
}

enable_sso_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "EnableSsoResult", type = "structure")
    return(populate(args, shape))
}

get_directory_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetDirectoryLimitsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_directory_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryLimits = structure(list(CloudOnlyDirectoriesLimit = structure(logical(0), 
        shape = "Limit", type = "integer", min = 0L), CloudOnlyDirectoriesCurrentCount = structure(logical(0), 
        shape = "Limit", type = "integer", min = 0L), CloudOnlyDirectoriesLimitReached = structure(logical(0), 
        shape = "CloudOnlyDirectoriesLimitReached", type = "boolean"), 
        CloudOnlyMicrosoftADLimit = structure(logical(0), shape = "Limit", 
            type = "integer", min = 0L), CloudOnlyMicrosoftADCurrentCount = structure(logical(0), 
            shape = "Limit", type = "integer", min = 0L), CloudOnlyMicrosoftADLimitReached = structure(logical(0), 
            shape = "CloudOnlyDirectoriesLimitReached", type = "boolean"), 
        ConnectedDirectoriesLimit = structure(logical(0), shape = "Limit", 
            type = "integer", min = 0L), ConnectedDirectoriesCurrentCount = structure(logical(0), 
            shape = "Limit", type = "integer", min = 0L), ConnectedDirectoriesLimitReached = structure(logical(0), 
            shape = "ConnectedDirectoriesLimitReached", type = "boolean")), 
        shape = "DirectoryLimits", type = "structure")), shape = "GetDirectoryLimitsResult", 
        type = "structure")
    return(populate(args, shape))
}

get_snapshot_limits_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "GetSnapshotLimitsRequest", type = "structure")
    return(populate(args, shape))
}

get_snapshot_limits_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotLimits = structure(list(ManualSnapshotsLimit = structure(logical(0), 
        shape = "Limit", type = "integer", min = 0L), ManualSnapshotsCurrentCount = structure(logical(0), 
        shape = "Limit", type = "integer", min = 0L), ManualSnapshotsLimitReached = structure(logical(0), 
        shape = "ManualSnapshotsLimitReached", type = "boolean")), 
        shape = "SnapshotLimits", type = "structure")), shape = "GetSnapshotLimitsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_ip_routes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), Limit = structure(logical(0), shape = "Limit", 
            type = "integer", min = 0L)), shape = "ListIpRoutesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_ip_routes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IpRoutesInfo = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        CidrIp = structure(logical(0), shape = "CidrIp", type = "string", 
            pattern = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$"), 
        IpRouteStatusMsg = structure(logical(0), shape = "IpRouteStatusMsg", 
            type = "string"), AddedDateTime = structure(logical(0), 
            shape = "AddedDateTime", type = "timestamp"), IpRouteStatusReason = structure(logical(0), 
            shape = "IpRouteStatusReason", type = "string"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 128L, min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$")), 
        shape = "IpRouteInfo", type = "structure")), shape = "IpRoutesInfo", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListIpRoutesResult", type = "structure")
    return(populate(args, shape))
}

list_log_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), Limit = structure(logical(0), shape = "Limit", 
            type = "integer", min = 0L)), shape = "ListLogSubscriptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_log_subscriptions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LogSubscriptions = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        LogGroupName = structure(logical(0), shape = "LogGroupName", 
            type = "string", max = 512L, min = 1L, pattern = "[-._/#A-Za-z0-9]+"), 
        SubscriptionCreatedDateTime = structure(logical(0), shape = "SubscriptionCreatedDateTime", 
            type = "timestamp")), shape = "LogSubscription", 
        type = "structure")), shape = "LogSubscriptions", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListLogSubscriptionsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_schema_extensions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), Limit = structure(logical(0), shape = "Limit", 
            type = "integer", min = 0L)), shape = "ListSchemaExtensionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_schema_extensions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaExtensionsInfo = structure(list(structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        SchemaExtensionId = structure(logical(0), shape = "SchemaExtensionId", 
            type = "string", pattern = "^e-[0-9a-f]{10}$"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 128L, 
            min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"), 
        SchemaExtensionStatus = structure(logical(0), shape = "SchemaExtensionStatus", 
            type = "string"), SchemaExtensionStatusReason = structure(logical(0), 
            shape = "SchemaExtensionStatusReason", type = "string"), 
        StartDateTime = structure(logical(0), shape = "StartDateTime", 
            type = "timestamp"), EndDateTime = structure(logical(0), 
            shape = "EndDateTime", type = "timestamp")), shape = "SchemaExtensionInfo", 
        type = "structure")), shape = "SchemaExtensionsInfo", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListSchemaExtensionsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string", pattern = "^[d]-[0-9a-f]{10}$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string"), Limit = structure(logical(0), shape = "Limit", 
            type = "integer", min = 0L)), shape = "ListTagsForResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "Tags", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListTagsForResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

register_event_topic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        TopicName = structure(logical(0), shape = "TopicName", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9_-]+")), 
        shape = "RegisterEventTopicRequest", type = "structure")
    return(populate(args, shape))
}

register_event_topic_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RegisterEventTopicResult", 
        type = "structure")
    return(populate(args, shape))
}

reject_shared_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "RejectSharedDirectoryRequest", type = "structure")
    return(populate(args, shape))
}

reject_shared_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "RejectSharedDirectoryResult", type = "structure")
    return(populate(args, shape))
}

remove_ip_routes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        CidrIps = structure(list(structure(logical(0), shape = "CidrIp", 
            type = "string", pattern = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$")), 
            shape = "CidrIps", type = "list")), shape = "RemoveIpRoutesRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_ip_routes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveIpRoutesResult", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceId", type = "string", pattern = "^[d]-[0-9a-f]{10}$"), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeys", type = "list")), shape = "RemoveTagsFromResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsFromResourceResult", 
        type = "structure")
    return(populate(args, shape))
}

reset_user_password_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        UserName = structure(logical(0), shape = "CustomerUserName", 
            type = "string", max = 64L, min = 1L, pattern = "^(?!.*\\\\|.*\"|.*\\/|.*\\[|.*\\]|.*:|.*;|.*\\||.*=|.*,|.*\\+|.*\\*|.*\\?|.*<|.*>|.*@).*$"), 
        NewPassword = structure(logical(0), shape = "UserPassword", 
            type = "string", max = 127L, min = 1L, sensitive = TRUE)), 
        shape = "ResetUserPasswordRequest", type = "structure")
    return(populate(args, shape))
}

reset_user_password_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ResetUserPasswordResult", 
        type = "structure")
    return(populate(args, shape))
}

restore_from_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "SnapshotId", type = "string", pattern = "^s-[0-9a-f]{10}$")), 
        shape = "RestoreFromSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

restore_from_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RestoreFromSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

share_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        ShareNotes = structure(logical(0), shape = "Notes", type = "string", 
            max = 1024L, sensitive = TRUE), ShareTarget = structure(list(Id = structure(logical(0), 
            shape = "TargetId", type = "string", max = 64L, min = 1L), 
            Type = structure(logical(0), shape = "TargetType", 
                type = "string")), shape = "ShareTarget", type = "structure"), 
        ShareMethod = structure(logical(0), shape = "ShareMethod", 
            type = "string")), shape = "ShareDirectoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

share_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "ShareDirectoryResult", type = "structure")
    return(populate(args, shape))
}

start_schema_extension_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        CreateSnapshotBeforeSchemaExtension = structure(logical(0), 
            shape = "CreateSnapshotBeforeSchemaExtension", type = "boolean"), 
        LdifContent = structure(logical(0), shape = "LdifContent", 
            type = "string", max = 500000L, min = 1L), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 128L, 
            min = 0L, pattern = "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$")), 
        shape = "StartSchemaExtensionRequest", type = "structure")
    return(populate(args, shape))
}

start_schema_extension_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SchemaExtensionId = structure(logical(0), 
        shape = "SchemaExtensionId", type = "string", pattern = "^e-[0-9a-f]{10}$")), 
        shape = "StartSchemaExtensionResult", type = "structure")
    return(populate(args, shape))
}

unshare_directory_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        UnshareTarget = structure(list(Id = structure(logical(0), 
            shape = "TargetId", type = "string", max = 64L, min = 1L), 
            Type = structure(logical(0), shape = "TargetType", 
                type = "string")), shape = "UnshareTarget", type = "structure")), 
        shape = "UnshareDirectoryRequest", type = "structure")
    return(populate(args, shape))
}

unshare_directory_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SharedDirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$")), 
        shape = "UnshareDirectoryResult", type = "structure")
    return(populate(args, shape))
}

update_conditional_forwarder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RemoteDomainName = structure(logical(0), shape = "RemoteDomainName", 
            type = "string", pattern = "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"), 
        DnsIpAddrs = structure(list(structure(logical(0), shape = "IpAddr", 
            type = "string", pattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")), 
            shape = "DnsIpAddrs", type = "list")), shape = "UpdateConditionalForwarderRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_conditional_forwarder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateConditionalForwarderResult", 
        type = "structure")
    return(populate(args, shape))
}

update_number_of_domain_controllers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        DesiredNumber = structure(logical(0), shape = "DesiredNumberOfDomainControllers", 
            type = "integer", min = 2L)), shape = "UpdateNumberOfDomainControllersRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_number_of_domain_controllers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateNumberOfDomainControllersResult", 
        type = "structure")
    return(populate(args, shape))
}

update_radius_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectoryId = structure(logical(0), 
        shape = "DirectoryId", type = "string", pattern = "^d-[0-9a-f]{10}$"), 
        RadiusSettings = structure(list(RadiusServers = structure(list(structure(logical(0), 
            shape = "Server", type = "string", max = 256L, min = 1L)), 
            shape = "Servers", type = "list"), RadiusPort = structure(logical(0), 
            shape = "PortNumber", type = "integer", max = 65535L, 
            min = 1025L), RadiusTimeout = structure(logical(0), 
            shape = "RadiusTimeout", type = "integer", max = 20L, 
            min = 1L), RadiusRetries = structure(logical(0), 
            shape = "RadiusRetries", type = "integer", max = 10L, 
            min = 0L), SharedSecret = structure(logical(0), shape = "RadiusSharedSecret", 
            type = "string", max = 512L, min = 8L, sensitive = TRUE), 
            AuthenticationProtocol = structure(logical(0), shape = "RadiusAuthenticationProtocol", 
                type = "string"), DisplayLabel = structure(logical(0), 
                shape = "RadiusDisplayLabel", type = "string", 
                max = 64L, min = 1L), UseSameUsername = structure(logical(0), 
                shape = "UseSameUsername", type = "boolean")), 
            shape = "RadiusSettings", type = "structure")), shape = "UpdateRadiusRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_radius_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateRadiusResult", 
        type = "structure")
    return(populate(args, shape))
}

update_trust_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrustId = structure(logical(0), shape = "TrustId", 
        type = "string", pattern = "^t-[0-9a-f]{10}$"), SelectiveAuth = structure(logical(0), 
        shape = "SelectiveAuth", type = "string")), shape = "UpdateTrustRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_trust_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RequestId = structure(logical(0), 
        shape = "RequestId", type = "string", pattern = "^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$"), 
        TrustId = structure(logical(0), shape = "TrustId", type = "string", 
            pattern = "^t-[0-9a-f]{10}$")), shape = "UpdateTrustResult", 
        type = "structure")
    return(populate(args, shape))
}

verify_trust_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrustId = structure(logical(0), shape = "TrustId", 
        type = "string", pattern = "^t-[0-9a-f]{10}$")), shape = "VerifyTrustRequest", 
        type = "structure")
    return(populate(args, shape))
}

verify_trust_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrustId = structure(logical(0), shape = "TrustId", 
        type = "string", pattern = "^t-[0-9a-f]{10}$")), shape = "VerifyTrustResult", 
        type = "structure")
    return(populate(args, shape))
}
