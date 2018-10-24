claim_devices_by_claim_code_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClaimCode = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "claimCode", 
        type = "string")), shape = "ClaimDevicesByClaimCodeRequest", 
        type = "structure")
    return(populate(args, shape))
}

claim_devices_by_claim_code_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClaimCode = structure(logical(0), 
        shape = "__stringMin12Max40", locationName = "claimCode", 
        type = "string", min = 12L, max = 40L), Total = structure(logical(0), 
        shape = "__integer", locationName = "total", type = "integer")), 
        shape = "ClaimDevicesByClaimCodeResponse", type = "structure")
    return(populate(args, shape))
}

describe_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string")), shape = "DescribeDeviceRequest", type = "structure")
    return(populate(args, shape))
}

describe_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceDescription = structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "DeviceAttributes", 
        locationName = "attributes", type = "map"), DeviceId = structure(logical(0), 
        shape = "__string", locationName = "deviceId", type = "string"), 
        Enabled = structure(logical(0), shape = "__boolean", 
            locationName = "enabled", type = "boolean"), RemainingLife = structure(logical(0), 
            shape = "__doubleMin0Max100", locationName = "remainingLife", 
            type = "double"), Type = structure(logical(0), shape = "__string", 
            locationName = "type", type = "string")), shape = "DeviceDescription", 
        locationName = "deviceDescription", type = "structure")), 
        shape = "DescribeDeviceResponse", type = "structure")
    return(populate(args, shape))
}

finalize_device_claim_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string")), shape = "FinalizeDeviceClaimRequest", 
        type = "structure")
    return(populate(args, shape))
}

finalize_device_claim_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(logical(0), shape = "__string", 
        locationName = "state", type = "string")), shape = "FinalizeDeviceClaimResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_device_methods_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string")), shape = "GetDeviceMethodsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_device_methods_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceMethods = structure(list(structure(list(DeviceType = structure(logical(0), 
        shape = "__string", locationName = "deviceType", type = "string"), 
        MethodName = structure(logical(0), shape = "__string", 
            locationName = "methodName", type = "string")), shape = "DeviceMethod", 
        type = "structure")), shape = "__listOfDeviceMethod", 
        locationName = "deviceMethods", type = "list")), shape = "GetDeviceMethodsResponse", 
        type = "structure")
    return(populate(args, shape))
}

initiate_device_claim_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string")), shape = "InitiateDeviceClaimRequest", 
        type = "structure")
    return(populate(args, shape))
}

initiate_device_claim_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(logical(0), shape = "__string", 
        locationName = "state", type = "string")), shape = "InitiateDeviceClaimResponse", 
        type = "structure")
    return(populate(args, shape))
}

invoke_device_method_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string"), DeviceMethod = structure(list(DeviceType = structure(logical(0), 
        shape = "__string", locationName = "deviceType", type = "string"), 
        MethodName = structure(logical(0), shape = "__string", 
            locationName = "methodName", type = "string")), shape = "DeviceMethod", 
        locationName = "deviceMethod", type = "structure"), DeviceMethodParameters = structure(logical(0), 
        shape = "__string", locationName = "deviceMethodParameters", 
        type = "string")), shape = "InvokeDeviceMethodRequest", 
        type = "structure")
    return(populate(args, shape))
}

invoke_device_method_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceMethodResponse = structure(logical(0), 
        shape = "__string", locationName = "deviceMethodResponse", 
        type = "string")), shape = "InvokeDeviceMethodResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_device_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string"), FromTimeStamp = structure(logical(0), 
        shape = "__timestampIso8601", location = "querystring", 
        locationName = "fromTimeStamp", type = "timestamp", timestampFormat = "iso8601"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            location = "querystring", locationName = "maxResults", 
            type = "integer", min = 1L, max = 250L), NextToken = structure(logical(0), 
            shape = "__string", location = "querystring", locationName = "nextToken", 
            type = "string"), ToTimeStamp = structure(logical(0), 
            shape = "__timestampIso8601", location = "querystring", 
            locationName = "toTimeStamp", type = "timestamp", 
            timestampFormat = "iso8601")), shape = "ListDeviceEventsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_device_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Events = structure(list(structure(list(Device = structure(list(Attributes = structure(list(), 
        shape = "Attributes", locationName = "attributes", type = "structure"), 
        DeviceId = structure(logical(0), shape = "__string", 
            locationName = "deviceId", type = "string"), Type = structure(logical(0), 
            shape = "__string", locationName = "type", type = "string")), 
        shape = "Device", locationName = "device", type = "structure"), 
        StdEvent = structure(logical(0), shape = "__string", 
            locationName = "stdEvent", type = "string")), shape = "DeviceEvent", 
        type = "structure")), shape = "__listOfDeviceEvent", 
        locationName = "events", type = "list"), NextToken = structure(logical(0), 
        shape = "__string", locationName = "nextToken", type = "string")), 
        shape = "ListDeviceEventsResponse", type = "structure")
    return(populate(args, shape))
}

list_devices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceType = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "deviceType", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", min = 1L, max = 250L), NextToken = structure(logical(0), 
        shape = "__string", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListDevicesRequest", type = "structure")
    return(populate(args, shape))
}

list_devices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Devices = structure(list(structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "__string", type = "string")), shape = "DeviceAttributes", 
        locationName = "attributes", type = "map"), DeviceId = structure(logical(0), 
        shape = "__string", locationName = "deviceId", type = "string"), 
        Enabled = structure(logical(0), shape = "__boolean", 
            locationName = "enabled", type = "boolean"), RemainingLife = structure(logical(0), 
            shape = "__doubleMin0Max100", locationName = "remainingLife", 
            type = "double"), Type = structure(logical(0), shape = "__string", 
            locationName = "type", type = "string")), shape = "DeviceDescription", 
        type = "structure")), shape = "__listOfDeviceDescription", 
        locationName = "devices", type = "list"), NextToken = structure(logical(0), 
        shape = "__string", locationName = "nextToken", type = "string")), 
        shape = "ListDevicesResponse", type = "structure")
    return(populate(args, shape))
}

unclaim_device_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string")), shape = "UnclaimDeviceRequest", type = "structure")
    return(populate(args, shape))
}

unclaim_device_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(State = structure(logical(0), shape = "__string", 
        locationName = "state", type = "string")), shape = "UnclaimDeviceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_device_state_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceId = structure(logical(0), 
        shape = "__string", location = "uri", locationName = "deviceId", 
        type = "string"), Enabled = structure(logical(0), shape = "__boolean", 
        locationName = "enabled", type = "boolean")), shape = "UpdateDeviceStateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_device_state_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDeviceStateResponse", 
        type = "structure")
    return(populate(args, shape))
}
