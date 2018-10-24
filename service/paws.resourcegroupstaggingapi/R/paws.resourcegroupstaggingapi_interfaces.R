get_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PaginationToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 2048L, 
        min = 0L), TagFilters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Values = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L)), shape = "TagValueList", 
            type = "list", max = 20L, min = 0L)), shape = "TagFilter", 
        type = "structure")), shape = "TagFilterList", type = "list", 
        max = 50L, min = 0L), ResourcesPerPage = structure(logical(0), 
        shape = "ResourcesPerPage", type = "integer"), TagsPerPage = structure(logical(0), 
        shape = "TagsPerPage", type = "integer"), ResourceTypeFilters = structure(list(structure(logical(0), 
        shape = "AmazonResourceType", type = "string", max = 256L, 
        min = 0L)), shape = "ResourceTypeFilterList", type = "list")), 
        shape = "GetResourcesInput", type = "structure")
    return(populate(args, shape))
}

get_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PaginationToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 2048L, 
        min = 0L), ResourceTagMappingList = structure(list(structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1600L, 
        min = 1L), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L)), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "ResourceTagMapping", 
        type = "structure")), shape = "ResourceTagMappingList", 
        type = "list")), shape = "GetResourcesOutput", type = "structure")
    return(populate(args, shape))
}

get_tag_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PaginationToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 2048L, 
        min = 0L)), shape = "GetTagKeysInput", type = "structure")
    return(populate(args, shape))
}

get_tag_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PaginationToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 2048L, 
        min = 0L), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeyList", type = "list")), shape = "GetTagKeysOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_tag_values_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PaginationToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 2048L, 
        min = 0L), Key = structure(logical(0), shape = "TagKey", 
        type = "string", max = 128L, min = 1L)), shape = "GetTagValuesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_tag_values_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PaginationToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 2048L, 
        min = 0L), TagValues = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L)), 
        shape = "TagValuesOutputList", type = "list")), shape = "GetTagValuesOutput", 
        type = "structure")
    return(populate(args, shape))
}

tag_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARNList = structure(list(structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1600L, 
        min = 1L)), shape = "ResourceARNList", type = "list", 
        max = 20L, min = 1L), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L)), 
        shape = "TagMap", type = "map", max = 50L, min = 1L)), 
        shape = "TagResourcesInput", type = "structure")
    return(populate(args, shape))
}

tag_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedResourcesMap = structure(list(structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "integer"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string")), shape = "FailureInfo", 
        type = "structure")), shape = "FailedResourcesMap", type = "map")), 
        shape = "TagResourcesOutput", type = "structure")
    return(populate(args, shape))
}

untag_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARNList = structure(list(structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 1600L, 
        min = 1L)), shape = "ResourceARNList", type = "list", 
        max = 20L, min = 1L), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L)), 
        shape = "TagKeyListForUntag", type = "list", max = 50L, 
        min = 1L)), shape = "UntagResourcesInput", type = "structure")
    return(populate(args, shape))
}

untag_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedResourcesMap = structure(list(structure(list(StatusCode = structure(logical(0), 
        shape = "StatusCode", type = "integer"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string"), ErrorMessage = structure(logical(0), 
        shape = "ErrorMessage", type = "string")), shape = "FailureInfo", 
        type = "structure")), shape = "FailedResourcesMap", type = "map")), 
        shape = "UntagResourcesOutput", type = "structure")
    return(populate(args, shape))
}
