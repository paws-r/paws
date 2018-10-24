create_replication_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServerId = structure(logical(0), 
        shape = "ServerId", type = "string", locationName = "serverId"), 
        SeedReplicationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "seedReplicationTime"), 
        Frequency = structure(logical(0), shape = "Frequency", 
            type = "integer", locationName = "frequency"), LicenseType = structure(logical(0), 
            shape = "LicenseType", type = "string", locationName = "licenseType"), 
        RoleName = structure(logical(0), shape = "RoleName", 
            type = "string", locationName = "roleName"), Description = structure(logical(0), 
            shape = "Description", type = "string", locationName = "description")), 
        shape = "CreateReplicationJobRequest", type = "structure")
    return(populate(args, shape))
}

create_replication_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId")), 
        shape = "CreateReplicationJobResponse", type = "structure")
    return(populate(args, shape))
}

delete_replication_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId")), 
        shape = "DeleteReplicationJobRequest", type = "structure")
    return(populate(args, shape))
}

delete_replication_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteReplicationJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_server_catalog_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteServerCatalogRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_server_catalog_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteServerCatalogResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_connector_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectorId = structure(logical(0), 
        shape = "ConnectorId", type = "string", locationName = "connectorId")), 
        shape = "DisassociateConnectorRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_connector_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateConnectorResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_connectors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "GetConnectorsRequest", type = "structure")
    return(populate(args, shape))
}

get_connectors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectorList = structure(list(structure(list(ConnectorId = structure(logical(0), 
        shape = "ConnectorId", type = "string", locationName = "connectorId"), 
        Version = structure(logical(0), shape = "ConnectorVersion", 
            type = "string", locationName = "version"), Status = structure(logical(0), 
            shape = "ConnectorStatus", type = "string", locationName = "status"), 
        CapabilityList = structure(list(structure(logical(0), 
            shape = "ConnectorCapability", locationName = "item", 
            type = "string")), shape = "ConnectorCapabilityList", 
            type = "list", locationName = "capabilityList"), 
        VmManagerName = structure(logical(0), shape = "VmManagerName", 
            type = "string", locationName = "vmManagerName"), 
        VmManagerType = structure(logical(0), shape = "VmManagerType", 
            type = "string", locationName = "vmManagerType"), 
        VmManagerId = structure(logical(0), shape = "VmManagerId", 
            type = "string", locationName = "vmManagerId"), IpAddress = structure(logical(0), 
            shape = "IpAddress", type = "string", locationName = "ipAddress"), 
        MacAddress = structure(logical(0), shape = "MacAddress", 
            type = "string", locationName = "macAddress"), AssociatedOn = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "associatedOn")), 
        shape = "Connector", locationName = "item", type = "structure")), 
        shape = "ConnectorList", type = "list", locationName = "connectorList"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetConnectorsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_replication_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", locationName = "maxResults")), 
        shape = "GetReplicationJobsRequest", type = "structure")
    return(populate(args, shape))
}

get_replication_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobList = structure(list(structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId"), 
        ServerId = structure(logical(0), shape = "ServerId", 
            type = "string", locationName = "serverId"), ServerType = structure(logical(0), 
            shape = "ServerType", type = "string", locationName = "serverType"), 
        VmServer = structure(list(VmServerAddress = structure(list(VmManagerId = structure(logical(0), 
            shape = "VmManagerId", type = "string", locationName = "vmManagerId"), 
            VmId = structure(logical(0), shape = "VmId", type = "string", 
                locationName = "vmId")), shape = "VmServerAddress", 
            type = "structure", locationName = "vmServerAddress"), 
            VmName = structure(logical(0), shape = "VmName", 
                type = "string", locationName = "vmName"), VmManagerName = structure(logical(0), 
                shape = "VmManagerName", type = "string", locationName = "vmManagerName"), 
            VmManagerType = structure(logical(0), shape = "VmManagerType", 
                type = "string", locationName = "vmManagerType"), 
            VmPath = structure(logical(0), shape = "VmPath", 
                type = "string", locationName = "vmPath")), shape = "VmServer", 
            type = "structure", locationName = "vmServer"), SeedReplicationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "seedReplicationTime"), 
        Frequency = structure(logical(0), shape = "Frequency", 
            type = "integer", locationName = "frequency"), NextReplicationRunStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "nextReplicationRunStartTime"), 
        LicenseType = structure(logical(0), shape = "LicenseType", 
            type = "string", locationName = "licenseType"), RoleName = structure(logical(0), 
            shape = "RoleName", type = "string", locationName = "roleName"), 
        LatestAmiId = structure(logical(0), shape = "AmiId", 
            type = "string", locationName = "latestAmiId"), State = structure(logical(0), 
            shape = "ReplicationJobState", type = "string", locationName = "state"), 
        StatusMessage = structure(logical(0), shape = "ReplicationJobStatusMessage", 
            type = "string", locationName = "statusMessage"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", locationName = "description"), ReplicationRunList = structure(list(structure(list(ReplicationRunId = structure(logical(0), 
            shape = "ReplicationRunId", type = "string", locationName = "replicationRunId"), 
            State = structure(logical(0), shape = "ReplicationRunState", 
                type = "string", locationName = "state"), Type = structure(logical(0), 
                shape = "ReplicationRunType", type = "string", 
                locationName = "type"), StatusMessage = structure(logical(0), 
                shape = "ReplicationRunStatusMessage", type = "string", 
                locationName = "statusMessage"), AmiId = structure(logical(0), 
                shape = "AmiId", type = "string", locationName = "amiId"), 
            ScheduledStartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "scheduledStartTime"), 
            CompletedTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "completedTime"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", locationName = "description")), 
            shape = "ReplicationRun", locationName = "item", 
            type = "structure")), shape = "ReplicationRunList", 
            type = "list", locationName = "replicationRunList")), 
        shape = "ReplicationJob", locationName = "item", type = "structure")), 
        shape = "ReplicationJobList", type = "list", locationName = "replicationJobList"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetReplicationJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_replication_runs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", locationName = "maxResults")), 
        shape = "GetReplicationRunsRequest", type = "structure")
    return(populate(args, shape))
}

get_replication_runs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJob = structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId"), 
        ServerId = structure(logical(0), shape = "ServerId", 
            type = "string", locationName = "serverId"), ServerType = structure(logical(0), 
            shape = "ServerType", type = "string", locationName = "serverType"), 
        VmServer = structure(list(VmServerAddress = structure(list(VmManagerId = structure(logical(0), 
            shape = "VmManagerId", type = "string", locationName = "vmManagerId"), 
            VmId = structure(logical(0), shape = "VmId", type = "string", 
                locationName = "vmId")), shape = "VmServerAddress", 
            type = "structure", locationName = "vmServerAddress"), 
            VmName = structure(logical(0), shape = "VmName", 
                type = "string", locationName = "vmName"), VmManagerName = structure(logical(0), 
                shape = "VmManagerName", type = "string", locationName = "vmManagerName"), 
            VmManagerType = structure(logical(0), shape = "VmManagerType", 
                type = "string", locationName = "vmManagerType"), 
            VmPath = structure(logical(0), shape = "VmPath", 
                type = "string", locationName = "vmPath")), shape = "VmServer", 
            type = "structure", locationName = "vmServer"), SeedReplicationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "seedReplicationTime"), 
        Frequency = structure(logical(0), shape = "Frequency", 
            type = "integer", locationName = "frequency"), NextReplicationRunStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "nextReplicationRunStartTime"), 
        LicenseType = structure(logical(0), shape = "LicenseType", 
            type = "string", locationName = "licenseType"), RoleName = structure(logical(0), 
            shape = "RoleName", type = "string", locationName = "roleName"), 
        LatestAmiId = structure(logical(0), shape = "AmiId", 
            type = "string", locationName = "latestAmiId"), State = structure(logical(0), 
            shape = "ReplicationJobState", type = "string", locationName = "state"), 
        StatusMessage = structure(logical(0), shape = "ReplicationJobStatusMessage", 
            type = "string", locationName = "statusMessage"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", locationName = "description"), ReplicationRunList = structure(list(structure(list(ReplicationRunId = structure(logical(0), 
            shape = "ReplicationRunId", type = "string", locationName = "replicationRunId"), 
            State = structure(logical(0), shape = "ReplicationRunState", 
                type = "string", locationName = "state"), Type = structure(logical(0), 
                shape = "ReplicationRunType", type = "string", 
                locationName = "type"), StatusMessage = structure(logical(0), 
                shape = "ReplicationRunStatusMessage", type = "string", 
                locationName = "statusMessage"), AmiId = structure(logical(0), 
                shape = "AmiId", type = "string", locationName = "amiId"), 
            ScheduledStartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "scheduledStartTime"), 
            CompletedTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "completedTime"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", locationName = "description")), 
            shape = "ReplicationRun", locationName = "item", 
            type = "structure")), shape = "ReplicationRunList", 
            type = "list", locationName = "replicationRunList")), 
        shape = "ReplicationJob", type = "structure", locationName = "replicationJob"), 
        ReplicationRunList = structure(list(structure(list(ReplicationRunId = structure(logical(0), 
            shape = "ReplicationRunId", type = "string", locationName = "replicationRunId"), 
            State = structure(logical(0), shape = "ReplicationRunState", 
                type = "string", locationName = "state"), Type = structure(logical(0), 
                shape = "ReplicationRunType", type = "string", 
                locationName = "type"), StatusMessage = structure(logical(0), 
                shape = "ReplicationRunStatusMessage", type = "string", 
                locationName = "statusMessage"), AmiId = structure(logical(0), 
                shape = "AmiId", type = "string", locationName = "amiId"), 
            ScheduledStartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "scheduledStartTime"), 
            CompletedTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "completedTime"), 
            Description = structure(logical(0), shape = "Description", 
                type = "string", locationName = "description")), 
            shape = "ReplicationRun", locationName = "item", 
            type = "structure")), shape = "ReplicationRunList", 
            type = "list", locationName = "replicationRunList"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetReplicationRunsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_servers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "GetServersRequest", type = "structure")
    return(populate(args, shape))
}

get_servers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LastModifiedOn = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "lastModifiedOn"), 
        ServerCatalogStatus = structure(logical(0), shape = "ServerCatalogStatus", 
            type = "string", locationName = "serverCatalogStatus"), 
        ServerList = structure(list(structure(list(ServerId = structure(logical(0), 
            shape = "ServerId", type = "string", locationName = "serverId"), 
            ServerType = structure(logical(0), shape = "ServerType", 
                type = "string", locationName = "serverType"), 
            VmServer = structure(list(VmServerAddress = structure(list(VmManagerId = structure(logical(0), 
                shape = "VmManagerId", type = "string", locationName = "vmManagerId"), 
                VmId = structure(logical(0), shape = "VmId", 
                  type = "string", locationName = "vmId")), shape = "VmServerAddress", 
                type = "structure", locationName = "vmServerAddress"), 
                VmName = structure(logical(0), shape = "VmName", 
                  type = "string", locationName = "vmName"), 
                VmManagerName = structure(logical(0), shape = "VmManagerName", 
                  type = "string", locationName = "vmManagerName"), 
                VmManagerType = structure(logical(0), shape = "VmManagerType", 
                  type = "string", locationName = "vmManagerType"), 
                VmPath = structure(logical(0), shape = "VmPath", 
                  type = "string", locationName = "vmPath")), 
                shape = "VmServer", type = "structure", locationName = "vmServer"), 
            ReplicationJobId = structure(logical(0), shape = "ReplicationJobId", 
                type = "string", locationName = "replicationJobId"), 
            ReplicationJobTerminated = structure(logical(0), 
                shape = "ReplicationJobTerminated", type = "boolean", 
                locationName = "replicationJobTerminated")), 
            shape = "Server", locationName = "item", type = "structure")), 
            shape = "ServerList", type = "list", locationName = "serverList"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetServersResponse", 
        type = "structure")
    return(populate(args, shape))
}

import_server_catalog_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ImportServerCatalogRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_server_catalog_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ImportServerCatalogResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_on_demand_replication_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", locationName = "description")), 
        shape = "StartOnDemandReplicationRunRequest", type = "structure")
    return(populate(args, shape))
}

start_on_demand_replication_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationRunId = structure(logical(0), 
        shape = "ReplicationRunId", type = "string", locationName = "replicationRunId")), 
        shape = "StartOnDemandReplicationRunResponse", type = "structure")
    return(populate(args, shape))
}

update_replication_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationJobId = structure(logical(0), 
        shape = "ReplicationJobId", type = "string", locationName = "replicationJobId"), 
        Frequency = structure(logical(0), shape = "Frequency", 
            type = "integer", locationName = "frequency"), NextReplicationRunStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "nextReplicationRunStartTime"), 
        LicenseType = structure(logical(0), shape = "LicenseType", 
            type = "string", locationName = "licenseType"), RoleName = structure(logical(0), 
            shape = "RoleName", type = "string", locationName = "roleName"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", locationName = "description")), 
        shape = "UpdateReplicationJobRequest", type = "structure")
    return(populate(args, shape))
}

update_replication_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateReplicationJobResponse", 
        type = "structure")
    return(populate(args, shape))
}
