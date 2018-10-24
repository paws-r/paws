create_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ProjectName", 
        location = "querystring", locationName = "name", type = "string"), 
        Region = structure(logical(0), shape = "ProjectRegion", 
            location = "querystring", locationName = "region", 
            type = "string"), Contents = structure(logical(0), 
            shape = "Contents", type = "blob", locationName = "contents"), 
        SnapshotId = structure(logical(0), shape = "SnapshotId", 
            location = "querystring", locationName = "snapshotId", 
            type = "string")), shape = "CreateProjectRequest", 
        type = "structure", payload = "contents")
    return(populate(args, shape))
}

create_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Details = structure(list(Name = structure(logical(0), 
        shape = "ProjectName", type = "string", locationName = "name"), 
        ProjectId = structure(logical(0), shape = "ProjectId", 
            type = "string", locationName = "projectId"), Region = structure(logical(0), 
            shape = "ProjectRegion", type = "string", locationName = "region"), 
        State = structure(logical(0), shape = "ProjectState", 
            type = "string", locationName = "state"), CreatedDate = structure(logical(0), 
            shape = "Date", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Date", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        ConsoleUrl = structure(logical(0), shape = "ConsoleUrl", 
            type = "string", locationName = "consoleUrl"), Resources = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "type"), 
            Name = structure(logical(0), shape = "ResourceName", 
                type = "string", locationName = "name"), Arn = structure(logical(0), 
                shape = "ResourceArn", type = "string", locationName = "arn"), 
            Feature = structure(logical(0), shape = "Feature", 
                type = "string", locationName = "feature"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string")), 
                shape = "Attributes", type = "map", locationName = "attributes")), 
            shape = "Resource", type = "structure")), shape = "Resources", 
            type = "list", locationName = "resources")), shape = "ProjectDetails", 
        type = "structure", locationName = "details")), shape = "CreateProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", location = "uri", locationName = "projectId", 
        type = "string")), shape = "DeleteProjectRequest", type = "structure")
    return(populate(args, shape))
}

delete_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletedResources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "type"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", locationName = "name"), Arn = structure(logical(0), 
            shape = "ResourceArn", type = "string", locationName = "arn"), 
        Feature = structure(logical(0), shape = "Feature", type = "string", 
            locationName = "feature"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string")), shape = "Attributes", 
            type = "map", locationName = "attributes")), shape = "Resource", 
        type = "structure")), shape = "Resources", type = "list", 
        locationName = "deletedResources"), OrphanedResources = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "type"), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", locationName = "name"), Arn = structure(logical(0), 
            shape = "ResourceArn", type = "string", locationName = "arn"), 
        Feature = structure(logical(0), shape = "Feature", type = "string", 
            locationName = "feature"), Attributes = structure(list(structure(logical(0), 
            shape = "AttributeValue", type = "string")), shape = "Attributes", 
            type = "map", locationName = "attributes")), shape = "Resource", 
        type = "structure")), shape = "Resources", type = "list", 
        locationName = "orphanedResources")), shape = "DeleteProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_bundle_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleId = structure(logical(0), 
        shape = "BundleId", location = "uri", locationName = "bundleId", 
        type = "string")), shape = "DescribeBundleRequest", type = "structure")
    return(populate(args, shape))
}

describe_bundle_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Details = structure(list(BundleId = structure(logical(0), 
        shape = "BundleId", type = "string", locationName = "bundleId"), 
        Title = structure(logical(0), shape = "BundleTitle", 
            type = "string", locationName = "title"), Version = structure(logical(0), 
            shape = "BundleVersion", type = "string", locationName = "version"), 
        Description = structure(logical(0), shape = "BundleDescription", 
            type = "string", locationName = "description"), IconUrl = structure(logical(0), 
            shape = "IconUrl", type = "string", locationName = "iconUrl"), 
        AvailablePlatforms = structure(list(structure(logical(0), 
            shape = "Platform", type = "string")), shape = "Platforms", 
            type = "list", locationName = "availablePlatforms")), 
        shape = "BundleDetails", type = "structure", locationName = "details")), 
        shape = "DescribeBundleResult", type = "structure")
    return(populate(args, shape))
}

describe_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", location = "querystring", locationName = "projectId", 
        type = "string"), SyncFromResources = structure(logical(0), 
        shape = "Boolean", location = "querystring", locationName = "syncFromResources", 
        type = "boolean")), shape = "DescribeProjectRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Details = structure(list(Name = structure(logical(0), 
        shape = "ProjectName", type = "string", locationName = "name"), 
        ProjectId = structure(logical(0), shape = "ProjectId", 
            type = "string", locationName = "projectId"), Region = structure(logical(0), 
            shape = "ProjectRegion", type = "string", locationName = "region"), 
        State = structure(logical(0), shape = "ProjectState", 
            type = "string", locationName = "state"), CreatedDate = structure(logical(0), 
            shape = "Date", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Date", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        ConsoleUrl = structure(logical(0), shape = "ConsoleUrl", 
            type = "string", locationName = "consoleUrl"), Resources = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "type"), 
            Name = structure(logical(0), shape = "ResourceName", 
                type = "string", locationName = "name"), Arn = structure(logical(0), 
                shape = "ResourceArn", type = "string", locationName = "arn"), 
            Feature = structure(logical(0), shape = "Feature", 
                type = "string", locationName = "feature"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string")), 
                shape = "Attributes", type = "map", locationName = "attributes")), 
            shape = "Resource", type = "structure")), shape = "Resources", 
            type = "list", locationName = "resources")), shape = "ProjectDetails", 
        type = "structure", locationName = "details")), shape = "DescribeProjectResult", 
        type = "structure")
    return(populate(args, shape))
}

export_bundle_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleId = structure(logical(0), 
        shape = "BundleId", location = "uri", locationName = "bundleId", 
        type = "string"), ProjectId = structure(logical(0), shape = "ProjectId", 
        location = "querystring", locationName = "projectId", 
        type = "string"), Platform = structure(logical(0), shape = "Platform", 
        location = "querystring", locationName = "platform", 
        type = "string")), shape = "ExportBundleRequest", type = "structure")
    return(populate(args, shape))
}

export_bundle_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DownloadUrl = structure(logical(0), 
        shape = "DownloadUrl", type = "string", locationName = "downloadUrl")), 
        shape = "ExportBundleResult", type = "structure")
    return(populate(args, shape))
}

export_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProjectId = structure(logical(0), 
        shape = "ProjectId", location = "uri", locationName = "projectId", 
        type = "string")), shape = "ExportProjectRequest", type = "structure")
    return(populate(args, shape))
}

export_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DownloadUrl = structure(logical(0), 
        shape = "DownloadUrl", type = "string", locationName = "downloadUrl"), 
        ShareUrl = structure(logical(0), shape = "ShareUrl", 
            type = "string", locationName = "shareUrl"), SnapshotId = structure(logical(0), 
            shape = "SnapshotId", type = "string", locationName = "snapshotId")), 
        shape = "ExportProjectResult", type = "structure")
    return(populate(args, shape))
}

list_bundles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListBundlesRequest", type = "structure")
    return(populate(args, shape))
}

list_bundles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleList = structure(list(structure(list(BundleId = structure(logical(0), 
        shape = "BundleId", type = "string", locationName = "bundleId"), 
        Title = structure(logical(0), shape = "BundleTitle", 
            type = "string", locationName = "title"), Version = structure(logical(0), 
            shape = "BundleVersion", type = "string", locationName = "version"), 
        Description = structure(logical(0), shape = "BundleDescription", 
            type = "string", locationName = "description"), IconUrl = structure(logical(0), 
            shape = "IconUrl", type = "string", locationName = "iconUrl"), 
        AvailablePlatforms = structure(list(structure(logical(0), 
            shape = "Platform", type = "string")), shape = "Platforms", 
            type = "list", locationName = "availablePlatforms")), 
        shape = "BundleDetails", type = "structure")), shape = "BundleList", 
        type = "list", locationName = "bundleList"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListBundlesResult", type = "structure")
    return(populate(args, shape))
}

list_projects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListProjectsRequest", type = "structure")
    return(populate(args, shape))
}

list_projects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Projects = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ProjectName", type = "string", locationName = "name"), 
        ProjectId = structure(logical(0), shape = "ProjectId", 
            type = "string", locationName = "projectId")), shape = "ProjectSummary", 
        type = "structure")), shape = "ProjectSummaries", type = "list", 
        locationName = "projects"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListProjectsResult", type = "structure")
    return(populate(args, shape))
}

update_project_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Contents = structure(logical(0), 
        shape = "Contents", type = "blob", locationName = "contents"), 
        ProjectId = structure(logical(0), shape = "ProjectId", 
            location = "querystring", locationName = "projectId", 
            type = "string")), shape = "UpdateProjectRequest", 
        type = "structure", payload = "contents")
    return(populate(args, shape))
}

update_project_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Details = structure(list(Name = structure(logical(0), 
        shape = "ProjectName", type = "string", locationName = "name"), 
        ProjectId = structure(logical(0), shape = "ProjectId", 
            type = "string", locationName = "projectId"), Region = structure(logical(0), 
            shape = "ProjectRegion", type = "string", locationName = "region"), 
        State = structure(logical(0), shape = "ProjectState", 
            type = "string", locationName = "state"), CreatedDate = structure(logical(0), 
            shape = "Date", type = "timestamp", locationName = "createdDate"), 
        LastUpdatedDate = structure(logical(0), shape = "Date", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        ConsoleUrl = structure(logical(0), shape = "ConsoleUrl", 
            type = "string", locationName = "consoleUrl"), Resources = structure(list(structure(list(Type = structure(logical(0), 
            shape = "ResourceType", type = "string", locationName = "type"), 
            Name = structure(logical(0), shape = "ResourceName", 
                type = "string", locationName = "name"), Arn = structure(logical(0), 
                shape = "ResourceArn", type = "string", locationName = "arn"), 
            Feature = structure(logical(0), shape = "Feature", 
                type = "string", locationName = "feature"), Attributes = structure(list(structure(logical(0), 
                shape = "AttributeValue", type = "string")), 
                shape = "Attributes", type = "map", locationName = "attributes")), 
            shape = "Resource", type = "structure")), shape = "Resources", 
            type = "list", locationName = "resources")), shape = "ProjectDetails", 
        type = "structure", locationName = "details")), shape = "UpdateProjectResult", 
        type = "structure")
    return(populate(args, shape))
}
