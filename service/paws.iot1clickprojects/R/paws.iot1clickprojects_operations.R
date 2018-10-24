#' Associates a physical device with a placement
#'
#' Associates a physical device with a placement.
#'
#' @param projectName The name of the project containing the placement in which to associate the device.
#' @param placementName The name of the placement in which to associate the device.
#' @param deviceId The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all `deviceId` values.
#' @param deviceTemplateName The device template name to associate with the device ID.
#'
#' @examples
#'
#' @export
associate_device_with_placement <- function (projectName, placementName, 
    deviceId, deviceTemplateName) 
{
    op <- Operation(name = "AssociateDeviceWithPlacement", http_method = "PUT", 
        http_path = "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", 
        paginator = list())
    input <- associate_device_with_placement_input(projectName = projectName, 
        placementName = placementName, deviceId = deviceId, deviceTemplateName = deviceTemplateName)
    output <- associate_device_with_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an empty placement
#'
#' Creates an empty placement.
#'
#' @param placementName The name of the placement to be created.
#' @param projectName The name of the project in which to create the placement.
#' @param attributes Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.
#'
#' @examples
#'
#' @export
create_placement <- function (placementName, projectName, attributes = NULL) 
{
    op <- Operation(name = "CreatePlacement", http_method = "POST", 
        http_path = "/projects/{projectName}/placements", paginator = list())
    input <- create_placement_input(placementName = placementName, 
        projectName = projectName, attributes = attributes)
    output <- create_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an empty project with a placement template
#'
#' Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
#'
#' @param projectName The name of the project to create.
#' @param description An optional description for the project.
#' @param placementTemplate The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update `callbackOverrides` for the device templates using the `UpdateProject` API.
#'
#' @examples
#'
#' @export
create_project <- function (projectName, description = NULL, 
    placementTemplate = NULL) 
{
    op <- Operation(name = "CreateProject", http_method = "POST", 
        http_path = "/projects", paginator = list())
    input <- create_project_input(projectName = projectName, 
        description = description, placementTemplate = placementTemplate)
    output <- create_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a placement
#'
#' Deletes a placement. To delete a placement, it must not have any devices associated with it.
#' 
#' When you delete a placement, all associated data becomes irretrievable.
#'
#' @param placementName The name of the empty placement to delete.
#' @param projectName The project containing the empty placement to delete.
#'
#' @examples
#'
#' @export
delete_placement <- function (placementName, projectName) 
{
    op <- Operation(name = "DeletePlacement", http_method = "DELETE", 
        http_path = "/projects/{projectName}/placements/{placementName}", 
        paginator = list())
    input <- delete_placement_input(placementName = placementName, 
        projectName = projectName)
    output <- delete_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a project
#'
#' Deletes a project. To delete a project, it must not have any placements associated with it.
#' 
#' When you delete a project, all associated data becomes irretrievable.
#'
#' @param projectName The name of the empty project to delete.
#'
#' @examples
#'
#' @export
delete_project <- function (projectName) 
{
    op <- Operation(name = "DeleteProject", http_method = "DELETE", 
        http_path = "/projects/{projectName}", paginator = list())
    input <- delete_project_input(projectName = projectName)
    output <- delete_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a placement in a project
#'
#' Describes a placement in a project.
#'
#' @param placementName The name of the placement within a project.
#' @param projectName The project containing the placement to be described.
#'
#' @examples
#'
#' @export
describe_placement <- function (placementName, projectName) 
{
    op <- Operation(name = "DescribePlacement", http_method = "GET", 
        http_path = "/projects/{projectName}/placements/{placementName}", 
        paginator = list())
    input <- describe_placement_input(placementName = placementName, 
        projectName = projectName)
    output <- describe_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an object describing a project
#'
#' Returns an object describing a project.
#'
#' @param projectName The name of the project to be described.
#'
#' @examples
#'
#' @export
describe_project <- function (projectName) 
{
    op <- Operation(name = "DescribeProject", http_method = "GET", 
        http_path = "/projects/{projectName}", paginator = list())
    input <- describe_project_input(projectName = projectName)
    output <- describe_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a physical device from a placement
#'
#' Removes a physical device from a placement.
#'
#' @param projectName The name of the project that contains the placement.
#' @param placementName The name of the placement that the device should be removed from.
#' @param deviceTemplateName The device ID that should be removed from the placement.
#'
#' @examples
#'
#' @export
disassociate_device_from_placement <- function (projectName, 
    placementName, deviceTemplateName) 
{
    op <- Operation(name = "DisassociateDeviceFromPlacement", 
        http_method = "DELETE", http_path = "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", 
        paginator = list())
    input <- disassociate_device_from_placement_input(projectName = projectName, 
        placementName = placementName, deviceTemplateName = deviceTemplateName)
    output <- disassociate_device_from_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an object enumerating the devices in a placement
#'
#' Returns an object enumerating the devices in a placement.
#'
#' @param projectName The name of the project containing the placement.
#' @param placementName The name of the placement to get the devices from.
#'
#' @examples
#'
#' @export
get_devices_in_placement <- function (projectName, placementName) 
{
    op <- Operation(name = "GetDevicesInPlacement", http_method = "GET", 
        http_path = "/projects/{projectName}/placements/{placementName}/devices", 
        paginator = list())
    input <- get_devices_in_placement_input(projectName = projectName, 
        placementName = placementName)
    output <- get_devices_in_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the placement(s) of a project
#'
#' Lists the placement(s) of a project.
#'
#' @param projectName The project containing the placements to be listed.
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return per request. If not set, a default value of 100 is used.
#'
#' @examples
#'
#' @export
list_placements <- function (projectName, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListPlacements", http_method = "GET", 
        http_path = "/projects/{projectName}/placements", paginator = list())
    input <- list_placements_input(projectName = projectName, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_placements_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the AWS IoT 1-Click project(s) associated with your AWS account and region
#'
#' Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
#'
#' @param nextToken The token to retrieve the next set of results.
#' @param maxResults The maximum number of results to return per request. If not set, a default value of 100 is used.
#'
#' @examples
#'
#' @export
list_projects <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListProjects", http_method = "GET", 
        http_path = "/projects", paginator = list())
    input <- list_projects_input(nextToken = nextToken, maxResults = maxResults)
    output <- list_projects_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a placement with the given attributes
#'
#' Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., \"\").
#'
#' @param placementName The name of the placement to update.
#' @param projectName The name of the project containing the placement to be updated.
#' @param attributes The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.
#'
#' @examples
#'
#' @export
update_placement <- function (placementName, projectName, attributes = NULL) 
{
    op <- Operation(name = "UpdatePlacement", http_method = "PUT", 
        http_path = "/projects/{projectName}/placements/{placementName}", 
        paginator = list())
    input <- update_placement_input(placementName = placementName, 
        projectName = projectName, attributes = attributes)
    output <- update_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a project associated with your AWS account and region
#'
#' Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., `""`).
#'
#' @param projectName The name of the project to be updated.
#' @param description An optional user-defined description for the project.
#' @param placementTemplate An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given `placementTemplate`, you can update the associated `callbackOverrides` for the device definition using this API.
#'
#' @examples
#'
#' @export
update_project <- function (projectName, description = NULL, 
    placementTemplate = NULL) 
{
    op <- Operation(name = "UpdateProject", http_method = "PUT", 
        http_path = "/projects/{projectName}", paginator = list())
    input <- update_project_input(projectName = projectName, 
        description = description, placementTemplate = placementTemplate)
    output <- update_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
