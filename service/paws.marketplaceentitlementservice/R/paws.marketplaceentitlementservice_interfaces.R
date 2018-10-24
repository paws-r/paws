get_entitlements_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProductCode = structure(logical(0), 
        shape = "ProductCode", type = "string", max = 255L, min = 1L), 
        Filter = structure(list(structure(list(structure(logical(0), 
            shape = "FilterValue", type = "string")), shape = "FilterValueList", 
            type = "list", min = 1L)), shape = "GetEntitlementFilters", 
            type = "map"), NextToken = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = "\\S+"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "GetEntitlementsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_entitlements_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entitlements = structure(list(structure(list(ProductCode = structure(logical(0), 
        shape = "ProductCode", type = "string", max = 255L, min = 1L), 
        Dimension = structure(logical(0), shape = "NonEmptyString", 
            type = "string", pattern = "\\S+"), CustomerIdentifier = structure(logical(0), 
            shape = "NonEmptyString", type = "string", pattern = "\\S+"), 
        Value = structure(list(IntegerValue = structure(logical(0), 
            shape = "Integer", type = "integer"), DoubleValue = structure(logical(0), 
            shape = "Double", type = "double"), BooleanValue = structure(logical(0), 
            shape = "Boolean", type = "boolean"), StringValue = structure(logical(0), 
            shape = "String", type = "string")), shape = "EntitlementValue", 
            type = "structure"), ExpirationDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Entitlement", 
        type = "structure")), shape = "EntitlementList", type = "list", 
        min = 0L), NextToken = structure(logical(0), shape = "NonEmptyString", 
        type = "string", pattern = "\\S+")), shape = "GetEntitlementsResult", 
        type = "structure")
    return(populate(args, shape))
}
