batch_delete_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string"), Items = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", locationName = "ItemName", type = "string"), 
        Attributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "DeletableAttribute", 
            locationName = "Attribute", type = "structure")), 
            shape = "DeletableAttributeList", type = "list", 
            flattened = TRUE)), shape = "DeletableItem", locationName = "Item", 
        type = "structure")), shape = "DeletableItemList", type = "list", 
        flattened = TRUE)), shape = "BatchDeleteAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_attributes_output <- function () 
{
    return(list())
}

batch_put_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string"), Items = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", locationName = "ItemName", type = "string"), 
        Attributes = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string"), Replace = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "ReplaceableAttribute", 
            locationName = "Attribute", type = "structure")), 
            shape = "ReplaceableAttributeList", type = "list", 
            flattened = TRUE)), shape = "ReplaceableItem", locationName = "Item", 
        type = "structure")), shape = "ReplaceableItemList", 
        type = "list", flattened = TRUE)), shape = "BatchPutAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_put_attributes_output <- function () 
{
    return(list())
}

create_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_domain_output <- function () 
{
    return(list())
}

delete_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string"), ItemName = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeletableAttribute", 
        locationName = "Attribute", type = "structure")), shape = "DeletableAttributeList", 
        type = "list", flattened = TRUE), Expected = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), Exists = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "UpdateCondition", 
        type = "structure")), shape = "DeleteAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_attributes_output <- function () 
{
    return(list())
}

delete_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_domain_output <- function () 
{
    return(list())
}

domain_metadata_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DomainMetadataRequest", 
        type = "structure")
    return(populate(args, shape))
}

domain_metadata_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ItemCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ItemNamesSizeBytes = structure(logical(0), 
        shape = "Long", type = "long"), AttributeNameCount = structure(logical(0), 
        shape = "Integer", type = "integer"), AttributeNamesSizeBytes = structure(logical(0), 
        shape = "Long", type = "long"), AttributeValueCount = structure(logical(0), 
        shape = "Integer", type = "integer"), AttributeValuesSizeBytes = structure(logical(0), 
        shape = "Long", type = "long"), Timestamp = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "DomainMetadataResult", 
        type = "structure")
    return(populate(args, shape))
}

get_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string"), ItemName = structure(logical(0), 
        shape = "String", type = "string"), AttributeNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "AttributeName", type = "string")), 
        shape = "AttributeNameList", type = "list", flattened = TRUE), 
        ConsistentRead = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "GetAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), AlternateNameEncoding = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), AlternateValueEncoding = structure(logical(0), 
        shape = "String", type = "string")), shape = "Attribute", 
        locationName = "Attribute", type = "structure")), shape = "AttributeList", 
        type = "list", flattened = TRUE)), shape = "GetAttributesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_domains_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxNumberOfDomains = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListDomainsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_domains_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "DomainName", type = "string")), 
        shape = "DomainNameList", type = "list", flattened = TRUE), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "ListDomainsResult", type = "structure")
    return(populate(args, shape))
}

put_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DomainName = structure(logical(0), 
        shape = "String", type = "string"), ItemName = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), Replace = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ReplaceableAttribute", 
        locationName = "Attribute", type = "structure")), shape = "ReplaceableAttributeList", 
        type = "list", flattened = TRUE), Expected = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), Exists = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "UpdateCondition", 
        type = "structure")), shape = "PutAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_attributes_output <- function () 
{
    return(list())
}

select_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SelectExpression = structure(logical(0), 
        shape = "String", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), ConsistentRead = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "SelectRequest", 
        type = "structure")
    return(populate(args, shape))
}

select_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Items = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), AlternateNameEncoding = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), AlternateNameEncoding = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string"), AlternateValueEncoding = structure(logical(0), 
        shape = "String", type = "string")), shape = "Attribute", 
        locationName = "Attribute", type = "structure")), shape = "AttributeList", 
        type = "list", flattened = TRUE)), shape = "Item", locationName = "Item", 
        type = "structure")), shape = "ItemList", type = "list", 
        flattened = TRUE), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "SelectResult", 
        type = "structure")
    return(populate(args, shape))
}
