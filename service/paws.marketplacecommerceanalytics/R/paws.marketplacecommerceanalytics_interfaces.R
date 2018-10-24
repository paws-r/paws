generate_data_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSetType = structure(logical(0), 
        shape = "DataSetType", type = "string", max = 255L, min = 1L, 
        locationName = "dataSetType"), DataSetPublicationDate = structure(logical(0), 
        shape = "DataSetPublicationDate", type = "timestamp", 
        locationName = "dataSetPublicationDate"), RoleNameArn = structure(logical(0), 
        shape = "RoleNameArn", type = "string", min = 1L, locationName = "roleNameArn"), 
        DestinationS3BucketName = structure(logical(0), shape = "DestinationS3BucketName", 
            type = "string", min = 1L, locationName = "destinationS3BucketName"), 
        DestinationS3Prefix = structure(logical(0), shape = "DestinationS3Prefix", 
            type = "string", locationName = "destinationS3Prefix"), 
        SnsTopicArn = structure(logical(0), shape = "SnsTopicArn", 
            type = "string", min = 1L, locationName = "snsTopicArn"), 
        CustomerDefinedValues = structure(list(structure(logical(0), 
            shape = "OptionalValue", type = "string", max = 255L, 
            min = 1L)), shape = "CustomerDefinedValues", type = "map", 
            max = 5L, min = 1L, locationName = "customerDefinedValues")), 
        shape = "GenerateDataSetRequest", type = "structure")
    return(populate(args, shape))
}

generate_data_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSetRequestId = structure(logical(0), 
        shape = "DataSetRequestId", type = "string", locationName = "dataSetRequestId")), 
        shape = "GenerateDataSetResult", type = "structure")
    return(populate(args, shape))
}

start_support_data_export_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSetType = structure(logical(0), 
        shape = "SupportDataSetType", type = "string", max = 255L, 
        min = 1L, locationName = "dataSetType"), FromDate = structure(logical(0), 
        shape = "FromDate", type = "timestamp", locationName = "fromDate"), 
        RoleNameArn = structure(logical(0), shape = "RoleNameArn", 
            type = "string", min = 1L, locationName = "roleNameArn"), 
        DestinationS3BucketName = structure(logical(0), shape = "DestinationS3BucketName", 
            type = "string", min = 1L, locationName = "destinationS3BucketName"), 
        DestinationS3Prefix = structure(logical(0), shape = "DestinationS3Prefix", 
            type = "string", locationName = "destinationS3Prefix"), 
        SnsTopicArn = structure(logical(0), shape = "SnsTopicArn", 
            type = "string", min = 1L, locationName = "snsTopicArn"), 
        CustomerDefinedValues = structure(list(structure(logical(0), 
            shape = "OptionalValue", type = "string", max = 255L, 
            min = 1L)), shape = "CustomerDefinedValues", type = "map", 
            max = 5L, min = 1L, locationName = "customerDefinedValues")), 
        shape = "StartSupportDataExportRequest", type = "structure")
    return(populate(args, shape))
}

start_support_data_export_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSetRequestId = structure(logical(0), 
        shape = "DataSetRequestId", type = "string", locationName = "dataSetRequestId")), 
        shape = "StartSupportDataExportResult", type = "structure")
    return(populate(args, shape))
}
