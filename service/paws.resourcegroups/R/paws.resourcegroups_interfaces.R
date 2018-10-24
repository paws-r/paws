create_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*"), 
        ResourceQuery = structure(list(Type = structure(logical(0), 
            shape = "QueryType", type = "string"), Query = structure(logical(0), 
            shape = "Query", type = "string", max = 2048L)), 
            shape = "ResourceQuery", type = "structure"), Tags = structure(list(structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map")), shape = "CreateGroupInput", 
        type = "structure")
    return(populate(args, shape))
}

create_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupArn = structure(logical(0), 
        shape = "GroupArn", type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*")), 
        shape = "Group", type = "structure"), ResourceQuery = structure(list(Type = structure(logical(0), 
        shape = "QueryType", type = "string"), Query = structure(logical(0), 
        shape = "Query", type = "string", max = 2048L)), shape = "ResourceQuery", 
        type = "structure"), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 0L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tags", 
        type = "map")), shape = "CreateGroupOutput", type = "structure")
    return(populate(args, shape))
}

delete_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", location = "uri", locationName = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+")), 
        shape = "DeleteGroupInput", type = "structure")
    return(populate(args, shape))
}

delete_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupArn = structure(logical(0), 
        shape = "GroupArn", type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*")), 
        shape = "Group", type = "structure")), shape = "DeleteGroupOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", location = "uri", locationName = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+")), 
        shape = "GetGroupInput", type = "structure")
    return(populate(args, shape))
}

get_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupArn = structure(logical(0), 
        shape = "GroupArn", type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*")), 
        shape = "Group", type = "structure")), shape = "GetGroupOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_group_query_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", location = "uri", locationName = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+")), 
        shape = "GetGroupQueryInput", type = "structure")
    return(populate(args, shape))
}

get_group_query_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupQuery = structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_\\.-]+"), ResourceQuery = structure(list(Type = structure(logical(0), 
        shape = "QueryType", type = "string"), Query = structure(logical(0), 
        shape = "Query", type = "string", max = 2048L)), shape = "ResourceQuery", 
        type = "structure")), shape = "GroupQuery", type = "structure")), 
        shape = "GetGroupQueryOutput", type = "structure")
    return(populate(args, shape))
}

get_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "GroupArn", 
        location = "uri", locationName = "Arn", type = "string", 
        pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}")), 
        shape = "GetTagsInput", type = "structure")
    return(populate(args, shape))
}

get_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "GroupArn", 
        type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map")), shape = "GetTagsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_group_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", location = "uri", locationName = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ResourceFilterName", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "ResourceFilterValue", type = "string", max = 128L, 
            min = 1L, pattern = "AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+")), 
            shape = "ResourceFilterValues", type = "list", max = 5L, 
            min = 1L)), shape = "ResourceFilter", type = "structure")), 
            shape = "ResourceFilterList", type = "list"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", max = 50L, min = 1L), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "ListGroupResourcesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_group_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceIdentifiers = structure(list(structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", pattern = "arn:aws:[a-z0-9\\-]*:([a-z]{2}-[a-z]+-\\d{1})?:([0-9]{12})?:.+"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", pattern = "AWS::[a-zA-Z0-9]+::\\w+")), 
        shape = "ResourceIdentifier", type = "structure")), shape = "ResourceIdentifierList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListGroupResourcesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListGroupsInput", type = "structure")
    return(populate(args, shape))
}

list_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(GroupArn = structure(logical(0), 
        shape = "GroupArn", type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*")), 
        shape = "Group", type = "structure")), shape = "GroupList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListGroupsOutput", type = "structure")
    return(populate(args, shape))
}

search_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceQuery = structure(list(Type = structure(logical(0), 
        shape = "QueryType", type = "string"), Query = structure(logical(0), 
        shape = "Query", type = "string", max = 2048L)), shape = "ResourceQuery", 
        type = "structure"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 50L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "SearchResourcesInput", 
        type = "structure")
    return(populate(args, shape))
}

search_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceIdentifiers = structure(list(structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", pattern = "arn:aws:[a-z0-9\\-]*:([a-z]{2}-[a-z]+-\\d{1})?:([0-9]{12})?:.+"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", pattern = "AWS::[a-zA-Z0-9]+::\\w+")), 
        shape = "ResourceIdentifier", type = "structure")), shape = "ResourceIdentifierList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "SearchResourcesOutput", type = "structure")
    return(populate(args, shape))
}

tag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "GroupArn", 
        location = "uri", locationName = "Arn", type = "string", 
        pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map")), shape = "TagInput", 
        type = "structure")
    return(populate(args, shape))
}

tag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "GroupArn", 
        type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Tags = structure(list(structure(logical(0), shape = "TagValue", 
            type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tags", type = "map")), shape = "TagOutput", 
        type = "structure")
    return(populate(args, shape))
}

untag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "GroupArn", 
        location = "uri", locationName = "Arn", type = "string", 
        pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Keys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list")), shape = "UntagInput", 
        type = "structure")
    return(populate(args, shape))
}

untag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "GroupArn", 
        type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Keys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list")), shape = "UntagOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", location = "uri", locationName = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*")), 
        shape = "UpdateGroupInput", type = "structure")
    return(populate(args, shape))
}

update_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Group = structure(list(GroupArn = structure(logical(0), 
        shape = "GroupArn", type = "string", pattern = "arn:aws:resource-groups:[a-z]{2}-[a-z]+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,128}"), 
        Name = structure(logical(0), shape = "GroupName", type = "string", 
            max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        Description = structure(logical(0), shape = "GroupDescription", 
            type = "string", max = 512L, pattern = "[\\sa-zA-Z0-9_\\.-]*")), 
        shape = "Group", type = "structure")), shape = "UpdateGroupOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_group_query_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", location = "uri", locationName = "GroupName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_\\.-]+"), 
        ResourceQuery = structure(list(Type = structure(logical(0), 
            shape = "QueryType", type = "string"), Query = structure(logical(0), 
            shape = "Query", type = "string", max = 2048L)), 
            shape = "ResourceQuery", type = "structure")), shape = "UpdateGroupQueryInput", 
        type = "structure")
    return(populate(args, shape))
}

update_group_query_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupQuery = structure(list(GroupName = structure(logical(0), 
        shape = "GroupName", type = "string", max = 128L, min = 1L, 
        pattern = "[a-zA-Z0-9_\\.-]+"), ResourceQuery = structure(list(Type = structure(logical(0), 
        shape = "QueryType", type = "string"), Query = structure(logical(0), 
        shape = "Query", type = "string", max = 2048L)), shape = "ResourceQuery", 
        type = "structure")), shape = "GroupQuery", type = "structure")), 
        shape = "UpdateGroupQueryOutput", type = "structure")
    return(populate(args, shape))
}
