create_container_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "CreateContainerInput", 
        type = "structure")
    return(populate(args, shape))
}

create_container_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Container = structure(list(Endpoint = structure(logical(0), 
        shape = "Endpoint", type = "string", max = 255L, min = 1L), 
        CreationTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp"), ARN = structure(logical(0), 
            shape = "ContainerARN", type = "string", max = 1024L, 
            min = 1L, pattern = "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/\\w{1,255}"), 
        Name = structure(logical(0), shape = "ContainerName", 
            type = "string", max = 255L, min = 1L, pattern = "\\w+"), 
        Status = structure(logical(0), shape = "ContainerStatus", 
            type = "string", max = 16L, min = 1L)), shape = "Container", 
        type = "structure")), shape = "CreateContainerOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_container_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "DeleteContainerInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_container_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteContainerOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_container_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "DeleteContainerPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_container_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteContainerPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_cors_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "DeleteCorsPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_cors_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteCorsPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_container_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "DescribeContainerInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_container_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Container = structure(list(Endpoint = structure(logical(0), 
        shape = "Endpoint", type = "string", max = 255L, min = 1L), 
        CreationTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp"), ARN = structure(logical(0), 
            shape = "ContainerARN", type = "string", max = 1024L, 
            min = 1L, pattern = "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/\\w{1,255}"), 
        Name = structure(logical(0), shape = "ContainerName", 
            type = "string", max = 255L, min = 1L, pattern = "\\w+"), 
        Status = structure(logical(0), shape = "ContainerStatus", 
            type = "string", max = 16L, min = 1L)), shape = "Container", 
        type = "structure")), shape = "DescribeContainerOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_container_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "GetContainerPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

get_container_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(logical(0), shape = "ContainerPolicy", 
        type = "string", max = 8192L, min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "GetContainerPolicyOutput", type = "structure")
    return(populate(args, shape))
}

get_cors_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+")), shape = "GetCorsPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

get_cors_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CorsPolicy = structure(list(structure(list(AllowedOrigins = structure(list(structure(logical(0), 
        shape = "Origin", type = "string", pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "AllowedOrigins", type = "list"), AllowedMethods = structure(list(structure(logical(0), 
        shape = "MethodName", type = "string")), shape = "AllowedMethods", 
        type = "list"), AllowedHeaders = structure(list(structure(logical(0), 
        shape = "Header", type = "string", max = 8192L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "AllowedHeaders", type = "list", max = 100L, 
        min = 0L), MaxAgeSeconds = structure(logical(0), shape = "MaxAgeSeconds", 
        type = "integer", max = 2147483647L, min = 0L), ExposeHeaders = structure(list(structure(logical(0), 
        shape = "Header", type = "string", max = 8192L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "ExposeHeaders", type = "list", max = 100L, min = 0L)), 
        shape = "CorsRule", type = "structure")), shape = "CorsPolicy", 
        type = "list", max = 100L, min = 1L)), shape = "GetCorsPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_containers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L, pattern = "[0-9A-Za-z=/+]+"), MaxResults = structure(logical(0), 
        shape = "ContainerListLimit", type = "integer", max = 100L, 
        min = 1L)), shape = "ListContainersInput", type = "structure")
    return(populate(args, shape))
}

list_containers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Containers = structure(list(structure(list(Endpoint = structure(logical(0), 
        shape = "Endpoint", type = "string", max = 255L, min = 1L), 
        CreationTime = structure(logical(0), shape = "TimeStamp", 
            type = "timestamp"), ARN = structure(logical(0), 
            shape = "ContainerARN", type = "string", max = 1024L, 
            min = 1L, pattern = "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/\\w{1,255}"), 
        Name = structure(logical(0), shape = "ContainerName", 
            type = "string", max = 255L, min = 1L, pattern = "\\w+"), 
        Status = structure(logical(0), shape = "ContainerStatus", 
            type = "string", max = 16L, min = 1L)), shape = "Container", 
        type = "structure")), shape = "ContainerList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 255L, min = 1L, pattern = "[0-9A-Za-z=/+]+")), 
        shape = "ListContainersOutput", type = "structure")
    return(populate(args, shape))
}

put_container_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+"), Policy = structure(logical(0), 
        shape = "ContainerPolicy", type = "string", max = 8192L, 
        min = 1L, pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "PutContainerPolicyInput", type = "structure")
    return(populate(args, shape))
}

put_container_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutContainerPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}

put_cors_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContainerName = structure(logical(0), 
        shape = "ContainerName", type = "string", max = 255L, 
        min = 1L, pattern = "\\w+"), CorsPolicy = structure(list(structure(list(AllowedOrigins = structure(list(structure(logical(0), 
        shape = "Origin", type = "string", pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "AllowedOrigins", type = "list"), AllowedMethods = structure(list(structure(logical(0), 
        shape = "MethodName", type = "string")), shape = "AllowedMethods", 
        type = "list"), AllowedHeaders = structure(list(structure(logical(0), 
        shape = "Header", type = "string", max = 8192L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "AllowedHeaders", type = "list", max = 100L, 
        min = 0L), MaxAgeSeconds = structure(logical(0), shape = "MaxAgeSeconds", 
        type = "integer", max = 2147483647L, min = 0L), ExposeHeaders = structure(list(structure(logical(0), 
        shape = "Header", type = "string", max = 8192L, min = 1L, 
        pattern = "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")), 
        shape = "ExposeHeaders", type = "list", max = 100L, min = 0L)), 
        shape = "CorsRule", type = "structure")), shape = "CorsPolicy", 
        type = "list", max = 100L, min = 1L)), shape = "PutCorsPolicyInput", 
        type = "structure")
    return(populate(args, shape))
}

put_cors_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutCorsPolicyOutput", 
        type = "structure")
    return(populate(args, shape))
}
