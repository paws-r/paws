#' Creates or updates an app
#'
#' Creates or updates an app.
#'
#' @param CreateApplicationRequest 
#'
#' @examples
#'
#' @export
create_app <- function (CreateApplicationRequest) 
{
    op <- Operation(name = "CreateApp", http_method = "POST", 
        http_path = "/v1/apps", paginator = list())
    input <- create_app_input(CreateApplicationRequest = CreateApplicationRequest)
    output <- create_app_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates a campaign
#'
#' Creates or updates a campaign.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param WriteCampaignRequest 
#'
#' @examples
#'
#' @export
create_campaign <- function (ApplicationId, WriteCampaignRequest) 
{
    op <- Operation(name = "CreateCampaign", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/campaigns", paginator = list())
    input <- create_campaign_input(ApplicationId = ApplicationId, 
        WriteCampaignRequest = WriteCampaignRequest)
    output <- create_campaign_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an export job
#'
#' Creates an export job.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param ExportJobRequest 
#'
#' @examples
#'
#' @export
create_export_job <- function (ApplicationId, ExportJobRequest) 
{
    op <- Operation(name = "CreateExportJob", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/jobs/export", 
        paginator = list())
    input <- create_export_job_input(ApplicationId = ApplicationId, 
        ExportJobRequest = ExportJobRequest)
    output <- create_export_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates an import job
#'
#' Creates or updates an import job.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param ImportJobRequest 
#'
#' @examples
#'
#' @export
create_import_job <- function (ApplicationId, ImportJobRequest) 
{
    op <- Operation(name = "CreateImportJob", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/jobs/import", 
        paginator = list())
    input <- create_import_job_input(ApplicationId = ApplicationId, 
        ImportJobRequest = ImportJobRequest)
    output <- create_import_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to create or update a segment
#'
#' Used to create or update a segment.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param WriteSegmentRequest 
#'
#' @examples
#'
#' @export
create_segment <- function (ApplicationId, WriteSegmentRequest) 
{
    op <- Operation(name = "CreateSegment", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/segments", paginator = list())
    input <- create_segment_input(ApplicationId = ApplicationId, 
        WriteSegmentRequest = WriteSegmentRequest)
    output <- create_segment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an ADM channel
#'
#' Delete an ADM channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_adm_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteAdmChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/adm", 
        paginator = list())
    input <- delete_adm_channel_input(ApplicationId = ApplicationId)
    output <- delete_adm_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the APNs channel for an app
#'
#' Deletes the APNs channel for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_apns_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteApnsChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/apns", 
        paginator = list())
    input <- delete_apns_channel_input(ApplicationId = ApplicationId)
    output <- delete_apns_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an APNS sandbox channel
#'
#' Delete an APNS sandbox channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_apns_sandbox_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteApnsSandboxChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/apns_sandbox", 
        paginator = list())
    input <- delete_apns_sandbox_channel_input(ApplicationId = ApplicationId)
    output <- delete_apns_sandbox_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an APNS VoIP channel
#'
#' Delete an APNS VoIP channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_apns_voip_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteApnsVoipChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/apns_voip", 
        paginator = list())
    input <- delete_apns_voip_channel_input(ApplicationId = ApplicationId)
    output <- delete_apns_voip_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an APNS VoIP sandbox channel
#'
#' Delete an APNS VoIP sandbox channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_apns_voip_sandbox_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteApnsVoipSandboxChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/apns_voip_sandbox", 
        paginator = list())
    input <- delete_apns_voip_sandbox_channel_input(ApplicationId = ApplicationId)
    output <- delete_apns_voip_sandbox_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an app
#'
#' Deletes an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_app <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteApp", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}", paginator = list())
    input <- delete_app_input(ApplicationId = ApplicationId)
    output <- delete_app_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete a BAIDU GCM channel
#'
#' Delete a BAIDU GCM channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_baidu_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteBaiduChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/baidu", 
        paginator = list())
    input <- delete_baidu_channel_input(ApplicationId = ApplicationId)
    output <- delete_baidu_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a campaign
#'
#' Deletes a campaign.
#'
#' @param CampaignId The unique ID of the campaign.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_campaign <- function (CampaignId, ApplicationId) 
{
    op <- Operation(name = "DeleteCampaign", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/campaigns/{campaign-id}", 
        paginator = list())
    input <- delete_campaign_input(CampaignId = CampaignId, ApplicationId = ApplicationId)
    output <- delete_campaign_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an email channel
#'
#' Delete an email channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_email_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteEmailChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/email", 
        paginator = list())
    input <- delete_email_channel_input(ApplicationId = ApplicationId)
    output <- delete_email_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an endpoint
#'
#' Deletes an endpoint.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param EndpointId The unique ID of the endpoint.
#'
#' @examples
#'
#' @export
delete_endpoint <- function (ApplicationId, EndpointId) 
{
    op <- Operation(name = "DeleteEndpoint", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/endpoints/{endpoint-id}", 
        paginator = list())
    input <- delete_endpoint_input(ApplicationId = ApplicationId, 
        EndpointId = EndpointId)
    output <- delete_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the event stream for an app
#'
#' Deletes the event stream for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_event_stream <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteEventStream", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/eventstream", 
        paginator = list())
    input <- delete_event_stream_input(ApplicationId = ApplicationId)
    output <- delete_event_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the GCM channel for an app
#'
#' Deletes the GCM channel for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_gcm_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteGcmChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/gcm", 
        paginator = list())
    input <- delete_gcm_channel_input(ApplicationId = ApplicationId)
    output <- delete_gcm_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a segment
#'
#' Deletes a segment.
#'
#' @param SegmentId The unique ID of the segment.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_segment <- function (SegmentId, ApplicationId) 
{
    op <- Operation(name = "DeleteSegment", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}", 
        paginator = list())
    input <- delete_segment_input(SegmentId = SegmentId, ApplicationId = ApplicationId)
    output <- delete_segment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an SMS channel
#'
#' Delete an SMS channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
delete_sms_channel <- function (ApplicationId) 
{
    op <- Operation(name = "DeleteSmsChannel", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/channels/sms", 
        paginator = list())
    input <- delete_sms_channel_input(ApplicationId = ApplicationId)
    output <- delete_sms_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes endpoints that are associated with a User ID
#'
#' Deletes endpoints that are associated with a User ID.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param UserId The unique ID of the user.
#'
#' @examples
#'
#' @export
delete_user_endpoints <- function (ApplicationId, UserId) 
{
    op <- Operation(name = "DeleteUserEndpoints", http_method = "DELETE", 
        http_path = "/v1/apps/{application-id}/users/{user-id}", 
        paginator = list())
    input <- delete_user_endpoints_input(ApplicationId = ApplicationId, 
        UserId = UserId)
    output <- delete_user_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get an ADM channel
#'
#' Get an ADM channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_adm_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetAdmChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/adm", 
        paginator = list())
    input <- get_adm_channel_input(ApplicationId = ApplicationId)
    output <- get_adm_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the APNs channel for an app
#'
#' Returns information about the APNs channel for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_apns_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetApnsChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/apns", 
        paginator = list())
    input <- get_apns_channel_input(ApplicationId = ApplicationId)
    output <- get_apns_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get an APNS sandbox channel
#'
#' Get an APNS sandbox channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_apns_sandbox_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetApnsSandboxChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/apns_sandbox", 
        paginator = list())
    input <- get_apns_sandbox_channel_input(ApplicationId = ApplicationId)
    output <- get_apns_sandbox_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get an APNS VoIP channel
#'
#' Get an APNS VoIP channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_apns_voip_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetApnsVoipChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/apns_voip", 
        paginator = list())
    input <- get_apns_voip_channel_input(ApplicationId = ApplicationId)
    output <- get_apns_voip_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get an APNS VoIPSandbox channel
#'
#' Get an APNS VoIPSandbox channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_apns_voip_sandbox_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetApnsVoipSandboxChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/apns_voip_sandbox", 
        paginator = list())
    input <- get_apns_voip_sandbox_channel_input(ApplicationId = ApplicationId)
    output <- get_apns_voip_sandbox_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an app
#'
#' Returns information about an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_app <- function (ApplicationId) 
{
    op <- Operation(name = "GetApp", http_method = "GET", http_path = "/v1/apps/{application-id}", 
        paginator = list())
    input <- get_app_input(ApplicationId = ApplicationId)
    output <- get_app_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to request the settings for an app
#'
#' Used to request the settings for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_application_settings <- function (ApplicationId) 
{
    op <- Operation(name = "GetApplicationSettings", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/settings", paginator = list())
    input <- get_application_settings_input(ApplicationId = ApplicationId)
    output <- get_application_settings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about your apps
#'
#' Returns information about your apps.
#'
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_apps <- function (PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetApps", http_method = "GET", http_path = "/v1/apps", 
        paginator = list())
    input <- get_apps_input(PageSize = PageSize, Token = Token)
    output <- get_apps_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get a BAIDU GCM channel
#'
#' Get a BAIDU GCM channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_baidu_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetBaiduChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/baidu", 
        paginator = list())
    input <- get_baidu_channel_input(ApplicationId = ApplicationId)
    output <- get_baidu_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a campaign
#'
#' Returns information about a campaign.
#'
#' @param CampaignId The unique ID of the campaign.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_campaign <- function (CampaignId, ApplicationId) 
{
    op <- Operation(name = "GetCampaign", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/campaigns/{campaign-id}", 
        paginator = list())
    input <- get_campaign_input(CampaignId = CampaignId, ApplicationId = ApplicationId)
    output <- get_campaign_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the activity performed by a campaign
#'
#' Returns information about the activity performed by a campaign.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param CampaignId The unique ID of the campaign.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_campaign_activities <- function (ApplicationId, CampaignId, 
    PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetCampaignActivities", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", 
        paginator = list())
    input <- get_campaign_activities_input(ApplicationId = ApplicationId, 
        CampaignId = CampaignId, PageSize = PageSize, Token = Token)
    output <- get_campaign_activities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a specific version of a campaign
#'
#' Returns information about a specific version of a campaign.
#'
#' @param Version The version of the campaign.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param CampaignId The unique ID of the campaign.
#'
#' @examples
#'
#' @export
get_campaign_version <- function (Version, ApplicationId, CampaignId) 
{
    op <- Operation(name = "GetCampaignVersion", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", 
        paginator = list())
    input <- get_campaign_version_input(Version = Version, ApplicationId = ApplicationId, 
        CampaignId = CampaignId)
    output <- get_campaign_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about your campaign versions
#'
#' Returns information about your campaign versions.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param CampaignId The unique ID of the campaign.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_campaign_versions <- function (ApplicationId, CampaignId, 
    PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetCampaignVersions", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", 
        paginator = list())
    input <- get_campaign_versions_input(ApplicationId = ApplicationId, 
        CampaignId = CampaignId, PageSize = PageSize, Token = Token)
    output <- get_campaign_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about your campaigns
#'
#' Returns information about your campaigns.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_campaigns <- function (ApplicationId, PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetCampaigns", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/campaigns", paginator = list())
    input <- get_campaigns_input(ApplicationId = ApplicationId, 
        PageSize = PageSize, Token = Token)
    output <- get_campaigns_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get all channels
#'
#' Get all channels.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_channels <- function (ApplicationId) 
{
    op <- Operation(name = "GetChannels", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels", paginator = list())
    input <- get_channels_input(ApplicationId = ApplicationId)
    output <- get_channels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get an email channel
#'
#' Get an email channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_email_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetEmailChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/email", 
        paginator = list())
    input <- get_email_channel_input(ApplicationId = ApplicationId)
    output <- get_email_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an endpoint
#'
#' Returns information about an endpoint.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param EndpointId The unique ID of the endpoint.
#'
#' @examples
#'
#' @export
get_endpoint <- function (ApplicationId, EndpointId) 
{
    op <- Operation(name = "GetEndpoint", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/endpoints/{endpoint-id}", 
        paginator = list())
    input <- get_endpoint_input(ApplicationId = ApplicationId, 
        EndpointId = EndpointId)
    output <- get_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the event stream for an app
#'
#' Returns the event stream for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_event_stream <- function (ApplicationId) 
{
    op <- Operation(name = "GetEventStream", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/eventstream", 
        paginator = list())
    input <- get_event_stream_input(ApplicationId = ApplicationId)
    output <- get_event_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an export job
#'
#' Returns information about an export job.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param JobId The unique ID of the job.
#'
#' @examples
#'
#' @export
get_export_job <- function (ApplicationId, JobId) 
{
    op <- Operation(name = "GetExportJob", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/jobs/export/{job-id}", 
        paginator = list())
    input <- get_export_job_input(ApplicationId = ApplicationId, 
        JobId = JobId)
    output <- get_export_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about your export jobs
#'
#' Returns information about your export jobs.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_export_jobs <- function (ApplicationId, PageSize = NULL, 
    Token = NULL) 
{
    op <- Operation(name = "GetExportJobs", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/jobs/export", 
        paginator = list())
    input <- get_export_jobs_input(ApplicationId = ApplicationId, 
        PageSize = PageSize, Token = Token)
    output <- get_export_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the GCM channel for an app
#'
#' Returns information about the GCM channel for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_gcm_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetGcmChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/gcm", 
        paginator = list())
    input <- get_gcm_channel_input(ApplicationId = ApplicationId)
    output <- get_gcm_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about an import job
#'
#' Returns information about an import job.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param JobId The unique ID of the job.
#'
#' @examples
#'
#' @export
get_import_job <- function (ApplicationId, JobId) 
{
    op <- Operation(name = "GetImportJob", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/jobs/import/{job-id}", 
        paginator = list())
    input <- get_import_job_input(ApplicationId = ApplicationId, 
        JobId = JobId)
    output <- get_import_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about your import jobs
#'
#' Returns information about your import jobs.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_import_jobs <- function (ApplicationId, PageSize = NULL, 
    Token = NULL) 
{
    op <- Operation(name = "GetImportJobs", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/jobs/import", 
        paginator = list())
    input <- get_import_jobs_input(ApplicationId = ApplicationId, 
        PageSize = PageSize, Token = Token)
    output <- get_import_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a segment
#'
#' Returns information about a segment.
#'
#' @param SegmentId The unique ID of the segment.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_segment <- function (SegmentId, ApplicationId) 
{
    op <- Operation(name = "GetSegment", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}", 
        paginator = list())
    input <- get_segment_input(SegmentId = SegmentId, ApplicationId = ApplicationId)
    output <- get_segment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of export jobs for a specific segment
#'
#' Returns a list of export jobs for a specific segment.
#'
#' @param SegmentId The unique ID of the segment.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_segment_export_jobs <- function (SegmentId, ApplicationId, 
    PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetSegmentExportJobs", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}/jobs/export", 
        paginator = list())
    input <- get_segment_export_jobs_input(SegmentId = SegmentId, 
        ApplicationId = ApplicationId, PageSize = PageSize, Token = Token)
    output <- get_segment_export_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of import jobs for a specific segment
#'
#' Returns a list of import jobs for a specific segment.
#'
#' @param SegmentId The unique ID of the segment.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_segment_import_jobs <- function (SegmentId, ApplicationId, 
    PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetSegmentImportJobs", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", 
        paginator = list())
    input <- get_segment_import_jobs_input(SegmentId = SegmentId, 
        ApplicationId = ApplicationId, PageSize = PageSize, Token = Token)
    output <- get_segment_import_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a segment version
#'
#' Returns information about a segment version.
#'
#' @param SegmentId The unique ID of the segment.
#' @param Version The segment version.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_segment_version <- function (SegmentId, Version, ApplicationId) 
{
    op <- Operation(name = "GetSegmentVersion", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", 
        paginator = list())
    input <- get_segment_version_input(SegmentId = SegmentId, 
        Version = Version, ApplicationId = ApplicationId)
    output <- get_segment_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about your segment versions
#'
#' Returns information about your segment versions.
#'
#' @param SegmentId The unique ID of the segment.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_segment_versions <- function (SegmentId, ApplicationId, PageSize = NULL, 
    Token = NULL) 
{
    op <- Operation(name = "GetSegmentVersions", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}/versions", 
        paginator = list())
    input <- get_segment_versions_input(SegmentId = SegmentId, 
        ApplicationId = ApplicationId, PageSize = PageSize, Token = Token)
    output <- get_segment_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to get information about your segments
#'
#' Used to get information about your segments.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param PageSize The number of entries you want on each page in the response.
#' @param Token The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
#'
#' @examples
#'
#' @export
get_segments <- function (ApplicationId, PageSize = NULL, Token = NULL) 
{
    op <- Operation(name = "GetSegments", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/segments", paginator = list())
    input <- get_segments_input(ApplicationId = ApplicationId, 
        PageSize = PageSize, Token = Token)
    output <- get_segments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get an SMS channel
#'
#' Get an SMS channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#'
#' @examples
#'
#' @export
get_sms_channel <- function (ApplicationId) 
{
    op <- Operation(name = "GetSmsChannel", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/channels/sms", 
        paginator = list())
    input <- get_sms_channel_input(ApplicationId = ApplicationId)
    output <- get_sms_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the endpoints that are associated with a User ID
#'
#' Returns information about the endpoints that are associated with a User ID.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param UserId The unique ID of the user.
#'
#' @examples
#'
#' @export
get_user_endpoints <- function (ApplicationId, UserId) 
{
    op <- Operation(name = "GetUserEndpoints", http_method = "GET", 
        http_path = "/v1/apps/{application-id}/users/{user-id}", 
        paginator = list())
    input <- get_user_endpoints_input(ApplicationId = ApplicationId, 
        UserId = UserId)
    output <- get_user_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the specified phone number
#'
#' Returns information about the specified phone number.
#'
#' @param NumberValidateRequest 
#'
#' @examples
#'
#' @export
phone_number_validate <- function (NumberValidateRequest) 
{
    op <- Operation(name = "PhoneNumberValidate", http_method = "POST", 
        http_path = "/v1/phone/number/validate", paginator = list())
    input <- phone_number_validate_input(NumberValidateRequest = NumberValidateRequest)
    output <- phone_number_validate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use to create or update the event stream for an app
#'
#' Use to create or update the event stream for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param WriteEventStream 
#'
#' @examples
#'
#' @export
put_event_stream <- function (ApplicationId, WriteEventStream) 
{
    op <- Operation(name = "PutEventStream", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/eventstream", 
        paginator = list())
    input <- put_event_stream_input(ApplicationId = ApplicationId, 
        WriteEventStream = WriteEventStream)
    output <- put_event_stream_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use to record events for endpoints
#'
#' Use to record events for endpoints. This method creates events and creates or updates the endpoints that those events are associated with.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param EventsRequest 
#'
#' @examples
#'
#' @export
put_events <- function (ApplicationId, EventsRequest) 
{
    op <- Operation(name = "PutEvents", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/events", paginator = list())
    input <- put_events_input(ApplicationId = ApplicationId, 
        EventsRequest = EventsRequest)
    output <- put_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to remove the attributes for an app
#'
#' Used to remove the attributes for an app
#'
#' @param AttributeType Type of attribute. Can be endpoint-custom-attributes, endpoint-custom-metrics, endpoint-user-attributes.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param UpdateAttributesRequest 
#'
#' @examples
#'
#' @export
remove_attributes <- function (AttributeType, ApplicationId, 
    UpdateAttributesRequest) 
{
    op <- Operation(name = "RemoveAttributes", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/attributes/{attribute-type}", 
        paginator = list())
    input <- remove_attributes_input(AttributeType = AttributeType, 
        ApplicationId = ApplicationId, UpdateAttributesRequest = UpdateAttributesRequest)
    output <- remove_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to send a direct message
#'
#' Used to send a direct message.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param MessageRequest 
#'
#' @examples
#'
#' @export
send_messages <- function (ApplicationId, MessageRequest) 
{
    op <- Operation(name = "SendMessages", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/messages", paginator = list())
    input <- send_messages_input(ApplicationId = ApplicationId, 
        MessageRequest = MessageRequest)
    output <- send_messages_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to send a message to a list of users
#'
#' Used to send a message to a list of users.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param SendUsersMessageRequest 
#'
#' @examples
#'
#' @export
send_users_messages <- function (ApplicationId, SendUsersMessageRequest) 
{
    op <- Operation(name = "SendUsersMessages", http_method = "POST", 
        http_path = "/v1/apps/{application-id}/users-messages", 
        paginator = list())
    input <- send_users_messages_input(ApplicationId = ApplicationId, 
        SendUsersMessageRequest = SendUsersMessageRequest)
    output <- send_users_messages_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an ADM channel
#'
#' Update an ADM channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param ADMChannelRequest 
#'
#' @examples
#'
#' @export
update_adm_channel <- function (ApplicationId, ADMChannelRequest) 
{
    op <- Operation(name = "UpdateAdmChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/adm", 
        paginator = list())
    input <- update_adm_channel_input(ApplicationId = ApplicationId, 
        ADMChannelRequest = ADMChannelRequest)
    output <- update_adm_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use to update the APNs channel for an app
#'
#' Use to update the APNs channel for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param APNSChannelRequest 
#'
#' @examples
#'
#' @export
update_apns_channel <- function (ApplicationId, APNSChannelRequest) 
{
    op <- Operation(name = "UpdateApnsChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/apns", 
        paginator = list())
    input <- update_apns_channel_input(ApplicationId = ApplicationId, 
        APNSChannelRequest = APNSChannelRequest)
    output <- update_apns_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an APNS sandbox channel
#'
#' Update an APNS sandbox channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param APNSSandboxChannelRequest 
#'
#' @examples
#'
#' @export
update_apns_sandbox_channel <- function (ApplicationId, APNSSandboxChannelRequest) 
{
    op <- Operation(name = "UpdateApnsSandboxChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/apns_sandbox", 
        paginator = list())
    input <- update_apns_sandbox_channel_input(ApplicationId = ApplicationId, 
        APNSSandboxChannelRequest = APNSSandboxChannelRequest)
    output <- update_apns_sandbox_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an APNS VoIP channel
#'
#' Update an APNS VoIP channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param APNSVoipChannelRequest 
#'
#' @examples
#'
#' @export
update_apns_voip_channel <- function (ApplicationId, APNSVoipChannelRequest) 
{
    op <- Operation(name = "UpdateApnsVoipChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/apns_voip", 
        paginator = list())
    input <- update_apns_voip_channel_input(ApplicationId = ApplicationId, 
        APNSVoipChannelRequest = APNSVoipChannelRequest)
    output <- update_apns_voip_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an APNS VoIP sandbox channel
#'
#' Update an APNS VoIP sandbox channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param APNSVoipSandboxChannelRequest 
#'
#' @examples
#'
#' @export
update_apns_voip_sandbox_channel <- function (ApplicationId, 
    APNSVoipSandboxChannelRequest) 
{
    op <- Operation(name = "UpdateApnsVoipSandboxChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/apns_voip_sandbox", 
        paginator = list())
    input <- update_apns_voip_sandbox_channel_input(ApplicationId = ApplicationId, 
        APNSVoipSandboxChannelRequest = APNSVoipSandboxChannelRequest)
    output <- update_apns_voip_sandbox_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to update the settings for an app
#'
#' Used to update the settings for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param WriteApplicationSettingsRequest 
#'
#' @examples
#'
#' @export
update_application_settings <- function (ApplicationId, WriteApplicationSettingsRequest) 
{
    op <- Operation(name = "UpdateApplicationSettings", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/settings", paginator = list())
    input <- update_application_settings_input(ApplicationId = ApplicationId, 
        WriteApplicationSettingsRequest = WriteApplicationSettingsRequest)
    output <- update_application_settings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update a BAIDU GCM channel
#'
#' Update a BAIDU GCM channel
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param BaiduChannelRequest 
#'
#' @examples
#'
#' @export
update_baidu_channel <- function (ApplicationId, BaiduChannelRequest) 
{
    op <- Operation(name = "UpdateBaiduChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/baidu", 
        paginator = list())
    input <- update_baidu_channel_input(ApplicationId = ApplicationId, 
        BaiduChannelRequest = BaiduChannelRequest)
    output <- update_baidu_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use to update a campaign
#'
#' Use to update a campaign.
#'
#' @param CampaignId The unique ID of the campaign.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param WriteCampaignRequest 
#'
#' @examples
#'
#' @export
update_campaign <- function (CampaignId, ApplicationId, WriteCampaignRequest) 
{
    op <- Operation(name = "UpdateCampaign", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/campaigns/{campaign-id}", 
        paginator = list())
    input <- update_campaign_input(CampaignId = CampaignId, ApplicationId = ApplicationId, 
        WriteCampaignRequest = WriteCampaignRequest)
    output <- update_campaign_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an email channel
#'
#' Update an email channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param EmailChannelRequest 
#'
#' @examples
#'
#' @export
update_email_channel <- function (ApplicationId, EmailChannelRequest) 
{
    op <- Operation(name = "UpdateEmailChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/email", 
        paginator = list())
    input <- update_email_channel_input(ApplicationId = ApplicationId, 
        EmailChannelRequest = EmailChannelRequest)
    output <- update_email_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates an endpoint
#'
#' Creates or updates an endpoint.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param EndpointId The unique ID of the endpoint.
#' @param EndpointRequest 
#'
#' @examples
#'
#' @export
update_endpoint <- function (ApplicationId, EndpointId, EndpointRequest) 
{
    op <- Operation(name = "UpdateEndpoint", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/endpoints/{endpoint-id}", 
        paginator = list())
    input <- update_endpoint_input(ApplicationId = ApplicationId, 
        EndpointId = EndpointId, EndpointRequest = EndpointRequest)
    output <- update_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use to update a batch of endpoints
#'
#' Use to update a batch of endpoints.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param EndpointBatchRequest 
#'
#' @examples
#'
#' @export
update_endpoints_batch <- function (ApplicationId, EndpointBatchRequest) 
{
    op <- Operation(name = "UpdateEndpointsBatch", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/endpoints", paginator = list())
    input <- update_endpoints_batch_input(ApplicationId = ApplicationId, 
        EndpointBatchRequest = EndpointBatchRequest)
    output <- update_endpoints_batch_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Use to update the GCM channel for an app
#'
#' Use to update the GCM channel for an app.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param GCMChannelRequest 
#'
#' @examples
#'
#' @export
update_gcm_channel <- function (ApplicationId, GCMChannelRequest) 
{
    op <- Operation(name = "UpdateGcmChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/gcm", 
        paginator = list())
    input <- update_gcm_channel_input(ApplicationId = ApplicationId, 
        GCMChannelRequest = GCMChannelRequest)
    output <- update_gcm_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Used to update a segment
#'
#' Used to update a segment.
#'
#' @param SegmentId The unique ID of the segment.
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param WriteSegmentRequest 
#'
#' @examples
#'
#' @export
update_segment <- function (SegmentId, ApplicationId, WriteSegmentRequest) 
{
    op <- Operation(name = "UpdateSegment", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/segments/{segment-id}", 
        paginator = list())
    input <- update_segment_input(SegmentId = SegmentId, ApplicationId = ApplicationId, 
        WriteSegmentRequest = WriteSegmentRequest)
    output <- update_segment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an SMS channel
#'
#' Update an SMS channel.
#'
#' @param ApplicationId The unique ID of your Amazon Pinpoint application.
#' @param SMSChannelRequest 
#'
#' @examples
#'
#' @export
update_sms_channel <- function (ApplicationId, SMSChannelRequest) 
{
    op <- Operation(name = "UpdateSmsChannel", http_method = "PUT", 
        http_path = "/v1/apps/{application-id}/channels/sms", 
        paginator = list())
    input <- update_sms_channel_input(ApplicationId = ApplicationId, 
        SMSChannelRequest = SMSChannelRequest)
    output <- update_sms_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
