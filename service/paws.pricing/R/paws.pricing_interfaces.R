describe_services_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceCode = structure(logical(0), 
        shape = "String", type = "string"), FormatVersion = structure(logical(0), 
        shape = "String", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), MaxResults = structure(logical(0), 
        shape = "BoxedInteger", box = TRUE, type = "integer", 
        max = 100L, min = 1L)), shape = "DescribeServicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_services_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Services = structure(list(structure(list(ServiceCode = structure(logical(0), 
        shape = "String", type = "string"), AttributeNames = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "AttributeNameList", 
        type = "list")), shape = "Service", type = "structure")), 
        shape = "ServiceList", type = "list"), FormatVersion = structure(logical(0), 
        shape = "String", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeServicesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_attribute_values_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceCode = structure(logical(0), 
        shape = "String", type = "string"), AttributeName = structure(logical(0), 
        shape = "String", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), MaxResults = structure(logical(0), 
        shape = "BoxedInteger", box = TRUE, type = "integer", 
        max = 100L, min = 1L)), shape = "GetAttributeValuesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_attribute_values_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttributeValues = structure(list(structure(list(Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "AttributeValue", 
        type = "structure")), shape = "AttributeValueList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "GetAttributeValuesResponse", type = "structure")
    return(populate(args, shape))
}

get_products_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceCode = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Type = structure(logical(0), 
        shape = "FilterType", type = "string"), Field = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Filter", 
        type = "structure")), shape = "Filters", type = "list"), 
        FormatVersion = structure(logical(0), shape = "String", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), MaxResults = structure(logical(0), 
            shape = "BoxedInteger", box = TRUE, type = "integer", 
            max = 100L, min = 1L)), shape = "GetProductsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_products_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FormatVersion = structure(logical(0), 
        shape = "String", type = "string"), PriceList = structure(list(structure(logical(0), 
        shape = "PriceListItemJSON", jsonvalue = TRUE, type = "string")), 
        shape = "PriceList", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetProductsResponse", 
        type = "structure")
    return(populate(args, shape))
}
