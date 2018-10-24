create_private_dns_namespace_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NamespaceName", 
        type = "string", max = 1024L), CreatorRequestId = structure(logical(0), 
        shape = "ResourceId", idempotencyToken = TRUE, type = "string", 
        max = 64L), Description = structure(logical(0), shape = "ResourceDescription", 
        type = "string", max = 1024L), Vpc = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L)), shape = "CreatePrivateDnsNamespaceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_private_dns_namespace_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "CreatePrivateDnsNamespaceResponse", type = "structure")
    return(populate(args, shape))
}

create_public_dns_namespace_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NamespaceName", 
        type = "string", max = 1024L), CreatorRequestId = structure(logical(0), 
        shape = "ResourceId", idempotencyToken = TRUE, type = "string", 
        max = 64L), Description = structure(logical(0), shape = "ResourceDescription", 
        type = "string", max = 1024L)), shape = "CreatePublicDnsNamespaceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_public_dns_namespace_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "CreatePublicDnsNamespaceResponse", type = "structure")
    return(populate(args, shape))
}

create_service_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ServiceName", 
        type = "string", pattern = "((?=^.{1,127}$)^([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9])(\\.([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9]))*$)|(^\\.$)"), 
        CreatorRequestId = structure(logical(0), shape = "ResourceId", 
            idempotencyToken = TRUE, type = "string", max = 64L), 
        Description = structure(logical(0), shape = "ResourceDescription", 
            type = "string", max = 1024L), DnsConfig = structure(list(NamespaceId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L), 
            RoutingPolicy = structure(logical(0), shape = "RoutingPolicy", 
                type = "string"), DnsRecords = structure(list(structure(list(Type = structure(logical(0), 
                shape = "RecordType", type = "string"), TTL = structure(logical(0), 
                shape = "RecordTTL", type = "long", max = 2147483647L, 
                min = 0L)), shape = "DnsRecord", type = "structure")), 
                shape = "DnsRecordList", type = "list")), shape = "DnsConfig", 
            type = "structure"), HealthCheckConfig = structure(list(Type = structure(logical(0), 
            shape = "HealthCheckType", type = "string"), ResourcePath = structure(logical(0), 
            shape = "ResourcePath", type = "string", max = 255L), 
            FailureThreshold = structure(logical(0), shape = "FailureThreshold", 
                type = "integer", max = 10L, min = 1L)), shape = "HealthCheckConfig", 
            type = "structure"), HealthCheckCustomConfig = structure(list(FailureThreshold = structure(logical(0), 
            shape = "FailureThreshold", type = "integer", max = 10L, 
            min = 1L)), shape = "HealthCheckCustomConfig", type = "structure")), 
        shape = "CreateServiceRequest", type = "structure")
    return(populate(args, shape))
}

create_service_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Service = structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 255L), Name = structure(logical(0), 
        shape = "ServiceName", type = "string", pattern = "((?=^.{1,127}$)^([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9])(\\.([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9]))*$)|(^\\.$)"), 
        Description = structure(logical(0), shape = "ResourceDescription", 
            type = "string", max = 1024L), InstanceCount = structure(logical(0), 
            shape = "ResourceCount", type = "integer"), DnsConfig = structure(list(NamespaceId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L), 
            RoutingPolicy = structure(logical(0), shape = "RoutingPolicy", 
                type = "string"), DnsRecords = structure(list(structure(list(Type = structure(logical(0), 
                shape = "RecordType", type = "string"), TTL = structure(logical(0), 
                shape = "RecordTTL", type = "long", max = 2147483647L, 
                min = 0L)), shape = "DnsRecord", type = "structure")), 
                shape = "DnsRecordList", type = "list")), shape = "DnsConfig", 
            type = "structure"), HealthCheckConfig = structure(list(Type = structure(logical(0), 
            shape = "HealthCheckType", type = "string"), ResourcePath = structure(logical(0), 
            shape = "ResourcePath", type = "string", max = 255L), 
            FailureThreshold = structure(logical(0), shape = "FailureThreshold", 
                type = "integer", max = 10L, min = 1L)), shape = "HealthCheckConfig", 
            type = "structure"), HealthCheckCustomConfig = structure(list(FailureThreshold = structure(logical(0), 
            shape = "FailureThreshold", type = "integer", max = 10L, 
            min = 1L)), shape = "HealthCheckCustomConfig", type = "structure"), 
        CreateDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), CreatorRequestId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L)), 
        shape = "Service", type = "structure")), shape = "CreateServiceResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_namespace_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 64L)), shape = "DeleteNamespaceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_namespace_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "DeleteNamespaceResponse", type = "structure")
    return(populate(args, shape))
}

delete_service_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 64L)), shape = "DeleteServiceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_service_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteServiceResponse", 
        type = "structure")
    return(populate(args, shape))
}

deregister_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), InstanceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L)), shape = "DeregisterInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "DeregisterInstanceResponse", type = "structure")
    return(populate(args, shape))
}

get_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), InstanceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L)), shape = "GetInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instance = structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), CreatorRequestId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Attributes = structure(list(structure(logical(0), 
        shape = "AttrValue", type = "string", max = 255L)), shape = "Attributes", 
        type = "map")), shape = "Instance", type = "structure")), 
        shape = "GetInstanceResponse", type = "structure")
    return(populate(args, shape))
}

get_instances_health_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Instances = structure(list(structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L)), shape = "InstanceIdList", 
        type = "list", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 4096L)), shape = "GetInstancesHealthStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_instances_health_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(list(structure(logical(0), 
        shape = "HealthStatus", type = "string")), shape = "InstanceHealthStatusMap", 
        type = "map"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 4096L)), shape = "GetInstancesHealthStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_namespace_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 64L)), shape = "GetNamespaceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_namespace_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Namespace = structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 255L), Name = structure(logical(0), 
        shape = "NamespaceName", type = "string", max = 1024L), 
        Type = structure(logical(0), shape = "NamespaceType", 
            type = "string"), Description = structure(logical(0), 
            shape = "ResourceDescription", type = "string", max = 1024L), 
        ServiceCount = structure(logical(0), shape = "ResourceCount", 
            type = "integer"), Properties = structure(list(DnsProperties = structure(list(HostedZoneId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L)), 
            shape = "DnsProperties", type = "structure")), shape = "NamespaceProperties", 
            type = "structure"), CreateDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CreatorRequestId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L)), 
        shape = "Namespace", type = "structure")), shape = "GetNamespaceResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_operation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L)), shape = "GetOperationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_operation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operation = structure(list(Id = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L), 
        Type = structure(logical(0), shape = "OperationType", 
            type = "string"), Status = structure(logical(0), 
            shape = "OperationStatus", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "Message", type = "string"), ErrorCode = structure(logical(0), 
            shape = "Code", type = "string"), CreateDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), UpdateDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Targets = structure(list(structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L)), 
            shape = "OperationTargetsMap", type = "map")), shape = "Operation", 
        type = "structure")), shape = "GetOperationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_service_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 64L)), shape = "GetServiceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_service_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Service = structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 255L), Name = structure(logical(0), 
        shape = "ServiceName", type = "string", pattern = "((?=^.{1,127}$)^([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9])(\\.([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9]))*$)|(^\\.$)"), 
        Description = structure(logical(0), shape = "ResourceDescription", 
            type = "string", max = 1024L), InstanceCount = structure(logical(0), 
            shape = "ResourceCount", type = "integer"), DnsConfig = structure(list(NamespaceId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L), 
            RoutingPolicy = structure(logical(0), shape = "RoutingPolicy", 
                type = "string"), DnsRecords = structure(list(structure(list(Type = structure(logical(0), 
                shape = "RecordType", type = "string"), TTL = structure(logical(0), 
                shape = "RecordTTL", type = "long", max = 2147483647L, 
                min = 0L)), shape = "DnsRecord", type = "structure")), 
                shape = "DnsRecordList", type = "list")), shape = "DnsConfig", 
            type = "structure"), HealthCheckConfig = structure(list(Type = structure(logical(0), 
            shape = "HealthCheckType", type = "string"), ResourcePath = structure(logical(0), 
            shape = "ResourcePath", type = "string", max = 255L), 
            FailureThreshold = structure(logical(0), shape = "FailureThreshold", 
                type = "integer", max = 10L, min = 1L)), shape = "HealthCheckConfig", 
            type = "structure"), HealthCheckCustomConfig = structure(list(FailureThreshold = structure(logical(0), 
            shape = "FailureThreshold", type = "integer", max = 10L, 
            min = 1L)), shape = "HealthCheckCustomConfig", type = "structure"), 
        CreateDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), CreatorRequestId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 64L)), 
        shape = "Service", type = "structure")), shape = "GetServiceResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L)), 
        shape = "ListInstancesRequest", type = "structure")
    return(populate(args, shape))
}

list_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Attributes = structure(list(structure(logical(0), 
        shape = "AttrValue", type = "string", max = 255L)), shape = "Attributes", 
        type = "map")), shape = "InstanceSummary", type = "structure")), 
        shape = "InstanceSummaryList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L)), 
        shape = "ListInstancesResponse", type = "structure")
    return(populate(args, shape))
}

list_namespaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NamespaceFilterName", type = "string"), 
            Values = structure(list(structure(logical(0), shape = "FilterValue", 
                type = "string", max = 255L, min = 1L)), shape = "FilterValues", 
                type = "list"), Condition = structure(logical(0), 
                shape = "FilterCondition", type = "string")), 
            shape = "NamespaceFilter", type = "structure")), 
            shape = "NamespaceFilters", type = "list")), shape = "ListNamespacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_namespaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Namespaces = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 255L), Name = structure(logical(0), 
        shape = "NamespaceName", type = "string", max = 1024L), 
        Type = structure(logical(0), shape = "NamespaceType", 
            type = "string")), shape = "NamespaceSummary", type = "structure")), 
        shape = "NamespaceSummariesList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L)), 
        shape = "ListNamespacesResponse", type = "structure")
    return(populate(args, shape))
}

list_operations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "OperationFilterName", type = "string"), 
            Values = structure(list(structure(logical(0), shape = "FilterValue", 
                type = "string", max = 255L, min = 1L)), shape = "FilterValues", 
                type = "list"), Condition = structure(logical(0), 
                shape = "FilterCondition", type = "string")), 
            shape = "OperationFilter", type = "structure")), 
            shape = "OperationFilters", type = "list")), shape = "ListOperationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_operations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Operations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L), 
        Status = structure(logical(0), shape = "OperationStatus", 
            type = "string")), shape = "OperationSummary", type = "structure")), 
        shape = "OperationSummaryList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L)), 
        shape = "ListOperationsResponse", type = "structure")
    return(populate(args, shape))
}

list_services_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 4096L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ServiceFilterName", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string", max = 255L, 
            min = 1L)), shape = "FilterValues", type = "list"), 
            Condition = structure(logical(0), shape = "FilterCondition", 
                type = "string")), shape = "ServiceFilter", type = "structure")), 
            shape = "ServiceFilters", type = "list")), shape = "ListServicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_services_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Services = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 255L), Name = structure(logical(0), 
        shape = "ServiceName", type = "string", pattern = "((?=^.{1,127}$)^([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9])(\\.([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9]))*$)|(^\\.$)"), 
        Description = structure(logical(0), shape = "ResourceDescription", 
            type = "string", max = 1024L), InstanceCount = structure(logical(0), 
            shape = "ResourceCount", type = "integer")), shape = "ServiceSummary", 
        type = "structure")), shape = "ServiceSummariesList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 4096L)), shape = "ListServicesResponse", 
        type = "structure")
    return(populate(args, shape))
}

register_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), InstanceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), CreatorRequestId = structure(logical(0), 
        shape = "ResourceId", idempotencyToken = TRUE, type = "string", 
        max = 64L), Attributes = structure(list(structure(logical(0), 
        shape = "AttrValue", type = "string", max = 255L)), shape = "Attributes", 
        type = "map")), shape = "RegisterInstanceRequest", type = "structure")
    return(populate(args, shape))
}

register_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "RegisterInstanceResponse", type = "structure")
    return(populate(args, shape))
}

update_instance_custom_health_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), InstanceId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 64L), Status = structure(logical(0), 
        shape = "CustomHealthStatus", type = "string")), shape = "UpdateInstanceCustomHealthStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_instance_custom_health_status_output <- function () 
{
    return(list())
}

update_service_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 64L), Service = structure(list(Description = structure(logical(0), 
        shape = "ResourceDescription", type = "string", max = 1024L), 
        DnsConfig = structure(list(DnsRecords = structure(list(structure(list(Type = structure(logical(0), 
            shape = "RecordType", type = "string"), TTL = structure(logical(0), 
            shape = "RecordTTL", type = "long", max = 2147483647L, 
            min = 0L)), shape = "DnsRecord", type = "structure")), 
            shape = "DnsRecordList", type = "list")), shape = "DnsConfigChange", 
            type = "structure"), HealthCheckConfig = structure(list(Type = structure(logical(0), 
            shape = "HealthCheckType", type = "string"), ResourcePath = structure(logical(0), 
            shape = "ResourcePath", type = "string", max = 255L), 
            FailureThreshold = structure(logical(0), shape = "FailureThreshold", 
                type = "integer", max = 10L, min = 1L)), shape = "HealthCheckConfig", 
            type = "structure")), shape = "ServiceChange", type = "structure")), 
        shape = "UpdateServiceRequest", type = "structure")
    return(populate(args, shape))
}

update_service_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OperationId = structure(logical(0), 
        shape = "OperationId", type = "string", max = 255L)), 
        shape = "UpdateServiceResponse", type = "structure")
    return(populate(args, shape))
}
