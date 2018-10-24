create_device_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "projectArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description"), Rules = structure(list(structure(list(Attribute = structure(logical(0), 
        shape = "DeviceAttribute", type = "string", locationName = "attribute"), 
        Operator = structure(logical(0), shape = "RuleOperator", 
            type = "string", locationName = "operator"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value")), 
        shape = "Rule", type = "structure")), shape = "Rules", 
        type = "list", locationName = "rules")), shape = "CreateDevicePoolRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_device_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevicePool = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "DevicePoolType", 
            type = "string", locationName = "type"), Rules = structure(list(structure(list(Attribute = structure(logical(0), 
            shape = "DeviceAttribute", type = "string", locationName = "attribute"), 
            Operator = structure(logical(0), shape = "RuleOperator", 
                type = "string", locationName = "operator"), 
            Value = structure(logical(0), shape = "String", type = "string", 
                locationName = "value")), shape = "Rule", type = "structure")), 
            shape = "Rules", type = "list", locationName = "rules")), 
        shape = "DevicePool", type = "structure", locationName = "devicePool")), 
        shape = "CreateDevicePoolResult", type = "structure")
    return(populate(args, shape))
}

create_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        PackageCleanup = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "packageCleanup"), 
        ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PackageIds", 
            type = "list", locationName = "excludeAppPackagesFromCleanup"), 
        RebootAfterUse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "rebootAfterUse")), 
        shape = "CreateInstanceProfileRequest", type = "structure")
    return(populate(args, shape))
}

create_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfile = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), PackageCleanup = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
        ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PackageIds", 
            type = "list", locationName = "excludeAppPackagesFromCleanup"), 
        RebootAfterUse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "rebootAfterUse"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            max = 256L, min = 0L, locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description")), shape = "InstanceProfile", 
        type = "structure", locationName = "instanceProfile")), 
        shape = "CreateInstanceProfileResult", type = "structure")
    return(populate(args, shape))
}

create_network_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "projectArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description"), Type = structure(logical(0), 
        shape = "NetworkProfileType", type = "string", locationName = "type"), 
        UplinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkBandwidthBits"), 
        DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkBandwidthBits"), 
        UplinkDelayMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkDelayMs"), DownlinkDelayMs = structure(logical(0), 
            shape = "Long", type = "long", locationName = "downlinkDelayMs"), 
        UplinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkJitterMs"), 
        DownlinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkJitterMs"), 
        UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
        DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
        shape = "CreateNetworkProfileRequest", type = "structure")
    return(populate(args, shape))
}

create_network_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkProfile = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "NetworkProfileType", 
            type = "string", locationName = "type"), UplinkBandwidthBits = structure(logical(0), 
            shape = "Long", type = "long", locationName = "uplinkBandwidthBits"), 
        DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkBandwidthBits"), 
        UplinkDelayMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkDelayMs"), DownlinkDelayMs = structure(logical(0), 
            shape = "Long", type = "long", locationName = "downlinkDelayMs"), 
        UplinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkJitterMs"), 
        DownlinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkJitterMs"), 
        UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
        DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
        shape = "NetworkProfile", type = "structure", locationName = "networkProfile")), 
        shape = "CreateNetworkProfileResult", type = "structure")
    return(populate(args, shape))
}

create_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        DefaultJobTimeoutMinutes = structure(logical(0), shape = "JobTimeoutMinutes", 
            type = "integer", locationName = "defaultJobTimeoutMinutes")), 
        shape = "CreateProjectRequest", type = "structure")
    return(populate(args, shape))
}

create_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Project = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        DefaultJobTimeoutMinutes = structure(logical(0), shape = "JobTimeoutMinutes", 
            type = "integer", locationName = "defaultJobTimeoutMinutes"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created")), shape = "Project", type = "structure", 
        locationName = "project")), shape = "CreateProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

create_remote_access_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "projectArn"), DeviceArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "deviceArn"), InstanceArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "instanceArn"), SshPublicKey = structure(logical(0), 
        shape = "SshPublicKey", type = "string", max = 8192L, 
        min = 0L, locationName = "sshPublicKey"), RemoteDebugEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "remoteDebugEnabled"), 
        RemoteRecordEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteRecordEnabled"), 
        RemoteRecordAppArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "remoteRecordAppArn"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            max = 256L, min = 0L, locationName = "name"), ClientId = structure(logical(0), 
            shape = "ClientId", type = "string", max = 64L, min = 0L, 
            locationName = "clientId"), Configuration = structure(list(BillingMethod = structure(logical(0), 
            shape = "BillingMethod", type = "string", locationName = "billingMethod"), 
            VpceConfigurationArns = structure(list(structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L)), shape = "AmazonResourceNames", type = "list", 
                locationName = "vpceConfigurationArns")), shape = "CreateRemoteAccessSessionConfiguration", 
            type = "structure", locationName = "configuration"), 
        InteractionMode = structure(logical(0), shape = "InteractionMode", 
            type = "string", max = 64L, min = 0L, locationName = "interactionMode"), 
        SkipAppResign = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "CreateRemoteAccessSessionRequest", type = "structure")
    return(populate(args, shape))
}

create_remote_access_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RemoteAccessSession = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Device = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Manufacturer = structure(logical(0), 
            shape = "String", type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        RemoteRecordEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteRecordEnabled"), 
        RemoteRecordAppArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "remoteRecordAppArn"), 
        HostAddress = structure(logical(0), shape = "HostAddress", 
            type = "string", max = 1024L, locationName = "hostAddress"), 
        ClientId = structure(logical(0), shape = "ClientId", 
            type = "string", max = 64L, min = 0L, locationName = "clientId"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        Endpoint = structure(logical(0), shape = "String", type = "string", 
            locationName = "endpoint"), DeviceUdid = structure(logical(0), 
            shape = "String", type = "string", locationName = "deviceUdid"), 
        InteractionMode = structure(logical(0), shape = "InteractionMode", 
            type = "string", max = 64L, min = 0L, locationName = "interactionMode"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "RemoteAccessSession", type = "structure", locationName = "remoteAccessSession")), 
        shape = "CreateRemoteAccessSessionResult", type = "structure")
    return(populate(args, shape))
}

create_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "projectArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Type = structure(logical(0), 
        shape = "UploadType", type = "string", locationName = "type"), 
        ContentType = structure(logical(0), shape = "ContentType", 
            type = "string", max = 64L, min = 0L, locationName = "contentType")), 
        shape = "CreateUploadRequest", type = "structure")
    return(populate(args, shape))
}

create_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Upload = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Type = structure(logical(0), 
            shape = "UploadType", type = "string", locationName = "type"), 
        Status = structure(logical(0), shape = "UploadStatus", 
            type = "string", locationName = "status"), Url = structure(logical(0), 
            shape = "URL", type = "string", max = 2048L, min = 0L, 
            locationName = "url"), Metadata = structure(logical(0), 
            shape = "Metadata", type = "string", max = 8192L, 
            min = 0L, locationName = "metadata"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 64L, 
            min = 0L, locationName = "contentType"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Category = structure(logical(0), 
            shape = "UploadCategory", type = "string", locationName = "category")), 
        shape = "Upload", type = "structure", locationName = "upload")), 
        shape = "CreateUploadResult", type = "structure")
    return(populate(args, shape))
}

create_vpce_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpceConfigurationName = structure(logical(0), 
        shape = "VPCEConfigurationName", type = "string", max = 1024L, 
        min = 0L, locationName = "vpceConfigurationName"), VpceServiceName = structure(logical(0), 
        shape = "VPCEServiceName", type = "string", max = 2048L, 
        min = 0L, locationName = "vpceServiceName"), ServiceDnsName = structure(logical(0), 
        shape = "ServiceDnsName", type = "string", max = 2048L, 
        min = 0L, locationName = "serviceDnsName"), VpceConfigurationDescription = structure(logical(0), 
        shape = "VPCEConfigurationDescription", type = "string", 
        max = 2048L, min = 0L, locationName = "vpceConfigurationDescription")), 
        shape = "CreateVPCEConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

create_vpce_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpceConfiguration = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), VpceConfigurationName = structure(logical(0), 
        shape = "VPCEConfigurationName", type = "string", max = 1024L, 
        min = 0L, locationName = "vpceConfigurationName"), VpceServiceName = structure(logical(0), 
        shape = "VPCEServiceName", type = "string", max = 2048L, 
        min = 0L, locationName = "vpceServiceName"), ServiceDnsName = structure(logical(0), 
        shape = "ServiceDnsName", type = "string", max = 2048L, 
        min = 0L, locationName = "serviceDnsName"), VpceConfigurationDescription = structure(logical(0), 
        shape = "VPCEConfigurationDescription", type = "string", 
        max = 2048L, min = 0L, locationName = "vpceConfigurationDescription")), 
        shape = "VPCEConfiguration", type = "structure", locationName = "vpceConfiguration")), 
        shape = "CreateVPCEConfigurationResult", type = "structure")
    return(populate(args, shape))
}

delete_device_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteDevicePoolRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_device_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDevicePoolResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteInstanceProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_network_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteNetworkProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_network_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteNetworkProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_remote_access_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteRemoteAccessSessionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_remote_access_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRemoteAccessSessionResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteRunResult", type = "structure")
    return(populate(args, shape))
}

delete_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteUploadRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUploadResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpce_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "DeleteVPCEConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpce_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteVPCEConfigurationResult", 
        type = "structure")
    return(populate(args, shape))
}

get_account_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetAccountSettingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_account_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountSettings = structure(list(AwsAccountNumber = structure(logical(0), 
        shape = "AWSAccountNumber", type = "string", max = 16L, 
        min = 2L, locationName = "awsAccountNumber"), UnmeteredDevices = structure(list(structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "PurchasedDevicesMap", 
        type = "map", locationName = "unmeteredDevices"), UnmeteredRemoteAccessDevices = structure(list(structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "PurchasedDevicesMap", 
        type = "map", locationName = "unmeteredRemoteAccessDevices"), 
        MaxJobTimeoutMinutes = structure(logical(0), shape = "JobTimeoutMinutes", 
            type = "integer", locationName = "maxJobTimeoutMinutes"), 
        TrialMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Remaining = structure(logical(0), shape = "Double", 
                type = "double", locationName = "remaining")), 
            shape = "TrialMinutes", type = "structure", locationName = "trialMinutes"), 
        MaxSlots = structure(list(structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "MaxSlotMap", type = "map", 
            locationName = "maxSlots"), DefaultJobTimeoutMinutes = structure(logical(0), 
            shape = "JobTimeoutMinutes", type = "integer", locationName = "defaultJobTimeoutMinutes"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "AccountSettings", type = "structure", locationName = "accountSettings")), 
        shape = "GetAccountSettingsResult", type = "structure")
    return(populate(args, shape))
}

get_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetDeviceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Device = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Manufacturer = structure(logical(0), shape = "String", 
            type = "string", locationName = "manufacturer"), 
        Model = structure(logical(0), shape = "String", type = "string", 
            locationName = "model"), ModelId = structure(logical(0), 
            shape = "String", type = "string", locationName = "modelId"), 
        FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
            type = "string", locationName = "formFactor"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Os = structure(logical(0), shape = "String", type = "string", 
            locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
            shape = "String", type = "string", locationName = "frequency"), 
            Architecture = structure(logical(0), shape = "String", 
                type = "string", locationName = "architecture"), 
            Clock = structure(logical(0), shape = "Double", type = "double", 
                locationName = "clock")), shape = "CPU", type = "structure", 
            locationName = "cpu"), Resolution = structure(list(Width = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "width"), 
            Height = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "height")), 
            shape = "Resolution", type = "structure", locationName = "resolution"), 
        HeapSize = structure(logical(0), shape = "Long", type = "long", 
            locationName = "heapSize"), Memory = structure(logical(0), 
            shape = "Long", type = "long", locationName = "memory"), 
        Image = structure(logical(0), shape = "String", type = "string", 
            locationName = "image"), Carrier = structure(logical(0), 
            shape = "String", type = "string", locationName = "carrier"), 
        Radio = structure(logical(0), shape = "String", type = "string", 
            locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        FleetType = structure(logical(0), shape = "String", type = "string", 
            locationName = "fleetType"), FleetName = structure(logical(0), 
            shape = "String", type = "string", locationName = "fleetName"), 
        Instances = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), DeviceArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "InstanceLabels", 
            type = "list", locationName = "labels"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string", locationName = "status"), 
            Udid = structure(logical(0), shape = "String", type = "string", 
                locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "PackageIds", 
                  type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                RebootAfterUse = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "rebootAfterUse"), 
                Name = structure(logical(0), shape = "Name", 
                  type = "string", max = 256L, min = 0L, locationName = "name"), 
                Description = structure(logical(0), shape = "Message", 
                  type = "string", max = 16384L, min = 0L, locationName = "description")), 
                shape = "InstanceProfile", type = "structure", 
                locationName = "instanceProfile")), shape = "DeviceInstance", 
            type = "structure")), shape = "DeviceInstances", 
            type = "list", locationName = "instances")), shape = "Device", 
        type = "structure", locationName = "device")), shape = "GetDeviceResult", 
        type = "structure")
    return(populate(args, shape))
}

get_device_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetDeviceInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceInstance = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), DeviceArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "InstanceLabels", 
        type = "list", locationName = "labels"), Status = structure(logical(0), 
        shape = "InstanceStatus", type = "string", locationName = "status"), 
        Udid = structure(logical(0), shape = "String", type = "string", 
            locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), PackageCleanup = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
            ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "PackageIds", 
                type = "list", locationName = "excludeAppPackagesFromCleanup"), 
            RebootAfterUse = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "rebootAfterUse"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Description = structure(logical(0), shape = "Message", 
                type = "string", max = 16384L, min = 0L, locationName = "description")), 
            shape = "InstanceProfile", type = "structure", locationName = "instanceProfile")), 
        shape = "DeviceInstance", type = "structure", locationName = "deviceInstance")), 
        shape = "GetDeviceInstanceResult", type = "structure")
    return(populate(args, shape))
}

get_device_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetDevicePoolRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevicePool = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "DevicePoolType", 
            type = "string", locationName = "type"), Rules = structure(list(structure(list(Attribute = structure(logical(0), 
            shape = "DeviceAttribute", type = "string", locationName = "attribute"), 
            Operator = structure(logical(0), shape = "RuleOperator", 
                type = "string", locationName = "operator"), 
            Value = structure(logical(0), shape = "String", type = "string", 
                locationName = "value")), shape = "Rule", type = "structure")), 
            shape = "Rules", type = "list", locationName = "rules")), 
        shape = "DevicePool", type = "structure", locationName = "devicePool")), 
        shape = "GetDevicePoolResult", type = "structure")
    return(populate(args, shape))
}

get_device_pool_compatibility_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevicePoolArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "devicePoolArn"), AppArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "appArn"), TestType = structure(logical(0), 
        shape = "TestType", type = "string", locationName = "testType"), 
        Test = structure(list(Type = structure(logical(0), shape = "TestType", 
            type = "string", locationName = "type"), TestPackageArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "testPackageArn"), TestSpecArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "testSpecArn"), Filter = structure(logical(0), 
            shape = "Filter", type = "string", max = 8192L, min = 0L, 
            locationName = "filter"), Parameters = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "TestParameters", 
            type = "map", locationName = "parameters")), shape = "ScheduleRunTest", 
            type = "structure", locationName = "test"), Configuration = structure(list(ExtraDataPackageArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "extraDataPackageArn"), NetworkProfileArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "networkProfileArn"), Locale = structure(logical(0), 
            shape = "String", type = "string", locationName = "locale"), 
            Location = structure(list(Latitude = structure(logical(0), 
                shape = "Double", type = "double", locationName = "latitude"), 
                Longitude = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "longitude")), 
                shape = "Location", type = "structure", locationName = "location"), 
            VpceConfigurationArns = structure(list(structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L)), shape = "AmazonResourceNames", type = "list", 
                locationName = "vpceConfigurationArns"), CustomerArtifactPaths = structure(list(IosPaths = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "IosPaths", 
                type = "list", locationName = "iosPaths"), AndroidPaths = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "AndroidPaths", 
                type = "list", locationName = "androidPaths"), 
                DeviceHostPaths = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "DeviceHostPaths", 
                  type = "list", locationName = "deviceHostPaths")), 
                shape = "CustomerArtifactPaths", type = "structure", 
                locationName = "customerArtifactPaths"), Radios = structure(list(Wifi = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "wifi"), 
                Bluetooth = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "bluetooth"), 
                Nfc = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "nfc"), Gps = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "gps")), 
                shape = "Radios", type = "structure", locationName = "radios"), 
            AuxiliaryApps = structure(list(structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L)), shape = "AmazonResourceNames", type = "list", 
                locationName = "auxiliaryApps"), BillingMethod = structure(logical(0), 
                shape = "BillingMethod", type = "string", locationName = "billingMethod")), 
            shape = "ScheduleRunConfiguration", type = "structure", 
            locationName = "configuration")), shape = "GetDevicePoolCompatibilityRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_pool_compatibility_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CompatibleDevices = structure(list(structure(list(Device = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Manufacturer = structure(logical(0), shape = "String", 
            type = "string", locationName = "manufacturer"), 
        Model = structure(logical(0), shape = "String", type = "string", 
            locationName = "model"), ModelId = structure(logical(0), 
            shape = "String", type = "string", locationName = "modelId"), 
        FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
            type = "string", locationName = "formFactor"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Os = structure(logical(0), shape = "String", type = "string", 
            locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
            shape = "String", type = "string", locationName = "frequency"), 
            Architecture = structure(logical(0), shape = "String", 
                type = "string", locationName = "architecture"), 
            Clock = structure(logical(0), shape = "Double", type = "double", 
                locationName = "clock")), shape = "CPU", type = "structure", 
            locationName = "cpu"), Resolution = structure(list(Width = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "width"), 
            Height = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "height")), 
            shape = "Resolution", type = "structure", locationName = "resolution"), 
        HeapSize = structure(logical(0), shape = "Long", type = "long", 
            locationName = "heapSize"), Memory = structure(logical(0), 
            shape = "Long", type = "long", locationName = "memory"), 
        Image = structure(logical(0), shape = "String", type = "string", 
            locationName = "image"), Carrier = structure(logical(0), 
            shape = "String", type = "string", locationName = "carrier"), 
        Radio = structure(logical(0), shape = "String", type = "string", 
            locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        FleetType = structure(logical(0), shape = "String", type = "string", 
            locationName = "fleetType"), FleetName = structure(logical(0), 
            shape = "String", type = "string", locationName = "fleetName"), 
        Instances = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), DeviceArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "InstanceLabels", 
            type = "list", locationName = "labels"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string", locationName = "status"), 
            Udid = structure(logical(0), shape = "String", type = "string", 
                locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "PackageIds", 
                  type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                RebootAfterUse = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "rebootAfterUse"), 
                Name = structure(logical(0), shape = "Name", 
                  type = "string", max = 256L, min = 0L, locationName = "name"), 
                Description = structure(logical(0), shape = "Message", 
                  type = "string", max = 16384L, min = 0L, locationName = "description")), 
                shape = "InstanceProfile", type = "structure", 
                locationName = "instanceProfile")), shape = "DeviceInstance", 
            type = "structure")), shape = "DeviceInstances", 
            type = "list", locationName = "instances")), shape = "Device", 
        type = "structure", locationName = "device"), Compatible = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "compatible"), 
        IncompatibilityMessages = structure(list(structure(list(Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Type = structure(logical(0), 
            shape = "DeviceAttribute", type = "string", locationName = "type")), 
            shape = "IncompatibilityMessage", type = "structure")), 
            shape = "IncompatibilityMessages", type = "list", 
            locationName = "incompatibilityMessages")), shape = "DevicePoolCompatibilityResult", 
        type = "structure")), shape = "DevicePoolCompatibilityResults", 
        type = "list", locationName = "compatibleDevices"), IncompatibleDevices = structure(list(structure(list(Device = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Manufacturer = structure(logical(0), shape = "String", 
            type = "string", locationName = "manufacturer"), 
        Model = structure(logical(0), shape = "String", type = "string", 
            locationName = "model"), ModelId = structure(logical(0), 
            shape = "String", type = "string", locationName = "modelId"), 
        FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
            type = "string", locationName = "formFactor"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Os = structure(logical(0), shape = "String", type = "string", 
            locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
            shape = "String", type = "string", locationName = "frequency"), 
            Architecture = structure(logical(0), shape = "String", 
                type = "string", locationName = "architecture"), 
            Clock = structure(logical(0), shape = "Double", type = "double", 
                locationName = "clock")), shape = "CPU", type = "structure", 
            locationName = "cpu"), Resolution = structure(list(Width = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "width"), 
            Height = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "height")), 
            shape = "Resolution", type = "structure", locationName = "resolution"), 
        HeapSize = structure(logical(0), shape = "Long", type = "long", 
            locationName = "heapSize"), Memory = structure(logical(0), 
            shape = "Long", type = "long", locationName = "memory"), 
        Image = structure(logical(0), shape = "String", type = "string", 
            locationName = "image"), Carrier = structure(logical(0), 
            shape = "String", type = "string", locationName = "carrier"), 
        Radio = structure(logical(0), shape = "String", type = "string", 
            locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        FleetType = structure(logical(0), shape = "String", type = "string", 
            locationName = "fleetType"), FleetName = structure(logical(0), 
            shape = "String", type = "string", locationName = "fleetName"), 
        Instances = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), DeviceArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "InstanceLabels", 
            type = "list", locationName = "labels"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string", locationName = "status"), 
            Udid = structure(logical(0), shape = "String", type = "string", 
                locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "PackageIds", 
                  type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                RebootAfterUse = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "rebootAfterUse"), 
                Name = structure(logical(0), shape = "Name", 
                  type = "string", max = 256L, min = 0L, locationName = "name"), 
                Description = structure(logical(0), shape = "Message", 
                  type = "string", max = 16384L, min = 0L, locationName = "description")), 
                shape = "InstanceProfile", type = "structure", 
                locationName = "instanceProfile")), shape = "DeviceInstance", 
            type = "structure")), shape = "DeviceInstances", 
            type = "list", locationName = "instances")), shape = "Device", 
        type = "structure", locationName = "device"), Compatible = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "compatible"), 
        IncompatibilityMessages = structure(list(structure(list(Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Type = structure(logical(0), 
            shape = "DeviceAttribute", type = "string", locationName = "type")), 
            shape = "IncompatibilityMessage", type = "structure")), 
            shape = "IncompatibilityMessages", type = "list", 
            locationName = "incompatibilityMessages")), shape = "DevicePoolCompatibilityResult", 
        type = "structure")), shape = "DevicePoolCompatibilityResults", 
        type = "list", locationName = "incompatibleDevices")), 
        shape = "GetDevicePoolCompatibilityResult", type = "structure")
    return(populate(args, shape))
}

get_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfile = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), PackageCleanup = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
        ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PackageIds", 
            type = "list", locationName = "excludeAppPackagesFromCleanup"), 
        RebootAfterUse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "rebootAfterUse"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            max = 256L, min = 0L, locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description")), shape = "InstanceProfile", 
        type = "structure", locationName = "instanceProfile")), 
        shape = "GetInstanceProfileResult", type = "structure")
    return(populate(args, shape))
}

get_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Job = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        Device = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Manufacturer = structure(logical(0), shape = "String", 
                type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        VideoEndpoint = structure(logical(0), shape = "String", 
            type = "string", locationName = "videoEndpoint"), 
        VideoCapture = structure(logical(0), shape = "VideoCapture", 
            type = "boolean", locationName = "videoCapture")), 
        shape = "Job", type = "structure", locationName = "job")), 
        shape = "GetJobResult", type = "structure")
    return(populate(args, shape))
}

get_network_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetNetworkProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_network_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkProfile = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "NetworkProfileType", 
            type = "string", locationName = "type"), UplinkBandwidthBits = structure(logical(0), 
            shape = "Long", type = "long", locationName = "uplinkBandwidthBits"), 
        DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkBandwidthBits"), 
        UplinkDelayMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkDelayMs"), DownlinkDelayMs = structure(logical(0), 
            shape = "Long", type = "long", locationName = "downlinkDelayMs"), 
        UplinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkJitterMs"), 
        DownlinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkJitterMs"), 
        UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
        DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
        shape = "NetworkProfile", type = "structure", locationName = "networkProfile")), 
        shape = "GetNetworkProfileResult", type = "structure")
    return(populate(args, shape))
}

get_offering_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "GetOfferingStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_offering_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Current = structure(list(structure(list(Type = structure(logical(0), 
        shape = "OfferingTransactionType", type = "string", locationName = "type"), 
        Offering = structure(list(Id = structure(logical(0), 
            shape = "OfferingIdentifier", type = "string", min = 32L, 
            locationName = "id"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "OfferingType", type = "string", locationName = "type"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            RecurringCharges = structure(list(structure(list(Cost = structure(list(Amount = structure(logical(0), 
                shape = "Double", type = "double", locationName = "amount"), 
                CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                  type = "string", locationName = "currencyCode")), 
                shape = "MonetaryAmount", type = "structure", 
                locationName = "cost"), Frequency = structure(logical(0), 
                shape = "RecurringChargeFrequency", type = "string", 
                locationName = "frequency")), shape = "RecurringCharge", 
                type = "structure")), shape = "RecurringCharges", 
                type = "list", locationName = "recurringCharges")), 
            shape = "Offering", type = "structure", locationName = "offering"), 
        Quantity = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "quantity"), EffectiveOn = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "effectiveOn")), 
        shape = "OfferingStatus", type = "structure")), shape = "OfferingStatusMap", 
        type = "map", locationName = "current"), NextPeriod = structure(list(structure(list(Type = structure(logical(0), 
        shape = "OfferingTransactionType", type = "string", locationName = "type"), 
        Offering = structure(list(Id = structure(logical(0), 
            shape = "OfferingIdentifier", type = "string", min = 32L, 
            locationName = "id"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "OfferingType", type = "string", locationName = "type"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            RecurringCharges = structure(list(structure(list(Cost = structure(list(Amount = structure(logical(0), 
                shape = "Double", type = "double", locationName = "amount"), 
                CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                  type = "string", locationName = "currencyCode")), 
                shape = "MonetaryAmount", type = "structure", 
                locationName = "cost"), Frequency = structure(logical(0), 
                shape = "RecurringChargeFrequency", type = "string", 
                locationName = "frequency")), shape = "RecurringCharge", 
                type = "structure")), shape = "RecurringCharges", 
                type = "list", locationName = "recurringCharges")), 
            shape = "Offering", type = "structure", locationName = "offering"), 
        Quantity = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "quantity"), EffectiveOn = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "effectiveOn")), 
        shape = "OfferingStatus", type = "structure")), shape = "OfferingStatusMap", 
        type = "map", locationName = "nextPeriod"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "GetOfferingStatusResult", 
        type = "structure")
    return(populate(args, shape))
}

get_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Project = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        DefaultJobTimeoutMinutes = structure(logical(0), shape = "JobTimeoutMinutes", 
            type = "integer", locationName = "defaultJobTimeoutMinutes"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created")), shape = "Project", type = "structure", 
        locationName = "project")), shape = "GetProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

get_remote_access_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetRemoteAccessSessionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_remote_access_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RemoteAccessSession = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Device = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Manufacturer = structure(logical(0), 
            shape = "String", type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        RemoteRecordEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteRecordEnabled"), 
        RemoteRecordAppArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "remoteRecordAppArn"), 
        HostAddress = structure(logical(0), shape = "HostAddress", 
            type = "string", max = 1024L, locationName = "hostAddress"), 
        ClientId = structure(logical(0), shape = "ClientId", 
            type = "string", max = 64L, min = 0L, locationName = "clientId"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        Endpoint = structure(logical(0), shape = "String", type = "string", 
            locationName = "endpoint"), DeviceUdid = structure(logical(0), 
            shape = "String", type = "string", locationName = "deviceUdid"), 
        InteractionMode = structure(logical(0), shape = "InteractionMode", 
            type = "string", max = 64L, min = 0L, locationName = "interactionMode"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "RemoteAccessSession", type = "structure", locationName = "remoteAccessSession")), 
        shape = "GetRemoteAccessSessionResult", type = "structure")
    return(populate(args, shape))
}

get_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Run = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        TotalJobs = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "totalJobs"), CompletedJobs = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "completedJobs"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        NetworkProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "NetworkProfileType", type = "string", locationName = "type"), 
            UplinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkBandwidthBits"), 
            DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkBandwidthBits"), 
            UplinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkDelayMs"), 
            DownlinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkDelayMs"), 
            UplinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkJitterMs"), 
            DownlinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkJitterMs"), 
            UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
            DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
            shape = "NetworkProfile", type = "structure", locationName = "networkProfile"), 
        ParsingResultUrl = structure(logical(0), shape = "String", 
            type = "string", locationName = "parsingResultUrl"), 
        ResultCode = structure(logical(0), shape = "ExecutionResultCode", 
            type = "string", locationName = "resultCode"), Seed = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "seed"), 
        AppUpload = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "appUpload"), 
        EventCount = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "eventCount"), JobTimeoutMinutes = structure(logical(0), 
            shape = "JobTimeoutMinutes", type = "integer", locationName = "jobTimeoutMinutes"), 
        DevicePoolArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "devicePoolArn"), 
        Locale = structure(logical(0), shape = "String", type = "string", 
            locationName = "locale"), Radios = structure(list(Wifi = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "wifi"), 
            Bluetooth = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "bluetooth"), 
            Nfc = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "nfc"), Gps = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "gps")), 
            shape = "Radios", type = "structure", locationName = "radios"), 
        Location = structure(list(Latitude = structure(logical(0), 
            shape = "Double", type = "double", locationName = "latitude"), 
            Longitude = structure(logical(0), shape = "Double", 
                type = "double", locationName = "longitude")), 
            shape = "Location", type = "structure", locationName = "location"), 
        CustomerArtifactPaths = structure(list(IosPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "IosPaths", 
            type = "list", locationName = "iosPaths"), AndroidPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AndroidPaths", 
            type = "list", locationName = "androidPaths"), DeviceHostPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "DeviceHostPaths", 
            type = "list", locationName = "deviceHostPaths")), 
            shape = "CustomerArtifactPaths", type = "structure", 
            locationName = "customerArtifactPaths"), WebUrl = structure(logical(0), 
            shape = "String", type = "string", locationName = "webUrl"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign"), 
        TestSpecArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "testSpecArn")), 
        shape = "Run", type = "structure", locationName = "run")), 
        shape = "GetRunResult", type = "structure")
    return(populate(args, shape))
}

get_suite_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetSuiteRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_suite_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Suite = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes")), 
        shape = "Suite", type = "structure", locationName = "suite")), 
        shape = "GetSuiteResult", type = "structure")
    return(populate(args, shape))
}

get_test_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetTestRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_test_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Test = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes")), 
        shape = "Test", type = "structure", locationName = "test")), 
        shape = "GetTestResult", type = "structure")
    return(populate(args, shape))
}

get_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetUploadRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Upload = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Type = structure(logical(0), 
            shape = "UploadType", type = "string", locationName = "type"), 
        Status = structure(logical(0), shape = "UploadStatus", 
            type = "string", locationName = "status"), Url = structure(logical(0), 
            shape = "URL", type = "string", max = 2048L, min = 0L, 
            locationName = "url"), Metadata = structure(logical(0), 
            shape = "Metadata", type = "string", max = 8192L, 
            min = 0L, locationName = "metadata"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 64L, 
            min = 0L, locationName = "contentType"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Category = structure(logical(0), 
            shape = "UploadCategory", type = "string", locationName = "category")), 
        shape = "Upload", type = "structure", locationName = "upload")), 
        shape = "GetUploadResult", type = "structure")
    return(populate(args, shape))
}

get_vpce_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "GetVPCEConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_vpce_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpceConfiguration = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), VpceConfigurationName = structure(logical(0), 
        shape = "VPCEConfigurationName", type = "string", max = 1024L, 
        min = 0L, locationName = "vpceConfigurationName"), VpceServiceName = structure(logical(0), 
        shape = "VPCEServiceName", type = "string", max = 2048L, 
        min = 0L, locationName = "vpceServiceName"), ServiceDnsName = structure(logical(0), 
        shape = "ServiceDnsName", type = "string", max = 2048L, 
        min = 0L, locationName = "serviceDnsName"), VpceConfigurationDescription = structure(logical(0), 
        shape = "VPCEConfigurationDescription", type = "string", 
        max = 2048L, min = 0L, locationName = "vpceConfigurationDescription")), 
        shape = "VPCEConfiguration", type = "structure", locationName = "vpceConfiguration")), 
        shape = "GetVPCEConfigurationResult", type = "structure")
    return(populate(args, shape))
}

install_to_remote_access_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RemoteAccessSessionArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "remoteAccessSessionArn"), AppArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "appArn")), shape = "InstallToRemoteAccessSessionRequest", 
        type = "structure")
    return(populate(args, shape))
}

install_to_remote_access_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AppUpload = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Type = structure(logical(0), 
            shape = "UploadType", type = "string", locationName = "type"), 
        Status = structure(logical(0), shape = "UploadStatus", 
            type = "string", locationName = "status"), Url = structure(logical(0), 
            shape = "URL", type = "string", max = 2048L, min = 0L, 
            locationName = "url"), Metadata = structure(logical(0), 
            shape = "Metadata", type = "string", max = 8192L, 
            min = 0L, locationName = "metadata"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 64L, 
            min = 0L, locationName = "contentType"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Category = structure(logical(0), 
            shape = "UploadCategory", type = "string", locationName = "category")), 
        shape = "Upload", type = "structure", locationName = "appUpload")), 
        shape = "InstallToRemoteAccessSessionResult", type = "structure")
    return(populate(args, shape))
}

list_artifacts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Type = structure(logical(0), 
        shape = "ArtifactCategory", type = "string", locationName = "type"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListArtifactsRequest", type = "structure")
    return(populate(args, shape))
}

list_artifacts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Artifacts = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "ArtifactType", 
            type = "string", locationName = "type"), Extension = structure(logical(0), 
            shape = "String", type = "string", locationName = "extension"), 
        Url = structure(logical(0), shape = "URL", type = "string", 
            max = 2048L, min = 0L, locationName = "url")), shape = "Artifact", 
        type = "structure")), shape = "Artifacts", type = "list", 
        locationName = "artifacts"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListArtifactsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_device_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListDeviceInstancesRequest", type = "structure")
    return(populate(args, shape))
}

list_device_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceInstances = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), DeviceArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "InstanceLabels", 
        type = "list", locationName = "labels"), Status = structure(logical(0), 
        shape = "InstanceStatus", type = "string", locationName = "status"), 
        Udid = structure(logical(0), shape = "String", type = "string", 
            locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), PackageCleanup = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
            ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "PackageIds", 
                type = "list", locationName = "excludeAppPackagesFromCleanup"), 
            RebootAfterUse = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "rebootAfterUse"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Description = structure(logical(0), shape = "Message", 
                type = "string", max = 16384L, min = 0L, locationName = "description")), 
            shape = "InstanceProfile", type = "structure", locationName = "instanceProfile")), 
        shape = "DeviceInstance", type = "structure")), shape = "DeviceInstances", 
        type = "list", locationName = "deviceInstances"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListDeviceInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_device_pools_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Type = structure(logical(0), 
        shape = "DevicePoolType", type = "string", locationName = "type"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListDevicePoolsRequest", type = "structure")
    return(populate(args, shape))
}

list_device_pools_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevicePools = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "DevicePoolType", 
            type = "string", locationName = "type"), Rules = structure(list(structure(list(Attribute = structure(logical(0), 
            shape = "DeviceAttribute", type = "string", locationName = "attribute"), 
            Operator = structure(logical(0), shape = "RuleOperator", 
                type = "string", locationName = "operator"), 
            Value = structure(logical(0), shape = "String", type = "string", 
                locationName = "value")), shape = "Rule", type = "structure")), 
            shape = "Rules", type = "list", locationName = "rules")), 
        shape = "DevicePool", type = "structure")), shape = "DevicePools", 
        type = "list", locationName = "devicePools"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListDevicePoolsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListDevicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Devices = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Manufacturer = structure(logical(0), shape = "String", 
            type = "string", locationName = "manufacturer"), 
        Model = structure(logical(0), shape = "String", type = "string", 
            locationName = "model"), ModelId = structure(logical(0), 
            shape = "String", type = "string", locationName = "modelId"), 
        FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
            type = "string", locationName = "formFactor"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Os = structure(logical(0), shape = "String", type = "string", 
            locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
            shape = "String", type = "string", locationName = "frequency"), 
            Architecture = structure(logical(0), shape = "String", 
                type = "string", locationName = "architecture"), 
            Clock = structure(logical(0), shape = "Double", type = "double", 
                locationName = "clock")), shape = "CPU", type = "structure", 
            locationName = "cpu"), Resolution = structure(list(Width = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "width"), 
            Height = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "height")), 
            shape = "Resolution", type = "structure", locationName = "resolution"), 
        HeapSize = structure(logical(0), shape = "Long", type = "long", 
            locationName = "heapSize"), Memory = structure(logical(0), 
            shape = "Long", type = "long", locationName = "memory"), 
        Image = structure(logical(0), shape = "String", type = "string", 
            locationName = "image"), Carrier = structure(logical(0), 
            shape = "String", type = "string", locationName = "carrier"), 
        Radio = structure(logical(0), shape = "String", type = "string", 
            locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        FleetType = structure(logical(0), shape = "String", type = "string", 
            locationName = "fleetType"), FleetName = structure(logical(0), 
            shape = "String", type = "string", locationName = "fleetName"), 
        Instances = structure(list(structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), DeviceArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "InstanceLabels", 
            type = "list", locationName = "labels"), Status = structure(logical(0), 
            shape = "InstanceStatus", type = "string", locationName = "status"), 
            Udid = structure(logical(0), shape = "String", type = "string", 
                locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                  shape = "String", type = "string")), shape = "PackageIds", 
                  type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                RebootAfterUse = structure(logical(0), shape = "Boolean", 
                  type = "boolean", locationName = "rebootAfterUse"), 
                Name = structure(logical(0), shape = "Name", 
                  type = "string", max = 256L, min = 0L, locationName = "name"), 
                Description = structure(logical(0), shape = "Message", 
                  type = "string", max = 16384L, min = 0L, locationName = "description")), 
                shape = "InstanceProfile", type = "structure", 
                locationName = "instanceProfile")), shape = "DeviceInstance", 
            type = "structure")), shape = "DeviceInstances", 
            type = "list", locationName = "instances")), shape = "Device", 
        type = "structure")), shape = "Devices", type = "list", 
        locationName = "devices"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListDevicesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_instance_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListInstanceProfilesRequest", type = "structure")
    return(populate(args, shape))
}

list_instance_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfiles = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), PackageCleanup = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
        ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PackageIds", 
            type = "list", locationName = "excludeAppPackagesFromCleanup"), 
        RebootAfterUse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "rebootAfterUse"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            max = 256L, min = 0L, locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description")), shape = "InstanceProfile", 
        type = "structure")), shape = "InstanceProfiles", type = "list", 
        locationName = "instanceProfiles"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListInstanceProfilesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        Device = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Manufacturer = structure(logical(0), shape = "String", 
                type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        VideoEndpoint = structure(logical(0), shape = "String", 
            type = "string", locationName = "videoEndpoint"), 
        VideoCapture = structure(logical(0), shape = "VideoCapture", 
            type = "boolean", locationName = "videoCapture")), 
        shape = "Job", type = "structure")), shape = "Jobs", 
        type = "list", locationName = "jobs"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListJobsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_network_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Type = structure(logical(0), 
        shape = "NetworkProfileType", type = "string", locationName = "type"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListNetworkProfilesRequest", type = "structure")
    return(populate(args, shape))
}

list_network_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkProfiles = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "NetworkProfileType", 
            type = "string", locationName = "type"), UplinkBandwidthBits = structure(logical(0), 
            shape = "Long", type = "long", locationName = "uplinkBandwidthBits"), 
        DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkBandwidthBits"), 
        UplinkDelayMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkDelayMs"), DownlinkDelayMs = structure(logical(0), 
            shape = "Long", type = "long", locationName = "downlinkDelayMs"), 
        UplinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkJitterMs"), 
        DownlinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkJitterMs"), 
        UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
        DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
        shape = "NetworkProfile", type = "structure")), shape = "NetworkProfiles", 
        type = "list", locationName = "networkProfiles"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListNetworkProfilesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_offering_promotions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListOfferingPromotionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_offering_promotions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OfferingPromotions = structure(list(structure(list(Id = structure(logical(0), 
        shape = "OfferingPromotionIdentifier", type = "string", 
        min = 4L, locationName = "id"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description")), shape = "OfferingPromotion", 
        type = "structure")), shape = "OfferingPromotions", type = "list", 
        locationName = "offeringPromotions"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListOfferingPromotionsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_offering_transactions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListOfferingTransactionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_offering_transactions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OfferingTransactions = structure(list(structure(list(OfferingStatus = structure(list(Type = structure(logical(0), 
        shape = "OfferingTransactionType", type = "string", locationName = "type"), 
        Offering = structure(list(Id = structure(logical(0), 
            shape = "OfferingIdentifier", type = "string", min = 32L, 
            locationName = "id"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "OfferingType", type = "string", locationName = "type"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            RecurringCharges = structure(list(structure(list(Cost = structure(list(Amount = structure(logical(0), 
                shape = "Double", type = "double", locationName = "amount"), 
                CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                  type = "string", locationName = "currencyCode")), 
                shape = "MonetaryAmount", type = "structure", 
                locationName = "cost"), Frequency = structure(logical(0), 
                shape = "RecurringChargeFrequency", type = "string", 
                locationName = "frequency")), shape = "RecurringCharge", 
                type = "structure")), shape = "RecurringCharges", 
                type = "list", locationName = "recurringCharges")), 
            shape = "Offering", type = "structure", locationName = "offering"), 
        Quantity = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "quantity"), EffectiveOn = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "effectiveOn")), 
        shape = "OfferingStatus", type = "structure", locationName = "offeringStatus"), 
        TransactionId = structure(logical(0), shape = "TransactionIdentifier", 
            type = "string", min = 32L, locationName = "transactionId"), 
        OfferingPromotionId = structure(logical(0), shape = "OfferingPromotionIdentifier", 
            type = "string", min = 4L, locationName = "offeringPromotionId"), 
        CreatedOn = structure(logical(0), shape = "DateTime", 
            type = "timestamp", locationName = "createdOn"), 
        Cost = structure(list(Amount = structure(logical(0), 
            shape = "Double", type = "double", locationName = "amount"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                type = "string", locationName = "currencyCode")), 
            shape = "MonetaryAmount", type = "structure", locationName = "cost")), 
        shape = "OfferingTransaction", type = "structure")), 
        shape = "OfferingTransactions", type = "list", locationName = "offeringTransactions"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListOfferingTransactionsResult", type = "structure")
    return(populate(args, shape))
}

list_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListOfferingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Offerings = structure(list(structure(list(Id = structure(logical(0), 
        shape = "OfferingIdentifier", type = "string", min = 32L, 
        locationName = "id"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description"), Type = structure(logical(0), 
        shape = "OfferingType", type = "string", locationName = "type"), 
        Platform = structure(logical(0), shape = "DevicePlatform", 
            type = "string", locationName = "platform"), RecurringCharges = structure(list(structure(list(Cost = structure(list(Amount = structure(logical(0), 
            shape = "Double", type = "double", locationName = "amount"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                type = "string", locationName = "currencyCode")), 
            shape = "MonetaryAmount", type = "structure", locationName = "cost"), 
            Frequency = structure(logical(0), shape = "RecurringChargeFrequency", 
                type = "string", locationName = "frequency")), 
            shape = "RecurringCharge", type = "structure")), 
            shape = "RecurringCharges", type = "list", locationName = "recurringCharges")), 
        shape = "Offering", type = "structure")), shape = "Offerings", 
        type = "list", locationName = "offerings"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListOfferingsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_projects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListProjectsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_projects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Projects = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        DefaultJobTimeoutMinutes = structure(logical(0), shape = "JobTimeoutMinutes", 
            type = "integer", locationName = "defaultJobTimeoutMinutes"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created")), shape = "Project", type = "structure")), 
        shape = "Projects", type = "list", locationName = "projects"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListProjectsResult", type = "structure")
    return(populate(args, shape))
}

list_remote_access_sessions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListRemoteAccessSessionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_remote_access_sessions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RemoteAccessSessions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Device = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Manufacturer = structure(logical(0), 
            shape = "String", type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        RemoteRecordEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteRecordEnabled"), 
        RemoteRecordAppArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "remoteRecordAppArn"), 
        HostAddress = structure(logical(0), shape = "HostAddress", 
            type = "string", max = 1024L, locationName = "hostAddress"), 
        ClientId = structure(logical(0), shape = "ClientId", 
            type = "string", max = 64L, min = 0L, locationName = "clientId"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        Endpoint = structure(logical(0), shape = "String", type = "string", 
            locationName = "endpoint"), DeviceUdid = structure(logical(0), 
            shape = "String", type = "string", locationName = "deviceUdid"), 
        InteractionMode = structure(logical(0), shape = "InteractionMode", 
            type = "string", max = 64L, min = 0L, locationName = "interactionMode"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "RemoteAccessSession", type = "structure")), 
        shape = "RemoteAccessSessions", type = "list", locationName = "remoteAccessSessions"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListRemoteAccessSessionsResult", type = "structure")
    return(populate(args, shape))
}

list_runs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListRunsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_runs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Runs = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        TotalJobs = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "totalJobs"), CompletedJobs = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "completedJobs"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        NetworkProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "NetworkProfileType", type = "string", locationName = "type"), 
            UplinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkBandwidthBits"), 
            DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkBandwidthBits"), 
            UplinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkDelayMs"), 
            DownlinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkDelayMs"), 
            UplinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkJitterMs"), 
            DownlinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkJitterMs"), 
            UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
            DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
            shape = "NetworkProfile", type = "structure", locationName = "networkProfile"), 
        ParsingResultUrl = structure(logical(0), shape = "String", 
            type = "string", locationName = "parsingResultUrl"), 
        ResultCode = structure(logical(0), shape = "ExecutionResultCode", 
            type = "string", locationName = "resultCode"), Seed = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "seed"), 
        AppUpload = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "appUpload"), 
        EventCount = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "eventCount"), JobTimeoutMinutes = structure(logical(0), 
            shape = "JobTimeoutMinutes", type = "integer", locationName = "jobTimeoutMinutes"), 
        DevicePoolArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "devicePoolArn"), 
        Locale = structure(logical(0), shape = "String", type = "string", 
            locationName = "locale"), Radios = structure(list(Wifi = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "wifi"), 
            Bluetooth = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "bluetooth"), 
            Nfc = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "nfc"), Gps = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "gps")), 
            shape = "Radios", type = "structure", locationName = "radios"), 
        Location = structure(list(Latitude = structure(logical(0), 
            shape = "Double", type = "double", locationName = "latitude"), 
            Longitude = structure(logical(0), shape = "Double", 
                type = "double", locationName = "longitude")), 
            shape = "Location", type = "structure", locationName = "location"), 
        CustomerArtifactPaths = structure(list(IosPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "IosPaths", 
            type = "list", locationName = "iosPaths"), AndroidPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AndroidPaths", 
            type = "list", locationName = "androidPaths"), DeviceHostPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "DeviceHostPaths", 
            type = "list", locationName = "deviceHostPaths")), 
            shape = "CustomerArtifactPaths", type = "structure", 
            locationName = "customerArtifactPaths"), WebUrl = structure(logical(0), 
            shape = "String", type = "string", locationName = "webUrl"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign"), 
        TestSpecArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "testSpecArn")), 
        shape = "Run", type = "structure")), shape = "Runs", 
        type = "list", locationName = "runs"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListRunsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_samples_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListSamplesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_samples_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Samples = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Type = structure(logical(0), shape = "SampleType", 
        type = "string", locationName = "type"), Url = structure(logical(0), 
        shape = "URL", type = "string", max = 2048L, min = 0L, 
        locationName = "url")), shape = "Sample", type = "structure")), 
        shape = "Samples", type = "list", locationName = "samples"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListSamplesResult", type = "structure")
    return(populate(args, shape))
}

list_suites_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListSuitesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_suites_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Suites = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes")), 
        shape = "Suite", type = "structure")), shape = "Suites", 
        type = "list", locationName = "suites"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListSuitesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_tests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListTestsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tests = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes")), 
        shape = "Test", type = "structure")), shape = "Tests", 
        type = "list", locationName = "tests"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListTestsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_unique_problems_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListUniqueProblemsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_unique_problems_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UniqueProblems = structure(list(structure(list(structure(list(Message = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "message"), Problems = structure(list(structure(list(Run = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name")), 
        shape = "ProblemDetail", type = "structure", locationName = "run"), 
        Job = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name")), 
            shape = "ProblemDetail", type = "structure", locationName = "job"), 
        Suite = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name")), 
            shape = "ProblemDetail", type = "structure", locationName = "suite"), 
        Test = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name")), 
            shape = "ProblemDetail", type = "structure", locationName = "test"), 
        Device = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Manufacturer = structure(logical(0), shape = "String", 
                type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message")), shape = "Problem", 
        type = "structure")), shape = "Problems", type = "list", 
        locationName = "problems")), shape = "UniqueProblem", 
        type = "structure")), shape = "UniqueProblems", type = "list")), 
        shape = "UniqueProblemsByExecutionResultMap", type = "map", 
        locationName = "uniqueProblems"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListUniqueProblemsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_uploads_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Type = structure(logical(0), 
        shape = "UploadType", type = "string", locationName = "type"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListUploadsRequest", type = "structure")
    return(populate(args, shape))
}

list_uploads_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Uploads = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Type = structure(logical(0), 
            shape = "UploadType", type = "string", locationName = "type"), 
        Status = structure(logical(0), shape = "UploadStatus", 
            type = "string", locationName = "status"), Url = structure(logical(0), 
            shape = "URL", type = "string", max = 2048L, min = 0L, 
            locationName = "url"), Metadata = structure(logical(0), 
            shape = "Metadata", type = "string", max = 8192L, 
            min = 0L, locationName = "metadata"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 64L, 
            min = 0L, locationName = "contentType"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Category = structure(logical(0), 
            shape = "UploadCategory", type = "string", locationName = "category")), 
        shape = "Upload", type = "structure")), shape = "Uploads", 
        type = "list", locationName = "uploads"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 1024L, 
        min = 4L, locationName = "nextToken")), shape = "ListUploadsResult", 
        type = "structure")
    return(populate(args, shape))
}

list_vpce_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListVPCEConfigurationsRequest", type = "structure")
    return(populate(args, shape))
}

list_vpce_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpceConfigurations = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), VpceConfigurationName = structure(logical(0), 
        shape = "VPCEConfigurationName", type = "string", max = 1024L, 
        min = 0L, locationName = "vpceConfigurationName"), VpceServiceName = structure(logical(0), 
        shape = "VPCEServiceName", type = "string", max = 2048L, 
        min = 0L, locationName = "vpceServiceName"), ServiceDnsName = structure(logical(0), 
        shape = "ServiceDnsName", type = "string", max = 2048L, 
        min = 0L, locationName = "serviceDnsName"), VpceConfigurationDescription = structure(logical(0), 
        shape = "VPCEConfigurationDescription", type = "string", 
        max = 2048L, min = 0L, locationName = "vpceConfigurationDescription")), 
        shape = "VPCEConfiguration", type = "structure")), shape = "VPCEConfigurations", 
        type = "list", locationName = "vpceConfigurations"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 1024L, min = 4L, locationName = "nextToken")), 
        shape = "ListVPCEConfigurationsResult", type = "structure")
    return(populate(args, shape))
}

purchase_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OfferingId = structure(logical(0), 
        shape = "OfferingIdentifier", type = "string", min = 32L, 
        locationName = "offeringId"), Quantity = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "quantity"), 
        OfferingPromotionId = structure(logical(0), shape = "OfferingPromotionIdentifier", 
            type = "string", min = 4L, locationName = "offeringPromotionId")), 
        shape = "PurchaseOfferingRequest", type = "structure")
    return(populate(args, shape))
}

purchase_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OfferingTransaction = structure(list(OfferingStatus = structure(list(Type = structure(logical(0), 
        shape = "OfferingTransactionType", type = "string", locationName = "type"), 
        Offering = structure(list(Id = structure(logical(0), 
            shape = "OfferingIdentifier", type = "string", min = 32L, 
            locationName = "id"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "OfferingType", type = "string", locationName = "type"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            RecurringCharges = structure(list(structure(list(Cost = structure(list(Amount = structure(logical(0), 
                shape = "Double", type = "double", locationName = "amount"), 
                CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                  type = "string", locationName = "currencyCode")), 
                shape = "MonetaryAmount", type = "structure", 
                locationName = "cost"), Frequency = structure(logical(0), 
                shape = "RecurringChargeFrequency", type = "string", 
                locationName = "frequency")), shape = "RecurringCharge", 
                type = "structure")), shape = "RecurringCharges", 
                type = "list", locationName = "recurringCharges")), 
            shape = "Offering", type = "structure", locationName = "offering"), 
        Quantity = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "quantity"), EffectiveOn = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "effectiveOn")), 
        shape = "OfferingStatus", type = "structure", locationName = "offeringStatus"), 
        TransactionId = structure(logical(0), shape = "TransactionIdentifier", 
            type = "string", min = 32L, locationName = "transactionId"), 
        OfferingPromotionId = structure(logical(0), shape = "OfferingPromotionIdentifier", 
            type = "string", min = 4L, locationName = "offeringPromotionId"), 
        CreatedOn = structure(logical(0), shape = "DateTime", 
            type = "timestamp", locationName = "createdOn"), 
        Cost = structure(list(Amount = structure(logical(0), 
            shape = "Double", type = "double", locationName = "amount"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                type = "string", locationName = "currencyCode")), 
            shape = "MonetaryAmount", type = "structure", locationName = "cost")), 
        shape = "OfferingTransaction", type = "structure", locationName = "offeringTransaction")), 
        shape = "PurchaseOfferingResult", type = "structure")
    return(populate(args, shape))
}

renew_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OfferingId = structure(logical(0), 
        shape = "OfferingIdentifier", type = "string", min = 32L, 
        locationName = "offeringId"), Quantity = structure(logical(0), 
        shape = "Integer", type = "integer", locationName = "quantity")), 
        shape = "RenewOfferingRequest", type = "structure")
    return(populate(args, shape))
}

renew_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OfferingTransaction = structure(list(OfferingStatus = structure(list(Type = structure(logical(0), 
        shape = "OfferingTransactionType", type = "string", locationName = "type"), 
        Offering = structure(list(Id = structure(logical(0), 
            shape = "OfferingIdentifier", type = "string", min = 32L, 
            locationName = "id"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "OfferingType", type = "string", locationName = "type"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            RecurringCharges = structure(list(structure(list(Cost = structure(list(Amount = structure(logical(0), 
                shape = "Double", type = "double", locationName = "amount"), 
                CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                  type = "string", locationName = "currencyCode")), 
                shape = "MonetaryAmount", type = "structure", 
                locationName = "cost"), Frequency = structure(logical(0), 
                shape = "RecurringChargeFrequency", type = "string", 
                locationName = "frequency")), shape = "RecurringCharge", 
                type = "structure")), shape = "RecurringCharges", 
                type = "list", locationName = "recurringCharges")), 
            shape = "Offering", type = "structure", locationName = "offering"), 
        Quantity = structure(logical(0), shape = "Integer", type = "integer", 
            locationName = "quantity"), EffectiveOn = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "effectiveOn")), 
        shape = "OfferingStatus", type = "structure", locationName = "offeringStatus"), 
        TransactionId = structure(logical(0), shape = "TransactionIdentifier", 
            type = "string", min = 32L, locationName = "transactionId"), 
        OfferingPromotionId = structure(logical(0), shape = "OfferingPromotionIdentifier", 
            type = "string", min = 4L, locationName = "offeringPromotionId"), 
        CreatedOn = structure(logical(0), shape = "DateTime", 
            type = "timestamp", locationName = "createdOn"), 
        Cost = structure(list(Amount = structure(logical(0), 
            shape = "Double", type = "double", locationName = "amount"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCode", 
                type = "string", locationName = "currencyCode")), 
            shape = "MonetaryAmount", type = "structure", locationName = "cost")), 
        shape = "OfferingTransaction", type = "structure", locationName = "offeringTransaction")), 
        shape = "RenewOfferingResult", type = "structure")
    return(populate(args, shape))
}

schedule_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "projectArn"), AppArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "appArn"), DevicePoolArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "devicePoolArn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Test = structure(list(Type = structure(logical(0), 
        shape = "TestType", type = "string", locationName = "type"), 
        TestPackageArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "testPackageArn"), 
        TestSpecArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "testSpecArn"), 
        Filter = structure(logical(0), shape = "Filter", type = "string", 
            max = 8192L, min = 0L, locationName = "filter"), 
        Parameters = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "TestParameters", type = "map", 
            locationName = "parameters")), shape = "ScheduleRunTest", 
        type = "structure", locationName = "test"), Configuration = structure(list(ExtraDataPackageArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "extraDataPackageArn"), NetworkProfileArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "networkProfileArn"), Locale = structure(logical(0), 
        shape = "String", type = "string", locationName = "locale"), 
        Location = structure(list(Latitude = structure(logical(0), 
            shape = "Double", type = "double", locationName = "latitude"), 
            Longitude = structure(logical(0), shape = "Double", 
                type = "double", locationName = "longitude")), 
            shape = "Location", type = "structure", locationName = "location"), 
        VpceConfigurationArns = structure(list(structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L)), 
            shape = "AmazonResourceNames", type = "list", locationName = "vpceConfigurationArns"), 
        CustomerArtifactPaths = structure(list(IosPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "IosPaths", 
            type = "list", locationName = "iosPaths"), AndroidPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AndroidPaths", 
            type = "list", locationName = "androidPaths"), DeviceHostPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "DeviceHostPaths", 
            type = "list", locationName = "deviceHostPaths")), 
            shape = "CustomerArtifactPaths", type = "structure", 
            locationName = "customerArtifactPaths"), Radios = structure(list(Wifi = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "wifi"), 
            Bluetooth = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "bluetooth"), 
            Nfc = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "nfc"), Gps = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "gps")), 
            shape = "Radios", type = "structure", locationName = "radios"), 
        AuxiliaryApps = structure(list(structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L)), 
            shape = "AmazonResourceNames", type = "list", locationName = "auxiliaryApps"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod")), 
        shape = "ScheduleRunConfiguration", type = "structure", 
        locationName = "configuration"), ExecutionConfiguration = structure(list(JobTimeoutMinutes = structure(logical(0), 
        shape = "JobTimeoutMinutes", type = "integer", locationName = "jobTimeoutMinutes"), 
        AccountsCleanup = structure(logical(0), shape = "AccountsCleanup", 
            type = "boolean", locationName = "accountsCleanup"), 
        AppPackagesCleanup = structure(logical(0), shape = "AppPackagesCleanup", 
            type = "boolean", locationName = "appPackagesCleanup"), 
        VideoCapture = structure(logical(0), shape = "VideoCapture", 
            type = "boolean", locationName = "videoCapture"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "ExecutionConfiguration", type = "structure", 
        locationName = "executionConfiguration")), shape = "ScheduleRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

schedule_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Run = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        TotalJobs = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "totalJobs"), CompletedJobs = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "completedJobs"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        NetworkProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "NetworkProfileType", type = "string", locationName = "type"), 
            UplinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkBandwidthBits"), 
            DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkBandwidthBits"), 
            UplinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkDelayMs"), 
            DownlinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkDelayMs"), 
            UplinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkJitterMs"), 
            DownlinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkJitterMs"), 
            UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
            DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
            shape = "NetworkProfile", type = "structure", locationName = "networkProfile"), 
        ParsingResultUrl = structure(logical(0), shape = "String", 
            type = "string", locationName = "parsingResultUrl"), 
        ResultCode = structure(logical(0), shape = "ExecutionResultCode", 
            type = "string", locationName = "resultCode"), Seed = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "seed"), 
        AppUpload = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "appUpload"), 
        EventCount = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "eventCount"), JobTimeoutMinutes = structure(logical(0), 
            shape = "JobTimeoutMinutes", type = "integer", locationName = "jobTimeoutMinutes"), 
        DevicePoolArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "devicePoolArn"), 
        Locale = structure(logical(0), shape = "String", type = "string", 
            locationName = "locale"), Radios = structure(list(Wifi = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "wifi"), 
            Bluetooth = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "bluetooth"), 
            Nfc = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "nfc"), Gps = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "gps")), 
            shape = "Radios", type = "structure", locationName = "radios"), 
        Location = structure(list(Latitude = structure(logical(0), 
            shape = "Double", type = "double", locationName = "latitude"), 
            Longitude = structure(logical(0), shape = "Double", 
                type = "double", locationName = "longitude")), 
            shape = "Location", type = "structure", locationName = "location"), 
        CustomerArtifactPaths = structure(list(IosPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "IosPaths", 
            type = "list", locationName = "iosPaths"), AndroidPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AndroidPaths", 
            type = "list", locationName = "androidPaths"), DeviceHostPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "DeviceHostPaths", 
            type = "list", locationName = "deviceHostPaths")), 
            shape = "CustomerArtifactPaths", type = "structure", 
            locationName = "customerArtifactPaths"), WebUrl = structure(logical(0), 
            shape = "String", type = "string", locationName = "webUrl"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign"), 
        TestSpecArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "testSpecArn")), 
        shape = "Run", type = "structure", locationName = "run")), 
        shape = "ScheduleRunResult", type = "structure")
    return(populate(args, shape))
}

stop_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "StopJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Job = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Created = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "created"), 
        Status = structure(logical(0), shape = "ExecutionStatus", 
            type = "string", locationName = "status"), Result = structure(logical(0), 
            shape = "ExecutionResult", type = "string", locationName = "result"), 
        Started = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "started"), Stopped = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "stopped"), 
        Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        Device = structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "arn"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Manufacturer = structure(logical(0), shape = "String", 
                type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        VideoEndpoint = structure(logical(0), shape = "String", 
            type = "string", locationName = "videoEndpoint"), 
        VideoCapture = structure(logical(0), shape = "VideoCapture", 
            type = "boolean", locationName = "videoCapture")), 
        shape = "Job", type = "structure", locationName = "job")), 
        shape = "StopJobResult", type = "structure")
    return(populate(args, shape))
}

stop_remote_access_session_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "StopRemoteAccessSessionRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_remote_access_session_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RemoteAccessSession = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Device = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Manufacturer = structure(logical(0), 
            shape = "String", type = "string", locationName = "manufacturer"), 
            Model = structure(logical(0), shape = "String", type = "string", 
                locationName = "model"), ModelId = structure(logical(0), 
                shape = "String", type = "string", locationName = "modelId"), 
            FormFactor = structure(logical(0), shape = "DeviceFormFactor", 
                type = "string", locationName = "formFactor"), 
            Platform = structure(logical(0), shape = "DevicePlatform", 
                type = "string", locationName = "platform"), 
            Os = structure(logical(0), shape = "String", type = "string", 
                locationName = "os"), Cpu = structure(list(Frequency = structure(logical(0), 
                shape = "String", type = "string", locationName = "frequency"), 
                Architecture = structure(logical(0), shape = "String", 
                  type = "string", locationName = "architecture"), 
                Clock = structure(logical(0), shape = "Double", 
                  type = "double", locationName = "clock")), 
                shape = "CPU", type = "structure", locationName = "cpu"), 
            Resolution = structure(list(Width = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "width"), 
                Height = structure(logical(0), shape = "Integer", 
                  type = "integer", locationName = "height")), 
                shape = "Resolution", type = "structure", locationName = "resolution"), 
            HeapSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "heapSize"), Memory = structure(logical(0), 
                shape = "Long", type = "long", locationName = "memory"), 
            Image = structure(logical(0), shape = "String", type = "string", 
                locationName = "image"), Carrier = structure(logical(0), 
                shape = "String", type = "string", locationName = "carrier"), 
            Radio = structure(logical(0), shape = "String", type = "string", 
                locationName = "radio"), RemoteAccessEnabled = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "remoteAccessEnabled"), 
            RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "remoteDebugEnabled"), 
            FleetType = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetType"), 
            FleetName = structure(logical(0), shape = "String", 
                type = "string", locationName = "fleetName"), 
            Instances = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "arn"), DeviceArn = structure(logical(0), 
                shape = "AmazonResourceName", type = "string", 
                min = 32L, locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "InstanceLabels", 
                type = "list", locationName = "labels"), Status = structure(logical(0), 
                shape = "InstanceStatus", type = "string", locationName = "status"), 
                Udid = structure(logical(0), shape = "String", 
                  type = "string", locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
                  shape = "AmazonResourceName", type = "string", 
                  min = 32L, locationName = "arn"), PackageCleanup = structure(logical(0), 
                  shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
                  ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                    shape = "String", type = "string")), shape = "PackageIds", 
                    type = "list", locationName = "excludeAppPackagesFromCleanup"), 
                  RebootAfterUse = structure(logical(0), shape = "Boolean", 
                    type = "boolean", locationName = "rebootAfterUse"), 
                  Name = structure(logical(0), shape = "Name", 
                    type = "string", max = 256L, min = 0L, locationName = "name"), 
                  Description = structure(logical(0), shape = "Message", 
                    type = "string", max = 16384L, min = 0L, 
                    locationName = "description")), shape = "InstanceProfile", 
                  type = "structure", locationName = "instanceProfile")), 
                shape = "DeviceInstance", type = "structure")), 
                shape = "DeviceInstances", type = "list", locationName = "instances")), 
            shape = "Device", type = "structure", locationName = "device"), 
        InstanceArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "instanceArn"), 
        RemoteDebugEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteDebugEnabled"), 
        RemoteRecordEnabled = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "remoteRecordEnabled"), 
        RemoteRecordAppArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "remoteRecordAppArn"), 
        HostAddress = structure(logical(0), shape = "HostAddress", 
            type = "string", max = 1024L, locationName = "hostAddress"), 
        ClientId = structure(logical(0), shape = "ClientId", 
            type = "string", max = 64L, min = 0L, locationName = "clientId"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        Endpoint = structure(logical(0), shape = "String", type = "string", 
            locationName = "endpoint"), DeviceUdid = structure(logical(0), 
            shape = "String", type = "string", locationName = "deviceUdid"), 
        InteractionMode = structure(logical(0), shape = "InteractionMode", 
            type = "string", max = 64L, min = 0L, locationName = "interactionMode"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign")), 
        shape = "RemoteAccessSession", type = "structure", locationName = "remoteAccessSession")), 
        shape = "StopRemoteAccessSessionResult", type = "structure")
    return(populate(args, shape))
}

stop_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn")), shape = "StopRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Run = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Type = structure(logical(0), shape = "TestType", type = "string", 
            locationName = "type"), Platform = structure(logical(0), 
            shape = "DevicePlatform", type = "string", locationName = "platform"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Status = structure(logical(0), 
            shape = "ExecutionStatus", type = "string", locationName = "status"), 
        Result = structure(logical(0), shape = "ExecutionResult", 
            type = "string", locationName = "result"), Started = structure(logical(0), 
            shape = "DateTime", type = "timestamp", locationName = "started"), 
        Stopped = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "stopped"), Counters = structure(list(Total = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "total"), 
            Passed = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "passed"), Failed = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "failed"), 
            Warned = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "warned"), Errored = structure(logical(0), 
                shape = "Integer", type = "integer", locationName = "errored"), 
            Stopped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "stopped"), 
            Skipped = structure(logical(0), shape = "Integer", 
                type = "integer", locationName = "skipped")), 
            shape = "Counters", type = "structure", locationName = "counters"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 16384L, min = 0L, locationName = "message"), 
        TotalJobs = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "totalJobs"), CompletedJobs = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "completedJobs"), 
        BillingMethod = structure(logical(0), shape = "BillingMethod", 
            type = "string", locationName = "billingMethod"), 
        DeviceMinutes = structure(list(Total = structure(logical(0), 
            shape = "Double", type = "double", locationName = "total"), 
            Metered = structure(logical(0), shape = "Double", 
                type = "double", locationName = "metered"), Unmetered = structure(logical(0), 
                shape = "Double", type = "double", locationName = "unmetered")), 
            shape = "DeviceMinutes", type = "structure", locationName = "deviceMinutes"), 
        NetworkProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), Name = structure(logical(0), 
            shape = "Name", type = "string", max = 256L, min = 0L, 
            locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description"), Type = structure(logical(0), 
            shape = "NetworkProfileType", type = "string", locationName = "type"), 
            UplinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkBandwidthBits"), 
            DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkBandwidthBits"), 
            UplinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkDelayMs"), 
            DownlinkDelayMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkDelayMs"), 
            UplinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "uplinkJitterMs"), 
            DownlinkJitterMs = structure(logical(0), shape = "Long", 
                type = "long", locationName = "downlinkJitterMs"), 
            UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
            DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
                type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
            shape = "NetworkProfile", type = "structure", locationName = "networkProfile"), 
        ParsingResultUrl = structure(logical(0), shape = "String", 
            type = "string", locationName = "parsingResultUrl"), 
        ResultCode = structure(logical(0), shape = "ExecutionResultCode", 
            type = "string", locationName = "resultCode"), Seed = structure(logical(0), 
            shape = "Integer", type = "integer", locationName = "seed"), 
        AppUpload = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "appUpload"), 
        EventCount = structure(logical(0), shape = "Integer", 
            type = "integer", locationName = "eventCount"), JobTimeoutMinutes = structure(logical(0), 
            shape = "JobTimeoutMinutes", type = "integer", locationName = "jobTimeoutMinutes"), 
        DevicePoolArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "devicePoolArn"), 
        Locale = structure(logical(0), shape = "String", type = "string", 
            locationName = "locale"), Radios = structure(list(Wifi = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "wifi"), 
            Bluetooth = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "bluetooth"), 
            Nfc = structure(logical(0), shape = "Boolean", type = "boolean", 
                locationName = "nfc"), Gps = structure(logical(0), 
                shape = "Boolean", type = "boolean", locationName = "gps")), 
            shape = "Radios", type = "structure", locationName = "radios"), 
        Location = structure(list(Latitude = structure(logical(0), 
            shape = "Double", type = "double", locationName = "latitude"), 
            Longitude = structure(logical(0), shape = "Double", 
                type = "double", locationName = "longitude")), 
            shape = "Location", type = "structure", locationName = "location"), 
        CustomerArtifactPaths = structure(list(IosPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "IosPaths", 
            type = "list", locationName = "iosPaths"), AndroidPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "AndroidPaths", 
            type = "list", locationName = "androidPaths"), DeviceHostPaths = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "DeviceHostPaths", 
            type = "list", locationName = "deviceHostPaths")), 
            shape = "CustomerArtifactPaths", type = "structure", 
            locationName = "customerArtifactPaths"), WebUrl = structure(logical(0), 
            shape = "String", type = "string", locationName = "webUrl"), 
        SkipAppResign = structure(logical(0), shape = "SkipAppResign", 
            type = "boolean", locationName = "skipAppResign"), 
        TestSpecArn = structure(logical(0), shape = "AmazonResourceName", 
            type = "string", min = 32L, locationName = "testSpecArn")), 
        shape = "Run", type = "structure", locationName = "run")), 
        shape = "StopRunResult", type = "structure")
    return(populate(args, shape))
}

update_device_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), ProfileArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "profileArn"), Labels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "InstanceLabels", 
        type = "list", locationName = "labels")), shape = "UpdateDeviceInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_device_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceInstance = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), DeviceArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "deviceArn"), Labels = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "InstanceLabels", 
        type = "list", locationName = "labels"), Status = structure(logical(0), 
        shape = "InstanceStatus", type = "string", locationName = "status"), 
        Udid = structure(logical(0), shape = "String", type = "string", 
            locationName = "udid"), InstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string", min = 32L, 
            locationName = "arn"), PackageCleanup = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
            ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
                shape = "String", type = "string")), shape = "PackageIds", 
                type = "list", locationName = "excludeAppPackagesFromCleanup"), 
            RebootAfterUse = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "rebootAfterUse"), 
            Name = structure(logical(0), shape = "Name", type = "string", 
                max = 256L, min = 0L, locationName = "name"), 
            Description = structure(logical(0), shape = "Message", 
                type = "string", max = 16384L, min = 0L, locationName = "description")), 
            shape = "InstanceProfile", type = "structure", locationName = "instanceProfile")), 
        shape = "DeviceInstance", type = "structure", locationName = "deviceInstance")), 
        shape = "UpdateDeviceInstanceResult", type = "structure")
    return(populate(args, shape))
}

update_device_pool_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description"), Rules = structure(list(structure(list(Attribute = structure(logical(0), 
        shape = "DeviceAttribute", type = "string", locationName = "attribute"), 
        Operator = structure(logical(0), shape = "RuleOperator", 
            type = "string", locationName = "operator"), Value = structure(logical(0), 
            shape = "String", type = "string", locationName = "value")), 
        shape = "Rule", type = "structure")), shape = "Rules", 
        type = "list", locationName = "rules")), shape = "UpdateDevicePoolRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_device_pool_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevicePool = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "DevicePoolType", 
            type = "string", locationName = "type"), Rules = structure(list(structure(list(Attribute = structure(logical(0), 
            shape = "DeviceAttribute", type = "string", locationName = "attribute"), 
            Operator = structure(logical(0), shape = "RuleOperator", 
                type = "string", locationName = "operator"), 
            Value = structure(logical(0), shape = "String", type = "string", 
                locationName = "value")), shape = "Rule", type = "structure")), 
            shape = "Rules", type = "list", locationName = "rules")), 
        shape = "DevicePool", type = "structure", locationName = "devicePool")), 
        shape = "UpdateDevicePoolResult", type = "structure")
    return(populate(args, shape))
}

update_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description"), PackageCleanup = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
        ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PackageIds", 
            type = "list", locationName = "excludeAppPackagesFromCleanup"), 
        RebootAfterUse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "rebootAfterUse")), 
        shape = "UpdateInstanceProfileRequest", type = "structure")
    return(populate(args, shape))
}

update_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceProfile = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), PackageCleanup = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "packageCleanup"), 
        ExcludeAppPackagesFromCleanup = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PackageIds", 
            type = "list", locationName = "excludeAppPackagesFromCleanup"), 
        RebootAfterUse = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "rebootAfterUse"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            max = 256L, min = 0L, locationName = "name"), Description = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "description")), shape = "InstanceProfile", 
        type = "structure", locationName = "instanceProfile")), 
        shape = "UpdateInstanceProfileResult", type = "structure")
    return(populate(args, shape))
}

update_network_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Message", type = "string", max = 16384L, min = 0L, 
        locationName = "description"), Type = structure(logical(0), 
        shape = "NetworkProfileType", type = "string", locationName = "type"), 
        UplinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkBandwidthBits"), 
        DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkBandwidthBits"), 
        UplinkDelayMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkDelayMs"), DownlinkDelayMs = structure(logical(0), 
            shape = "Long", type = "long", locationName = "downlinkDelayMs"), 
        UplinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkJitterMs"), 
        DownlinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkJitterMs"), 
        UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
        DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
        shape = "UpdateNetworkProfileRequest", type = "structure")
    return(populate(args, shape))
}

update_network_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkProfile = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Description = structure(logical(0), shape = "Message", 
            type = "string", max = 16384L, min = 0L, locationName = "description"), 
        Type = structure(logical(0), shape = "NetworkProfileType", 
            type = "string", locationName = "type"), UplinkBandwidthBits = structure(logical(0), 
            shape = "Long", type = "long", locationName = "uplinkBandwidthBits"), 
        DownlinkBandwidthBits = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkBandwidthBits"), 
        UplinkDelayMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkDelayMs"), DownlinkDelayMs = structure(logical(0), 
            shape = "Long", type = "long", locationName = "downlinkDelayMs"), 
        UplinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "uplinkJitterMs"), 
        DownlinkJitterMs = structure(logical(0), shape = "Long", 
            type = "long", locationName = "downlinkJitterMs"), 
        UplinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "uplinkLossPercent"), 
        DownlinkLossPercent = structure(logical(0), shape = "PercentInteger", 
            type = "integer", max = 100L, min = 0L, locationName = "downlinkLossPercent")), 
        shape = "NetworkProfile", type = "structure", locationName = "networkProfile")), 
        shape = "UpdateNetworkProfileResult", type = "structure")
    return(populate(args, shape))
}

update_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), DefaultJobTimeoutMinutes = structure(logical(0), 
        shape = "JobTimeoutMinutes", type = "integer", locationName = "defaultJobTimeoutMinutes")), 
        shape = "UpdateProjectRequest", type = "structure")
    return(populate(args, shape))
}

update_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Project = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        DefaultJobTimeoutMinutes = structure(logical(0), shape = "JobTimeoutMinutes", 
            type = "integer", locationName = "defaultJobTimeoutMinutes"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created")), shape = "Project", type = "structure", 
        locationName = "project")), shape = "UpdateProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

update_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), Name = structure(logical(0), 
        shape = "Name", type = "string", max = 256L, min = 0L, 
        locationName = "name"), ContentType = structure(logical(0), 
        shape = "ContentType", type = "string", max = 64L, min = 0L, 
        locationName = "contentType"), EditContent = structure(logical(0), 
        shape = "Boolean", type = "boolean", locationName = "editContent")), 
        shape = "UpdateUploadRequest", type = "structure")
    return(populate(args, shape))
}

update_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Upload = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), Name = structure(logical(0), shape = "Name", 
        type = "string", max = 256L, min = 0L, locationName = "name"), 
        Created = structure(logical(0), shape = "DateTime", type = "timestamp", 
            locationName = "created"), Type = structure(logical(0), 
            shape = "UploadType", type = "string", locationName = "type"), 
        Status = structure(logical(0), shape = "UploadStatus", 
            type = "string", locationName = "status"), Url = structure(logical(0), 
            shape = "URL", type = "string", max = 2048L, min = 0L, 
            locationName = "url"), Metadata = structure(logical(0), 
            shape = "Metadata", type = "string", max = 8192L, 
            min = 0L, locationName = "metadata"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 64L, 
            min = 0L, locationName = "contentType"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 16384L, 
            min = 0L, locationName = "message"), Category = structure(logical(0), 
            shape = "UploadCategory", type = "string", locationName = "category")), 
        shape = "Upload", type = "structure", locationName = "upload")), 
        shape = "UpdateUploadResult", type = "structure")
    return(populate(args, shape))
}

update_vpce_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string", min = 32L, locationName = "arn"), VpceConfigurationName = structure(logical(0), 
        shape = "VPCEConfigurationName", type = "string", max = 1024L, 
        min = 0L, locationName = "vpceConfigurationName"), VpceServiceName = structure(logical(0), 
        shape = "VPCEServiceName", type = "string", max = 2048L, 
        min = 0L, locationName = "vpceServiceName"), ServiceDnsName = structure(logical(0), 
        shape = "ServiceDnsName", type = "string", max = 2048L, 
        min = 0L, locationName = "serviceDnsName"), VpceConfigurationDescription = structure(logical(0), 
        shape = "VPCEConfigurationDescription", type = "string", 
        max = 2048L, min = 0L, locationName = "vpceConfigurationDescription")), 
        shape = "UpdateVPCEConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

update_vpce_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpceConfiguration = structure(list(Arn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string", min = 32L, 
        locationName = "arn"), VpceConfigurationName = structure(logical(0), 
        shape = "VPCEConfigurationName", type = "string", max = 1024L, 
        min = 0L, locationName = "vpceConfigurationName"), VpceServiceName = structure(logical(0), 
        shape = "VPCEServiceName", type = "string", max = 2048L, 
        min = 0L, locationName = "vpceServiceName"), ServiceDnsName = structure(logical(0), 
        shape = "ServiceDnsName", type = "string", max = 2048L, 
        min = 0L, locationName = "serviceDnsName"), VpceConfigurationDescription = structure(logical(0), 
        shape = "VPCEConfigurationDescription", type = "string", 
        max = 2048L, min = 0L, locationName = "vpceConfigurationDescription")), 
        shape = "VPCEConfiguration", type = "structure", locationName = "vpceConfiguration")), 
        shape = "UpdateVPCEConfigurationResult", type = "structure")
    return(populate(args, shape))
}
