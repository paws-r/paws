delete_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "PathNaming", 
        location = "uri", locationName = "Path", type = "string", 
        max = 900L, min = 1L, pattern = "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")), 
        shape = "DeleteObjectRequest", type = "structure")
    return(populate(args, shape))
}

delete_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "PathNaming", 
        location = "uri", locationName = "Path", type = "string", 
        max = 900L, min = 1L, pattern = "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")), 
        shape = "DescribeObjectRequest", type = "structure")
    return(populate(args, shape))
}

describe_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ETag = structure(logical(0), shape = "ETag", 
        location = "header", locationName = "ETag", type = "string", 
        max = 64L, min = 1L, pattern = "[0-9A-Fa-f]+"), ContentType = structure(logical(0), 
        shape = "ContentType", location = "header", locationName = "Content-Type", 
        type = "string", pattern = "^[\\w\\-\\/\\.]{1,255}$"), 
        ContentLength = structure(logical(0), shape = "NonNegativeLong", 
            location = "header", locationName = "Content-Length", 
            type = "long", min = 0L), CacheControl = structure(logical(0), 
            shape = "StringPrimitive", location = "header", locationName = "Cache-Control", 
            type = "string"), LastModified = structure(logical(0), 
            shape = "TimeStamp", location = "header", locationName = "Last-Modified", 
            type = "timestamp")), shape = "DescribeObjectResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "PathNaming", 
        location = "uri", locationName = "Path", type = "string", 
        max = 900L, min = 1L, pattern = "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+"), 
        Range = structure(logical(0), shape = "RangePattern", 
            location = "header", locationName = "Range", type = "string", 
            pattern = "^bytes=(?:\\d+\\-\\d*|\\d*\\-\\d+)$")), 
        shape = "GetObjectRequest", type = "structure")
    return(populate(args, shape))
}

get_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Body = structure(logical(0), shape = "PayloadBlob", 
        type = "blob", streaming = TRUE), CacheControl = structure(logical(0), 
        shape = "StringPrimitive", location = "header", locationName = "Cache-Control", 
        type = "string"), ContentRange = structure(logical(0), 
        shape = "ContentRangePattern", location = "header", locationName = "Content-Range", 
        type = "string", pattern = "^bytes=\\d+\\-\\d+/\\d+$"), 
        ContentLength = structure(logical(0), shape = "NonNegativeLong", 
            location = "header", locationName = "Content-Length", 
            type = "long", min = 0L), ContentType = structure(logical(0), 
            shape = "ContentType", location = "header", locationName = "Content-Type", 
            type = "string", pattern = "^[\\w\\-\\/\\.]{1,255}$"), 
        ETag = structure(logical(0), shape = "ETag", location = "header", 
            locationName = "ETag", type = "string", max = 64L, 
            min = 1L, pattern = "[0-9A-Fa-f]+"), LastModified = structure(logical(0), 
            shape = "TimeStamp", location = "header", locationName = "Last-Modified", 
            type = "timestamp"), StatusCode = structure(logical(0), 
            shape = "statusCode", location = "statusCode", type = "integer")), 
        shape = "GetObjectResponse", type = "structure", payload = "Body")
    return(populate(args, shape))
}

list_items_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(logical(0), shape = "ListPathNaming", 
        location = "querystring", locationName = "Path", type = "string", 
        max = 900L, min = 0L, pattern = "/?(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}(?:[A-Za-z0-9_\\.\\-\\~]+)?/?"), 
        MaxResults = structure(logical(0), shape = "ListLimit", 
            location = "querystring", locationName = "MaxResults", 
            type = "integer", max = 1000L, min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", location = "querystring", 
            locationName = "NextToken", type = "string")), shape = "ListItemsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_items_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Items = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ItemName", type = "string", pattern = "[A-Za-z0-9_\\.\\-\\~]+"), 
        Type = structure(logical(0), shape = "ItemType", type = "string"), 
        ETag = structure(logical(0), shape = "ETag", type = "string", 
            max = 64L, min = 1L, pattern = "[0-9A-Fa-f]+"), LastModified = structure(logical(0), 
            shape = "TimeStamp", type = "timestamp"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", pattern = "^[\\w\\-\\/\\.]{1,255}$"), 
        ContentLength = structure(logical(0), shape = "NonNegativeLong", 
            type = "long", min = 0L)), shape = "Item", type = "structure")), 
        shape = "ItemList", type = "list"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string")), shape = "ListItemsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_object_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Body = structure(logical(0), shape = "PayloadBlob", 
        type = "blob", streaming = TRUE), Path = structure(logical(0), 
        shape = "PathNaming", location = "uri", locationName = "Path", 
        type = "string", max = 900L, min = 1L, pattern = "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+"), 
        ContentType = structure(logical(0), shape = "ContentType", 
            location = "header", locationName = "Content-Type", 
            type = "string", pattern = "^[\\w\\-\\/\\.]{1,255}$"), 
        CacheControl = structure(logical(0), shape = "StringPrimitive", 
            location = "header", locationName = "Cache-Control", 
            type = "string"), StorageClass = structure(logical(0), 
            shape = "StorageClass", location = "header", locationName = "x-amz-storage-class", 
            type = "string", max = 16L, min = 1L)), shape = "PutObjectRequest", 
        type = "structure", payload = "Body")
    return(populate(args, shape))
}

put_object_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContentSHA256 = structure(logical(0), 
        shape = "SHA256Hash", type = "string", max = 64L, min = 64L, 
        pattern = "[0-9A-Fa-f]{64}"), ETag = structure(logical(0), 
        shape = "ETag", type = "string", max = 64L, min = 1L, 
        pattern = "[0-9A-Fa-f]+"), StorageClass = structure(logical(0), 
        shape = "StorageClass", type = "string", max = 16L, min = 1L)), 
        shape = "PutObjectResponse", type = "structure")
    return(populate(args, shape))
}
