#' Update a channel schedule
#'
#' Update a channel schedule
#'
#' @param ChannelId Id of the channel whose schedule is being updated.
#' @param Creates Schedule actions to create in the schedule.
#' @param Deletes Schedule actions to delete from the schedule.
#'
#' @examples
#'
#' @export
batch_update_schedule <- function (ChannelId, Creates = NULL, 
    Deletes = NULL) 
{
    op <- Operation(name = "BatchUpdateSchedule", http_method = "PUT", 
        http_path = "/prod/channels/{channelId}/schedule", paginator = list())
    input <- batch_update_schedule_input(ChannelId = ChannelId, 
        Creates = Creates, Deletes = Deletes)
    output <- batch_update_schedule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new channel
#'
#' Creates a new channel
#'
#' @param Destinations 
#' @param EncoderSettings 
#' @param InputAttachments List of input attachments for channel.
#' @param InputSpecification Specification of input for this channel (max. bitrate, resolution, codec, etc.)
#' @param LogLevel The log level to write to CloudWatch Logs.
#' @param Name Name of channel.
#' @param RequestId Unique request ID to be specified. This is needed to prevent retries from
#' creating multiple resources.
#' @param Reserved Deprecated field that's only usable by whitelisted customers.
#' @param RoleArn An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
#'
#' @examples
#'
#' @export
create_channel <- function (Destinations = NULL, EncoderSettings = NULL, 
    InputAttachments = NULL, InputSpecification = NULL, LogLevel = NULL, 
    Name = NULL, RequestId = NULL, Reserved = NULL, RoleArn = NULL) 
{
    op <- Operation(name = "CreateChannel", http_method = "POST", 
        http_path = "/prod/channels", paginator = list())
    input <- create_channel_input(Destinations = Destinations, 
        EncoderSettings = EncoderSettings, InputAttachments = InputAttachments, 
        InputSpecification = InputSpecification, LogLevel = LogLevel, 
        Name = Name, RequestId = RequestId, Reserved = Reserved, 
        RoleArn = RoleArn)
    output <- create_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create an input
#'
#' Create an input
#'
#' @param Destinations Destination settings for PUSH type inputs.
#' @param InputSecurityGroups A list of security groups referenced by IDs to attach to the input.
#' @param Name Name of the input.
#' @param RequestId Unique identifier of the request to ensure the request is handled
#' exactly once in case of retries.
#' @param Sources The source URLs for a PULL-type input. Every PULL type input needs
#' exactly two source URLs for redundancy.
#' Only specify sources for PULL type Inputs. Leave Destinations empty.
#' @param Type 
#'
#' @examples
#'
#' @export
create_input <- function (Destinations = NULL, InputSecurityGroups = NULL, 
    Name = NULL, RequestId = NULL, Sources = NULL, Type = NULL) 
{
    op <- Operation(name = "CreateInput", http_method = "POST", 
        http_path = "/prod/inputs", paginator = list())
    input <- create_input_input(Destinations = Destinations, 
        InputSecurityGroups = InputSecurityGroups, Name = Name, 
        RequestId = RequestId, Sources = Sources, Type = Type)
    output <- create_input_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Input Security Group
#'
#' Creates a Input Security Group
#'
#' @param WhitelistRules List of IPv4 CIDR addresses to whitelist
#'
#' @examples
#'
#' @export
create_input_security_group <- function (WhitelistRules = NULL) 
{
    op <- Operation(name = "CreateInputSecurityGroup", http_method = "POST", 
        http_path = "/prod/inputSecurityGroups", paginator = list())
    input <- create_input_security_group_input(WhitelistRules = WhitelistRules)
    output <- create_input_security_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts deletion of channel
#'
#' Starts deletion of channel. The associated outputs are also deleted.
#'
#' @param ChannelId Unique ID of the channel.
#'
#' @examples
#'
#' @export
delete_channel <- function (ChannelId) 
{
    op <- Operation(name = "DeleteChannel", http_method = "DELETE", 
        http_path = "/prod/channels/{channelId}", paginator = list())
    input <- delete_channel_input(ChannelId = ChannelId)
    output <- delete_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the input end point
#'
#' Deletes the input end point
#'
#' @param InputId Unique ID of the input
#'
#' @examples
#'
#' @export
delete_input <- function (InputId) 
{
    op <- Operation(name = "DeleteInput", http_method = "DELETE", 
        http_path = "/prod/inputs/{inputId}", paginator = list())
    input <- delete_input_input(InputId = InputId)
    output <- delete_input_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an Input Security Group
#'
#' Deletes an Input Security Group
#'
#' @param InputSecurityGroupId The Input Security Group to delete
#'
#' @examples
#'
#' @export
delete_input_security_group <- function (InputSecurityGroupId) 
{
    op <- Operation(name = "DeleteInputSecurityGroup", http_method = "DELETE", 
        http_path = "/prod/inputSecurityGroups/{inputSecurityGroupId}", 
        paginator = list())
    input <- delete_input_security_group_input(InputSecurityGroupId = InputSecurityGroupId)
    output <- delete_input_security_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Delete an expired reservation
#'
#' Delete an expired reservation.
#'
#' @param ReservationId Unique reservation ID, e.g. '1234567'
#'
#' @examples
#'
#' @export
delete_reservation <- function (ReservationId) 
{
    op <- Operation(name = "DeleteReservation", http_method = "DELETE", 
        http_path = "/prod/reservations/{reservationId}", paginator = list())
    input <- delete_reservation_input(ReservationId = ReservationId)
    output <- delete_reservation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets details about a channel
#'
#' Gets details about a channel
#'
#' @param ChannelId channel ID
#'
#' @examples
#'
#' @export
describe_channel <- function (ChannelId) 
{
    op <- Operation(name = "DescribeChannel", http_method = "GET", 
        http_path = "/prod/channels/{channelId}", paginator = list())
    input <- describe_channel_input(ChannelId = ChannelId)
    output <- describe_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Produces details about an input
#'
#' Produces details about an input
#'
#' @param InputId Unique ID of the input
#'
#' @examples
#'
#' @export
describe_input <- function (InputId) 
{
    op <- Operation(name = "DescribeInput", http_method = "GET", 
        http_path = "/prod/inputs/{inputId}", paginator = list())
    input <- describe_input_input(InputId = InputId)
    output <- describe_input_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Produces a summary of an Input Security Group
#'
#' Produces a summary of an Input Security Group
#'
#' @param InputSecurityGroupId The id of the Input Security Group to describe
#'
#' @examples
#'
#' @export
describe_input_security_group <- function (InputSecurityGroupId) 
{
    op <- Operation(name = "DescribeInputSecurityGroup", http_method = "GET", 
        http_path = "/prod/inputSecurityGroups/{inputSecurityGroupId}", 
        paginator = list())
    input <- describe_input_security_group_input(InputSecurityGroupId = InputSecurityGroupId)
    output <- describe_input_security_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get details for an offering
#'
#' Get details for an offering.
#'
#' @param OfferingId Unique offering ID, e.g. '87654321'
#'
#' @examples
#'
#' @export
describe_offering <- function (OfferingId) 
{
    op <- Operation(name = "DescribeOffering", http_method = "GET", 
        http_path = "/prod/offerings/{offeringId}", paginator = list())
    input <- describe_offering_input(OfferingId = OfferingId)
    output <- describe_offering_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get details for a reservation
#'
#' Get details for a reservation.
#'
#' @param ReservationId Unique reservation ID, e.g. '1234567'
#'
#' @examples
#'
#' @export
describe_reservation <- function (ReservationId) 
{
    op <- Operation(name = "DescribeReservation", http_method = "GET", 
        http_path = "/prod/reservations/{reservationId}", paginator = list())
    input <- describe_reservation_input(ReservationId = ReservationId)
    output <- describe_reservation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get a channel schedule
#'
#' Get a channel schedule
#'
#' @param ChannelId Id of the channel whose schedule is being updated.
#' @param MaxResults 
#' @param NextToken 
#'
#' @examples
#'
#' @export
describe_schedule <- function (ChannelId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeSchedule", http_method = "GET", 
        http_path = "/prod/channels/{channelId}/schedule", paginator = list())
    input <- describe_schedule_input(ChannelId = ChannelId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_schedule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Produces list of channels that have been created
#'
#' Produces list of channels that have been created
#'
#' @param MaxResults 
#' @param NextToken 
#'
#' @examples
#'
#' @export
list_channels <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListChannels", http_method = "GET", 
        http_path = "/prod/channels", paginator = list())
    input <- list_channels_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_channels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Produces a list of Input Security Groups for an account
#'
#' Produces a list of Input Security Groups for an account
#'
#' @param MaxResults 
#' @param NextToken 
#'
#' @examples
#'
#' @export
list_input_security_groups <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListInputSecurityGroups", http_method = "GET", 
        http_path = "/prod/inputSecurityGroups", paginator = list())
    input <- list_input_security_groups_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_input_security_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Produces list of inputs that have been created
#'
#' Produces list of inputs that have been created
#'
#' @param MaxResults 
#' @param NextToken 
#'
#' @examples
#'
#' @export
list_inputs <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListInputs", http_method = "GET", 
        http_path = "/prod/inputs", paginator = list())
    input <- list_inputs_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_inputs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List offerings available for purchase
#'
#' List offerings available for purchase.
#'
#' @param ChannelConfiguration Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)
#' @param Codec Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'
#' @param MaxResults 
#' @param MaximumBitrate Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
#' @param MaximumFramerate Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
#' @param NextToken 
#' @param Resolution Filter by resolution, 'SD', 'HD', or 'UHD'
#' @param ResourceType Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'
#' @param SpecialFeature Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
#' @param VideoQuality Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
#'
#' @examples
#'
#' @export
list_offerings <- function (ChannelConfiguration = NULL, Codec = NULL, 
    MaxResults = NULL, MaximumBitrate = NULL, MaximumFramerate = NULL, 
    NextToken = NULL, Resolution = NULL, ResourceType = NULL, 
    SpecialFeature = NULL, VideoQuality = NULL) 
{
    op <- Operation(name = "ListOfferings", http_method = "GET", 
        http_path = "/prod/offerings", paginator = list())
    input <- list_offerings_input(ChannelConfiguration = ChannelConfiguration, 
        Codec = Codec, MaxResults = MaxResults, MaximumBitrate = MaximumBitrate, 
        MaximumFramerate = MaximumFramerate, NextToken = NextToken, 
        Resolution = Resolution, ResourceType = ResourceType, 
        SpecialFeature = SpecialFeature, VideoQuality = VideoQuality)
    output <- list_offerings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List purchased reservations
#'
#' List purchased reservations.
#'
#' @param Codec Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'
#' @param MaxResults 
#' @param MaximumBitrate Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
#' @param MaximumFramerate Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
#' @param NextToken 
#' @param Resolution Filter by resolution, 'SD', 'HD', or 'UHD'
#' @param ResourceType Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'
#' @param SpecialFeature Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
#' @param VideoQuality Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
#'
#' @examples
#'
#' @export
list_reservations <- function (Codec = NULL, MaxResults = NULL, 
    MaximumBitrate = NULL, MaximumFramerate = NULL, NextToken = NULL, 
    Resolution = NULL, ResourceType = NULL, SpecialFeature = NULL, 
    VideoQuality = NULL) 
{
    op <- Operation(name = "ListReservations", http_method = "GET", 
        http_path = "/prod/reservations", paginator = list())
    input <- list_reservations_input(Codec = Codec, MaxResults = MaxResults, 
        MaximumBitrate = MaximumBitrate, MaximumFramerate = MaximumFramerate, 
        NextToken = NextToken, Resolution = Resolution, ResourceType = ResourceType, 
        SpecialFeature = SpecialFeature, VideoQuality = VideoQuality)
    output <- list_reservations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Purchase an offering and create a reservation
#'
#' Purchase an offering and create a reservation.
#'
#' @param OfferingId Offering to purchase, e.g. '87654321'
#' @param Count Number of resources
#' @param Name Name for the new reservation
#' @param RequestId Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
#'
#' @examples
#'
#' @export
purchase_offering <- function (OfferingId, Count = NULL, Name = NULL, 
    RequestId = NULL) 
{
    op <- Operation(name = "PurchaseOffering", http_method = "POST", 
        http_path = "/prod/offerings/{offeringId}/purchase", 
        paginator = list())
    input <- purchase_offering_input(OfferingId = OfferingId, 
        Count = Count, Name = Name, RequestId = RequestId)
    output <- purchase_offering_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an existing channel
#'
#' Starts an existing channel
#'
#' @param ChannelId A request to start a channel
#'
#' @examples
#'
#' @export
start_channel <- function (ChannelId) 
{
    op <- Operation(name = "StartChannel", http_method = "POST", 
        http_path = "/prod/channels/{channelId}/start", paginator = list())
    input <- start_channel_input(ChannelId = ChannelId)
    output <- start_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a running channel
#'
#' Stops a running channel
#'
#' @param ChannelId A request to stop a running channel
#'
#' @examples
#'
#' @export
stop_channel <- function (ChannelId) 
{
    op <- Operation(name = "StopChannel", http_method = "POST", 
        http_path = "/prod/channels/{channelId}/stop", paginator = list())
    input <- stop_channel_input(ChannelId = ChannelId)
    output <- stop_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a channel
#'
#' Updates a channel.
#'
#' @param ChannelId channel ID
#' @param Destinations A list of output destinations for this channel.
#' @param EncoderSettings The encoder settings for this channel.
#' @param InputAttachments 
#' @param InputSpecification Specification of input for this channel (max. bitrate, resolution, codec, etc.)
#' @param LogLevel The log level to write to CloudWatch Logs.
#' @param Name The name of the channel.
#' @param RoleArn An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
#'
#' @examples
#'
#' @export
update_channel <- function (ChannelId, Destinations = NULL, EncoderSettings = NULL, 
    InputAttachments = NULL, InputSpecification = NULL, LogLevel = NULL, 
    Name = NULL, RoleArn = NULL) 
{
    op <- Operation(name = "UpdateChannel", http_method = "PUT", 
        http_path = "/prod/channels/{channelId}", paginator = list())
    input <- update_channel_input(ChannelId = ChannelId, Destinations = Destinations, 
        EncoderSettings = EncoderSettings, InputAttachments = InputAttachments, 
        InputSpecification = InputSpecification, LogLevel = LogLevel, 
        Name = Name, RoleArn = RoleArn)
    output <- update_channel_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an input
#'
#' Updates an input.
#'
#' @param InputId Unique ID of the input.
#' @param Destinations Destination settings for PUSH type inputs.
#' @param InputSecurityGroups A list of security groups referenced by IDs to attach to the input.
#' @param Name Name of the input.
#' @param Sources The source URLs for a PULL-type input. Every PULL type input needs
#' exactly two source URLs for redundancy.
#' Only specify sources for PULL type Inputs. Leave Destinations empty.
#'
#' @examples
#'
#' @export
update_input <- function (InputId, Destinations = NULL, InputSecurityGroups = NULL, 
    Name = NULL, Sources = NULL) 
{
    op <- Operation(name = "UpdateInput", http_method = "PUT", 
        http_path = "/prod/inputs/{inputId}", paginator = list())
    input <- update_input_input(InputId = InputId, Destinations = Destinations, 
        InputSecurityGroups = InputSecurityGroups, Name = Name, 
        Sources = Sources)
    output <- update_input_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Update an Input Security Group's Whilelists
#'
#' Update an Input Security Group's Whilelists.
#'
#' @param InputSecurityGroupId The id of the Input Security Group to update.
#' @param WhitelistRules List of IPv4 CIDR addresses to whitelist
#'
#' @examples
#'
#' @export
update_input_security_group <- function (InputSecurityGroupId, 
    WhitelistRules = NULL) 
{
    op <- Operation(name = "UpdateInputSecurityGroup", http_method = "PUT", 
        http_path = "/prod/inputSecurityGroups/{inputSecurityGroupId}", 
        paginator = list())
    input <- update_input_security_group_input(InputSecurityGroupId = InputSecurityGroupId, 
        WhitelistRules = WhitelistRules)
    output <- update_input_security_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
