#' The CreateReplicationJob API is used to create a ReplicationJob to replicate a server on AWS
#'
#' The CreateReplicationJob API is used to create a ReplicationJob to replicate a server on AWS. Call this API to first create a ReplicationJob, which will then schedule periodic ReplicationRuns to replicate your server to AWS. Each ReplicationRun will result in the creation of an AWS AMI.
#'
#' @param serverId 
#' @param seedReplicationTime 
#' @param frequency 
#' @param licenseType 
#' @param roleName 
#' @param description 
#'
#' @examples
#'
#' @export
create_replication_job <- function (serverId, seedReplicationTime, 
    frequency, licenseType = NULL, roleName = NULL, description = NULL) 
{
    op <- Operation(name = "CreateReplicationJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_replication_job_input(serverId = serverId, 
        seedReplicationTime = seedReplicationTime, frequency = frequency, 
        licenseType = licenseType, roleName = roleName, description = description)
    output <- create_replication_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The DeleteReplicationJob API is used to delete a ReplicationJob, resulting in no further ReplicationRuns
#'
#' The DeleteReplicationJob API is used to delete a ReplicationJob, resulting in no further ReplicationRuns. This will delete the contents of the S3 bucket used to store SMS artifacts, but will not delete any AMIs created by the SMS service.
#'
#' @param replicationJobId 
#'
#' @examples
#'
#' @export
delete_replication_job <- function (replicationJobId) 
{
    op <- Operation(name = "DeleteReplicationJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_replication_job_input(replicationJobId = replicationJobId)
    output <- delete_replication_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The DeleteServerCatalog API clears all servers from your server catalog
#'
#' The DeleteServerCatalog API clears all servers from your server catalog. This means that these servers will no longer be accessible to the Server Migration Service.
#'
#' @examples
#'
#' @export
delete_server_catalog <- function () 
{
    op <- Operation(name = "DeleteServerCatalog", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_server_catalog_input()
    output <- delete_server_catalog_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The DisassociateConnector API will disassociate a connector from the Server Migration Service, rendering it unavailable to support replication jobs
#'
#' The DisassociateConnector API will disassociate a connector from the Server Migration Service, rendering it unavailable to support replication jobs.
#'
#' @param connectorId 
#'
#' @examples
#'
#' @export
disassociate_connector <- function (connectorId) 
{
    op <- Operation(name = "DisassociateConnector", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_connector_input(connectorId = connectorId)
    output <- disassociate_connector_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The GetConnectors API returns a list of connectors that are registered with the Server Migration Service
#'
#' The GetConnectors API returns a list of connectors that are registered with the Server Migration Service.
#'
#' @param nextToken 
#' @param maxResults 
#'
#' @examples
#'
#' @export
get_connectors <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetConnectors", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_connectors_input(nextToken = nextToken, maxResults = maxResults)
    output <- get_connectors_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The GetReplicationJobs API will return all of your ReplicationJobs and their details
#'
#' The GetReplicationJobs API will return all of your ReplicationJobs and their details. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationJobs.
#'
#' @param replicationJobId 
#' @param nextToken 
#' @param maxResults 
#'
#' @examples
#'
#' @export
get_replication_jobs <- function (replicationJobId = NULL, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "GetReplicationJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_replication_jobs_input(replicationJobId = replicationJobId, 
        nextToken = nextToken, maxResults = maxResults)
    output <- get_replication_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The GetReplicationRuns API will return all ReplicationRuns for a given ReplicationJob
#'
#' The GetReplicationRuns API will return all ReplicationRuns for a given ReplicationJob. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationRuns for a ReplicationJob.
#'
#' @param replicationJobId 
#' @param nextToken 
#' @param maxResults 
#'
#' @examples
#'
#' @export
get_replication_runs <- function (replicationJobId, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "GetReplicationRuns", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_replication_runs_input(replicationJobId = replicationJobId, 
        nextToken = nextToken, maxResults = maxResults)
    output <- get_replication_runs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The GetServers API returns a list of all servers in your server catalog
#'
#' The GetServers API returns a list of all servers in your server catalog. For this call to succeed, you must previously have called ImportServerCatalog.
#'
#' @param nextToken 
#' @param maxResults 
#'
#' @examples
#'
#' @export
get_servers <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetServers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_servers_input(nextToken = nextToken, maxResults = maxResults)
    output <- get_servers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The ImportServerCatalog API is used to gather the complete list of on-premises servers on your premises
#'
#' The ImportServerCatalog API is used to gather the complete list of on-premises servers on your premises. This API call requires connectors to be installed and monitoring all servers you would like imported. This API call returns immediately, but may take some time to retrieve all of the servers.
#'
#' @examples
#'
#' @export
import_server_catalog <- function () 
{
    op <- Operation(name = "ImportServerCatalog", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_server_catalog_input()
    output <- import_server_catalog_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The StartOnDemandReplicationRun API is used to start a ReplicationRun on demand (in addition to those that are scheduled based on your frequency)
#'
#' The StartOnDemandReplicationRun API is used to start a ReplicationRun on demand (in addition to those that are scheduled based on your frequency). This ReplicationRun will start immediately. StartOnDemandReplicationRun is subject to limits on how many on demand ReplicationRuns you may call per 24-hour period.
#'
#' @param replicationJobId 
#' @param description 
#'
#' @examples
#'
#' @export
start_on_demand_replication_run <- function (replicationJobId, 
    description = NULL) 
{
    op <- Operation(name = "StartOnDemandReplicationRun", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_on_demand_replication_run_input(replicationJobId = replicationJobId, 
        description = description)
    output <- start_on_demand_replication_run_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The UpdateReplicationJob API is used to change the settings of your existing ReplicationJob created using CreateReplicationJob
#'
#' The UpdateReplicationJob API is used to change the settings of your existing ReplicationJob created using CreateReplicationJob. Calling this API will affect the next scheduled ReplicationRun.
#'
#' @param replicationJobId 
#' @param frequency 
#' @param nextReplicationRunStartTime 
#' @param licenseType 
#' @param roleName 
#' @param description 
#'
#' @examples
#'
#' @export
update_replication_job <- function (replicationJobId, frequency = NULL, 
    nextReplicationRunStartTime = NULL, licenseType = NULL, roleName = NULL, 
    description = NULL) 
{
    op <- Operation(name = "UpdateReplicationJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_replication_job_input(replicationJobId = replicationJobId, 
        frequency = frequency, nextReplicationRunStartTime = nextReplicationRunStartTime, 
        licenseType = licenseType, roleName = roleName, description = description)
    output <- update_replication_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
