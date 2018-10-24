invoke_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", location = "uri", locationName = "EndpointName", 
        type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        Body = structure(logical(0), shape = "BodyBlob", type = "blob", 
            max = 5242880L, sensitive = TRUE), ContentType = structure(logical(0), 
            shape = "Header", location = "header", locationName = "Content-Type", 
            type = "string", max = 1024L), Accept = structure(logical(0), 
            shape = "Header", location = "header", locationName = "Accept", 
            type = "string", max = 1024L), CustomAttributes = structure(logical(0), 
            shape = "CustomAttributesHeader", location = "header", 
            locationName = "X-Amzn-SageMaker-Custom-Attributes", 
            type = "string", max = 1024L, sensitive = TRUE)), 
        shape = "InvokeEndpointInput", type = "structure", payload = "Body")
    return(populate(args, shape))
}

invoke_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Body = structure(logical(0), shape = "BodyBlob", 
        type = "blob", max = 5242880L, sensitive = TRUE), ContentType = structure(logical(0), 
        shape = "Header", location = "header", locationName = "Content-Type", 
        type = "string", max = 1024L), InvokedProductionVariant = structure(logical(0), 
        shape = "Header", location = "header", locationName = "x-Amzn-Invoked-Production-Variant", 
        type = "string", max = 1024L), CustomAttributes = structure(logical(0), 
        shape = "CustomAttributesHeader", location = "header", 
        locationName = "X-Amzn-SageMaker-Custom-Attributes", 
        type = "string", max = 1024L, sensitive = TRUE)), shape = "InvokeEndpointOutput", 
        type = "structure", payload = "Body")
    return(populate(args, shape))
}
