allocate_static_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIpName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "staticIpName")), shape = "AllocateStaticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

allocate_static_ip_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "AllocateStaticIpResult", 
        type = "structure")
    return(populate(args, shape))
}

attach_disk_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName"), InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName"), DiskPath = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "diskPath")), shape = "AttachDiskRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_disk_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "AttachDiskResult", 
        type = "structure")
    return(populate(args, shape))
}

attach_instances_to_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), InstanceNames = structure(list(structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w")), 
        shape = "ResourceNameList", type = "list", locationName = "instanceNames")), 
        shape = "AttachInstancesToLoadBalancerRequest", type = "structure")
    return(populate(args, shape))
}

attach_instances_to_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "AttachInstancesToLoadBalancerResult", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancer_tls_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), CertificateName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "certificateName")), shape = "AttachLoadBalancerTlsCertificateRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_load_balancer_tls_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "AttachLoadBalancerTlsCertificateResult", 
        type = "structure")
    return(populate(args, shape))
}

attach_static_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIpName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "staticIpName"), InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "AttachStaticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_static_ip_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "AttachStaticIpResult", 
        type = "structure")
    return(populate(args, shape))
}

close_instance_public_ports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortInfo = structure(list(FromPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "fromPort"), ToPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "toPort"), Protocol = structure(logical(0), 
        shape = "NetworkProtocol", type = "string", locationName = "protocol")), 
        shape = "PortInfo", type = "structure", locationName = "portInfo"), 
        InstanceName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "instanceName")), 
        shape = "CloseInstancePublicPortsRequest", type = "structure")
    return(populate(args, shape))
}

close_instance_public_ports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "CloseInstancePublicPortsResult", type = "structure")
    return(populate(args, shape))
}

create_disk_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName"), AvailabilityZone = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "availabilityZone"), SizeInGb = structure(logical(0), 
        shape = "integer", type = "integer", locationName = "sizeInGb")), 
        shape = "CreateDiskRequest", type = "structure")
    return(populate(args, shape))
}

create_disk_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateDiskResult", 
        type = "structure")
    return(populate(args, shape))
}

create_disk_from_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName"), DiskSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskSnapshotName"), AvailabilityZone = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "availabilityZone"), SizeInGb = structure(logical(0), 
        shape = "integer", type = "integer", locationName = "sizeInGb")), 
        shape = "CreateDiskFromSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

create_disk_from_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateDiskFromSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_disk_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName"), DiskSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskSnapshotName")), shape = "CreateDiskSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_disk_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateDiskSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "domainName")), 
        shape = "CreateDomainRequest", type = "structure")
    return(populate(args, shape))
}

create_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "CreateDomainResult", type = "structure")
    return(populate(args, shape))
}

create_domain_entry_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "domainName"), 
        DomainEntry = structure(list(Id = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "id"), Name = structure(logical(0), 
            shape = "DomainName", type = "string", locationName = "name"), 
            Target = structure(logical(0), shape = "string", 
                type = "string", locationName = "target"), IsAlias = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAlias"), 
            Type = structure(logical(0), shape = "DomainEntryType", 
                type = "string", locationName = "type"), Options = structure(list(structure(logical(0), 
                shape = "string", type = "string")), shape = "DomainEntryOptions", 
                deprecated = TRUE, type = "map", locationName = "options")), 
            shape = "DomainEntry", type = "structure", locationName = "domainEntry")), 
        shape = "CreateDomainEntryRequest", type = "structure")
    return(populate(args, shape))
}

create_domain_entry_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "CreateDomainEntryResult", type = "structure")
    return(populate(args, shape))
}

create_instance_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceSnapshotName"), InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "CreateInstanceSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_instance_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateInstanceSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceNames = structure(list(structure(logical(0), 
        shape = "string", type = "string")), shape = "StringList", 
        type = "list", locationName = "instanceNames"), AvailabilityZone = structure(logical(0), 
        shape = "string", type = "string", locationName = "availabilityZone"), 
        CustomImageName = structure(logical(0), shape = "ResourceName", 
            deprecated = TRUE, type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "customImageName"), BlueprintId = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "blueprintId"), BundleId = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "bundleId"), UserData = structure(logical(0), 
            shape = "string", type = "string", locationName = "userData"), 
        KeyPairName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "keyPairName")), 
        shape = "CreateInstancesRequest", type = "structure")
    return(populate(args, shape))
}

create_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

create_instances_from_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceNames = structure(list(structure(logical(0), 
        shape = "string", type = "string")), shape = "StringList", 
        type = "list", locationName = "instanceNames"), AttachedDiskMapping = structure(list(structure(list(structure(list(OriginalDiskPath = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "originalDiskPath"), NewDiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "newDiskName")), shape = "DiskMap", type = "structure")), 
        shape = "DiskMapList", type = "list")), shape = "AttachedDiskMap", 
        type = "map", locationName = "attachedDiskMapping"), 
        AvailabilityZone = structure(logical(0), shape = "string", 
            type = "string", locationName = "availabilityZone"), 
        InstanceSnapshotName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "instanceSnapshotName"), 
        BundleId = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "bundleId"), 
        UserData = structure(logical(0), shape = "string", type = "string", 
            locationName = "userData"), KeyPairName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "keyPairName")), shape = "CreateInstancesFromSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_instances_from_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateInstancesFromSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

create_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPairName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "keyPairName")), shape = "CreateKeyPairRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPair = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        Fingerprint = structure(logical(0), shape = "Base64", 
            type = "string", locationName = "fingerprint")), 
        shape = "KeyPair", type = "structure", locationName = "keyPair"), 
        PublicKeyBase64 = structure(logical(0), shape = "Base64", 
            type = "string", locationName = "publicKeyBase64"), 
        PrivateKeyBase64 = structure(logical(0), shape = "Base64", 
            type = "string", locationName = "privateKeyBase64"), 
        Operation = structure(list(Id = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "id"), ResourceName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "resourceName"), ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "resourceType"), 
            CreatedAt = structure(logical(0), shape = "IsoDate", 
                type = "timestamp", locationName = "createdAt"), 
            Location = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "string", type = "string", locationName = "availabilityZone"), 
                RegionName = structure(logical(0), shape = "RegionName", 
                  type = "string", locationName = "regionName")), 
                shape = "ResourceLocation", type = "structure", 
                locationName = "location"), IsTerminal = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isTerminal"), 
            OperationDetails = structure(logical(0), shape = "string", 
                type = "string", locationName = "operationDetails"), 
            OperationType = structure(logical(0), shape = "OperationType", 
                type = "string", locationName = "operationType"), 
            Status = structure(logical(0), shape = "OperationStatus", 
                type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
                shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
            ErrorCode = structure(logical(0), shape = "string", 
                type = "string", locationName = "errorCode"), 
            ErrorDetails = structure(logical(0), shape = "string", 
                type = "string", locationName = "errorDetails")), 
            shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "CreateKeyPairResult", type = "structure")
    return(populate(args, shape))
}

create_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), InstancePort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "instancePort"), HealthCheckPath = structure(logical(0), 
        shape = "string", type = "string", locationName = "healthCheckPath"), 
        CertificateName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "certificateName"), 
        CertificateDomainName = structure(logical(0), shape = "DomainName", 
            type = "string", locationName = "certificateDomainName"), 
        CertificateAlternativeNames = structure(list(structure(logical(0), 
            shape = "DomainName", type = "string")), shape = "DomainNameList", 
            type = "list", locationName = "certificateAlternativeNames")), 
        shape = "CreateLoadBalancerRequest", type = "structure")
    return(populate(args, shape))
}

create_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateLoadBalancerResult", 
        type = "structure")
    return(populate(args, shape))
}

create_load_balancer_tls_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), CertificateName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "certificateName"), CertificateDomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "certificateDomainName"), 
        CertificateAlternativeNames = structure(list(structure(logical(0), 
            shape = "DomainName", type = "string")), shape = "DomainNameList", 
            type = "list", locationName = "certificateAlternativeNames")), 
        shape = "CreateLoadBalancerTlsCertificateRequest", type = "structure")
    return(populate(args, shape))
}

create_load_balancer_tls_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "CreateLoadBalancerTlsCertificateResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_disk_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName")), shape = "DeleteDiskRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_disk_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DeleteDiskResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_disk_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskSnapshotName")), shape = "DeleteDiskSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_disk_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DeleteDiskSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "domainName")), 
        shape = "DeleteDomainRequest", type = "structure")
    return(populate(args, shape))
}

delete_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "DeleteDomainResult", type = "structure")
    return(populate(args, shape))
}

delete_domain_entry_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "domainName"), 
        DomainEntry = structure(list(Id = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "id"), Name = structure(logical(0), 
            shape = "DomainName", type = "string", locationName = "name"), 
            Target = structure(logical(0), shape = "string", 
                type = "string", locationName = "target"), IsAlias = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAlias"), 
            Type = structure(logical(0), shape = "DomainEntryType", 
                type = "string", locationName = "type"), Options = structure(list(structure(logical(0), 
                shape = "string", type = "string")), shape = "DomainEntryOptions", 
                deprecated = TRUE, type = "map", locationName = "options")), 
            shape = "DomainEntry", type = "structure", locationName = "domainEntry")), 
        shape = "DeleteDomainEntryRequest", type = "structure")
    return(populate(args, shape))
}

delete_domain_entry_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "DeleteDomainEntryResult", type = "structure")
    return(populate(args, shape))
}

delete_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "DeleteInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DeleteInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceSnapshotName")), shape = "DeleteInstanceSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_instance_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DeleteInstanceSnapshotResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPairName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "keyPairName")), shape = "DeleteKeyPairRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "DeleteKeyPairResult", type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName")), shape = "DeleteLoadBalancerRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DeleteLoadBalancerResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_tls_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), CertificateName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "certificateName"), Force = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "force")), 
        shape = "DeleteLoadBalancerTlsCertificateRequest", type = "structure")
    return(populate(args, shape))
}

delete_load_balancer_tls_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DeleteLoadBalancerTlsCertificateResult", 
        type = "structure")
    return(populate(args, shape))
}

detach_disk_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName")), shape = "DetachDiskRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_disk_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DetachDiskResult", 
        type = "structure")
    return(populate(args, shape))
}

detach_instances_from_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), InstanceNames = structure(list(structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w")), 
        shape = "ResourceNameList", type = "list", locationName = "instanceNames")), 
        shape = "DetachInstancesFromLoadBalancerRequest", type = "structure")
    return(populate(args, shape))
}

detach_instances_from_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DetachInstancesFromLoadBalancerResult", 
        type = "structure")
    return(populate(args, shape))
}

detach_static_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIpName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "staticIpName")), shape = "DetachStaticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_static_ip_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "DetachStaticIpResult", 
        type = "structure")
    return(populate(args, shape))
}

download_default_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DownloadDefaultKeyPairRequest", 
        type = "structure")
    return(populate(args, shape))
}

download_default_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublicKeyBase64 = structure(logical(0), 
        shape = "Base64", type = "string", locationName = "publicKeyBase64"), 
        PrivateKeyBase64 = structure(logical(0), shape = "Base64", 
            type = "string", locationName = "privateKeyBase64")), 
        shape = "DownloadDefaultKeyPairResult", type = "structure")
    return(populate(args, shape))
}

get_active_names_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetActiveNamesRequest", type = "structure")
    return(populate(args, shape))
}

get_active_names_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActiveNames = structure(list(structure(logical(0), 
        shape = "string", type = "string")), shape = "StringList", 
        type = "list", locationName = "activeNames"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetActiveNamesResult", type = "structure")
    return(populate(args, shape))
}

get_blueprints_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IncludeInactive = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "includeInactive"), 
        PageToken = structure(logical(0), shape = "string", type = "string", 
            locationName = "pageToken")), shape = "GetBlueprintsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_blueprints_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Blueprints = structure(list(structure(list(BlueprintId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "blueprintId"), Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Group = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "group"), Type = structure(logical(0), 
        shape = "BlueprintType", type = "string", locationName = "type"), 
        Description = structure(logical(0), shape = "string", 
            type = "string", locationName = "description"), IsActive = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isActive"), 
        MinPower = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "minPower"), Version = structure(logical(0), 
            shape = "string", type = "string", locationName = "version"), 
        VersionCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "versionCode"), ProductUrl = structure(logical(0), 
            shape = "string", type = "string", locationName = "productUrl"), 
        LicenseUrl = structure(logical(0), shape = "string", 
            type = "string", locationName = "licenseUrl"), Platform = structure(logical(0), 
            shape = "InstancePlatform", type = "string", locationName = "platform")), 
        shape = "Blueprint", type = "structure")), shape = "BlueprintList", 
        type = "list", locationName = "blueprints"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetBlueprintsResult", type = "structure")
    return(populate(args, shape))
}

get_bundles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IncludeInactive = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "includeInactive"), 
        PageToken = structure(logical(0), shape = "string", type = "string", 
            locationName = "pageToken")), shape = "GetBundlesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_bundles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Bundles = structure(list(structure(list(Price = structure(logical(0), 
        shape = "float", type = "float", locationName = "price"), 
        CpuCount = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "cpuCount"), DiskSizeInGb = structure(logical(0), 
            shape = "integer", type = "integer", locationName = "diskSizeInGb"), 
        BundleId = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "bundleId"), 
        InstanceType = structure(logical(0), shape = "string", 
            type = "string", locationName = "instanceType"), 
        IsActive = structure(logical(0), shape = "boolean", type = "boolean", 
            locationName = "isActive"), Name = structure(logical(0), 
            shape = "string", type = "string", locationName = "name"), 
        Power = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "power"), RamSizeInGb = structure(logical(0), 
            shape = "float", type = "float", locationName = "ramSizeInGb"), 
        TransferPerMonthInGb = structure(logical(0), shape = "integer", 
            type = "integer", locationName = "transferPerMonthInGb"), 
        SupportedPlatforms = structure(list(structure(logical(0), 
            shape = "InstancePlatform", type = "string")), shape = "InstancePlatformList", 
            type = "list", locationName = "supportedPlatforms")), 
        shape = "Bundle", type = "structure")), shape = "BundleList", 
        type = "list", locationName = "bundles"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetBundlesResult", type = "structure")
    return(populate(args, shape))
}

get_disk_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskName")), shape = "GetDiskRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_disk_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Disk = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        SizeInGb = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "sizeInGb"), IsSystemDisk = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isSystemDisk"), 
        Iops = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "iops"), Path = structure(logical(0), 
            shape = "string", type = "string", locationName = "path"), 
        State = structure(logical(0), shape = "DiskState", type = "string", 
            locationName = "state"), AttachedTo = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "attachedTo"), IsAttached = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isAttached"), 
        AttachmentState = structure(logical(0), shape = "string", 
            deprecated = TRUE, type = "string", locationName = "attachmentState"), 
        GbInUse = structure(logical(0), shape = "integer", deprecated = TRUE, 
            type = "integer", locationName = "gbInUse")), shape = "Disk", 
        type = "structure", locationName = "disk")), shape = "GetDiskResult", 
        type = "structure")
    return(populate(args, shape))
}

get_disk_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "diskSnapshotName")), shape = "GetDiskSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_disk_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskSnapshot = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        SizeInGb = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "sizeInGb"), State = structure(logical(0), 
            shape = "DiskSnapshotState", type = "string", locationName = "state"), 
        Progress = structure(logical(0), shape = "string", type = "string", 
            locationName = "progress"), FromDiskName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "fromDiskName"), FromDiskArn = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "fromDiskArn")), shape = "DiskSnapshot", 
        type = "structure", locationName = "diskSnapshot")), 
        shape = "GetDiskSnapshotResult", type = "structure")
    return(populate(args, shape))
}

get_disk_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetDiskSnapshotsRequest", type = "structure")
    return(populate(args, shape))
}

get_disk_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DiskSnapshots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        SizeInGb = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "sizeInGb"), State = structure(logical(0), 
            shape = "DiskSnapshotState", type = "string", locationName = "state"), 
        Progress = structure(logical(0), shape = "string", type = "string", 
            locationName = "progress"), FromDiskName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "fromDiskName"), FromDiskArn = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "fromDiskArn")), shape = "DiskSnapshot", 
        type = "structure")), shape = "DiskSnapshotList", type = "list", 
        locationName = "diskSnapshots"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetDiskSnapshotsResult", type = "structure")
    return(populate(args, shape))
}

get_disks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetDisksRequest", type = "structure")
    return(populate(args, shape))
}

get_disks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Disks = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        SizeInGb = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "sizeInGb"), IsSystemDisk = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isSystemDisk"), 
        Iops = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "iops"), Path = structure(logical(0), 
            shape = "string", type = "string", locationName = "path"), 
        State = structure(logical(0), shape = "DiskState", type = "string", 
            locationName = "state"), AttachedTo = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "attachedTo"), IsAttached = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isAttached"), 
        AttachmentState = structure(logical(0), shape = "string", 
            deprecated = TRUE, type = "string", locationName = "attachmentState"), 
        GbInUse = structure(logical(0), shape = "integer", deprecated = TRUE, 
            type = "integer", locationName = "gbInUse")), shape = "Disk", 
        type = "structure")), shape = "DiskList", type = "list", 
        locationName = "disks"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetDisksResult", type = "structure")
    return(populate(args, shape))
}

get_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "domainName")), 
        shape = "GetDomainRequest", type = "structure")
    return(populate(args, shape))
}

get_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        DomainEntries = structure(list(structure(list(Id = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "id"), Name = structure(logical(0), 
            shape = "DomainName", type = "string", locationName = "name"), 
            Target = structure(logical(0), shape = "string", 
                type = "string", locationName = "target"), IsAlias = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAlias"), 
            Type = structure(logical(0), shape = "DomainEntryType", 
                type = "string", locationName = "type"), Options = structure(list(structure(logical(0), 
                shape = "string", type = "string")), shape = "DomainEntryOptions", 
                deprecated = TRUE, type = "map", locationName = "options")), 
            shape = "DomainEntry", type = "structure")), shape = "DomainEntryList", 
            type = "list", locationName = "domainEntries")), 
        shape = "Domain", type = "structure", locationName = "domain")), 
        shape = "GetDomainResult", type = "structure")
    return(populate(args, shape))
}

get_domains_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetDomainsRequest", type = "structure")
    return(populate(args, shape))
}

get_domains_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domains = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        DomainEntries = structure(list(structure(list(Id = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "id"), Name = structure(logical(0), 
            shape = "DomainName", type = "string", locationName = "name"), 
            Target = structure(logical(0), shape = "string", 
                type = "string", locationName = "target"), IsAlias = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAlias"), 
            Type = structure(logical(0), shape = "DomainEntryType", 
                type = "string", locationName = "type"), Options = structure(list(structure(logical(0), 
                shape = "string", type = "string")), shape = "DomainEntryOptions", 
                deprecated = TRUE, type = "map", locationName = "options")), 
            shape = "DomainEntry", type = "structure")), shape = "DomainEntryList", 
            type = "list", locationName = "domainEntries")), 
        shape = "Domain", type = "structure")), shape = "DomainList", 
        type = "list", locationName = "domains"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetDomainsResult", type = "structure")
    return(populate(args, shape))
}

get_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "GetInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instance = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        BlueprintId = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "blueprintId"), 
        BlueprintName = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "blueprintName"), 
        BundleId = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "bundleId"), 
        IsStaticIp = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isStaticIp"), PrivateIpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "privateIpAddress"), PublicIpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "publicIpAddress"), Ipv6Address = structure(logical(0), 
            shape = "IpV6Address", type = "string", pattern = "([A-F0-9]{1,4}:){7}[A-F0-9]{1,4}", 
            locationName = "ipv6Address"), Hardware = structure(list(CpuCount = structure(logical(0), 
            shape = "integer", type = "integer", locationName = "cpuCount"), 
            Disks = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
                locationName = "name"), Arn = structure(logical(0), 
                shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
                locationName = "arn"), SupportCode = structure(logical(0), 
                shape = "string", type = "string", locationName = "supportCode"), 
                CreatedAt = structure(logical(0), shape = "IsoDate", 
                  type = "timestamp", locationName = "createdAt"), 
                Location = structure(list(AvailabilityZone = structure(logical(0), 
                  shape = "string", type = "string", locationName = "availabilityZone"), 
                  RegionName = structure(logical(0), shape = "RegionName", 
                    type = "string", locationName = "regionName")), 
                  shape = "ResourceLocation", type = "structure", 
                  locationName = "location"), ResourceType = structure(logical(0), 
                  shape = "ResourceType", type = "string", locationName = "resourceType"), 
                SizeInGb = structure(logical(0), shape = "integer", 
                  type = "integer", locationName = "sizeInGb"), 
                IsSystemDisk = structure(logical(0), shape = "boolean", 
                  type = "boolean", locationName = "isSystemDisk"), 
                Iops = structure(logical(0), shape = "integer", 
                  type = "integer", locationName = "iops"), Path = structure(logical(0), 
                  shape = "string", type = "string", locationName = "path"), 
                State = structure(logical(0), shape = "DiskState", 
                  type = "string", locationName = "state"), AttachedTo = structure(logical(0), 
                  shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
                  locationName = "attachedTo"), IsAttached = structure(logical(0), 
                  shape = "boolean", type = "boolean", locationName = "isAttached"), 
                AttachmentState = structure(logical(0), shape = "string", 
                  deprecated = TRUE, type = "string", locationName = "attachmentState"), 
                GbInUse = structure(logical(0), shape = "integer", 
                  deprecated = TRUE, type = "integer", locationName = "gbInUse")), 
                shape = "Disk", type = "structure")), shape = "DiskList", 
                type = "list", locationName = "disks"), RamSizeInGb = structure(logical(0), 
                shape = "float", type = "float", locationName = "ramSizeInGb")), 
            shape = "InstanceHardware", type = "structure", locationName = "hardware"), 
        Networking = structure(list(MonthlyTransfer = structure(list(GbPerMonthAllocated = structure(logical(0), 
            shape = "integer", type = "integer", locationName = "gbPerMonthAllocated")), 
            shape = "MonthlyTransfer", type = "structure", locationName = "monthlyTransfer"), 
            Ports = structure(list(structure(list(FromPort = structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L, locationName = "fromPort"), ToPort = structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L, locationName = "toPort"), Protocol = structure(logical(0), 
                shape = "NetworkProtocol", type = "string", locationName = "protocol"), 
                AccessFrom = structure(logical(0), shape = "string", 
                  type = "string", locationName = "accessFrom"), 
                AccessType = structure(logical(0), shape = "PortAccessType", 
                  type = "string", locationName = "accessType"), 
                CommonName = structure(logical(0), shape = "string", 
                  type = "string", locationName = "commonName"), 
                AccessDirection = structure(logical(0), shape = "AccessDirection", 
                  type = "string", locationName = "accessDirection")), 
                shape = "InstancePortInfo", type = "structure")), 
                shape = "InstancePortInfoList", type = "list", 
                locationName = "ports")), shape = "InstanceNetworking", 
            type = "structure", locationName = "networking"), 
        State = structure(list(Code = structure(logical(0), shape = "integer", 
            type = "integer", locationName = "code"), Name = structure(logical(0), 
            shape = "string", type = "string", locationName = "name")), 
            shape = "InstanceState", type = "structure", locationName = "state"), 
        Username = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "username"), 
        SshKeyName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "sshKeyName")), 
        shape = "Instance", type = "structure", locationName = "instance")), 
        shape = "GetInstanceResult", type = "structure")
    return(populate(args, shape))
}

get_instance_access_details_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName"), Protocol = structure(logical(0), 
        shape = "InstanceAccessProtocol", type = "string", locationName = "protocol")), 
        shape = "GetInstanceAccessDetailsRequest", type = "structure")
    return(populate(args, shape))
}

get_instance_access_details_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccessDetails = structure(list(CertKey = structure(logical(0), 
        shape = "string", type = "string", locationName = "certKey"), 
        ExpiresAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "expiresAt"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "ipAddress"), Password = structure(logical(0), 
            shape = "string", type = "string", locationName = "password"), 
        PasswordData = structure(list(Ciphertext = structure(logical(0), 
            shape = "string", type = "string", locationName = "ciphertext"), 
            KeyPairName = structure(logical(0), shape = "ResourceName", 
                type = "string", pattern = "\\w[\\w\\-]*\\w", 
                locationName = "keyPairName")), shape = "PasswordData", 
            type = "structure", locationName = "passwordData"), 
        PrivateKey = structure(logical(0), shape = "string", 
            type = "string", locationName = "privateKey"), Protocol = structure(logical(0), 
            shape = "InstanceAccessProtocol", type = "string", 
            locationName = "protocol"), InstanceName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "instanceName"), Username = structure(logical(0), 
            shape = "string", type = "string", locationName = "username")), 
        shape = "InstanceAccessDetails", type = "structure", 
        locationName = "accessDetails")), shape = "GetInstanceAccessDetailsResult", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_metric_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName"), MetricName = structure(logical(0), 
        shape = "InstanceMetricName", type = "string", locationName = "metricName"), 
        Period = structure(logical(0), shape = "MetricPeriod", 
            type = "integer", max = 86400L, min = 60L, locationName = "period"), 
        StartTime = structure(logical(0), shape = "timestamp", 
            type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "timestamp", 
            type = "timestamp", locationName = "endTime"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string", locationName = "unit"), 
        Statistics = structure(list(structure(logical(0), shape = "MetricStatistic", 
            type = "string")), shape = "MetricStatisticList", 
            type = "list", locationName = "statistics")), shape = "GetInstanceMetricDataRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_metric_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricName = structure(logical(0), 
        shape = "InstanceMetricName", type = "string", locationName = "metricName"), 
        MetricData = structure(list(structure(list(Average = structure(logical(0), 
            shape = "double", type = "double", locationName = "average"), 
            Maximum = structure(logical(0), shape = "double", 
                type = "double", locationName = "maximum"), Minimum = structure(logical(0), 
                shape = "double", type = "double", locationName = "minimum"), 
            SampleCount = structure(logical(0), shape = "double", 
                type = "double", locationName = "sampleCount"), 
            Sum = structure(logical(0), shape = "double", type = "double", 
                locationName = "sum"), Timestamp = structure(logical(0), 
                shape = "timestamp", type = "timestamp", locationName = "timestamp"), 
            Unit = structure(logical(0), shape = "MetricUnit", 
                type = "string", locationName = "unit")), shape = "MetricDatapoint", 
            type = "structure")), shape = "MetricDatapointList", 
            type = "list", locationName = "metricData")), shape = "GetInstanceMetricDataResult", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_port_states_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "GetInstancePortStatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_port_states_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortStates = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "fromPort"), ToPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "toPort"), Protocol = structure(logical(0), 
        shape = "NetworkProtocol", type = "string", locationName = "protocol"), 
        State = structure(logical(0), shape = "PortState", type = "string", 
            locationName = "state")), shape = "InstancePortState", 
        type = "structure")), shape = "InstancePortStateList", 
        type = "list", locationName = "portStates")), shape = "GetInstancePortStatesResult", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceSnapshotName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceSnapshotName")), shape = "GetInstanceSnapshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceSnapshot = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        State = structure(logical(0), shape = "InstanceSnapshotState", 
            type = "string", locationName = "state"), Progress = structure(logical(0), 
            shape = "string", type = "string", locationName = "progress"), 
        FromAttachedDisks = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "name"), Arn = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "arn"), SupportCode = structure(logical(0), 
            shape = "string", type = "string", locationName = "supportCode"), 
            CreatedAt = structure(logical(0), shape = "IsoDate", 
                type = "timestamp", locationName = "createdAt"), 
            Location = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "string", type = "string", locationName = "availabilityZone"), 
                RegionName = structure(logical(0), shape = "RegionName", 
                  type = "string", locationName = "regionName")), 
                shape = "ResourceLocation", type = "structure", 
                locationName = "location"), ResourceType = structure(logical(0), 
                shape = "ResourceType", type = "string", locationName = "resourceType"), 
            SizeInGb = structure(logical(0), shape = "integer", 
                type = "integer", locationName = "sizeInGb"), 
            IsSystemDisk = structure(logical(0), shape = "boolean", 
                type = "boolean", locationName = "isSystemDisk"), 
            Iops = structure(logical(0), shape = "integer", type = "integer", 
                locationName = "iops"), Path = structure(logical(0), 
                shape = "string", type = "string", locationName = "path"), 
            State = structure(logical(0), shape = "DiskState", 
                type = "string", locationName = "state"), AttachedTo = structure(logical(0), 
                shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
                locationName = "attachedTo"), IsAttached = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAttached"), 
            AttachmentState = structure(logical(0), shape = "string", 
                deprecated = TRUE, type = "string", locationName = "attachmentState"), 
            GbInUse = structure(logical(0), shape = "integer", 
                deprecated = TRUE, type = "integer", locationName = "gbInUse")), 
            shape = "Disk", type = "structure")), shape = "DiskList", 
            type = "list", locationName = "fromAttachedDisks"), 
        FromInstanceName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "fromInstanceName"), 
        FromInstanceArn = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "fromInstanceArn"), 
        FromBlueprintId = structure(logical(0), shape = "string", 
            type = "string", locationName = "fromBlueprintId"), 
        FromBundleId = structure(logical(0), shape = "string", 
            type = "string", locationName = "fromBundleId"), 
        SizeInGb = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "sizeInGb")), shape = "InstanceSnapshot", 
        type = "structure", locationName = "instanceSnapshot")), 
        shape = "GetInstanceSnapshotResult", type = "structure")
    return(populate(args, shape))
}

get_instance_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetInstanceSnapshotsRequest", type = "structure")
    return(populate(args, shape))
}

get_instance_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceSnapshots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        State = structure(logical(0), shape = "InstanceSnapshotState", 
            type = "string", locationName = "state"), Progress = structure(logical(0), 
            shape = "string", type = "string", locationName = "progress"), 
        FromAttachedDisks = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "name"), Arn = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "arn"), SupportCode = structure(logical(0), 
            shape = "string", type = "string", locationName = "supportCode"), 
            CreatedAt = structure(logical(0), shape = "IsoDate", 
                type = "timestamp", locationName = "createdAt"), 
            Location = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "string", type = "string", locationName = "availabilityZone"), 
                RegionName = structure(logical(0), shape = "RegionName", 
                  type = "string", locationName = "regionName")), 
                shape = "ResourceLocation", type = "structure", 
                locationName = "location"), ResourceType = structure(logical(0), 
                shape = "ResourceType", type = "string", locationName = "resourceType"), 
            SizeInGb = structure(logical(0), shape = "integer", 
                type = "integer", locationName = "sizeInGb"), 
            IsSystemDisk = structure(logical(0), shape = "boolean", 
                type = "boolean", locationName = "isSystemDisk"), 
            Iops = structure(logical(0), shape = "integer", type = "integer", 
                locationName = "iops"), Path = structure(logical(0), 
                shape = "string", type = "string", locationName = "path"), 
            State = structure(logical(0), shape = "DiskState", 
                type = "string", locationName = "state"), AttachedTo = structure(logical(0), 
                shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
                locationName = "attachedTo"), IsAttached = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAttached"), 
            AttachmentState = structure(logical(0), shape = "string", 
                deprecated = TRUE, type = "string", locationName = "attachmentState"), 
            GbInUse = structure(logical(0), shape = "integer", 
                deprecated = TRUE, type = "integer", locationName = "gbInUse")), 
            shape = "Disk", type = "structure")), shape = "DiskList", 
            type = "list", locationName = "fromAttachedDisks"), 
        FromInstanceName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "fromInstanceName"), 
        FromInstanceArn = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "fromInstanceArn"), 
        FromBlueprintId = structure(logical(0), shape = "string", 
            type = "string", locationName = "fromBlueprintId"), 
        FromBundleId = structure(logical(0), shape = "string", 
            type = "string", locationName = "fromBundleId"), 
        SizeInGb = structure(logical(0), shape = "integer", type = "integer", 
            locationName = "sizeInGb")), shape = "InstanceSnapshot", 
        type = "structure")), shape = "InstanceSnapshotList", 
        type = "list", locationName = "instanceSnapshots"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetInstanceSnapshotsResult", type = "structure")
    return(populate(args, shape))
}

get_instance_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "GetInstanceStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(list(Code = structure(logical(0), 
        shape = "integer", type = "integer", locationName = "code"), 
        Name = structure(logical(0), shape = "string", type = "string", 
            locationName = "name")), shape = "InstanceState", 
        type = "structure", locationName = "state")), shape = "GetInstanceStateResult", 
        type = "structure")
    return(populate(args, shape))
}

get_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetInstancesRequest", type = "structure")
    return(populate(args, shape))
}

get_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        BlueprintId = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "blueprintId"), 
        BlueprintName = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "blueprintName"), 
        BundleId = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "bundleId"), 
        IsStaticIp = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isStaticIp"), PrivateIpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "privateIpAddress"), PublicIpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "publicIpAddress"), Ipv6Address = structure(logical(0), 
            shape = "IpV6Address", type = "string", pattern = "([A-F0-9]{1,4}:){7}[A-F0-9]{1,4}", 
            locationName = "ipv6Address"), Hardware = structure(list(CpuCount = structure(logical(0), 
            shape = "integer", type = "integer", locationName = "cpuCount"), 
            Disks = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
                locationName = "name"), Arn = structure(logical(0), 
                shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
                locationName = "arn"), SupportCode = structure(logical(0), 
                shape = "string", type = "string", locationName = "supportCode"), 
                CreatedAt = structure(logical(0), shape = "IsoDate", 
                  type = "timestamp", locationName = "createdAt"), 
                Location = structure(list(AvailabilityZone = structure(logical(0), 
                  shape = "string", type = "string", locationName = "availabilityZone"), 
                  RegionName = structure(logical(0), shape = "RegionName", 
                    type = "string", locationName = "regionName")), 
                  shape = "ResourceLocation", type = "structure", 
                  locationName = "location"), ResourceType = structure(logical(0), 
                  shape = "ResourceType", type = "string", locationName = "resourceType"), 
                SizeInGb = structure(logical(0), shape = "integer", 
                  type = "integer", locationName = "sizeInGb"), 
                IsSystemDisk = structure(logical(0), shape = "boolean", 
                  type = "boolean", locationName = "isSystemDisk"), 
                Iops = structure(logical(0), shape = "integer", 
                  type = "integer", locationName = "iops"), Path = structure(logical(0), 
                  shape = "string", type = "string", locationName = "path"), 
                State = structure(logical(0), shape = "DiskState", 
                  type = "string", locationName = "state"), AttachedTo = structure(logical(0), 
                  shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
                  locationName = "attachedTo"), IsAttached = structure(logical(0), 
                  shape = "boolean", type = "boolean", locationName = "isAttached"), 
                AttachmentState = structure(logical(0), shape = "string", 
                  deprecated = TRUE, type = "string", locationName = "attachmentState"), 
                GbInUse = structure(logical(0), shape = "integer", 
                  deprecated = TRUE, type = "integer", locationName = "gbInUse")), 
                shape = "Disk", type = "structure")), shape = "DiskList", 
                type = "list", locationName = "disks"), RamSizeInGb = structure(logical(0), 
                shape = "float", type = "float", locationName = "ramSizeInGb")), 
            shape = "InstanceHardware", type = "structure", locationName = "hardware"), 
        Networking = structure(list(MonthlyTransfer = structure(list(GbPerMonthAllocated = structure(logical(0), 
            shape = "integer", type = "integer", locationName = "gbPerMonthAllocated")), 
            shape = "MonthlyTransfer", type = "structure", locationName = "monthlyTransfer"), 
            Ports = structure(list(structure(list(FromPort = structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L, locationName = "fromPort"), ToPort = structure(logical(0), 
                shape = "Port", type = "integer", max = 65535L, 
                min = 0L, locationName = "toPort"), Protocol = structure(logical(0), 
                shape = "NetworkProtocol", type = "string", locationName = "protocol"), 
                AccessFrom = structure(logical(0), shape = "string", 
                  type = "string", locationName = "accessFrom"), 
                AccessType = structure(logical(0), shape = "PortAccessType", 
                  type = "string", locationName = "accessType"), 
                CommonName = structure(logical(0), shape = "string", 
                  type = "string", locationName = "commonName"), 
                AccessDirection = structure(logical(0), shape = "AccessDirection", 
                  type = "string", locationName = "accessDirection")), 
                shape = "InstancePortInfo", type = "structure")), 
                shape = "InstancePortInfoList", type = "list", 
                locationName = "ports")), shape = "InstanceNetworking", 
            type = "structure", locationName = "networking"), 
        State = structure(list(Code = structure(logical(0), shape = "integer", 
            type = "integer", locationName = "code"), Name = structure(logical(0), 
            shape = "string", type = "string", locationName = "name")), 
            shape = "InstanceState", type = "structure", locationName = "state"), 
        Username = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "username"), 
        SshKeyName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "sshKeyName")), 
        shape = "Instance", type = "structure")), shape = "InstanceList", 
        type = "list", locationName = "instances"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetInstancesResult", type = "structure")
    return(populate(args, shape))
}

get_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPairName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "keyPairName")), shape = "GetKeyPairRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPair = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        Fingerprint = structure(logical(0), shape = "Base64", 
            type = "string", locationName = "fingerprint")), 
        shape = "KeyPair", type = "structure", locationName = "keyPair")), 
        shape = "GetKeyPairResult", type = "structure")
    return(populate(args, shape))
}

get_key_pairs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetKeyPairsRequest", type = "structure")
    return(populate(args, shape))
}

get_key_pairs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPairs = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        Fingerprint = structure(logical(0), shape = "Base64", 
            type = "string", locationName = "fingerprint")), 
        shape = "KeyPair", type = "structure")), shape = "KeyPairList", 
        type = "list", locationName = "keyPairs"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetKeyPairsResult", type = "structure")
    return(populate(args, shape))
}

get_load_balancer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName")), shape = "GetLoadBalancerRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_load_balancer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancer = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        DnsName = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "dnsName"), 
        State = structure(logical(0), shape = "LoadBalancerState", 
            type = "string", locationName = "state"), Protocol = structure(logical(0), 
            shape = "LoadBalancerProtocol", type = "string", 
            locationName = "protocol"), PublicPorts = structure(list(structure(logical(0), 
            shape = "Port", type = "integer", max = 65535L, min = 0L)), 
            shape = "PortList", type = "list", locationName = "publicPorts"), 
        HealthCheckPath = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "healthCheckPath"), 
        InstancePort = structure(logical(0), shape = "integer", 
            type = "integer", locationName = "instancePort"), 
        InstanceHealthSummary = structure(list(structure(list(InstanceName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "instanceName"), InstanceHealth = structure(logical(0), 
            shape = "InstanceHealthState", type = "string", locationName = "instanceHealth"), 
            InstanceHealthReason = structure(logical(0), shape = "InstanceHealthReason", 
                type = "string", locationName = "instanceHealthReason")), 
            shape = "InstanceHealthSummary", type = "structure")), 
            shape = "InstanceHealthSummaryList", type = "list", 
            locationName = "instanceHealthSummary"), TlsCertificateSummaries = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "name"), IsAttached = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isAttached")), 
            shape = "LoadBalancerTlsCertificateSummary", type = "structure")), 
            shape = "LoadBalancerTlsCertificateSummaryList", 
            type = "list", locationName = "tlsCertificateSummaries"), 
        ConfigurationOptions = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "LoadBalancerConfigurationOptions", 
            type = "map", locationName = "configurationOptions")), 
        shape = "LoadBalancer", type = "structure", locationName = "loadBalancer")), 
        shape = "GetLoadBalancerResult", type = "structure")
    return(populate(args, shape))
}

get_load_balancer_metric_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), MetricName = structure(logical(0), 
        shape = "LoadBalancerMetricName", type = "string", locationName = "metricName"), 
        Period = structure(logical(0), shape = "MetricPeriod", 
            type = "integer", max = 86400L, min = 60L, locationName = "period"), 
        StartTime = structure(logical(0), shape = "timestamp", 
            type = "timestamp", locationName = "startTime"), 
        EndTime = structure(logical(0), shape = "timestamp", 
            type = "timestamp", locationName = "endTime"), Unit = structure(logical(0), 
            shape = "MetricUnit", type = "string", locationName = "unit"), 
        Statistics = structure(list(structure(logical(0), shape = "MetricStatistic", 
            type = "string")), shape = "MetricStatisticList", 
            type = "list", locationName = "statistics")), shape = "GetLoadBalancerMetricDataRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_load_balancer_metric_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MetricName = structure(logical(0), 
        shape = "LoadBalancerMetricName", type = "string", locationName = "metricName"), 
        MetricData = structure(list(structure(list(Average = structure(logical(0), 
            shape = "double", type = "double", locationName = "average"), 
            Maximum = structure(logical(0), shape = "double", 
                type = "double", locationName = "maximum"), Minimum = structure(logical(0), 
                shape = "double", type = "double", locationName = "minimum"), 
            SampleCount = structure(logical(0), shape = "double", 
                type = "double", locationName = "sampleCount"), 
            Sum = structure(logical(0), shape = "double", type = "double", 
                locationName = "sum"), Timestamp = structure(logical(0), 
                shape = "timestamp", type = "timestamp", locationName = "timestamp"), 
            Unit = structure(logical(0), shape = "MetricUnit", 
                type = "string", locationName = "unit")), shape = "MetricDatapoint", 
            type = "structure")), shape = "MetricDatapointList", 
            type = "list", locationName = "metricData")), shape = "GetLoadBalancerMetricDataResult", 
        type = "structure")
    return(populate(args, shape))
}

get_load_balancer_tls_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName")), shape = "GetLoadBalancerTlsCertificatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_load_balancer_tls_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TlsCertificates = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        LoadBalancerName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "loadBalancerName"), 
        IsAttached = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isAttached"), Status = structure(logical(0), 
            shape = "LoadBalancerTlsCertificateStatus", type = "string", 
            locationName = "status"), DomainName = structure(logical(0), 
            shape = "DomainName", type = "string", locationName = "domainName"), 
        DomainValidationRecords = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "name"), Type = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "type"), Value = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "value"), ValidationStatus = structure(logical(0), 
            shape = "LoadBalancerTlsCertificateDomainStatus", 
            type = "string", locationName = "validationStatus"), 
            DomainName = structure(logical(0), shape = "DomainName", 
                type = "string", locationName = "domainName")), 
            shape = "LoadBalancerTlsCertificateDomainValidationRecord", 
            type = "structure")), shape = "LoadBalancerTlsCertificateDomainValidationRecordList", 
            type = "list", locationName = "domainValidationRecords"), 
        FailureReason = structure(logical(0), shape = "LoadBalancerTlsCertificateFailureReason", 
            type = "string", locationName = "failureReason"), 
        IssuedAt = structure(logical(0), shape = "IsoDate", type = "timestamp", 
            locationName = "issuedAt"), Issuer = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "issuer"), KeyAlgorithm = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "keyAlgorithm"), NotAfter = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "notAfter"), 
        NotBefore = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "notBefore"), 
        RenewalSummary = structure(list(RenewalStatus = structure(logical(0), 
            shape = "LoadBalancerTlsCertificateRenewalStatus", 
            type = "string", locationName = "renewalStatus"), 
            DomainValidationOptions = structure(list(structure(list(DomainName = structure(logical(0), 
                shape = "DomainName", type = "string", locationName = "domainName"), 
                ValidationStatus = structure(logical(0), shape = "LoadBalancerTlsCertificateDomainStatus", 
                  type = "string", locationName = "validationStatus")), 
                shape = "LoadBalancerTlsCertificateDomainValidationOption", 
                type = "structure")), shape = "LoadBalancerTlsCertificateDomainValidationOptionList", 
                type = "list", locationName = "domainValidationOptions")), 
            shape = "LoadBalancerTlsCertificateRenewalSummary", 
            type = "structure", locationName = "renewalSummary"), 
        RevocationReason = structure(logical(0), shape = "LoadBalancerTlsCertificateRevocationReason", 
            type = "string", locationName = "revocationReason"), 
        RevokedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "revokedAt"), 
        Serial = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "serial"), 
        SignatureAlgorithm = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "signatureAlgorithm"), 
        Subject = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "subject"), 
        SubjectAlternativeNames = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "StringList", 
            type = "list", locationName = "subjectAlternativeNames")), 
        shape = "LoadBalancerTlsCertificate", type = "structure")), 
        shape = "LoadBalancerTlsCertificateList", type = "list", 
        locationName = "tlsCertificates")), shape = "GetLoadBalancerTlsCertificatesResult", 
        type = "structure")
    return(populate(args, shape))
}

get_load_balancers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetLoadBalancersRequest", type = "structure")
    return(populate(args, shape))
}

get_load_balancers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        DnsName = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "dnsName"), 
        State = structure(logical(0), shape = "LoadBalancerState", 
            type = "string", locationName = "state"), Protocol = structure(logical(0), 
            shape = "LoadBalancerProtocol", type = "string", 
            locationName = "protocol"), PublicPorts = structure(list(structure(logical(0), 
            shape = "Port", type = "integer", max = 65535L, min = 0L)), 
            shape = "PortList", type = "list", locationName = "publicPorts"), 
        HealthCheckPath = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = ".*\\S.*", locationName = "healthCheckPath"), 
        InstancePort = structure(logical(0), shape = "integer", 
            type = "integer", locationName = "instancePort"), 
        InstanceHealthSummary = structure(list(structure(list(InstanceName = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "instanceName"), InstanceHealth = structure(logical(0), 
            shape = "InstanceHealthState", type = "string", locationName = "instanceHealth"), 
            InstanceHealthReason = structure(logical(0), shape = "InstanceHealthReason", 
                type = "string", locationName = "instanceHealthReason")), 
            shape = "InstanceHealthSummary", type = "structure")), 
            shape = "InstanceHealthSummaryList", type = "list", 
            locationName = "instanceHealthSummary"), TlsCertificateSummaries = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "name"), IsAttached = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isAttached")), 
            shape = "LoadBalancerTlsCertificateSummary", type = "structure")), 
            shape = "LoadBalancerTlsCertificateSummaryList", 
            type = "list", locationName = "tlsCertificateSummaries"), 
        ConfigurationOptions = structure(list(structure(logical(0), 
            shape = "string", type = "string")), shape = "LoadBalancerConfigurationOptions", 
            type = "map", locationName = "configurationOptions")), 
        shape = "LoadBalancer", type = "structure")), shape = "LoadBalancerList", 
        type = "list", locationName = "loadBalancers"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetLoadBalancersResult", type = "structure")
    return(populate(args, shape))
}

get_operation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "operationId")), shape = "GetOperationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_operation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "GetOperationResult", type = "structure")
    return(populate(args, shape))
}

get_operations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetOperationsRequest", type = "structure")
    return(populate(args, shape))
}

get_operations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetOperationsResult", type = "structure")
    return(populate(args, shape))
}

get_operations_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetOperationsForResourceRequest", type = "structure")
    return(populate(args, shape))
}

get_operations_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations"), NextPageCount = structure(logical(0), 
        shape = "string", deprecated = TRUE, type = "string", 
        locationName = "nextPageCount"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetOperationsForResourceResult", type = "structure")
    return(populate(args, shape))
}

get_regions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IncludeAvailabilityZones = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "includeAvailabilityZones")), 
        shape = "GetRegionsRequest", type = "structure")
    return(populate(args, shape))
}

get_regions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Regions = structure(list(structure(list(ContinentCode = structure(logical(0), 
        shape = "string", type = "string", locationName = "continentCode"), 
        Description = structure(logical(0), shape = "string", 
            type = "string", locationName = "description"), DisplayName = structure(logical(0), 
            shape = "string", type = "string", locationName = "displayName"), 
        Name = structure(logical(0), shape = "RegionName", type = "string", 
            locationName = "name"), AvailabilityZones = structure(list(structure(list(ZoneName = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "zoneName"), State = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "state")), shape = "AvailabilityZone", 
            type = "structure")), shape = "AvailabilityZoneList", 
            type = "list", locationName = "availabilityZones")), 
        shape = "Region", type = "structure")), shape = "RegionList", 
        type = "list", locationName = "regions")), shape = "GetRegionsResult", 
        type = "structure")
    return(populate(args, shape))
}

get_static_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIpName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "staticIpName")), shape = "GetStaticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_static_ip_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIp = structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "ipAddress"), AttachedTo = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "attachedTo"), IsAttached = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isAttached")), 
        shape = "StaticIp", type = "structure", locationName = "staticIp")), 
        shape = "GetStaticIpResult", type = "structure")
    return(populate(args, shape))
}

get_static_ips_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "pageToken")), 
        shape = "GetStaticIpsRequest", type = "structure")
    return(populate(args, shape))
}

get_static_ips_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIps = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "name"), Arn = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = ".*\\S.*", locationName = "arn"), 
        SupportCode = structure(logical(0), shape = "string", 
            type = "string", locationName = "supportCode"), CreatedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        IpAddress = structure(logical(0), shape = "IpAddress", 
            type = "string", pattern = "([0-9]{1,3}\\.){3}[0-9]{1,3}", 
            locationName = "ipAddress"), AttachedTo = structure(logical(0), 
            shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
            locationName = "attachedTo"), IsAttached = structure(logical(0), 
            shape = "boolean", type = "boolean", locationName = "isAttached")), 
        shape = "StaticIp", type = "structure")), shape = "StaticIpList", 
        type = "list", locationName = "staticIps"), NextPageToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextPageToken")), 
        shape = "GetStaticIpsResult", type = "structure")
    return(populate(args, shape))
}

import_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPairName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "keyPairName"), PublicKeyBase64 = structure(logical(0), 
        shape = "Base64", type = "string", locationName = "publicKeyBase64")), 
        shape = "ImportKeyPairRequest", type = "structure")
    return(populate(args, shape))
}

import_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "ImportKeyPairResult", type = "structure")
    return(populate(args, shape))
}

is_vpc_peered_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "IsVpcPeeredRequest", 
        type = "structure")
    return(populate(args, shape))
}

is_vpc_peered_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IsPeered = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "isPeered")), 
        shape = "IsVpcPeeredResult", type = "structure")
    return(populate(args, shape))
}

open_instance_public_ports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortInfo = structure(list(FromPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "fromPort"), ToPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "toPort"), Protocol = structure(logical(0), 
        shape = "NetworkProtocol", type = "string", locationName = "protocol")), 
        shape = "PortInfo", type = "structure", locationName = "portInfo"), 
        InstanceName = structure(logical(0), shape = "ResourceName", 
            type = "string", pattern = "\\w[\\w\\-]*\\w", locationName = "instanceName")), 
        shape = "OpenInstancePublicPortsRequest", type = "structure")
    return(populate(args, shape))
}

open_instance_public_ports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "OpenInstancePublicPortsResult", type = "structure")
    return(populate(args, shape))
}

peer_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PeerVpcRequest", type = "structure")
    return(populate(args, shape))
}

peer_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "PeerVpcResult", type = "structure")
    return(populate(args, shape))
}

put_instance_public_ports_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PortInfos = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "fromPort"), ToPort = structure(logical(0), 
        shape = "Port", type = "integer", max = 65535L, min = 0L, 
        locationName = "toPort"), Protocol = structure(logical(0), 
        shape = "NetworkProtocol", type = "string", locationName = "protocol")), 
        shape = "PortInfo", type = "structure")), shape = "PortInfoList", 
        type = "list", locationName = "portInfos"), InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "PutInstancePublicPortsRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_instance_public_ports_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "PutInstancePublicPortsResult", type = "structure")
    return(populate(args, shape))
}

reboot_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "RebootInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

reboot_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "RebootInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

release_static_ip_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StaticIpName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "staticIpName")), shape = "ReleaseStaticIpRequest", 
        type = "structure")
    return(populate(args, shape))
}

release_static_ip_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "ReleaseStaticIpResult", 
        type = "structure")
    return(populate(args, shape))
}

start_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName")), shape = "StartInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "StartInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

stop_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "instanceName"), Force = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "force")), 
        shape = "StopInstanceRequest", type = "structure")
    return(populate(args, shape))
}

stop_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "StopInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

unpeer_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UnpeerVpcRequest", type = "structure")
    return(populate(args, shape))
}

unpeer_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure", locationName = "operation")), 
        shape = "UnpeerVpcResult", type = "structure")
    return(populate(args, shape))
}

update_domain_entry_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "DomainName", type = "string", locationName = "domainName"), 
        DomainEntry = structure(list(Id = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
            locationName = "id"), Name = structure(logical(0), 
            shape = "DomainName", type = "string", locationName = "name"), 
            Target = structure(logical(0), shape = "string", 
                type = "string", locationName = "target"), IsAlias = structure(logical(0), 
                shape = "boolean", type = "boolean", locationName = "isAlias"), 
            Type = structure(logical(0), shape = "DomainEntryType", 
                type = "string", locationName = "type"), Options = structure(list(structure(logical(0), 
                shape = "string", type = "string")), shape = "DomainEntryOptions", 
                deprecated = TRUE, type = "map", locationName = "options")), 
            shape = "DomainEntry", type = "structure", locationName = "domainEntry")), 
        shape = "UpdateDomainEntryRequest", type = "structure")
    return(populate(args, shape))
}

update_domain_entry_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "UpdateDomainEntryResult", 
        type = "structure")
    return(populate(args, shape))
}

update_load_balancer_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoadBalancerName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "loadBalancerName"), AttributeName = structure(logical(0), 
        shape = "LoadBalancerAttributeName", type = "string", 
        locationName = "attributeName"), AttributeValue = structure(logical(0), 
        shape = "StringMax256", type = "string", max = 256L, 
        min = 1L, locationName = "attributeValue")), shape = "UpdateLoadBalancerAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_load_balancer_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "NonEmptyString", type = "string", pattern = ".*\\S.*", 
        locationName = "id"), ResourceName = structure(logical(0), 
        shape = "ResourceName", type = "string", pattern = "\\w[\\w\\-]*\\w", 
        locationName = "resourceName"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        CreatedAt = structure(logical(0), shape = "IsoDate", 
            type = "timestamp", locationName = "createdAt"), 
        Location = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "string", type = "string", locationName = "availabilityZone"), 
            RegionName = structure(logical(0), shape = "RegionName", 
                type = "string", locationName = "regionName")), 
            shape = "ResourceLocation", type = "structure", locationName = "location"), 
        IsTerminal = structure(logical(0), shape = "boolean", 
            type = "boolean", locationName = "isTerminal"), OperationDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "operationDetails"), 
        OperationType = structure(logical(0), shape = "OperationType", 
            type = "string", locationName = "operationType"), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string", locationName = "status"), StatusChangedAt = structure(logical(0), 
            shape = "IsoDate", type = "timestamp", locationName = "statusChangedAt"), 
        ErrorCode = structure(logical(0), shape = "string", type = "string", 
            locationName = "errorCode"), ErrorDetails = structure(logical(0), 
            shape = "string", type = "string", locationName = "errorDetails")), 
        shape = "Operation", type = "structure")), shape = "OperationList", 
        type = "list", locationName = "operations")), shape = "UpdateLoadBalancerAttributeResult", 
        type = "structure")
    return(populate(args, shape))
}
