associate_device_with_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        PlacementName = structure(logical(0), shape = "PlacementName", 
            location = "uri", locationName = "placementName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$"), 
        DeviceId = structure(logical(0), shape = "DeviceId", 
            type = "string", max = 32L, min = 1L, locationName = "deviceId"), 
        DeviceTemplateName = structure(logical(0), shape = "DeviceTemplateName", 
            location = "uri", locationName = "deviceTemplateName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$")), 
        shape = "AssociateDeviceWithPlacementRequest", type = "structure")
    return(populate(args, shape))
}

associate_device_with_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateDeviceWithPlacementResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementName = structure(logical(0), 
        shape = "PlacementName", type = "string", max = 128L, 
        min = 1L, pattern = "^[a-zA-Z0-9_-]+$", locationName = "placementName"), 
        ProjectName = structure(logical(0), shape = "ProjectName", 
            location = "uri", locationName = "projectName", type = "string", 
            max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        Attributes = structure(list(structure(logical(0), shape = "AttributeValue", 
            type = "string", max = 800L)), shape = "PlacementAttributeMap", 
            type = "map", locationName = "attributes")), shape = "CreatePlacementRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreatePlacementResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", type = "string", max = 128L, min = 1L, 
        pattern = "^[0-9A-Za-z_-]+$", locationName = "projectName"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 500L, min = 0L, locationName = "description"), 
        PlacementTemplate = structure(list(DefaultAttributes = structure(list(structure(logical(0), 
            shape = "AttributeDefaultValue", type = "string", 
            max = 800L)), shape = "DefaultPlacementAttributeMap", 
            type = "map", locationName = "defaultAttributes"), 
            DeviceTemplates = structure(list(structure(list(DeviceType = structure(logical(0), 
                shape = "DeviceType", type = "string", max = 128L, 
                locationName = "deviceType"), CallbackOverrides = structure(list(structure(logical(0), 
                shape = "DeviceCallbackValue", type = "string", 
                max = 200L)), shape = "DeviceCallbackOverrideMap", 
                type = "map", locationName = "callbackOverrides")), 
                shape = "DeviceTemplate", type = "structure")), 
                shape = "DeviceTemplateMap", type = "map", locationName = "deviceTemplates")), 
            shape = "PlacementTemplate", type = "structure", 
            locationName = "placementTemplate")), shape = "CreateProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateProjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementName = structure(logical(0), 
        shape = "PlacementName", location = "uri", locationName = "placementName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$"), 
        ProjectName = structure(logical(0), shape = "ProjectName", 
            location = "uri", locationName = "projectName", type = "string", 
            max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$")), 
        shape = "DeletePlacementRequest", type = "structure")
    return(populate(args, shape))
}

delete_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeletePlacementResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$")), 
        shape = "DeleteProjectRequest", type = "structure")
    return(populate(args, shape))
}

delete_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteProjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementName = structure(logical(0), 
        shape = "PlacementName", location = "uri", locationName = "placementName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$"), 
        ProjectName = structure(logical(0), shape = "ProjectName", 
            location = "uri", locationName = "projectName", type = "string", 
            max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$")), 
        shape = "DescribePlacementRequest", type = "structure")
    return(populate(args, shape))
}

describe_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Placement = structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", type = "string", max = 128L, min = 1L, 
        pattern = "^[0-9A-Za-z_-]+$", locationName = "projectName"), 
        PlacementName = structure(logical(0), shape = "PlacementName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$", 
            locationName = "placementName"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 800L)), 
            shape = "PlacementAttributeMap", type = "map", locationName = "attributes"), 
        CreatedDate = structure(logical(0), shape = "Time", type = "timestamp", 
            locationName = "createdDate"), UpdatedDate = structure(logical(0), 
            shape = "Time", type = "timestamp", locationName = "updatedDate")), 
        shape = "PlacementDescription", type = "structure", locationName = "placement")), 
        shape = "DescribePlacementResponse", type = "structure")
    return(populate(args, shape))
}

describe_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$")), 
        shape = "DescribeProjectRequest", type = "structure")
    return(populate(args, shape))
}

describe_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Project = structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", type = "string", max = 128L, min = 1L, 
        pattern = "^[0-9A-Za-z_-]+$", locationName = "projectName"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 500L, min = 0L, locationName = "description"), 
        CreatedDate = structure(logical(0), shape = "Time", type = "timestamp", 
            locationName = "createdDate"), UpdatedDate = structure(logical(0), 
            shape = "Time", type = "timestamp", locationName = "updatedDate"), 
        PlacementTemplate = structure(list(DefaultAttributes = structure(list(structure(logical(0), 
            shape = "AttributeDefaultValue", type = "string", 
            max = 800L)), shape = "DefaultPlacementAttributeMap", 
            type = "map", locationName = "defaultAttributes"), 
            DeviceTemplates = structure(list(structure(list(DeviceType = structure(logical(0), 
                shape = "DeviceType", type = "string", max = 128L, 
                locationName = "deviceType"), CallbackOverrides = structure(list(structure(logical(0), 
                shape = "DeviceCallbackValue", type = "string", 
                max = 200L)), shape = "DeviceCallbackOverrideMap", 
                type = "map", locationName = "callbackOverrides")), 
                shape = "DeviceTemplate", type = "structure")), 
                shape = "DeviceTemplateMap", type = "map", locationName = "deviceTemplates")), 
            shape = "PlacementTemplate", type = "structure", 
            locationName = "placementTemplate")), shape = "ProjectDescription", 
        type = "structure", locationName = "project")), shape = "DescribeProjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_device_from_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        PlacementName = structure(logical(0), shape = "PlacementName", 
            location = "uri", locationName = "placementName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$"), 
        DeviceTemplateName = structure(logical(0), shape = "DeviceTemplateName", 
            location = "uri", locationName = "deviceTemplateName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$")), 
        shape = "DisassociateDeviceFromPlacementRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_device_from_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateDeviceFromPlacementResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_devices_in_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        PlacementName = structure(logical(0), shape = "PlacementName", 
            location = "uri", locationName = "placementName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$")), 
        shape = "GetDevicesInPlacementRequest", type = "structure")
    return(populate(args, shape))
}

get_devices_in_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Devices = structure(list(structure(logical(0), 
        shape = "DeviceId", type = "string", max = 32L, min = 1L)), 
        shape = "DeviceMap", type = "map", locationName = "devices")), 
        shape = "GetDevicesInPlacementResponse", type = "structure")
    return(populate(args, shape))
}

list_placements_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string", max = 1024L, min = 1L), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 250L, min = 1L)), shape = "ListPlacementsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_placements_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Placements = structure(list(structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", type = "string", max = 128L, min = 1L, 
        pattern = "^[0-9A-Za-z_-]+$", locationName = "projectName"), 
        PlacementName = structure(logical(0), shape = "PlacementName", 
            type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$", 
            locationName = "placementName"), CreatedDate = structure(logical(0), 
            shape = "Time", type = "timestamp", locationName = "createdDate"), 
        UpdatedDate = structure(logical(0), shape = "Time", type = "timestamp", 
            locationName = "updatedDate")), shape = "PlacementSummary", 
        type = "structure")), shape = "PlacementSummaryList", 
        type = "list", locationName = "placements"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "ListPlacementsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_projects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string", max = 1024L, min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 250L, min = 1L)), shape = "ListProjectsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_projects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Projects = structure(list(structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", type = "string", max = 128L, min = 1L, 
        pattern = "^[0-9A-Za-z_-]+$", locationName = "projectName"), 
        CreatedDate = structure(logical(0), shape = "Time", type = "timestamp", 
            locationName = "createdDate"), UpdatedDate = structure(logical(0), 
            shape = "Time", type = "timestamp", locationName = "updatedDate")), 
        shape = "ProjectSummary", type = "structure")), shape = "ProjectSummaryList", 
        type = "list", locationName = "projects"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 1024L, min = 1L, 
        locationName = "nextToken")), shape = "ListProjectsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementName = structure(logical(0), 
        shape = "PlacementName", location = "uri", locationName = "placementName", 
        type = "string", max = 128L, min = 1L, pattern = "^[a-zA-Z0-9_-]+$"), 
        ProjectName = structure(logical(0), shape = "ProjectName", 
            location = "uri", locationName = "projectName", type = "string", 
            max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        Attributes = structure(list(structure(logical(0), shape = "AttributeValue", 
            type = "string", max = 800L)), shape = "PlacementAttributeMap", 
            type = "map", locationName = "attributes")), shape = "UpdatePlacementRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdatePlacementResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectName = structure(logical(0), 
        shape = "ProjectName", location = "uri", locationName = "projectName", 
        type = "string", max = 128L, min = 1L, pattern = "^[0-9A-Za-z_-]+$"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 500L, min = 0L, locationName = "description"), 
        PlacementTemplate = structure(list(DefaultAttributes = structure(list(structure(logical(0), 
            shape = "AttributeDefaultValue", type = "string", 
            max = 800L)), shape = "DefaultPlacementAttributeMap", 
            type = "map", locationName = "defaultAttributes"), 
            DeviceTemplates = structure(list(structure(list(DeviceType = structure(logical(0), 
                shape = "DeviceType", type = "string", max = 128L, 
                locationName = "deviceType"), CallbackOverrides = structure(list(structure(logical(0), 
                shape = "DeviceCallbackValue", type = "string", 
                max = 200L)), shape = "DeviceCallbackOverrideMap", 
                type = "map", locationName = "callbackOverrides")), 
                shape = "DeviceTemplate", type = "structure")), 
                shape = "DeviceTemplateMap", type = "map", locationName = "deviceTemplates")), 
            shape = "PlacementTemplate", type = "structure", 
            locationName = "placementTemplate")), shape = "UpdateProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateProjectResponse", 
        type = "structure")
    return(populate(args, shape))
}
