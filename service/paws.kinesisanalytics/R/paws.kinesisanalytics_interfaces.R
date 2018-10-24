add_application_cloud_watch_logging_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), CloudWatchLoggingOption = structure(list(LogStreamARN = structure(logical(0), 
        shape = "LogStreamARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "CloudWatchLoggingOption", type = "structure")), 
        shape = "AddApplicationCloudWatchLoggingOptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_application_cloud_watch_logging_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddApplicationCloudWatchLoggingOptionResponse", 
        type = "structure")
    return(populate(args, shape))
}

add_application_input_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), Input = structure(list(NamePrefix = structure(logical(0), 
        shape = "InAppStreamName", type = "string", max = 32L, 
        min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "InputLambdaProcessor", type = "structure")), 
        shape = "InputProcessingConfiguration", type = "structure"), 
        KinesisStreamsInput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisStreamsInput", type = "structure"), 
        KinesisFirehoseInput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisFirehoseInput", type = "structure"), 
        InputParallelism = structure(list(Count = structure(logical(0), 
            shape = "InputParallelismCount", type = "integer", 
            max = 64L, min = 1L)), shape = "InputParallelism", 
            type = "structure"), InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string"), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
            shape = "RecordRowPath", type = "string", min = 1L)), 
            shape = "JSONMappingParameters", type = "structure"), 
            CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                shape = "RecordRowDelimiter", type = "string", 
                min = 1L), RecordColumnDelimiter = structure(logical(0), 
                shape = "RecordColumnDelimiter", type = "string", 
                min = 1L)), shape = "CSVMappingParameters", type = "structure")), 
            shape = "MappingParameters", type = "structure")), 
            shape = "RecordFormat", type = "structure"), RecordEncoding = structure(logical(0), 
            shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
            RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
                shape = "RecordColumnName", type = "string", 
                pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                shape = "RecordColumnMapping", type = "string"), 
                SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                  type = "string", min = 1L)), shape = "RecordColumn", 
                type = "structure")), shape = "RecordColumns", 
                type = "list", max = 1000L, min = 1L)), shape = "SourceSchema", 
            type = "structure")), shape = "Input", type = "structure")), 
        shape = "AddApplicationInputRequest", type = "structure")
    return(populate(args, shape))
}

add_application_input_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddApplicationInputResponse", 
        type = "structure")
    return(populate(args, shape))
}

add_application_input_processing_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), InputId = structure(logical(0), shape = "Id", 
        type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "InputLambdaProcessor", type = "structure")), 
            shape = "InputProcessingConfiguration", type = "structure")), 
        shape = "AddApplicationInputProcessingConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_application_input_processing_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddApplicationInputProcessingConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

add_application_output_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), Output = structure(list(Name = structure(logical(0), 
        shape = "InAppStreamName", type = "string", max = 32L, 
        min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), KinesisStreamsOutput = structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "KinesisStreamsOutput", type = "structure"), 
        KinesisFirehoseOutput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisFirehoseOutput", type = "structure"), 
        LambdaOutput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "LambdaOutput", type = "structure"), DestinationSchema = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string")), shape = "DestinationSchema", 
            type = "structure")), shape = "Output", type = "structure")), 
        shape = "AddApplicationOutputRequest", type = "structure")
    return(populate(args, shape))
}

add_application_output_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddApplicationOutputResponse", 
        type = "structure")
    return(populate(args, shape))
}

add_application_reference_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), ReferenceDataSource = structure(list(TableName = structure(logical(0), 
        shape = "InAppTableName", type = "string", max = 32L, 
        min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), S3ReferenceDataSource = structure(list(BucketARN = structure(logical(0), 
        shape = "BucketARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:.*"), FileKey = structure(logical(0), 
        shape = "FileKey", type = "string", max = 1024L, min = 1L), 
        ReferenceRoleARN = structure(logical(0), shape = "RoleARN", 
            type = "string", max = 2048L, min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "S3ReferenceDataSource", type = "structure"), 
        ReferenceSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string"), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
            shape = "RecordRowPath", type = "string", min = 1L)), 
            shape = "JSONMappingParameters", type = "structure"), 
            CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                shape = "RecordRowDelimiter", type = "string", 
                min = 1L), RecordColumnDelimiter = structure(logical(0), 
                shape = "RecordColumnDelimiter", type = "string", 
                min = 1L)), shape = "CSVMappingParameters", type = "structure")), 
            shape = "MappingParameters", type = "structure")), 
            shape = "RecordFormat", type = "structure"), RecordEncoding = structure(logical(0), 
            shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
            RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
                shape = "RecordColumnName", type = "string", 
                pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                shape = "RecordColumnMapping", type = "string"), 
                SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                  type = "string", min = 1L)), shape = "RecordColumn", 
                type = "structure")), shape = "RecordColumns", 
                type = "list", max = 1000L, min = 1L)), shape = "SourceSchema", 
            type = "structure")), shape = "ReferenceDataSource", 
        type = "structure")), shape = "AddApplicationReferenceDataSourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_application_reference_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddApplicationReferenceDataSourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ApplicationDescription = structure(logical(0), 
        shape = "ApplicationDescription", type = "string", max = 1024L, 
        min = 0L), Inputs = structure(list(structure(list(NamePrefix = structure(logical(0), 
        shape = "InAppStreamName", type = "string", max = 32L, 
        min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "InputLambdaProcessor", type = "structure")), 
        shape = "InputProcessingConfiguration", type = "structure"), 
        KinesisStreamsInput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisStreamsInput", type = "structure"), 
        KinesisFirehoseInput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisFirehoseInput", type = "structure"), 
        InputParallelism = structure(list(Count = structure(logical(0), 
            shape = "InputParallelismCount", type = "integer", 
            max = 64L, min = 1L)), shape = "InputParallelism", 
            type = "structure"), InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string"), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
            shape = "RecordRowPath", type = "string", min = 1L)), 
            shape = "JSONMappingParameters", type = "structure"), 
            CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                shape = "RecordRowDelimiter", type = "string", 
                min = 1L), RecordColumnDelimiter = structure(logical(0), 
                shape = "RecordColumnDelimiter", type = "string", 
                min = 1L)), shape = "CSVMappingParameters", type = "structure")), 
            shape = "MappingParameters", type = "structure")), 
            shape = "RecordFormat", type = "structure"), RecordEncoding = structure(logical(0), 
            shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
            RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
                shape = "RecordColumnName", type = "string", 
                pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                shape = "RecordColumnMapping", type = "string"), 
                SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                  type = "string", min = 1L)), shape = "RecordColumn", 
                type = "structure")), shape = "RecordColumns", 
                type = "list", max = 1000L, min = 1L)), shape = "SourceSchema", 
            type = "structure")), shape = "Input", type = "structure")), 
        shape = "Inputs", type = "list"), Outputs = structure(list(structure(list(Name = structure(logical(0), 
        shape = "InAppStreamName", type = "string", max = 32L, 
        min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), KinesisStreamsOutput = structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "KinesisStreamsOutput", type = "structure"), 
        KinesisFirehoseOutput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisFirehoseOutput", type = "structure"), 
        LambdaOutput = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "LambdaOutput", type = "structure"), DestinationSchema = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string")), shape = "DestinationSchema", 
            type = "structure")), shape = "Output", type = "structure")), 
        shape = "Outputs", type = "list"), CloudWatchLoggingOptions = structure(list(structure(list(LogStreamARN = structure(logical(0), 
        shape = "LogStreamARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "CloudWatchLoggingOption", type = "structure")), 
        shape = "CloudWatchLoggingOptions", type = "list"), ApplicationCode = structure(logical(0), 
        shape = "ApplicationCode", type = "string", max = 51200L, 
        min = 0L)), shape = "CreateApplicationRequest", type = "structure")
    return(populate(args, shape))
}

create_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationSummary = structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ApplicationARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), ApplicationStatus = structure(logical(0), 
        shape = "ApplicationStatus", type = "string")), shape = "ApplicationSummary", 
        type = "structure")), shape = "CreateApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CreateTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "DeleteApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_cloud_watch_logging_option_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), CloudWatchLoggingOptionId = structure(logical(0), 
        shape = "Id", type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "DeleteApplicationCloudWatchLoggingOptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_cloud_watch_logging_option_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApplicationCloudWatchLoggingOptionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_input_processing_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), InputId = structure(logical(0), shape = "Id", 
        type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "DeleteApplicationInputProcessingConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_input_processing_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApplicationInputProcessingConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_output_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), OutputId = structure(logical(0), shape = "Id", 
        type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "DeleteApplicationOutputRequest", type = "structure")
    return(populate(args, shape))
}

delete_application_output_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApplicationOutputResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_reference_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), ReferenceId = structure(logical(0), shape = "Id", 
        type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "DeleteApplicationReferenceDataSourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_application_reference_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteApplicationReferenceDataSourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+")), shape = "DescribeApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationDetail = structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ApplicationDescription = structure(logical(0), 
        shape = "ApplicationDescription", type = "string", max = 1024L, 
        min = 0L), ApplicationARN = structure(logical(0), shape = "ResourceARN", 
        type = "string", max = 2048L, min = 1L, pattern = "arn:.*"), 
        ApplicationStatus = structure(logical(0), shape = "ApplicationStatus", 
            type = "string"), CreateTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdateTimestamp = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDescriptions = structure(list(structure(list(InputId = structure(logical(0), 
            shape = "Id", type = "string", max = 50L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), NamePrefix = structure(logical(0), 
            shape = "InAppStreamName", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), InAppStreamNames = structure(list(structure(logical(0), 
            shape = "InAppStreamName", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+")), shape = "InAppStreamNames", 
            type = "list"), InputProcessingConfigurationDescription = structure(list(InputLambdaProcessorDescription = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "InputLambdaProcessorDescription", type = "structure")), 
            shape = "InputProcessingConfigurationDescription", 
            type = "structure"), KinesisStreamsInputDescription = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisStreamsInputDescription", type = "structure"), 
            KinesisFirehoseInputDescription = structure(list(ResourceARN = structure(logical(0), 
                shape = "ResourceARN", type = "string", max = 2048L, 
                min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
                shape = "RoleARN", type = "string", max = 2048L, 
                min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
                shape = "KinesisFirehoseInputDescription", type = "structure"), 
            InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
                shape = "RecordFormatType", type = "string"), 
                MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
                  shape = "RecordRowPath", type = "string", min = 1L)), 
                  shape = "JSONMappingParameters", type = "structure"), 
                  CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                    shape = "RecordRowDelimiter", type = "string", 
                    min = 1L), RecordColumnDelimiter = structure(logical(0), 
                    shape = "RecordColumnDelimiter", type = "string", 
                    min = 1L)), shape = "CSVMappingParameters", 
                    type = "structure")), shape = "MappingParameters", 
                  type = "structure")), shape = "RecordFormat", 
                type = "structure"), RecordEncoding = structure(logical(0), 
                shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
                RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "RecordColumnName", type = "string", 
                  pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                  shape = "RecordColumnMapping", type = "string"), 
                  SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                    type = "string", min = 1L)), shape = "RecordColumn", 
                  type = "structure")), shape = "RecordColumns", 
                  type = "list", max = 1000L, min = 1L)), shape = "SourceSchema", 
                type = "structure"), InputParallelism = structure(list(Count = structure(logical(0), 
                shape = "InputParallelismCount", type = "integer", 
                max = 64L, min = 1L)), shape = "InputParallelism", 
                type = "structure"), InputStartingPositionConfiguration = structure(list(InputStartingPosition = structure(logical(0), 
                shape = "InputStartingPosition", type = "string")), 
                shape = "InputStartingPositionConfiguration", 
                type = "structure")), shape = "InputDescription", 
            type = "structure")), shape = "InputDescriptions", 
            type = "list"), OutputDescriptions = structure(list(structure(list(OutputId = structure(logical(0), 
            shape = "Id", type = "string", max = 50L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), Name = structure(logical(0), 
            shape = "InAppStreamName", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), KinesisStreamsOutputDescription = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisStreamsOutputDescription", type = "structure"), 
            KinesisFirehoseOutputDescription = structure(list(ResourceARN = structure(logical(0), 
                shape = "ResourceARN", type = "string", max = 2048L, 
                min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
                shape = "RoleARN", type = "string", max = 2048L, 
                min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
                shape = "KinesisFirehoseOutputDescription", type = "structure"), 
            LambdaOutputDescription = structure(list(ResourceARN = structure(logical(0), 
                shape = "ResourceARN", type = "string", max = 2048L, 
                min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
                shape = "RoleARN", type = "string", max = 2048L, 
                min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
                shape = "LambdaOutputDescription", type = "structure"), 
            DestinationSchema = structure(list(RecordFormatType = structure(logical(0), 
                shape = "RecordFormatType", type = "string")), 
                shape = "DestinationSchema", type = "structure")), 
            shape = "OutputDescription", type = "structure")), 
            shape = "OutputDescriptions", type = "list"), ReferenceDataSourceDescriptions = structure(list(structure(list(ReferenceId = structure(logical(0), 
            shape = "Id", type = "string", max = 50L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), TableName = structure(logical(0), 
            shape = "InAppTableName", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), S3ReferenceDataSourceDescription = structure(list(BucketARN = structure(logical(0), 
            shape = "BucketARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), FileKey = structure(logical(0), 
            shape = "FileKey", type = "string", max = 1024L, 
            min = 1L), ReferenceRoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "S3ReferenceDataSourceDescription", type = "structure"), 
            ReferenceSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
                shape = "RecordFormatType", type = "string"), 
                MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
                  shape = "RecordRowPath", type = "string", min = 1L)), 
                  shape = "JSONMappingParameters", type = "structure"), 
                  CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                    shape = "RecordRowDelimiter", type = "string", 
                    min = 1L), RecordColumnDelimiter = structure(logical(0), 
                    shape = "RecordColumnDelimiter", type = "string", 
                    min = 1L)), shape = "CSVMappingParameters", 
                    type = "structure")), shape = "MappingParameters", 
                  type = "structure")), shape = "RecordFormat", 
                type = "structure"), RecordEncoding = structure(logical(0), 
                shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
                RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
                  shape = "RecordColumnName", type = "string", 
                  pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                  shape = "RecordColumnMapping", type = "string"), 
                  SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                    type = "string", min = 1L)), shape = "RecordColumn", 
                  type = "structure")), shape = "RecordColumns", 
                  type = "list", max = 1000L, min = 1L)), shape = "SourceSchema", 
                type = "structure")), shape = "ReferenceDataSourceDescription", 
            type = "structure")), shape = "ReferenceDataSourceDescriptions", 
            type = "list"), CloudWatchLoggingOptionDescriptions = structure(list(structure(list(CloudWatchLoggingOptionId = structure(logical(0), 
            shape = "Id", type = "string", max = 50L, min = 1L, 
            pattern = "[a-zA-Z0-9_.-]+"), LogStreamARN = structure(logical(0), 
            shape = "LogStreamARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "CloudWatchLoggingOptionDescription", type = "structure")), 
            shape = "CloudWatchLoggingOptionDescriptions", type = "list"), 
        ApplicationCode = structure(logical(0), shape = "ApplicationCode", 
            type = "string", max = 51200L, min = 0L), ApplicationVersionId = structure(logical(0), 
            shape = "ApplicationVersionId", type = "long", max = 999999999L, 
            min = 1L)), shape = "ApplicationDetail", type = "structure")), 
        shape = "DescribeApplicationResponse", type = "structure")
    return(populate(args, shape))
}

discover_input_schema_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
        shape = "RoleARN", type = "string", max = 2048L, min = 1L, 
        pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        InputStartingPositionConfiguration = structure(list(InputStartingPosition = structure(logical(0), 
            shape = "InputStartingPosition", type = "string")), 
            shape = "InputStartingPositionConfiguration", type = "structure"), 
        S3Configuration = structure(list(RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
            BucketARN = structure(logical(0), shape = "BucketARN", 
                type = "string", max = 2048L, min = 1L, pattern = "arn:.*"), 
            FileKey = structure(logical(0), shape = "FileKey", 
                type = "string", max = 1024L, min = 1L)), shape = "S3Configuration", 
            type = "structure"), InputProcessingConfiguration = structure(list(InputLambdaProcessor = structure(list(ResourceARN = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARN = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "InputLambdaProcessor", type = "structure")), 
            shape = "InputProcessingConfiguration", type = "structure")), 
        shape = "DiscoverInputSchemaRequest", type = "structure")
    return(populate(args, shape))
}

discover_input_schema_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InputSchema = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
        shape = "RecordFormatType", type = "string"), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
        shape = "RecordRowPath", type = "string", min = 1L)), 
        shape = "JSONMappingParameters", type = "structure"), 
        CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
            shape = "RecordRowDelimiter", type = "string", min = 1L), 
            RecordColumnDelimiter = structure(logical(0), shape = "RecordColumnDelimiter", 
                type = "string", min = 1L)), shape = "CSVMappingParameters", 
            type = "structure")), shape = "MappingParameters", 
        type = "structure")), shape = "RecordFormat", type = "structure"), 
        RecordEncoding = structure(logical(0), shape = "RecordEncoding", 
            type = "string", pattern = "UTF-8"), RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "RecordColumnName", type = "string", pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), 
            Mapping = structure(logical(0), shape = "RecordColumnMapping", 
                type = "string"), SqlType = structure(logical(0), 
                shape = "RecordColumnSqlType", type = "string", 
                min = 1L)), shape = "RecordColumn", type = "structure")), 
            shape = "RecordColumns", type = "list", max = 1000L, 
            min = 1L)), shape = "SourceSchema", type = "structure"), 
        ParsedInputRecords = structure(list(structure(list(structure(logical(0), 
            shape = "ParsedInputRecordField", type = "string")), 
            shape = "ParsedInputRecord", type = "list")), shape = "ParsedInputRecords", 
            type = "list"), ProcessedInputRecords = structure(list(structure(logical(0), 
            shape = "ProcessedInputRecord", type = "string")), 
            shape = "ProcessedInputRecords", type = "list"), 
        RawInputRecords = structure(list(structure(logical(0), 
            shape = "RawInputRecord", type = "string")), shape = "RawInputRecords", 
            type = "list")), shape = "DiscoverInputSchemaResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Limit = structure(logical(0), shape = "ListApplicationsInputLimit", 
        type = "integer", max = 50L, min = 1L), ExclusiveStartApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+")), shape = "ListApplicationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationSummaries = structure(list(structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), ApplicationARN = structure(logical(0), 
        shape = "ResourceARN", type = "string", max = 2048L, 
        min = 1L, pattern = "arn:.*"), ApplicationStatus = structure(logical(0), 
        shape = "ApplicationStatus", type = "string")), shape = "ApplicationSummary", 
        type = "structure")), shape = "ApplicationSummaries", 
        type = "list"), HasMoreApplications = structure(logical(0), 
        shape = "BooleanObject", type = "boolean")), shape = "ListApplicationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), InputConfigurations = structure(list(structure(list(Id = structure(logical(0), 
        shape = "Id", type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        InputStartingPositionConfiguration = structure(list(InputStartingPosition = structure(logical(0), 
            shape = "InputStartingPosition", type = "string")), 
            shape = "InputStartingPositionConfiguration", type = "structure")), 
        shape = "InputConfiguration", type = "structure")), shape = "InputConfigurations", 
        type = "list")), shape = "StartApplicationRequest", type = "structure")
    return(populate(args, shape))
}

start_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+")), shape = "StopApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ApplicationName = structure(logical(0), 
        shape = "ApplicationName", type = "string", max = 128L, 
        min = 1L, pattern = "[a-zA-Z0-9_.-]+"), CurrentApplicationVersionId = structure(logical(0), 
        shape = "ApplicationVersionId", type = "long", max = 999999999L, 
        min = 1L), ApplicationUpdate = structure(list(InputUpdates = structure(list(structure(list(InputId = structure(logical(0), 
        shape = "Id", type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        NamePrefixUpdate = structure(logical(0), shape = "InAppStreamName", 
            type = "string", max = 32L, min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), 
        InputProcessingConfigurationUpdate = structure(list(InputLambdaProcessorUpdate = structure(list(ResourceARNUpdate = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "InputLambdaProcessorUpdate", type = "structure")), 
            shape = "InputProcessingConfigurationUpdate", type = "structure"), 
        KinesisStreamsInputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisStreamsInputUpdate", type = "structure"), 
        KinesisFirehoseInputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisFirehoseInputUpdate", type = "structure"), 
        InputSchemaUpdate = structure(list(RecordFormatUpdate = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string"), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
            shape = "RecordRowPath", type = "string", min = 1L)), 
            shape = "JSONMappingParameters", type = "structure"), 
            CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                shape = "RecordRowDelimiter", type = "string", 
                min = 1L), RecordColumnDelimiter = structure(logical(0), 
                shape = "RecordColumnDelimiter", type = "string", 
                min = 1L)), shape = "CSVMappingParameters", type = "structure")), 
            shape = "MappingParameters", type = "structure")), 
            shape = "RecordFormat", type = "structure"), RecordEncodingUpdate = structure(logical(0), 
            shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
            RecordColumnUpdates = structure(list(structure(list(Name = structure(logical(0), 
                shape = "RecordColumnName", type = "string", 
                pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                shape = "RecordColumnMapping", type = "string"), 
                SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                  type = "string", min = 1L)), shape = "RecordColumn", 
                type = "structure")), shape = "RecordColumns", 
                type = "list", max = 1000L, min = 1L)), shape = "InputSchemaUpdate", 
            type = "structure"), InputParallelismUpdate = structure(list(CountUpdate = structure(logical(0), 
            shape = "InputParallelismCount", type = "integer", 
            max = 64L, min = 1L)), shape = "InputParallelismUpdate", 
            type = "structure")), shape = "InputUpdate", type = "structure")), 
        shape = "InputUpdates", type = "list"), ApplicationCodeUpdate = structure(logical(0), 
        shape = "ApplicationCode", type = "string", max = 51200L, 
        min = 0L), OutputUpdates = structure(list(structure(list(OutputId = structure(logical(0), 
        shape = "Id", type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        NameUpdate = structure(logical(0), shape = "InAppStreamName", 
            type = "string", max = 32L, min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), 
        KinesisStreamsOutputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisStreamsOutputUpdate", type = "structure"), 
        KinesisFirehoseOutputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "KinesisFirehoseOutputUpdate", type = "structure"), 
        LambdaOutputUpdate = structure(list(ResourceARNUpdate = structure(logical(0), 
            shape = "ResourceARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), RoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "LambdaOutputUpdate", type = "structure"), 
        DestinationSchemaUpdate = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string")), shape = "DestinationSchema", 
            type = "structure")), shape = "OutputUpdate", type = "structure")), 
        shape = "OutputUpdates", type = "list"), ReferenceDataSourceUpdates = structure(list(structure(list(ReferenceId = structure(logical(0), 
        shape = "Id", type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        TableNameUpdate = structure(logical(0), shape = "InAppTableName", 
            type = "string", max = 32L, min = 1L, pattern = "[a-zA-Z][a-zA-Z0-9_]+"), 
        S3ReferenceDataSourceUpdate = structure(list(BucketARNUpdate = structure(logical(0), 
            shape = "BucketARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:.*"), FileKeyUpdate = structure(logical(0), 
            shape = "FileKey", type = "string", max = 1024L, 
            min = 1L), ReferenceRoleARNUpdate = structure(logical(0), 
            shape = "RoleARN", type = "string", max = 2048L, 
            min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "S3ReferenceDataSourceUpdate", type = "structure"), 
        ReferenceSchemaUpdate = structure(list(RecordFormat = structure(list(RecordFormatType = structure(logical(0), 
            shape = "RecordFormatType", type = "string"), MappingParameters = structure(list(JSONMappingParameters = structure(list(RecordRowPath = structure(logical(0), 
            shape = "RecordRowPath", type = "string", min = 1L)), 
            shape = "JSONMappingParameters", type = "structure"), 
            CSVMappingParameters = structure(list(RecordRowDelimiter = structure(logical(0), 
                shape = "RecordRowDelimiter", type = "string", 
                min = 1L), RecordColumnDelimiter = structure(logical(0), 
                shape = "RecordColumnDelimiter", type = "string", 
                min = 1L)), shape = "CSVMappingParameters", type = "structure")), 
            shape = "MappingParameters", type = "structure")), 
            shape = "RecordFormat", type = "structure"), RecordEncoding = structure(logical(0), 
            shape = "RecordEncoding", type = "string", pattern = "UTF-8"), 
            RecordColumns = structure(list(structure(list(Name = structure(logical(0), 
                shape = "RecordColumnName", type = "string", 
                pattern = "[a-zA-Z_][a-zA-Z0-9_]*"), Mapping = structure(logical(0), 
                shape = "RecordColumnMapping", type = "string"), 
                SqlType = structure(logical(0), shape = "RecordColumnSqlType", 
                  type = "string", min = 1L)), shape = "RecordColumn", 
                type = "structure")), shape = "RecordColumns", 
                type = "list", max = 1000L, min = 1L)), shape = "SourceSchema", 
            type = "structure")), shape = "ReferenceDataSourceUpdate", 
        type = "structure")), shape = "ReferenceDataSourceUpdates", 
        type = "list"), CloudWatchLoggingOptionUpdates = structure(list(structure(list(CloudWatchLoggingOptionId = structure(logical(0), 
        shape = "Id", type = "string", max = 50L, min = 1L, pattern = "[a-zA-Z0-9_.-]+"), 
        LogStreamARNUpdate = structure(logical(0), shape = "LogStreamARN", 
            type = "string", max = 2048L, min = 1L, pattern = "arn:.*"), 
        RoleARNUpdate = structure(logical(0), shape = "RoleARN", 
            type = "string", max = 2048L, min = 1L, pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "CloudWatchLoggingOptionUpdate", type = "structure")), 
        shape = "CloudWatchLoggingOptionUpdates", type = "list")), 
        shape = "ApplicationUpdate", type = "structure")), shape = "UpdateApplicationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}
