delete_playback_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "Name", type = "string")), 
        shape = "DeletePlaybackConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

delete_playback_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeletePlaybackConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_playback_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "__string", 
        location = "uri", locationName = "Name", type = "string")), 
        shape = "GetPlaybackConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

get_playback_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdDecisionServerUrl = structure(logical(0), 
        shape = "__string", type = "string"), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string"), ContentSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CdnConfiguration", 
        type = "structure"), HlsConfiguration = structure(list(ManifestEndpointPrefix = structure(logical(0), 
        shape = "__string", type = "string")), shape = "HlsConfiguration", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string"), PlaybackEndpointPrefix = structure(logical(0), 
        shape = "__string", type = "string"), SessionInitializationEndpointPrefix = structure(logical(0), 
        shape = "__string", type = "string"), SlateAdUrl = structure(logical(0), 
        shape = "__string", type = "string"), VideoContentSourceUrl = structure(logical(0), 
        shape = "__string", type = "string")), shape = "GetPlaybackConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_playback_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "__integerMin1Max100", location = "querystring", 
        locationName = "MaxResults", type = "integer", min = 1L, 
        max = 100L), NextToken = structure(logical(0), shape = "__string", 
        location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListPlaybackConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_playback_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Items = structure(list(structure(list(AdDecisionServerUrl = structure(logical(0), 
        shape = "__string", type = "string"), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string"), ContentSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CdnConfiguration", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string"), SlateAdUrl = structure(logical(0), 
        shape = "__string", type = "string"), VideoContentSourceUrl = structure(logical(0), 
        shape = "__string", type = "string")), shape = "PlaybackConfiguration", 
        type = "structure")), shape = "__listOfPlaybackConfigurations", 
        type = "list"), NextToken = structure(logical(0), shape = "__string", 
        type = "string")), shape = "ListPlaybackConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_playback_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdDecisionServerUrl = structure(logical(0), 
        shape = "__string", type = "string"), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string"), ContentSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CdnConfiguration", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string"), SlateAdUrl = structure(logical(0), 
        shape = "__string", type = "string"), VideoContentSourceUrl = structure(logical(0), 
        shape = "__string", type = "string")), shape = "PutPlaybackConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_playback_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AdDecisionServerUrl = structure(logical(0), 
        shape = "__string", type = "string"), CdnConfiguration = structure(list(AdSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string"), ContentSegmentUrlPrefix = structure(logical(0), 
        shape = "__string", type = "string")), shape = "CdnConfiguration", 
        type = "structure"), HlsConfiguration = structure(list(ManifestEndpointPrefix = structure(logical(0), 
        shape = "__string", type = "string")), shape = "HlsConfiguration", 
        type = "structure"), Name = structure(logical(0), shape = "__string", 
        type = "string"), PlaybackEndpointPrefix = structure(logical(0), 
        shape = "__string", type = "string"), SessionInitializationEndpointPrefix = structure(logical(0), 
        shape = "__string", type = "string"), SlateAdUrl = structure(logical(0), 
        shape = "__string", type = "string"), VideoContentSourceUrl = structure(logical(0), 
        shape = "__string", type = "string")), shape = "PutPlaybackConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}
