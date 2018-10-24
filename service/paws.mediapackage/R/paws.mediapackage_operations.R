#' Creates a new Channel
#'
#' Creates a new Channel.
#'
#' @param Id The ID of the Channel. The ID must be unique within the region and it
#' cannot be changed after a Channel is created.
#' @param Description A short text description of the Channel.
#'
#' @examples
#'
#' @export
create_channel <- function (Id, Description = NULL) 
{
    op <- Operation(name = "CreateChannel", http_method = "POST", 
        http_path = "/channels", paginator = list())
    input <- create_channel_input(Id = Id, Description = Description)
    output <- create_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new OriginEndpoint record
#'
#' Creates a new OriginEndpoint record.
#'
#' @param ChannelId The ID of the Channel that the OriginEndpoint will be associated with.
#' This cannot be changed after the OriginEndpoint is created.
#' @param Id The ID of the OriginEndpoint.  The ID must be unique within the region
#' and it cannot be changed after the OriginEndpoint is created.
#' @param CmafPackage 
#' @param DashPackage 
#' @param Description A short text description of the OriginEndpoint.
#' @param HlsPackage 
#' @param ManifestName A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
#' @param MssPackage 
#' @param StartoverWindowSeconds Maximum duration (seconds) of content to retain for startover playback.
#' If not specified, startover playback will be disabled for the OriginEndpoint.
#' @param TimeDelaySeconds Amount of delay (seconds) to enforce on the playback of live content.
#' If not specified, there will be no time delay in effect for the OriginEndpoint.
#' @param Whitelist A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
#'
#' @examples
#'
#' @export
create_origin_endpoint <- function (ChannelId, Id, CmafPackage = NULL, 
    DashPackage = NULL, Description = NULL, HlsPackage = NULL, 
    ManifestName = NULL, MssPackage = NULL, StartoverWindowSeconds = NULL, 
    TimeDelaySeconds = NULL, Whitelist = NULL) 
{
    op <- Operation(name = "CreateOriginEndpoint", http_method = "POST", 
        http_path = "/origin_endpoints", paginator = list())
    input <- create_origin_endpoint_input(ChannelId = ChannelId, 
        Id = Id, CmafPackage = CmafPackage, DashPackage = DashPackage, 
        Description = Description, HlsPackage = HlsPackage, ManifestName = ManifestName, 
        MssPackage = MssPackage, StartoverWindowSeconds = StartoverWindowSeconds, 
        TimeDelaySeconds = TimeDelaySeconds, Whitelist = Whitelist)
    output <- create_origin_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing Channel
#'
#' Deletes an existing Channel.
#'
#' @param Id The ID of the Channel to delete.
#'
#' @examples
#'
#' @export
delete_channel <- function (Id) 
{
    op <- Operation(name = "DeleteChannel", http_method = "DELETE", 
        http_path = "/channels/{id}", paginator = list())
    input <- delete_channel_input(Id = Id)
    output <- delete_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing OriginEndpoint
#'
#' Deletes an existing OriginEndpoint.
#'
#' @param Id The ID of the OriginEndpoint to delete.
#'
#' @examples
#'
#' @export
delete_origin_endpoint <- function (Id) 
{
    op <- Operation(name = "DeleteOriginEndpoint", http_method = "DELETE", 
        http_path = "/origin_endpoints/{id}", paginator = list())
    input <- delete_origin_endpoint_input(Id = Id)
    output <- delete_origin_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets details about a Channel
#'
#' Gets details about a Channel.
#'
#' @param Id The ID of a Channel.
#'
#' @examples
#'
#' @export
describe_channel <- function (Id) 
{
    op <- Operation(name = "DescribeChannel", http_method = "GET", 
        http_path = "/channels/{id}", paginator = list())
    input <- describe_channel_input(Id = Id)
    output <- describe_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets details about an existing OriginEndpoint
#'
#' Gets details about an existing OriginEndpoint.
#'
#' @param Id The ID of the OriginEndpoint.
#'
#' @examples
#'
#' @export
describe_origin_endpoint <- function (Id) 
{
    op <- Operation(name = "DescribeOriginEndpoint", http_method = "GET", 
        http_path = "/origin_endpoints/{id}", paginator = list())
    input <- describe_origin_endpoint_input(Id = Id)
    output <- describe_origin_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a collection of Channels
#'
#' Returns a collection of Channels.
#'
#' @param MaxResults Upper bound on number of records to return.
#' @param NextToken A token used to resume pagination from the end of a previous request.
#'
#' @examples
#'
#' @export
list_channels <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListChannels", http_method = "GET", 
        http_path = "/channels", paginator = list())
    input <- list_channels_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_channels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a collection of OriginEndpoint records
#'
#' Returns a collection of OriginEndpoint records.
#'
#' @param ChannelId When specified, the request will return only OriginEndpoints associated with the given Channel ID.
#' @param MaxResults The upper bound on the number of records to return.
#' @param NextToken A token used to resume pagination from the end of a previous request.
#'
#' @examples
#'
#' @export
list_origin_endpoints <- function (ChannelId = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListOriginEndpoints", http_method = "GET", 
        http_path = "/origin_endpoints", paginator = list())
    input <- list_origin_endpoints_input(ChannelId = ChannelId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_origin_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the Channel's first IngestEndpoint's username and password
#'
#' Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
#'
#' @param Id The ID of the channel to update.
#'
#' @examples
#'
#' @export
rotate_channel_credentials <- function (Id) 
{
    op <- Operation(name = "RotateChannelCredentials", http_method = "PUT", 
        http_path = "/channels/{id}/credentials", paginator = list())
    input <- rotate_channel_credentials_input(Id = Id)
    output <- rotate_channel_credentials_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id
#'
#' Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
#'
#' @param IngestEndpointId The id of the IngestEndpoint whose credentials should be rotated
#' @param Id The ID of the channel the IngestEndpoint is on.
#'
#' @examples
#'
#' @export
rotate_ingest_endpoint_credentials <- function (IngestEndpointId, 
    Id) 
{
    op <- Operation(name = "RotateIngestEndpointCredentials", 
        http_method = "PUT", http_path = "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", 
        paginator = list())
    input <- rotate_ingest_endpoint_credentials_input(IngestEndpointId = IngestEndpointId, 
        Id = Id)
    output <- rotate_ingest_endpoint_credentials_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing Channel
#'
#' Updates an existing Channel.
#'
#' @param Id The ID of the Channel to update.
#' @param Description A short text description of the Channel.
#'
#' @examples
#'
#' @export
update_channel <- function (Id, Description = NULL) 
{
    op <- Operation(name = "UpdateChannel", http_method = "PUT", 
        http_path = "/channels/{id}", paginator = list())
    input <- update_channel_input(Id = Id, Description = Description)
    output <- update_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing OriginEndpoint
#'
#' Updates an existing OriginEndpoint.
#'
#' @param Id The ID of the OriginEndpoint to update.
#' @param CmafPackage 
#' @param DashPackage 
#' @param Description A short text description of the OriginEndpoint.
#' @param HlsPackage 
#' @param ManifestName A short string that will be appended to the end of the Endpoint URL.
#' @param MssPackage 
#' @param StartoverWindowSeconds Maximum duration (in seconds) of content to retain for startover playback.
#' If not specified, startover playback will be disabled for the OriginEndpoint.
#' @param TimeDelaySeconds Amount of delay (in seconds) to enforce on the playback of live content.
#' If not specified, there will be no time delay in effect for the OriginEndpoint.
#' @param Whitelist A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
#'
#' @examples
#'
#' @export
update_origin_endpoint <- function (Id, CmafPackage = NULL, DashPackage = NULL, 
    Description = NULL, HlsPackage = NULL, ManifestName = NULL, 
    MssPackage = NULL, StartoverWindowSeconds = NULL, TimeDelaySeconds = NULL, 
    Whitelist = NULL) 
{
    op <- Operation(name = "UpdateOriginEndpoint", http_method = "PUT", 
        http_path = "/origin_endpoints/{id}", paginator = list())
    input <- update_origin_endpoint_input(Id = Id, CmafPackage = CmafPackage, 
        DashPackage = DashPackage, Description = Description, 
        HlsPackage = HlsPackage, ManifestName = ManifestName, 
        MssPackage = MssPackage, StartoverWindowSeconds = StartoverWindowSeconds, 
        TimeDelaySeconds = TimeDelaySeconds, Whitelist = Whitelist)
    output <- update_origin_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
