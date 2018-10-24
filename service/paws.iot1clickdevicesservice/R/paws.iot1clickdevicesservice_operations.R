#' Adds device(s) to your account (i
#'
#' Adds device(s) to your account (i.e., claim one or more devices) if and only if you received a claim code with the device(s).
#'
#' @param ClaimCode The claim code, starting with \"C-\", as provided by the device manufacturer.
#'
#' @examples
#'
#' @export
claim_devices_by_claim_code <- function (ClaimCode) 
{
    op <- Operation(name = "ClaimDevicesByClaimCode", http_method = "PUT", 
        http_path = "/claims/{claimCode}", paginator = list())
    input <- claim_devices_by_claim_code_input(ClaimCode = ClaimCode)
    output <- claim_devices_by_claim_code_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Given a device ID, returns a DescribeDeviceResponse object describing the details of the device
#'
#' Given a device ID, returns a DescribeDeviceResponse object describing the details of the device.
#'
#' @param DeviceId The unique identifier of the device.
#'
#' @examples
#'
#' @export
describe_device <- function (DeviceId) 
{
    op <- Operation(name = "DescribeDevice", http_method = "GET", 
        http_path = "/devices/{deviceId}", paginator = list())
    input <- describe_device_input(DeviceId = DeviceId)
    output <- describe_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Given a device ID, finalizes the claim request for the associated device
#'
#' Given a device ID, finalizes the claim request for the associated device.
#' 
#' Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.
#'
#' @param DeviceId The unique identifier of the device.
#'
#' @examples
#'
#' @export
finalize_device_claim <- function (DeviceId) 
{
    op <- Operation(name = "FinalizeDeviceClaim", http_method = "PUT", 
        http_path = "/devices/{deviceId}/finalize-claim", paginator = list())
    input <- finalize_device_claim_input(DeviceId = DeviceId)
    output <- finalize_device_claim_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Given a device ID, returns the invokable methods associated with the device
#'
#' Given a device ID, returns the invokable methods associated with the device.
#'
#' @param DeviceId The unique identifier of the device.
#'
#' @examples
#'
#' @export
get_device_methods <- function (DeviceId) 
{
    op <- Operation(name = "GetDeviceMethods", http_method = "GET", 
        http_path = "/devices/{deviceId}/methods", paginator = list())
    input <- get_device_methods_input(DeviceId = DeviceId)
    output <- get_device_methods_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Given a device ID, initiates a claim request for the associated device
#'
#' Given a device ID, initiates a claim request for the associated device.
#' 
#' Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.
#'
#' @param DeviceId The unique identifier of the device.
#'
#' @examples
#'
#' @export
initiate_device_claim <- function (DeviceId) 
{
    op <- Operation(name = "InitiateDeviceClaim", http_method = "PUT", 
        http_path = "/devices/{deviceId}/initiate-claim", paginator = list())
    input <- initiate_device_claim_input(DeviceId = DeviceId)
    output <- initiate_device_claim_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Given a device ID, issues a request to invoke a named device method (with possible parameters)
#'
#' Given a device ID, issues a request to invoke a named device method (with possible parameters). See the \"Example POST\" code snippet below.
#'
#' @param DeviceId The unique identifier of the device.
#' @param DeviceMethod The device method to invoke.
#' @param DeviceMethodParameters A JSON encoded string containing the device method request parameters.
#'
#' @examples
#'
#' @export
invoke_device_method <- function (DeviceId, DeviceMethod = NULL, 
    DeviceMethodParameters = NULL) 
{
    op <- Operation(name = "InvokeDeviceMethod", http_method = "POST", 
        http_path = "/devices/{deviceId}/methods", paginator = list())
    input <- invoke_device_method_input(DeviceId = DeviceId, 
        DeviceMethod = DeviceMethod, DeviceMethodParameters = DeviceMethodParameters)
    output <- invoke_device_method_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Using a device ID, returns a DeviceEventsResponse object containing an array of events for the device
#'
#' Using a device ID, returns a DeviceEventsResponse object containing an array of events for the device.
#'
#' @param DeviceId The unique identifier of the device.
#' @param FromTimeStamp The start date for the device event query, in ISO8061 format. For example, 2018-03-28T15:45:12.880Z
#' @param ToTimeStamp The end date for the device event query, in ISO8061 format. For example, 2018-03-28T15:45:12.880Z
#' @param MaxResults The maximum number of results to return per request. If not set, a default value of 100 is used.
#' @param NextToken The token to retrieve the next set of results.
#'
#' @examples
#'
#' @export
list_device_events <- function (DeviceId, FromTimeStamp, ToTimeStamp, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListDeviceEvents", http_method = "GET", 
        http_path = "/devices/{deviceId}/events", paginator = list())
    input <- list_device_events_input(DeviceId = DeviceId, FromTimeStamp = FromTimeStamp, 
        ToTimeStamp = ToTimeStamp, MaxResults = MaxResults, NextToken = NextToken)
    output <- list_device_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the 1-Click compatible devices associated with your AWS account
#'
#' Lists the 1-Click compatible devices associated with your AWS account.
#'
#' @param DeviceType The type of the device, such as \"button\".
#' @param MaxResults The maximum number of results to return per request. If not set, a default value of 100 is used.
#' @param NextToken The token to retrieve the next set of results.
#'
#' @examples
#'
#' @export
list_devices <- function (DeviceType = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListDevices", http_method = "GET", 
        http_path = "/devices", paginator = list())
    input <- list_devices_input(DeviceType = DeviceType, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_devices_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a device from your AWS account using its device ID
#'
#' Disassociates a device from your AWS account using its device ID.
#'
#' @param DeviceId The unique identifier of the device.
#'
#' @examples
#'
#' @export
unclaim_device <- function (DeviceId) 
{
    op <- Operation(name = "UnclaimDevice", http_method = "PUT", 
        http_path = "/devices/{deviceId}/unclaim", paginator = list())
    input <- unclaim_device_input(DeviceId = DeviceId)
    output <- unclaim_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Using a Boolean value (true or false), this operation enables or disables the device given a device ID
#'
#' Using a Boolean value (true or false), this operation enables or disables the device given a device ID.
#'
#' @param DeviceId The unique identifier of the device.
#' @param Enabled If true, the device is enabled. If false, the device is disabled.
#'
#' @examples
#'
#' @export
update_device_state <- function (DeviceId, Enabled = NULL) 
{
    op <- Operation(name = "UpdateDeviceState", http_method = "PUT", 
        http_path = "/devices/{deviceId}/state", paginator = list())
    input <- update_device_state_input(DeviceId = DeviceId, Enabled = Enabled)
    output <- update_device_state_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
