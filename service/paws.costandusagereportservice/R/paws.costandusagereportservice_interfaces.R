delete_report_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReportName = structure(logical(0), 
        shape = "ReportName", type = "string", max = 256L, pattern = "[0-9A-Za-z!\\-_.*\\'()]+")), 
        shape = "DeleteReportDefinitionRequest", type = "structure")
    return(populate(args, shape))
}

delete_report_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResponseMessage = structure(logical(0), 
        shape = "DeleteResponseMessage", type = "string")), shape = "DeleteReportDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_report_definitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 5L, 
        min = 5L), NextToken = structure(logical(0), shape = "GenericString", 
        type = "string")), shape = "DescribeReportDefinitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_report_definitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReportDefinitions = structure(list(structure(list(ReportName = structure(logical(0), 
        shape = "ReportName", type = "string", max = 256L, pattern = "[0-9A-Za-z!\\-_.*\\'()]+"), 
        TimeUnit = structure(logical(0), shape = "TimeUnit", 
            type = "string"), Format = structure(logical(0), 
            shape = "ReportFormat", type = "string"), Compression = structure(logical(0), 
            shape = "CompressionFormat", type = "string"), AdditionalSchemaElements = structure(list(structure(logical(0), 
            shape = "SchemaElement", type = "string")), shape = "SchemaElementList", 
            type = "list"), S3Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 256L), 
        S3Prefix = structure(logical(0), shape = "S3Prefix", 
            type = "string", max = 256L, pattern = "[0-9A-Za-z!\\-_.*\\'()/]*"), 
        S3Region = structure(logical(0), shape = "AWSRegion", 
            type = "string"), AdditionalArtifacts = structure(list(structure(logical(0), 
            shape = "AdditionalArtifact", type = "string")), 
            shape = "AdditionalArtifactList", type = "list")), 
        shape = "ReportDefinition", type = "structure")), shape = "ReportDefinitionList", 
        type = "list"), NextToken = structure(logical(0), shape = "GenericString", 
        type = "string")), shape = "DescribeReportDefinitionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_report_definition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReportDefinition = structure(list(ReportName = structure(logical(0), 
        shape = "ReportName", type = "string", max = 256L, pattern = "[0-9A-Za-z!\\-_.*\\'()]+"), 
        TimeUnit = structure(logical(0), shape = "TimeUnit", 
            type = "string"), Format = structure(logical(0), 
            shape = "ReportFormat", type = "string"), Compression = structure(logical(0), 
            shape = "CompressionFormat", type = "string"), AdditionalSchemaElements = structure(list(structure(logical(0), 
            shape = "SchemaElement", type = "string")), shape = "SchemaElementList", 
            type = "list"), S3Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 256L), 
        S3Prefix = structure(logical(0), shape = "S3Prefix", 
            type = "string", max = 256L, pattern = "[0-9A-Za-z!\\-_.*\\'()/]*"), 
        S3Region = structure(logical(0), shape = "AWSRegion", 
            type = "string"), AdditionalArtifacts = structure(list(structure(logical(0), 
            shape = "AdditionalArtifact", type = "string")), 
            shape = "AdditionalArtifactList", type = "list")), 
        shape = "ReportDefinition", type = "structure")), shape = "PutReportDefinitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_report_definition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutReportDefinitionResponse", 
        type = "structure")
    return(populate(args, shape))
}
