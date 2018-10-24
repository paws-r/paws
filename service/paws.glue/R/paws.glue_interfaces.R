batch_create_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionInputList = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), Parameters = structure(list(structure(logical(0), 
            shape = "ParametersMapValue", type = "string", max = 512000L)), 
            shape = "ParametersMap", type = "map"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "PartitionInput", 
            type = "structure")), shape = "PartitionInputList", 
            type = "list", max = 100L, min = 0L)), shape = "BatchCreatePartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_create_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Errors = structure(list(structure(list(PartitionValues = structure(list(structure(logical(0), 
        shape = "ValueString", type = "string", max = 1024L)), 
        shape = "ValueStringList", type = "list"), ErrorDetail = structure(list(ErrorCode = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ErrorMessage = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ErrorDetail", type = "structure")), shape = "PartitionError", 
        type = "structure")), shape = "PartitionErrors", type = "list")), 
        shape = "BatchCreatePartitionResponse", type = "structure")
    return(populate(args, shape))
}

batch_delete_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ConnectionNameList = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "DeleteConnectionNameList", type = "list", 
            max = 25L, min = 0L)), shape = "BatchDeleteConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Succeeded = structure(list(structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "NameStringList", type = "list"), Errors = structure(list(structure(list(ErrorCode = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ErrorMessage = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ErrorDetail", type = "structure")), shape = "ErrorByName", 
        type = "map")), shape = "BatchDeleteConnectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionsToDelete = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list")), shape = "PartitionValueList", 
            type = "structure")), shape = "BatchDeletePartitionValueList", 
            type = "list", max = 25L, min = 0L)), shape = "BatchDeletePartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Errors = structure(list(structure(list(PartitionValues = structure(list(structure(logical(0), 
        shape = "ValueString", type = "string", max = 1024L)), 
        shape = "ValueStringList", type = "list"), ErrorDetail = structure(list(ErrorCode = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ErrorMessage = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "ErrorDetail", type = "structure")), shape = "PartitionError", 
        type = "structure")), shape = "PartitionErrors", type = "list")), 
        shape = "BatchDeletePartitionResponse", type = "structure")
    return(populate(args, shape))
}

batch_delete_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TablesToDelete = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "BatchDeleteTableNameList", type = "list", 
            max = 100L, min = 0L)), shape = "BatchDeleteTableRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Errors = structure(list(structure(list(TableName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ErrorDetail = structure(list(ErrorCode = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            ErrorMessage = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ErrorDetail", type = "structure")), shape = "TableError", 
        type = "structure")), shape = "TableErrors", type = "list")), 
        shape = "BatchDeleteTableResponse", type = "structure")
    return(populate(args, shape))
}

batch_delete_table_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        VersionIds = structure(list(structure(logical(0), shape = "VersionString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "BatchDeleteTableVersionList", type = "list", 
            max = 100L, min = 0L)), shape = "BatchDeleteTableVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_table_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Errors = structure(list(structure(list(TableName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        VersionId = structure(logical(0), shape = "VersionString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ErrorDetail = structure(list(ErrorCode = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            ErrorMessage = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ErrorDetail", type = "structure")), shape = "TableVersionError", 
        type = "structure")), shape = "TableVersionErrors", type = "list")), 
        shape = "BatchDeleteTableVersionResponse", type = "structure")
    return(populate(args, shape))
}

batch_get_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionsToGet = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list")), shape = "PartitionValueList", 
            type = "structure")), shape = "BatchGetPartitionValueList", 
            type = "list", max = 1000L, min = 0L)), shape = "BatchGetPartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Partitions = structure(list(structure(list(Values = structure(list(structure(logical(0), 
        shape = "ValueString", type = "string", max = 1024L)), 
        shape = "ValueStringList", type = "list"), DatabaseName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), Parameters = structure(list(structure(logical(0), 
            shape = "ParametersMapValue", type = "string", max = 512000L)), 
            shape = "ParametersMap", type = "map"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Partition", 
        type = "structure")), shape = "PartitionList", type = "list"), 
        UnprocessedKeys = structure(list(structure(list(Values = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list")), shape = "PartitionValueList", 
            type = "structure")), shape = "BatchGetPartitionValueList", 
            type = "list", max = 1000L, min = 0L)), shape = "BatchGetPartitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_stop_job_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        JobRunIds = structure(list(structure(logical(0), shape = "IdString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "BatchStopJobRunJobRunIdList", type = "list", 
            max = 25L, min = 1L)), shape = "BatchStopJobRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_stop_job_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfulSubmissions = structure(list(structure(list(JobName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        JobRunId = structure(logical(0), shape = "IdString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "BatchStopJobRunSuccessfulSubmission", type = "structure")), 
        shape = "BatchStopJobRunSuccessfulSubmissionList", type = "list"), 
        Errors = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            JobRunId = structure(logical(0), shape = "IdString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            ErrorDetail = structure(list(ErrorCode = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                ErrorMessage = structure(logical(0), shape = "DescriptionString", 
                  type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "ErrorDetail", type = "structure")), 
            shape = "BatchStopJobRunError", type = "structure")), 
            shape = "BatchStopJobRunErrorList", type = "list")), 
        shape = "BatchStopJobRunResponse", type = "structure")
    return(populate(args, shape))
}

create_classifier_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GrokClassifier = structure(list(Classification = structure(logical(0), 
        shape = "Classification", type = "string"), Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        GrokPattern = structure(logical(0), shape = "GrokPattern", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\t]*"), 
        CustomPatterns = structure(logical(0), shape = "CustomPatterns", 
            type = "string", max = 16000L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "CreateGrokClassifierRequest", type = "structure"), 
        XMLClassifier = structure(list(Classification = structure(logical(0), 
            shape = "Classification", type = "string"), Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            RowTag = structure(logical(0), shape = "RowTag", 
                type = "string")), shape = "CreateXMLClassifierRequest", 
            type = "structure"), JsonClassifier = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            JsonPath = structure(logical(0), shape = "JsonPath", 
                type = "string")), shape = "CreateJsonClassifierRequest", 
            type = "structure")), shape = "CreateClassifierRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_classifier_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateClassifierResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ConnectionInput = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ConnectionType = structure(logical(0), shape = "ConnectionType", 
                type = "string"), MatchCriteria = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "MatchCriteria", type = "list", max = 10L, 
                min = 0L), ConnectionProperties = structure(list(structure(logical(0), 
                shape = "ValueString", type = "string", max = 1024L)), 
                shape = "ConnectionProperties", type = "map", 
                max = 100L, min = 0L), PhysicalConnectionRequirements = structure(list(SubnetId = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SecurityGroupIdList = structure(list(structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                  shape = "SecurityGroupIdList", type = "list", 
                  max = 50L, min = 0L), AvailabilityZone = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "PhysicalConnectionRequirements", type = "structure")), 
            shape = "ConnectionInput", type = "structure")), 
        shape = "CreateConnectionRequest", type = "structure")
    return(populate(args, shape))
}

create_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateConnectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_crawler_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Role = structure(logical(0), shape = "Role", type = "string"), 
        DatabaseName = structure(logical(0), shape = "DatabaseName", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Targets = structure(list(S3Targets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "S3Target", type = "structure")), 
            shape = "S3TargetList", type = "list"), JdbcTargets = structure(list(structure(list(ConnectionName = structure(logical(0), 
            shape = "ConnectionName", type = "string"), Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "JdbcTarget", type = "structure")), 
            shape = "JdbcTargetList", type = "list"), DynamoDBTargets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string")), shape = "DynamoDBTarget", 
            type = "structure")), shape = "DynamoDBTargetList", 
            type = "list")), shape = "CrawlerTargets", type = "structure"), 
        Schedule = structure(logical(0), shape = "CronExpression", 
            type = "string"), Classifiers = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "ClassifierNameList", type = "list"), TablePrefix = structure(logical(0), 
            shape = "TablePrefix", type = "string", max = 128L, 
            min = 0L), SchemaChangePolicy = structure(list(UpdateBehavior = structure(logical(0), 
            shape = "UpdateBehavior", type = "string"), DeleteBehavior = structure(logical(0), 
            shape = "DeleteBehavior", type = "string")), shape = "SchemaChangePolicy", 
            type = "structure"), Configuration = structure(logical(0), 
            shape = "CrawlerConfiguration", type = "string"), 
        CrawlerSecurityConfiguration = structure(logical(0), 
            shape = "CrawlerSecurityConfiguration", type = "string", 
            max = 128L, min = 0L)), shape = "CreateCrawlerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_crawler_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateCrawlerResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_database_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseInput = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LocationUri = structure(logical(0), shape = "URI", 
                type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map")), 
            shape = "DatabaseInput", type = "structure")), shape = "CreateDatabaseRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_database_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateDatabaseResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_dev_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string"), RoleArn = structure(logical(0), 
        shape = "RoleArn", type = "string", pattern = "arn:aws:iam::\\d{12}:role/.*"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "StringList", 
            type = "list"), SubnetId = structure(logical(0), 
            shape = "GenericString", type = "string"), PublicKey = structure(logical(0), 
            shape = "GenericString", type = "string"), PublicKeys = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "PublicKeysList", 
            type = "list", max = 5L), NumberOfNodes = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), ExtraPythonLibsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraJarsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), SecurityConfiguration = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CreateDevEndpointRequest", type = "structure")
    return(populate(args, shape))
}

create_dev_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string"), Status = structure(logical(0), 
        shape = "GenericString", type = "string"), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "StringList", 
        type = "list"), SubnetId = structure(logical(0), shape = "GenericString", 
        type = "string"), RoleArn = structure(logical(0), shape = "RoleArn", 
        type = "string", pattern = "arn:aws:iam::\\d{12}:role/.*"), 
        YarnEndpointAddress = structure(logical(0), shape = "GenericString", 
            type = "string"), ZeppelinRemoteSparkInterpreterPort = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), AvailabilityZone = structure(logical(0), 
            shape = "GenericString", type = "string"), VpcId = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraPythonLibsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraJarsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), FailureReason = structure(logical(0), 
            shape = "GenericString", type = "string"), SecurityConfiguration = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreatedTimestamp = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp")), shape = "CreateDevEndpointResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LogUri = structure(logical(0), shape = "UriString", type = "string"), 
        Role = structure(logical(0), shape = "RoleString", type = "string"), 
        ExecutionProperty = structure(list(MaxConcurrentRuns = structure(logical(0), 
            shape = "MaxConcurrentRuns", type = "integer")), 
            shape = "ExecutionProperty", type = "structure"), 
        Command = structure(list(Name = structure(logical(0), 
            shape = "GenericString", type = "string"), ScriptLocation = structure(logical(0), 
            shape = "ScriptLocationString", type = "string")), 
            shape = "JobCommand", type = "structure"), DefaultArguments = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "GenericMap", 
            type = "map"), Connections = structure(list(Connections = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "StringList", 
            type = "list")), shape = "ConnectionsList", type = "structure"), 
        MaxRetries = structure(logical(0), shape = "MaxRetries", 
            type = "integer"), AllocatedCapacity = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", box = TRUE, 
            min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
            shape = "NotifyDelayAfter", type = "integer", box = TRUE, 
            min = 1L)), shape = "NotificationProperty", type = "structure"), 
        SecurityConfiguration = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CreateJobRequest", type = "structure")
    return(populate(args, shape))
}

create_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CreateJobResponse", type = "structure")
    return(populate(args, shape))
}

create_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionInput = structure(list(Values = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), Parameters = structure(list(structure(logical(0), 
            shape = "ParametersMapValue", type = "string", max = 512000L)), 
            shape = "ParametersMap", type = "map"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "PartitionInput", 
            type = "structure")), shape = "CreatePartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreatePartitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_script_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DagNodes = structure(list(structure(list(Id = structure(logical(0), 
        shape = "CodeGenIdentifier", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z_][A-Za-z0-9_]*"), NodeType = structure(logical(0), 
        shape = "CodeGenNodeType", type = "string"), Args = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
        shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
        type = "structure")), shape = "CodeGenNodeArgs", type = "list", 
        max = 50L, min = 0L), LineNumber = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "CodeGenNode", 
        type = "structure")), shape = "DagNodes", type = "list"), 
        DagEdges = structure(list(structure(list(Source = structure(logical(0), 
            shape = "CodeGenIdentifier", type = "string", max = 255L, 
            min = 1L, pattern = "[A-Za-z_][A-Za-z0-9_]*"), Target = structure(logical(0), 
            shape = "CodeGenIdentifier", type = "string", max = 255L, 
            min = 1L, pattern = "[A-Za-z_][A-Za-z0-9_]*"), TargetParameter = structure(logical(0), 
            shape = "CodeGenArgName", type = "string")), shape = "CodeGenEdge", 
            type = "structure")), shape = "DagEdges", type = "list"), 
        Language = structure(logical(0), shape = "Language", 
            type = "string")), shape = "CreateScriptRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_script_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PythonScript = structure(logical(0), 
        shape = "PythonScript", type = "string"), ScalaCode = structure(logical(0), 
        shape = "ScalaCode", type = "string")), shape = "CreateScriptResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_security_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        EncryptionConfiguration = structure(list(S3Encryption = structure(list(structure(list(S3EncryptionMode = structure(logical(0), 
            shape = "S3EncryptionMode", type = "string"), KmsKeyArn = structure(logical(0), 
            shape = "KmsKeyArn", type = "string", pattern = "arn:aws:kms:.*")), 
            shape = "S3Encryption", type = "structure")), shape = "S3EncryptionList", 
            type = "list"), CloudWatchEncryption = structure(list(CloudWatchEncryptionMode = structure(logical(0), 
            shape = "CloudWatchEncryptionMode", type = "string"), 
            KmsKeyArn = structure(logical(0), shape = "KmsKeyArn", 
                type = "string", pattern = "arn:aws:kms:.*")), 
            shape = "CloudWatchEncryption", type = "structure"), 
            JobBookmarksEncryption = structure(list(JobBookmarksEncryptionMode = structure(logical(0), 
                shape = "JobBookmarksEncryptionMode", type = "string"), 
                KmsKeyArn = structure(logical(0), shape = "KmsKeyArn", 
                  type = "string", pattern = "arn:aws:kms:.*")), 
                shape = "JobBookmarksEncryption", type = "structure")), 
            shape = "EncryptionConfiguration", type = "structure")), 
        shape = "CreateSecurityConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

create_security_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreatedTimestamp = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp")), shape = "CreateSecurityConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableInput = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Owner = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            LastAccessTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp"), LastAnalyzedTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), Retention = structure(logical(0), 
                shape = "NonNegativeInteger", type = "integer", 
                min = 0L), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Type = structure(logical(0), shape = "ColumnTypeString", 
                  type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Comment = structure(logical(0), shape = "CommentString", 
                  type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "Column", type = "structure")), shape = "ColumnList", 
                type = "list"), Location = structure(logical(0), 
                shape = "LocationString", type = "string", max = 2056L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InputFormat = structure(logical(0), shape = "FormatString", 
                  type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                OutputFormat = structure(logical(0), shape = "FormatString", 
                  type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Compressed = structure(logical(0), shape = "Boolean", 
                  type = "boolean"), NumberOfBuckets = structure(logical(0), 
                  shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                  SerializationLibrary = structure(logical(0), 
                    shape = "NameString", type = "string", max = 255L, 
                    min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                  Parameters = structure(list(structure(logical(0), 
                    shape = "ParametersMapValue", type = "string", 
                    max = 512000L)), shape = "ParametersMap", 
                    type = "map")), shape = "SerDeInfo", type = "structure"), 
                BucketColumns = structure(list(structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                  shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                  SortOrder = structure(logical(0), shape = "IntegerFlag", 
                    type = "integer", max = 1L, min = 0L)), shape = "Order", 
                  type = "structure")), shape = "OrderList", 
                  type = "list"), Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map"), 
                SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                  shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "ColumnValueStringList", type = "list"), 
                  SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                    shape = "ColumnValuesString", type = "string")), 
                    shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                  type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
                type = "structure"), PartitionKeys = structure(list(structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Type = structure(logical(0), shape = "ColumnTypeString", 
                  type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Comment = structure(logical(0), shape = "CommentString", 
                  type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "Column", type = "structure")), shape = "ColumnList", 
                type = "list"), ViewOriginalText = structure(logical(0), 
                shape = "ViewTextString", type = "string", max = 409600L), 
            ViewExpandedText = structure(logical(0), shape = "ViewTextString", 
                type = "string", max = 409600L), TableType = structure(logical(0), 
                shape = "TableTypeString", type = "string", max = 255L), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map")), 
            shape = "TableInput", type = "structure")), shape = "CreateTableRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateTableResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_trigger_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Type = structure(logical(0), shape = "TriggerType", type = "string"), 
        Schedule = structure(logical(0), shape = "GenericString", 
            type = "string"), Predicate = structure(list(Logical = structure(logical(0), 
            shape = "Logical", type = "string"), Conditions = structure(list(structure(list(LogicalOperator = structure(logical(0), 
            shape = "LogicalOperator", type = "string"), JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            State = structure(logical(0), shape = "JobRunState", 
                type = "string")), shape = "Condition", type = "structure")), 
            shape = "ConditionList", type = "list")), shape = "Predicate", 
            type = "structure"), Actions = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Arguments = structure(list(structure(logical(0), 
                shape = "GenericString", type = "string")), shape = "GenericMap", 
                type = "map"), Timeout = structure(logical(0), 
                shape = "Timeout", type = "integer", box = TRUE, 
                min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
                shape = "NotifyDelayAfter", type = "integer", 
                box = TRUE, min = 1L)), shape = "NotificationProperty", 
                type = "structure"), SecurityConfiguration = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Action", type = "structure")), shape = "ActionList", 
            type = "list"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        StartOnCreation = structure(logical(0), shape = "BooleanValue", 
            type = "boolean")), shape = "CreateTriggerRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_trigger_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CreateTriggerResponse", type = "structure")
    return(populate(args, shape))
}

create_user_defined_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        FunctionInput = structure(list(FunctionName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            ClassName = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OwnerName = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OwnerType = structure(logical(0), shape = "PrincipalType", 
                type = "string"), ResourceUris = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", type = "string"), Uri = structure(logical(0), 
                shape = "URI", type = "string", max = 1024L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "ResourceUri", type = "structure")), 
                shape = "ResourceUriList", type = "list", max = 1000L, 
                min = 0L)), shape = "UserDefinedFunctionInput", 
            type = "structure")), shape = "CreateUserDefinedFunctionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_user_defined_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateUserDefinedFunctionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_classifier_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteClassifierRequest", type = "structure")
    return(populate(args, shape))
}

delete_classifier_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteClassifierResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ConnectionName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteConnectionRequest", type = "structure")
    return(populate(args, shape))
}

delete_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteConnectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_crawler_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteCrawlerRequest", type = "structure")
    return(populate(args, shape))
}

delete_crawler_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteCrawlerResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_database_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteDatabaseRequest", type = "structure")
    return(populate(args, shape))
}

delete_database_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDatabaseResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_dev_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "DeleteDevEndpointRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_dev_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteDevEndpointResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteJobRequest", type = "structure")
    return(populate(args, shape))
}

delete_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteJobResponse", type = "structure")
    return(populate(args, shape))
}

delete_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionValues = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list")), shape = "DeletePartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeletePartitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_security_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteSecurityConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

delete_security_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteSecurityConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteTableRequest", type = "structure")
    return(populate(args, shape))
}

delete_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTableResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_table_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        VersionId = structure(logical(0), shape = "VersionString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteTableVersionRequest", type = "structure")
    return(populate(args, shape))
}

delete_table_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTableVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_trigger_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteTriggerRequest", type = "structure")
    return(populate(args, shape))
}

delete_trigger_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteTriggerResponse", type = "structure")
    return(populate(args, shape))
}

delete_user_defined_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        FunctionName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DeleteUserDefinedFunctionRequest", type = "structure")
    return(populate(args, shape))
}

delete_user_defined_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteUserDefinedFunctionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_catalog_import_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetCatalogImportStatusRequest", type = "structure")
    return(populate(args, shape))
}

get_catalog_import_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImportStatus = structure(list(ImportCompleted = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ImportTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ImportedBy = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CatalogImportStatus", type = "structure")), 
        shape = "GetCatalogImportStatusResponse", type = "structure")
    return(populate(args, shape))
}

get_classifier_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetClassifierRequest", type = "structure")
    return(populate(args, shape))
}

get_classifier_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Classifier = structure(list(GrokClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Classification = structure(logical(0), shape = "Classification", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), GrokPattern = structure(logical(0), 
            shape = "GrokPattern", type = "string", max = 2048L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\t]*"), 
        CustomPatterns = structure(logical(0), shape = "CustomPatterns", 
            type = "string", max = 16000L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "GrokClassifier", type = "structure"), XMLClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Classification = structure(logical(0), shape = "Classification", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), RowTag = structure(logical(0), 
            shape = "RowTag", type = "string")), shape = "XMLClassifier", 
        type = "structure"), JsonClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), JsonPath = structure(logical(0), 
            shape = "JsonPath", type = "string")), shape = "JsonClassifier", 
        type = "structure")), shape = "Classifier", type = "structure")), 
        shape = "GetClassifierResponse", type = "structure")
    return(populate(args, shape))
}

get_classifiers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", box = TRUE, max = 1000L, 
        min = 1L), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetClassifiersRequest", type = "structure")
    return(populate(args, shape))
}

get_classifiers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Classifiers = structure(list(structure(list(GrokClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Classification = structure(logical(0), shape = "Classification", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), GrokPattern = structure(logical(0), 
            shape = "GrokPattern", type = "string", max = 2048L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\t]*"), 
        CustomPatterns = structure(logical(0), shape = "CustomPatterns", 
            type = "string", max = 16000L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "GrokClassifier", type = "structure"), XMLClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Classification = structure(logical(0), shape = "Classification", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), RowTag = structure(logical(0), 
            shape = "RowTag", type = "string")), shape = "XMLClassifier", 
        type = "structure"), JsonClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), JsonPath = structure(logical(0), 
            shape = "JsonPath", type = "string")), shape = "JsonClassifier", 
        type = "structure")), shape = "Classifier", type = "structure")), 
        shape = "ClassifierList", type = "list"), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "GetClassifiersResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetConnectionRequest", type = "structure")
    return(populate(args, shape))
}

get_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Connection = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ConnectionType = structure(logical(0), shape = "ConnectionType", 
            type = "string"), MatchCriteria = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "MatchCriteria", type = "list", max = 10L, 
            min = 0L), ConnectionProperties = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ConnectionProperties", type = "map", max = 100L, 
            min = 0L), PhysicalConnectionRequirements = structure(list(SubnetId = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            SecurityGroupIdList = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "SecurityGroupIdList", type = "list", 
                max = 50L, min = 0L), AvailabilityZone = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "PhysicalConnectionRequirements", type = "structure"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdatedBy = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Connection", type = "structure")), shape = "GetConnectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Filter = structure(list(MatchCriteria = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "MatchCriteria", type = "list", max = 10L, 
            min = 0L), ConnectionType = structure(logical(0), 
            shape = "ConnectionType", type = "string")), shape = "GetConnectionsFilter", 
            type = "structure"), NextToken = structure(logical(0), 
            shape = "Token", type = "string"), MaxResults = structure(logical(0), 
            shape = "PageSize", type = "integer", box = TRUE, 
            max = 1000L, min = 1L)), shape = "GetConnectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionList = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        ConnectionType = structure(logical(0), shape = "ConnectionType", 
            type = "string"), MatchCriteria = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "MatchCriteria", type = "list", max = 10L, 
            min = 0L), ConnectionProperties = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ConnectionProperties", type = "map", max = 100L, 
            min = 0L), PhysicalConnectionRequirements = structure(list(SubnetId = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            SecurityGroupIdList = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "SecurityGroupIdList", type = "list", 
                max = 50L, min = 0L), AvailabilityZone = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "PhysicalConnectionRequirements", type = "structure"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastUpdatedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdatedBy = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Connection", type = "structure")), shape = "ConnectionList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetConnectionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_crawler_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetCrawlerRequest", type = "structure")
    return(populate(args, shape))
}

get_crawler_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Crawler = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Role = structure(logical(0), shape = "Role", type = "string"), 
        Targets = structure(list(S3Targets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "S3Target", type = "structure")), 
            shape = "S3TargetList", type = "list"), JdbcTargets = structure(list(structure(list(ConnectionName = structure(logical(0), 
            shape = "ConnectionName", type = "string"), Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "JdbcTarget", type = "structure")), 
            shape = "JdbcTargetList", type = "list"), DynamoDBTargets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string")), shape = "DynamoDBTarget", 
            type = "structure")), shape = "DynamoDBTargetList", 
            type = "list")), shape = "CrawlerTargets", type = "structure"), 
        DatabaseName = structure(logical(0), shape = "DatabaseName", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Classifiers = structure(list(structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "ClassifierNameList", type = "list"), SchemaChangePolicy = structure(list(UpdateBehavior = structure(logical(0), 
            shape = "UpdateBehavior", type = "string"), DeleteBehavior = structure(logical(0), 
            shape = "DeleteBehavior", type = "string")), shape = "SchemaChangePolicy", 
            type = "structure"), State = structure(logical(0), 
            shape = "CrawlerState", type = "string"), TablePrefix = structure(logical(0), 
            shape = "TablePrefix", type = "string", max = 128L, 
            min = 0L), Schedule = structure(list(ScheduleExpression = structure(logical(0), 
            shape = "CronExpression", type = "string"), State = structure(logical(0), 
            shape = "ScheduleState", type = "string")), shape = "Schedule", 
            type = "structure"), CrawlElapsedTime = structure(logical(0), 
            shape = "MillisecondsCount", type = "long"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastCrawl = structure(list(Status = structure(logical(0), 
            shape = "LastCrawlStatus", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LogGroup = structure(logical(0), shape = "LogGroup", 
                type = "string", max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            LogStream = structure(logical(0), shape = "LogStream", 
                type = "string", max = 512L, min = 1L, pattern = "[^:*]*"), 
            MessagePrefix = structure(logical(0), shape = "MessagePrefix", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            StartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp")), shape = "LastCrawlInfo", 
            type = "structure"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), Configuration = structure(logical(0), 
            shape = "CrawlerConfiguration", type = "string"), 
        CrawlerSecurityConfiguration = structure(logical(0), 
            shape = "CrawlerSecurityConfiguration", type = "string", 
            max = 128L, min = 0L)), shape = "Crawler", type = "structure")), 
        shape = "GetCrawlerResponse", type = "structure")
    return(populate(args, shape))
}

get_crawler_metrics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CrawlerNameList = structure(list(structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CrawlerNameList", type = "list", max = 100L, 
        min = 0L), MaxResults = structure(logical(0), shape = "PageSize", 
        type = "integer", box = TRUE, max = 1000L, min = 1L), 
        NextToken = structure(logical(0), shape = "Token", type = "string")), 
        shape = "GetCrawlerMetricsRequest", type = "structure")
    return(populate(args, shape))
}

get_crawler_metrics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CrawlerMetricsList = structure(list(structure(list(CrawlerName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TimeLeftSeconds = structure(logical(0), shape = "NonNegativeDouble", 
            type = "double", min = 0L), StillEstimating = structure(logical(0), 
            shape = "Boolean", type = "boolean"), LastRuntimeSeconds = structure(logical(0), 
            shape = "NonNegativeDouble", type = "double", min = 0L), 
        MedianRuntimeSeconds = structure(logical(0), shape = "NonNegativeDouble", 
            type = "double", min = 0L), TablesCreated = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L), 
        TablesUpdated = structure(logical(0), shape = "NonNegativeInteger", 
            type = "integer", min = 0L), TablesDeleted = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L)), 
        shape = "CrawlerMetrics", type = "structure")), shape = "CrawlerMetricsList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetCrawlerMetricsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_crawlers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", box = TRUE, max = 1000L, 
        min = 1L), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetCrawlersRequest", type = "structure")
    return(populate(args, shape))
}

get_crawlers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Crawlers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Role = structure(logical(0), shape = "Role", type = "string"), 
        Targets = structure(list(S3Targets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "S3Target", type = "structure")), 
            shape = "S3TargetList", type = "list"), JdbcTargets = structure(list(structure(list(ConnectionName = structure(logical(0), 
            shape = "ConnectionName", type = "string"), Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "JdbcTarget", type = "structure")), 
            shape = "JdbcTargetList", type = "list"), DynamoDBTargets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string")), shape = "DynamoDBTarget", 
            type = "structure")), shape = "DynamoDBTargetList", 
            type = "list")), shape = "CrawlerTargets", type = "structure"), 
        DatabaseName = structure(logical(0), shape = "DatabaseName", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Classifiers = structure(list(structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "ClassifierNameList", type = "list"), SchemaChangePolicy = structure(list(UpdateBehavior = structure(logical(0), 
            shape = "UpdateBehavior", type = "string"), DeleteBehavior = structure(logical(0), 
            shape = "DeleteBehavior", type = "string")), shape = "SchemaChangePolicy", 
            type = "structure"), State = structure(logical(0), 
            shape = "CrawlerState", type = "string"), TablePrefix = structure(logical(0), 
            shape = "TablePrefix", type = "string", max = 128L, 
            min = 0L), Schedule = structure(list(ScheduleExpression = structure(logical(0), 
            shape = "CronExpression", type = "string"), State = structure(logical(0), 
            shape = "ScheduleState", type = "string")), shape = "Schedule", 
            type = "structure"), CrawlElapsedTime = structure(logical(0), 
            shape = "MillisecondsCount", type = "long"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastUpdated = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastCrawl = structure(list(Status = structure(logical(0), 
            shape = "LastCrawlStatus", type = "string"), ErrorMessage = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LogGroup = structure(logical(0), shape = "LogGroup", 
                type = "string", max = 512L, min = 1L, pattern = "[\\.\\-_/#A-Za-z0-9]+"), 
            LogStream = structure(logical(0), shape = "LogStream", 
                type = "string", max = 512L, min = 1L, pattern = "[^:*]*"), 
            MessagePrefix = structure(logical(0), shape = "MessagePrefix", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            StartTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp")), shape = "LastCrawlInfo", 
            type = "structure"), Version = structure(logical(0), 
            shape = "VersionId", type = "long"), Configuration = structure(logical(0), 
            shape = "CrawlerConfiguration", type = "string"), 
        CrawlerSecurityConfiguration = structure(logical(0), 
            shape = "CrawlerSecurityConfiguration", type = "string", 
            max = 128L, min = 0L)), shape = "Crawler", type = "structure")), 
        shape = "CrawlerList", type = "list"), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "GetCrawlersResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_data_catalog_encryption_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetDataCatalogEncryptionSettingsRequest", type = "structure")
    return(populate(args, shape))
}

get_data_catalog_encryption_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataCatalogEncryptionSettings = structure(list(EncryptionAtRest = structure(list(CatalogEncryptionMode = structure(logical(0), 
        shape = "CatalogEncryptionMode", type = "string"), SseAwsKmsKeyId = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "EncryptionAtRest", type = "structure")), shape = "DataCatalogEncryptionSettings", 
        type = "structure")), shape = "GetDataCatalogEncryptionSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_database_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetDatabaseRequest", type = "structure")
    return(populate(args, shape))
}

get_database_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Database = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LocationUri = structure(logical(0), shape = "URI", type = "string", 
            max = 1024L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Parameters = structure(list(structure(logical(0), shape = "ParametersMapValue", 
            type = "string", max = 512000L)), shape = "ParametersMap", 
            type = "map"), CreateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Database", 
        type = "structure")), shape = "GetDatabaseResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_databases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        NextToken = structure(logical(0), shape = "Token", type = "string"), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", box = TRUE, max = 1000L, min = 1L)), 
        shape = "GetDatabasesRequest", type = "structure")
    return(populate(args, shape))
}

get_databases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DatabaseList = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LocationUri = structure(logical(0), shape = "URI", type = "string", 
            max = 1024L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Parameters = structure(list(structure(logical(0), shape = "ParametersMapValue", 
            type = "string", max = 512000L)), shape = "ParametersMap", 
            type = "map"), CreateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Database", 
        type = "structure")), shape = "DatabaseList", type = "list"), 
        NextToken = structure(logical(0), shape = "Token", type = "string")), 
        shape = "GetDatabasesResponse", type = "structure")
    return(populate(args, shape))
}

get_dataflow_graph_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PythonScript = structure(logical(0), 
        shape = "PythonScript", type = "string")), shape = "GetDataflowGraphRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_dataflow_graph_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DagNodes = structure(list(structure(list(Id = structure(logical(0), 
        shape = "CodeGenIdentifier", type = "string", max = 255L, 
        min = 1L, pattern = "[A-Za-z_][A-Za-z0-9_]*"), NodeType = structure(logical(0), 
        shape = "CodeGenNodeType", type = "string"), Args = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
        shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
        type = "structure")), shape = "CodeGenNodeArgs", type = "list", 
        max = 50L, min = 0L), LineNumber = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "CodeGenNode", 
        type = "structure")), shape = "DagNodes", type = "list"), 
        DagEdges = structure(list(structure(list(Source = structure(logical(0), 
            shape = "CodeGenIdentifier", type = "string", max = 255L, 
            min = 1L, pattern = "[A-Za-z_][A-Za-z0-9_]*"), Target = structure(logical(0), 
            shape = "CodeGenIdentifier", type = "string", max = 255L, 
            min = 1L, pattern = "[A-Za-z_][A-Za-z0-9_]*"), TargetParameter = structure(logical(0), 
            shape = "CodeGenArgName", type = "string")), shape = "CodeGenEdge", 
            type = "structure")), shape = "DagEdges", type = "list")), 
        shape = "GetDataflowGraphResponse", type = "structure")
    return(populate(args, shape))
}

get_dev_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "GetDevEndpointRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_dev_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevEndpoint = structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string"), RoleArn = structure(logical(0), 
        shape = "RoleArn", type = "string", pattern = "arn:aws:iam::\\d{12}:role/.*"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "StringList", 
            type = "list"), SubnetId = structure(logical(0), 
            shape = "GenericString", type = "string"), YarnEndpointAddress = structure(logical(0), 
            shape = "GenericString", type = "string"), PrivateAddress = structure(logical(0), 
            shape = "GenericString", type = "string"), ZeppelinRemoteSparkInterpreterPort = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), PublicAddress = structure(logical(0), 
            shape = "GenericString", type = "string"), Status = structure(logical(0), 
            shape = "GenericString", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), AvailabilityZone = structure(logical(0), 
            shape = "GenericString", type = "string"), VpcId = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraPythonLibsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraJarsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), FailureReason = structure(logical(0), 
            shape = "GenericString", type = "string"), LastUpdateStatus = structure(logical(0), 
            shape = "GenericString", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), LastModifiedTimestamp = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), PublicKey = structure(logical(0), 
            shape = "GenericString", type = "string"), PublicKeys = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "PublicKeysList", 
            type = "list", max = 5L), SecurityConfiguration = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DevEndpoint", type = "structure")), shape = "GetDevEndpointResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_dev_endpoints_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", box = TRUE, max = 1000L, 
        min = 1L), NextToken = structure(logical(0), shape = "GenericString", 
        type = "string")), shape = "GetDevEndpointsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_dev_endpoints_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DevEndpoints = structure(list(structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string"), RoleArn = structure(logical(0), 
        shape = "RoleArn", type = "string", pattern = "arn:aws:iam::\\d{12}:role/.*"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "StringList", 
            type = "list"), SubnetId = structure(logical(0), 
            shape = "GenericString", type = "string"), YarnEndpointAddress = structure(logical(0), 
            shape = "GenericString", type = "string"), PrivateAddress = structure(logical(0), 
            shape = "GenericString", type = "string"), ZeppelinRemoteSparkInterpreterPort = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), PublicAddress = structure(logical(0), 
            shape = "GenericString", type = "string"), Status = structure(logical(0), 
            shape = "GenericString", type = "string"), NumberOfNodes = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), AvailabilityZone = structure(logical(0), 
            shape = "GenericString", type = "string"), VpcId = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraPythonLibsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), ExtraJarsS3Path = structure(logical(0), 
            shape = "GenericString", type = "string"), FailureReason = structure(logical(0), 
            shape = "GenericString", type = "string"), LastUpdateStatus = structure(logical(0), 
            shape = "GenericString", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), LastModifiedTimestamp = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), PublicKey = structure(logical(0), 
            shape = "GenericString", type = "string"), PublicKeys = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "PublicKeysList", 
            type = "list", max = 5L), SecurityConfiguration = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "DevEndpoint", type = "structure")), shape = "DevEndpointList", 
        type = "list"), NextToken = structure(logical(0), shape = "GenericString", 
        type = "string")), shape = "GetDevEndpointsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetJobRequest", type = "structure")
    return(populate(args, shape))
}

get_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Job = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LogUri = structure(logical(0), shape = "UriString", type = "string"), 
        Role = structure(logical(0), shape = "RoleString", type = "string"), 
        CreatedOn = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp"), LastModifiedOn = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), ExecutionProperty = structure(list(MaxConcurrentRuns = structure(logical(0), 
            shape = "MaxConcurrentRuns", type = "integer")), 
            shape = "ExecutionProperty", type = "structure"), 
        Command = structure(list(Name = structure(logical(0), 
            shape = "GenericString", type = "string"), ScriptLocation = structure(logical(0), 
            shape = "ScriptLocationString", type = "string")), 
            shape = "JobCommand", type = "structure"), DefaultArguments = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "GenericMap", 
            type = "map"), Connections = structure(list(Connections = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "StringList", 
            type = "list")), shape = "ConnectionsList", type = "structure"), 
        MaxRetries = structure(logical(0), shape = "MaxRetries", 
            type = "integer"), AllocatedCapacity = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", box = TRUE, 
            min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
            shape = "NotifyDelayAfter", type = "integer", box = TRUE, 
            min = 1L)), shape = "NotificationProperty", type = "structure"), 
        SecurityConfiguration = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Job", type = "structure")), shape = "GetJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_job_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        RunId = structure(logical(0), shape = "IdString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PredecessorsIncluded = structure(logical(0), shape = "BooleanValue", 
            type = "boolean")), shape = "GetJobRunRequest", type = "structure")
    return(populate(args, shape))
}

get_job_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobRun = structure(list(Id = structure(logical(0), 
        shape = "IdString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Attempt = structure(logical(0), shape = "AttemptCount", 
            type = "integer"), PreviousRunId = structure(logical(0), 
            shape = "IdString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TriggerName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        JobName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        StartedOn = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp"), LastModifiedOn = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), CompletedOn = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), JobRunState = structure(logical(0), 
            shape = "JobRunState", type = "string"), Arguments = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "GenericMap", 
            type = "map"), ErrorMessage = structure(logical(0), 
            shape = "ErrorString", type = "string"), PredecessorRuns = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            RunId = structure(logical(0), shape = "IdString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Predecessor", type = "structure")), shape = "PredecessorList", 
            type = "list"), AllocatedCapacity = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), ExecutionTime = structure(logical(0), 
            shape = "ExecutionTime", type = "integer"), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", box = TRUE, 
            min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
            shape = "NotifyDelayAfter", type = "integer", box = TRUE, 
            min = 1L)), shape = "NotificationProperty", type = "structure"), 
        SecurityConfiguration = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        LogGroupName = structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "JobRun", type = "structure")), 
        shape = "GetJobRunResponse", type = "structure")
    return(populate(args, shape))
}

get_job_runs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        NextToken = structure(logical(0), shape = "GenericString", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "PageSize", type = "integer", box = TRUE, 
            max = 1000L, min = 1L)), shape = "GetJobRunsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_job_runs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobRuns = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Attempt = structure(logical(0), shape = "AttemptCount", 
            type = "integer"), PreviousRunId = structure(logical(0), 
            shape = "IdString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TriggerName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        JobName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        StartedOn = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp"), LastModifiedOn = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), CompletedOn = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), JobRunState = structure(logical(0), 
            shape = "JobRunState", type = "string"), Arguments = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "GenericMap", 
            type = "map"), ErrorMessage = structure(logical(0), 
            shape = "ErrorString", type = "string"), PredecessorRuns = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            RunId = structure(logical(0), shape = "IdString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Predecessor", type = "structure")), shape = "PredecessorList", 
            type = "list"), AllocatedCapacity = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), ExecutionTime = structure(logical(0), 
            shape = "ExecutionTime", type = "integer"), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", box = TRUE, 
            min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
            shape = "NotifyDelayAfter", type = "integer", box = TRUE, 
            min = 1L)), shape = "NotificationProperty", type = "structure"), 
        SecurityConfiguration = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        LogGroupName = structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "JobRun", type = "structure")), 
        shape = "JobRunList", type = "list"), NextToken = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "GetJobRunsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "GenericString", type = "string"), MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", box = TRUE, max = 1000L, 
        min = 1L)), shape = "GetJobsRequest", type = "structure")
    return(populate(args, shape))
}

get_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        LogUri = structure(logical(0), shape = "UriString", type = "string"), 
        Role = structure(logical(0), shape = "RoleString", type = "string"), 
        CreatedOn = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp"), LastModifiedOn = structure(logical(0), 
            shape = "TimestampValue", type = "timestamp"), ExecutionProperty = structure(list(MaxConcurrentRuns = structure(logical(0), 
            shape = "MaxConcurrentRuns", type = "integer")), 
            shape = "ExecutionProperty", type = "structure"), 
        Command = structure(list(Name = structure(logical(0), 
            shape = "GenericString", type = "string"), ScriptLocation = structure(logical(0), 
            shape = "ScriptLocationString", type = "string")), 
            shape = "JobCommand", type = "structure"), DefaultArguments = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "GenericMap", 
            type = "map"), Connections = structure(list(Connections = structure(list(structure(logical(0), 
            shape = "GenericString", type = "string")), shape = "StringList", 
            type = "list")), shape = "ConnectionsList", type = "structure"), 
        MaxRetries = structure(logical(0), shape = "MaxRetries", 
            type = "integer"), AllocatedCapacity = structure(logical(0), 
            shape = "IntegerValue", type = "integer"), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", box = TRUE, 
            min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
            shape = "NotifyDelayAfter", type = "integer", box = TRUE, 
            min = 1L)), shape = "NotificationProperty", type = "structure"), 
        SecurityConfiguration = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Job", type = "structure")), shape = "JobList", 
        type = "list"), NextToken = structure(logical(0), shape = "GenericString", 
        type = "string")), shape = "GetJobsResponse", type = "structure")
    return(populate(args, shape))
}

get_mapping_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Source = structure(list(DatabaseName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CatalogEntry", type = "structure"), Sinks = structure(list(structure(list(DatabaseName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "CatalogEntry", type = "structure")), shape = "CatalogEntries", 
        type = "list"), Location = structure(list(Jdbc = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
        shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
        type = "structure")), shape = "CodeGenNodeArgs", type = "list", 
        max = 50L, min = 0L), S3 = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
        shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
        type = "structure")), shape = "CodeGenNodeArgs", type = "list", 
        max = 50L, min = 0L), DynamoDB = structure(list(structure(list(Name = structure(logical(0), 
        shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
        shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
        type = "structure")), shape = "CodeGenNodeArgs", type = "list", 
        max = 50L, min = 0L)), shape = "Location", type = "structure")), 
        shape = "GetMappingRequest", type = "structure")
    return(populate(args, shape))
}

get_mapping_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Mapping = structure(list(structure(list(SourceTable = structure(logical(0), 
        shape = "TableName", type = "string"), SourcePath = structure(logical(0), 
        shape = "SchemaPathString", type = "string"), SourceType = structure(logical(0), 
        shape = "FieldType", type = "string"), TargetTable = structure(logical(0), 
        shape = "TableName", type = "string"), TargetPath = structure(logical(0), 
        shape = "SchemaPathString", type = "string"), TargetType = structure(logical(0), 
        shape = "FieldType", type = "string")), shape = "MappingEntry", 
        type = "structure")), shape = "MappingList", type = "list")), 
        shape = "GetMappingResponse", type = "structure")
    return(populate(args, shape))
}

get_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionValues = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list")), shape = "GetPartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Partition = structure(list(Values = structure(list(structure(logical(0), 
        shape = "ValueString", type = "string", max = 1024L)), 
        shape = "ValueStringList", type = "list"), DatabaseName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), Parameters = structure(list(structure(logical(0), 
            shape = "ParametersMapValue", type = "string", max = 512000L)), 
            shape = "ParametersMap", type = "map"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Partition", 
        type = "structure")), shape = "GetPartitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_partitions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Expression = structure(logical(0), shape = "PredicateString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        NextToken = structure(logical(0), shape = "Token", type = "string"), 
        Segment = structure(list(SegmentNumber = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L), 
            TotalSegments = structure(logical(0), shape = "TotalSegmentsInteger", 
                type = "integer", max = 10L, min = 1L)), shape = "Segment", 
            type = "structure"), MaxResults = structure(logical(0), 
            shape = "PageSize", type = "integer", box = TRUE, 
            max = 1000L, min = 1L)), shape = "GetPartitionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_partitions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Partitions = structure(list(structure(list(Values = structure(list(structure(logical(0), 
        shape = "ValueString", type = "string", max = 1024L)), 
        shape = "ValueStringList", type = "list"), DatabaseName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), Parameters = structure(list(structure(logical(0), 
            shape = "ParametersMapValue", type = "string", max = 512000L)), 
            shape = "ParametersMap", type = "map"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "Partition", 
        type = "structure")), shape = "PartitionList", type = "list"), 
        NextToken = structure(logical(0), shape = "Token", type = "string")), 
        shape = "GetPartitionsResponse", type = "structure")
    return(populate(args, shape))
}

get_plan_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Mapping = structure(list(structure(list(SourceTable = structure(logical(0), 
        shape = "TableName", type = "string"), SourcePath = structure(logical(0), 
        shape = "SchemaPathString", type = "string"), SourceType = structure(logical(0), 
        shape = "FieldType", type = "string"), TargetTable = structure(logical(0), 
        shape = "TableName", type = "string"), TargetPath = structure(logical(0), 
        shape = "SchemaPathString", type = "string"), TargetType = structure(logical(0), 
        shape = "FieldType", type = "string")), shape = "MappingEntry", 
        type = "structure")), shape = "MappingList", type = "list"), 
        Source = structure(list(DatabaseName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            TableName = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "CatalogEntry", type = "structure"), Sinks = structure(list(structure(list(DatabaseName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            TableName = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "CatalogEntry", type = "structure")), shape = "CatalogEntries", 
            type = "list"), Location = structure(list(Jdbc = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
            shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
            type = "structure")), shape = "CodeGenNodeArgs", 
            type = "list", max = 50L, min = 0L), S3 = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
            shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
            type = "structure")), shape = "CodeGenNodeArgs", 
            type = "list", max = 50L, min = 0L), DynamoDB = structure(list(structure(list(Name = structure(logical(0), 
            shape = "CodeGenArgName", type = "string"), Value = structure(logical(0), 
            shape = "CodeGenArgValue", type = "string"), Param = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "CodeGenNodeArg", 
            type = "structure")), shape = "CodeGenNodeArgs", 
            type = "list", max = 50L, min = 0L)), shape = "Location", 
            type = "structure"), Language = structure(logical(0), 
            shape = "Language", type = "string")), shape = "GetPlanRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_plan_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PythonScript = structure(logical(0), 
        shape = "PythonScript", type = "string"), ScalaCode = structure(logical(0), 
        shape = "ScalaCode", type = "string")), shape = "GetPlanResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_security_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetSecurityConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

get_security_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityConfiguration = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreatedTimeStamp = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp"), EncryptionConfiguration = structure(list(S3Encryption = structure(list(structure(list(S3EncryptionMode = structure(logical(0), 
            shape = "S3EncryptionMode", type = "string"), KmsKeyArn = structure(logical(0), 
            shape = "KmsKeyArn", type = "string", pattern = "arn:aws:kms:.*")), 
            shape = "S3Encryption", type = "structure")), shape = "S3EncryptionList", 
            type = "list"), CloudWatchEncryption = structure(list(CloudWatchEncryptionMode = structure(logical(0), 
            shape = "CloudWatchEncryptionMode", type = "string"), 
            KmsKeyArn = structure(logical(0), shape = "KmsKeyArn", 
                type = "string", pattern = "arn:aws:kms:.*")), 
            shape = "CloudWatchEncryption", type = "structure"), 
            JobBookmarksEncryption = structure(list(JobBookmarksEncryptionMode = structure(logical(0), 
                shape = "JobBookmarksEncryptionMode", type = "string"), 
                KmsKeyArn = structure(logical(0), shape = "KmsKeyArn", 
                  type = "string", pattern = "arn:aws:kms:.*")), 
                shape = "JobBookmarksEncryption", type = "structure")), 
            shape = "EncryptionConfiguration", type = "structure")), 
        shape = "SecurityConfiguration", type = "structure")), 
        shape = "GetSecurityConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

get_security_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "PageSize", type = "integer", box = TRUE, max = 1000L, 
        min = 1L), NextToken = structure(logical(0), shape = "GenericString", 
        type = "string")), shape = "GetSecurityConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_security_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityConfigurations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreatedTimeStamp = structure(logical(0), shape = "TimestampValue", 
            type = "timestamp"), EncryptionConfiguration = structure(list(S3Encryption = structure(list(structure(list(S3EncryptionMode = structure(logical(0), 
            shape = "S3EncryptionMode", type = "string"), KmsKeyArn = structure(logical(0), 
            shape = "KmsKeyArn", type = "string", pattern = "arn:aws:kms:.*")), 
            shape = "S3Encryption", type = "structure")), shape = "S3EncryptionList", 
            type = "list"), CloudWatchEncryption = structure(list(CloudWatchEncryptionMode = structure(logical(0), 
            shape = "CloudWatchEncryptionMode", type = "string"), 
            KmsKeyArn = structure(logical(0), shape = "KmsKeyArn", 
                type = "string", pattern = "arn:aws:kms:.*")), 
            shape = "CloudWatchEncryption", type = "structure"), 
            JobBookmarksEncryption = structure(list(JobBookmarksEncryptionMode = structure(logical(0), 
                shape = "JobBookmarksEncryptionMode", type = "string"), 
                KmsKeyArn = structure(logical(0), shape = "KmsKeyArn", 
                  type = "string", pattern = "arn:aws:kms:.*")), 
                shape = "JobBookmarksEncryption", type = "structure")), 
            shape = "EncryptionConfiguration", type = "structure")), 
        shape = "SecurityConfiguration", type = "structure")), 
        shape = "SecurityConfigurationList", type = "list"), 
        NextToken = structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "GetSecurityConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetTableRequest", type = "structure")
    return(populate(args, shape))
}

get_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Table = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Owner = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), UpdateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Retention = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L), 
        StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), PartitionKeys = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), ViewOriginalText = structure(logical(0), 
            shape = "ViewTextString", type = "string", max = 409600L), 
        ViewExpandedText = structure(logical(0), shape = "ViewTextString", 
            type = "string", max = 409600L), TableType = structure(logical(0), 
            shape = "TableTypeString", type = "string", max = 255L), 
        Parameters = structure(list(structure(logical(0), shape = "ParametersMapValue", 
            type = "string", max = 512000L)), shape = "ParametersMap", 
            type = "map"), CreatedBy = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Table", type = "structure")), shape = "GetTableResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_table_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        VersionId = structure(logical(0), shape = "VersionString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetTableVersionRequest", type = "structure")
    return(populate(args, shape))
}

get_table_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TableVersion = structure(list(Table = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Owner = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), UpdateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Retention = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L), 
        StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), PartitionKeys = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), ViewOriginalText = structure(logical(0), 
            shape = "ViewTextString", type = "string", max = 409600L), 
        ViewExpandedText = structure(logical(0), shape = "ViewTextString", 
            type = "string", max = 409600L), TableType = structure(logical(0), 
            shape = "TableTypeString", type = "string", max = 255L), 
        Parameters = structure(list(structure(logical(0), shape = "ParametersMapValue", 
            type = "string", max = 512000L)), shape = "ParametersMap", 
            type = "map"), CreatedBy = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Table", type = "structure"), VersionId = structure(logical(0), 
        shape = "VersionString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "TableVersion", type = "structure")), shape = "GetTableVersionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_table_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        NextToken = structure(logical(0), shape = "Token", type = "string"), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", box = TRUE, max = 1000L, min = 1L)), 
        shape = "GetTableVersionsRequest", type = "structure")
    return(populate(args, shape))
}

get_table_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TableVersions = structure(list(structure(list(Table = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Owner = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), UpdateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Retention = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L), 
        StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), PartitionKeys = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), ViewOriginalText = structure(logical(0), 
            shape = "ViewTextString", type = "string", max = 409600L), 
        ViewExpandedText = structure(logical(0), shape = "ViewTextString", 
            type = "string", max = 409600L), TableType = structure(logical(0), 
            shape = "TableTypeString", type = "string", max = 255L), 
        Parameters = structure(list(structure(logical(0), shape = "ParametersMapValue", 
            type = "string", max = 512000L)), shape = "ParametersMap", 
            type = "map"), CreatedBy = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Table", type = "structure"), VersionId = structure(logical(0), 
        shape = "VersionString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "TableVersion", type = "structure")), shape = "GetTableVersionsList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetTableVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_tables_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Expression = structure(logical(0), shape = "FilterString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        NextToken = structure(logical(0), shape = "Token", type = "string"), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", box = TRUE, max = 1000L, min = 1L)), 
        shape = "GetTablesRequest", type = "structure")
    return(populate(args, shape))
}

get_tables_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TableList = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Owner = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        CreateTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), UpdateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Retention = structure(logical(0), 
            shape = "NonNegativeInteger", type = "integer", min = 0L), 
        StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), PartitionKeys = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), ViewOriginalText = structure(logical(0), 
            shape = "ViewTextString", type = "string", max = 409600L), 
        ViewExpandedText = structure(logical(0), shape = "ViewTextString", 
            type = "string", max = 409600L), TableType = structure(logical(0), 
            shape = "TableTypeString", type = "string", max = 255L), 
        Parameters = structure(list(structure(logical(0), shape = "ParametersMapValue", 
            type = "string", max = 512000L)), shape = "ParametersMap", 
            type = "map"), CreatedBy = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "Table", type = "structure")), shape = "TableList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetTablesResponse", type = "structure")
    return(populate(args, shape))
}

get_trigger_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetTriggerRequest", type = "structure")
    return(populate(args, shape))
}

get_trigger_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Trigger = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Id = structure(logical(0), shape = "IdString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Type = structure(logical(0), shape = "TriggerType", type = "string"), 
        State = structure(logical(0), shape = "TriggerState", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Schedule = structure(logical(0), shape = "GenericString", 
            type = "string"), Actions = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Arguments = structure(list(structure(logical(0), 
                shape = "GenericString", type = "string")), shape = "GenericMap", 
                type = "map"), Timeout = structure(logical(0), 
                shape = "Timeout", type = "integer", box = TRUE, 
                min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
                shape = "NotifyDelayAfter", type = "integer", 
                box = TRUE, min = 1L)), shape = "NotificationProperty", 
                type = "structure"), SecurityConfiguration = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Action", type = "structure")), shape = "ActionList", 
            type = "list"), Predicate = structure(list(Logical = structure(logical(0), 
            shape = "Logical", type = "string"), Conditions = structure(list(structure(list(LogicalOperator = structure(logical(0), 
            shape = "LogicalOperator", type = "string"), JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            State = structure(logical(0), shape = "JobRunState", 
                type = "string")), shape = "Condition", type = "structure")), 
            shape = "ConditionList", type = "list")), shape = "Predicate", 
            type = "structure")), shape = "Trigger", type = "structure")), 
        shape = "GetTriggerResponse", type = "structure")
    return(populate(args, shape))
}

get_triggers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "GenericString", type = "string"), DependentJobName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", box = TRUE, max = 1000L, min = 1L)), 
        shape = "GetTriggersRequest", type = "structure")
    return(populate(args, shape))
}

get_triggers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Triggers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Id = structure(logical(0), shape = "IdString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Type = structure(logical(0), shape = "TriggerType", type = "string"), 
        State = structure(logical(0), shape = "TriggerState", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Schedule = structure(logical(0), shape = "GenericString", 
            type = "string"), Actions = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Arguments = structure(list(structure(logical(0), 
                shape = "GenericString", type = "string")), shape = "GenericMap", 
                type = "map"), Timeout = structure(logical(0), 
                shape = "Timeout", type = "integer", box = TRUE, 
                min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
                shape = "NotifyDelayAfter", type = "integer", 
                box = TRUE, min = 1L)), shape = "NotificationProperty", 
                type = "structure"), SecurityConfiguration = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Action", type = "structure")), shape = "ActionList", 
            type = "list"), Predicate = structure(list(Logical = structure(logical(0), 
            shape = "Logical", type = "string"), Conditions = structure(list(structure(list(LogicalOperator = structure(logical(0), 
            shape = "LogicalOperator", type = "string"), JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            State = structure(logical(0), shape = "JobRunState", 
                type = "string")), shape = "Condition", type = "structure")), 
            shape = "ConditionList", type = "list")), shape = "Predicate", 
            type = "structure")), shape = "Trigger", type = "structure")), 
        shape = "TriggerList", type = "list"), NextToken = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "GetTriggersResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_user_defined_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        FunctionName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "GetUserDefinedFunctionRequest", type = "structure")
    return(populate(args, shape))
}

get_user_defined_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserDefinedFunction = structure(list(FunctionName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ClassName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        OwnerName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        OwnerType = structure(logical(0), shape = "PrincipalType", 
            type = "string"), CreateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ResourceUris = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string"), Uri = structure(logical(0), 
            shape = "URI", type = "string", max = 1024L, min = 1L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ResourceUri", type = "structure")), shape = "ResourceUriList", 
            type = "list", max = 1000L, min = 0L)), shape = "UserDefinedFunction", 
        type = "structure")), shape = "GetUserDefinedFunctionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_user_defined_functions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Pattern = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        NextToken = structure(logical(0), shape = "Token", type = "string"), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", box = TRUE, max = 1000L, min = 1L)), 
        shape = "GetUserDefinedFunctionsRequest", type = "structure")
    return(populate(args, shape))
}

get_user_defined_functions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserDefinedFunctions = structure(list(structure(list(FunctionName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ClassName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        OwnerName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        OwnerType = structure(logical(0), shape = "PrincipalType", 
            type = "string"), CreateTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ResourceUris = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", type = "string"), Uri = structure(logical(0), 
            shape = "URI", type = "string", max = 1024L, min = 1L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
            shape = "ResourceUri", type = "structure")), shape = "ResourceUriList", 
            type = "list", max = 1000L, min = 0L)), shape = "UserDefinedFunction", 
        type = "structure")), shape = "UserDefinedFunctionList", 
        type = "list"), NextToken = structure(logical(0), shape = "Token", 
        type = "string")), shape = "GetUserDefinedFunctionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

import_catalog_to_glue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "ImportCatalogToGlueRequest", type = "structure")
    return(populate(args, shape))
}

import_catalog_to_glue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ImportCatalogToGlueResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_data_catalog_encryption_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DataCatalogEncryptionSettings = structure(list(EncryptionAtRest = structure(list(CatalogEncryptionMode = structure(logical(0), 
            shape = "CatalogEncryptionMode", type = "string"), 
            SseAwsKmsKeyId = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "EncryptionAtRest", type = "structure")), 
            shape = "DataCatalogEncryptionSettings", type = "structure")), 
        shape = "PutDataCatalogEncryptionSettingsRequest", type = "structure")
    return(populate(args, shape))
}

put_data_catalog_encryption_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutDataCatalogEncryptionSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

reset_job_bookmark_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "JobName", 
        type = "string")), shape = "ResetJobBookmarkRequest", 
        type = "structure")
    return(populate(args, shape))
}

reset_job_bookmark_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobBookmarkEntry = structure(list(JobName = structure(logical(0), 
        shape = "JobName", type = "string"), Version = structure(logical(0), 
        shape = "IntegerValue", type = "integer"), Run = structure(logical(0), 
        shape = "IntegerValue", type = "integer"), Attempt = structure(logical(0), 
        shape = "IntegerValue", type = "integer"), JobBookmark = structure(logical(0), 
        shape = "JsonValue", type = "string")), shape = "JobBookmarkEntry", 
        type = "structure")), shape = "ResetJobBookmarkResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_crawler_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StartCrawlerRequest", type = "structure")
    return(populate(args, shape))
}

start_crawler_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartCrawlerResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_crawler_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CrawlerName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StartCrawlerScheduleRequest", type = "structure")
    return(populate(args, shape))
}

start_crawler_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartCrawlerScheduleResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_job_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        JobRunId = structure(logical(0), shape = "IdString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Arguments = structure(list(structure(logical(0), shape = "GenericString", 
            type = "string")), shape = "GenericMap", type = "map"), 
        AllocatedCapacity = structure(logical(0), shape = "IntegerValue", 
            type = "integer"), Timeout = structure(logical(0), 
            shape = "Timeout", type = "integer", box = TRUE, 
            min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
            shape = "NotifyDelayAfter", type = "integer", box = TRUE, 
            min = 1L)), shape = "NotificationProperty", type = "structure"), 
        SecurityConfiguration = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StartJobRunRequest", type = "structure")
    return(populate(args, shape))
}

start_job_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobRunId = structure(logical(0), 
        shape = "IdString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StartJobRunResponse", type = "structure")
    return(populate(args, shape))
}

start_trigger_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StartTriggerRequest", type = "structure")
    return(populate(args, shape))
}

start_trigger_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StartTriggerResponse", type = "structure")
    return(populate(args, shape))
}

stop_crawler_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StopCrawlerRequest", type = "structure")
    return(populate(args, shape))
}

stop_crawler_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopCrawlerResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_crawler_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CrawlerName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StopCrawlerScheduleRequest", type = "structure")
    return(populate(args, shape))
}

stop_crawler_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopCrawlerScheduleResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_trigger_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StopTriggerRequest", type = "structure")
    return(populate(args, shape))
}

stop_trigger_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "StopTriggerResponse", type = "structure")
    return(populate(args, shape))
}

update_classifier_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GrokClassifier = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Classification = structure(logical(0), shape = "Classification", 
            type = "string"), GrokPattern = structure(logical(0), 
            shape = "GrokPattern", type = "string", max = 2048L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\t]*"), 
        CustomPatterns = structure(logical(0), shape = "CustomPatterns", 
            type = "string", max = 16000L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
        shape = "UpdateGrokClassifierRequest", type = "structure"), 
        XMLClassifier = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Classification = structure(logical(0), shape = "Classification", 
                type = "string"), RowTag = structure(logical(0), 
                shape = "RowTag", type = "string")), shape = "UpdateXMLClassifierRequest", 
            type = "structure"), JsonClassifier = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            JsonPath = structure(logical(0), shape = "JsonPath", 
                type = "string")), shape = "UpdateJsonClassifierRequest", 
            type = "structure")), shape = "UpdateClassifierRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_classifier_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateClassifierResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        ConnectionInput = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            ConnectionType = structure(logical(0), shape = "ConnectionType", 
                type = "string"), MatchCriteria = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "MatchCriteria", type = "list", max = 10L, 
                min = 0L), ConnectionProperties = structure(list(structure(logical(0), 
                shape = "ValueString", type = "string", max = 1024L)), 
                shape = "ConnectionProperties", type = "map", 
                max = 100L, min = 0L), PhysicalConnectionRequirements = structure(list(SubnetId = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SecurityGroupIdList = structure(list(structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                  shape = "SecurityGroupIdList", type = "list", 
                  max = 50L, min = 0L), AvailabilityZone = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "PhysicalConnectionRequirements", type = "structure")), 
            shape = "ConnectionInput", type = "structure")), 
        shape = "UpdateConnectionRequest", type = "structure")
    return(populate(args, shape))
}

update_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateConnectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_crawler_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Role = structure(logical(0), shape = "Role", type = "string"), 
        DatabaseName = structure(logical(0), shape = "DatabaseName", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionStringRemovable", type = "string", 
            max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Targets = structure(list(S3Targets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "S3Target", type = "structure")), 
            shape = "S3TargetList", type = "list"), JdbcTargets = structure(list(structure(list(ConnectionName = structure(logical(0), 
            shape = "ConnectionName", type = "string"), Path = structure(logical(0), 
            shape = "Path", type = "string"), Exclusions = structure(list(structure(logical(0), 
            shape = "Path", type = "string")), shape = "PathList", 
            type = "list")), shape = "JdbcTarget", type = "structure")), 
            shape = "JdbcTargetList", type = "list"), DynamoDBTargets = structure(list(structure(list(Path = structure(logical(0), 
            shape = "Path", type = "string")), shape = "DynamoDBTarget", 
            type = "structure")), shape = "DynamoDBTargetList", 
            type = "list")), shape = "CrawlerTargets", type = "structure"), 
        Schedule = structure(logical(0), shape = "CronExpression", 
            type = "string"), Classifiers = structure(list(structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "ClassifierNameList", type = "list"), TablePrefix = structure(logical(0), 
            shape = "TablePrefix", type = "string", max = 128L, 
            min = 0L), SchemaChangePolicy = structure(list(UpdateBehavior = structure(logical(0), 
            shape = "UpdateBehavior", type = "string"), DeleteBehavior = structure(logical(0), 
            shape = "DeleteBehavior", type = "string")), shape = "SchemaChangePolicy", 
            type = "structure"), Configuration = structure(logical(0), 
            shape = "CrawlerConfiguration", type = "string"), 
        CrawlerSecurityConfiguration = structure(logical(0), 
            shape = "CrawlerSecurityConfiguration", type = "string", 
            max = 128L, min = 0L)), shape = "UpdateCrawlerRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_crawler_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateCrawlerResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_crawler_schedule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CrawlerName = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Schedule = structure(logical(0), shape = "CronExpression", 
            type = "string")), shape = "UpdateCrawlerScheduleRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_crawler_schedule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateCrawlerScheduleResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_database_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Name = structure(logical(0), shape = "NameString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseInput = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LocationUri = structure(logical(0), shape = "URI", 
                type = "string", max = 1024L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map")), 
            shape = "DatabaseInput", type = "structure")), shape = "UpdateDatabaseRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_database_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDatabaseResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_dev_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "GenericString", type = "string"), PublicKey = structure(logical(0), 
        shape = "GenericString", type = "string"), AddPublicKeys = structure(list(structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "PublicKeysList", 
        type = "list", max = 5L), DeletePublicKeys = structure(list(structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "PublicKeysList", 
        type = "list", max = 5L), CustomLibraries = structure(list(ExtraPythonLibsS3Path = structure(logical(0), 
        shape = "GenericString", type = "string"), ExtraJarsS3Path = structure(logical(0), 
        shape = "GenericString", type = "string")), shape = "DevEndpointCustomLibraries", 
        type = "structure"), UpdateEtlLibraries = structure(logical(0), 
        shape = "BooleanValue", type = "boolean")), shape = "UpdateDevEndpointRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_dev_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateDevEndpointResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        JobUpdate = structure(list(Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            LogUri = structure(logical(0), shape = "UriString", 
                type = "string"), Role = structure(logical(0), 
                shape = "RoleString", type = "string"), ExecutionProperty = structure(list(MaxConcurrentRuns = structure(logical(0), 
                shape = "MaxConcurrentRuns", type = "integer")), 
                shape = "ExecutionProperty", type = "structure"), 
            Command = structure(list(Name = structure(logical(0), 
                shape = "GenericString", type = "string"), ScriptLocation = structure(logical(0), 
                shape = "ScriptLocationString", type = "string")), 
                shape = "JobCommand", type = "structure"), DefaultArguments = structure(list(structure(logical(0), 
                shape = "GenericString", type = "string")), shape = "GenericMap", 
                type = "map"), Connections = structure(list(Connections = structure(list(structure(logical(0), 
                shape = "GenericString", type = "string")), shape = "StringList", 
                type = "list")), shape = "ConnectionsList", type = "structure"), 
            MaxRetries = structure(logical(0), shape = "MaxRetries", 
                type = "integer"), AllocatedCapacity = structure(logical(0), 
                shape = "IntegerValue", type = "integer"), Timeout = structure(logical(0), 
                shape = "Timeout", type = "integer", box = TRUE, 
                min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
                shape = "NotifyDelayAfter", type = "integer", 
                box = TRUE, min = 1L)), shape = "NotificationProperty", 
                type = "structure"), SecurityConfiguration = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "JobUpdate", type = "structure")), shape = "UpdateJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobName = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
        shape = "UpdateJobResponse", type = "structure")
    return(populate(args, shape))
}

update_partition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        PartitionValueList = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "BoundedPartitionValueList", type = "list", 
            max = 100L, min = 0L), PartitionInput = structure(list(Values = structure(list(structure(logical(0), 
            shape = "ValueString", type = "string", max = 1024L)), 
            shape = "ValueStringList", type = "list"), LastAccessTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Type = structure(logical(0), shape = "ColumnTypeString", 
                type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Comment = structure(logical(0), shape = "CommentString", 
                type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Column", type = "structure")), shape = "ColumnList", 
            type = "list"), Location = structure(logical(0), 
            shape = "LocationString", type = "string", max = 2056L, 
            pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            InputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OutputFormat = structure(logical(0), shape = "FormatString", 
                type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Compressed = structure(logical(0), shape = "Boolean", 
                type = "boolean"), NumberOfBuckets = structure(logical(0), 
                shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SerializationLibrary = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map")), 
                shape = "SerDeInfo", type = "structure"), BucketColumns = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                SortOrder = structure(logical(0), shape = "IntegerFlag", 
                  type = "integer", max = 1L, min = 0L)), shape = "Order", 
                type = "structure")), shape = "OrderList", type = "list"), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map"), 
            SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                shape = "ColumnValuesString", type = "string")), 
                shape = "ColumnValueStringList", type = "list"), 
                SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
            type = "structure"), Parameters = structure(list(structure(logical(0), 
            shape = "ParametersMapValue", type = "string", max = 512000L)), 
            shape = "ParametersMap", type = "map"), LastAnalyzedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "PartitionInput", 
            type = "structure")), shape = "UpdatePartitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_partition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdatePartitionResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TableInput = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Owner = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            LastAccessTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp"), LastAnalyzedTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), Retention = structure(logical(0), 
                shape = "NonNegativeInteger", type = "integer", 
                min = 0L), StorageDescriptor = structure(list(Columns = structure(list(structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Type = structure(logical(0), shape = "ColumnTypeString", 
                  type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Comment = structure(logical(0), shape = "CommentString", 
                  type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "Column", type = "structure")), shape = "ColumnList", 
                type = "list"), Location = structure(logical(0), 
                shape = "LocationString", type = "string", max = 2056L, 
                pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
                InputFormat = structure(logical(0), shape = "FormatString", 
                  type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                OutputFormat = structure(logical(0), shape = "FormatString", 
                  type = "string", max = 128L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Compressed = structure(logical(0), shape = "Boolean", 
                  type = "boolean"), NumberOfBuckets = structure(logical(0), 
                  shape = "Integer", type = "integer"), SerdeInfo = structure(list(Name = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                  SerializationLibrary = structure(logical(0), 
                    shape = "NameString", type = "string", max = 255L, 
                    min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                  Parameters = structure(list(structure(logical(0), 
                    shape = "ParametersMapValue", type = "string", 
                    max = 512000L)), shape = "ParametersMap", 
                    type = "map")), shape = "SerDeInfo", type = "structure"), 
                BucketColumns = structure(list(structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                  shape = "NameStringList", type = "list"), SortColumns = structure(list(structure(list(Column = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                  SortOrder = structure(logical(0), shape = "IntegerFlag", 
                    type = "integer", max = 1L, min = 0L)), shape = "Order", 
                  type = "structure")), shape = "OrderList", 
                  type = "list"), Parameters = structure(list(structure(logical(0), 
                  shape = "ParametersMapValue", type = "string", 
                  max = 512000L)), shape = "ParametersMap", type = "map"), 
                SkewedInfo = structure(list(SkewedColumnNames = structure(list(structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                  shape = "NameStringList", type = "list"), SkewedColumnValues = structure(list(structure(logical(0), 
                  shape = "ColumnValuesString", type = "string")), 
                  shape = "ColumnValueStringList", type = "list"), 
                  SkewedColumnValueLocationMaps = structure(list(structure(logical(0), 
                    shape = "ColumnValuesString", type = "string")), 
                    shape = "LocationMap", type = "map")), shape = "SkewedInfo", 
                  type = "structure"), StoredAsSubDirectories = structure(logical(0), 
                  shape = "Boolean", type = "boolean")), shape = "StorageDescriptor", 
                type = "structure"), PartitionKeys = structure(list(structure(list(Name = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Type = structure(logical(0), shape = "ColumnTypeString", 
                  type = "string", max = 131072L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Comment = structure(logical(0), shape = "CommentString", 
                  type = "string", max = 255L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "Column", type = "structure")), shape = "ColumnList", 
                type = "list"), ViewOriginalText = structure(logical(0), 
                shape = "ViewTextString", type = "string", max = 409600L), 
            ViewExpandedText = structure(logical(0), shape = "ViewTextString", 
                type = "string", max = 409600L), TableType = structure(logical(0), 
                shape = "TableTypeString", type = "string", max = 255L), 
            Parameters = structure(list(structure(logical(0), 
                shape = "ParametersMapValue", type = "string", 
                max = 512000L)), shape = "ParametersMap", type = "map")), 
            shape = "TableInput", type = "structure"), SkipArchive = structure(logical(0), 
            shape = "BooleanNullable", type = "boolean")), shape = "UpdateTableRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateTableResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_trigger_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        TriggerUpdate = structure(list(Name = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Description = structure(logical(0), shape = "DescriptionString", 
                type = "string", max = 2048L, min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
            Schedule = structure(logical(0), shape = "GenericString", 
                type = "string"), Actions = structure(list(structure(list(JobName = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                Arguments = structure(list(structure(logical(0), 
                  shape = "GenericString", type = "string")), 
                  shape = "GenericMap", type = "map"), Timeout = structure(logical(0), 
                  shape = "Timeout", type = "integer", box = TRUE, 
                  min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
                  shape = "NotifyDelayAfter", type = "integer", 
                  box = TRUE, min = 1L)), shape = "NotificationProperty", 
                  type = "structure"), SecurityConfiguration = structure(logical(0), 
                  shape = "NameString", type = "string", max = 255L, 
                  min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
                shape = "Action", type = "structure")), shape = "ActionList", 
                type = "list"), Predicate = structure(list(Logical = structure(logical(0), 
                shape = "Logical", type = "string"), Conditions = structure(list(structure(list(LogicalOperator = structure(logical(0), 
                shape = "LogicalOperator", type = "string"), 
                JobName = structure(logical(0), shape = "NameString", 
                  type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
                State = structure(logical(0), shape = "JobRunState", 
                  type = "string")), shape = "Condition", type = "structure")), 
                shape = "ConditionList", type = "list")), shape = "Predicate", 
                type = "structure")), shape = "TriggerUpdate", 
            type = "structure")), shape = "UpdateTriggerRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_trigger_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Trigger = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 255L, min = 1L, 
        pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Id = structure(logical(0), shape = "IdString", type = "string", 
            max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        Type = structure(logical(0), shape = "TriggerType", type = "string"), 
        State = structure(logical(0), shape = "TriggerState", 
            type = "string"), Description = structure(logical(0), 
            shape = "DescriptionString", type = "string", max = 2048L, 
            min = 0L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"), 
        Schedule = structure(logical(0), shape = "GenericString", 
            type = "string"), Actions = structure(list(structure(list(JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            Arguments = structure(list(structure(logical(0), 
                shape = "GenericString", type = "string")), shape = "GenericMap", 
                type = "map"), Timeout = structure(logical(0), 
                shape = "Timeout", type = "integer", box = TRUE, 
                min = 1L), NotificationProperty = structure(list(NotifyDelayAfter = structure(logical(0), 
                shape = "NotifyDelayAfter", type = "integer", 
                box = TRUE, min = 1L)), shape = "NotificationProperty", 
                type = "structure"), SecurityConfiguration = structure(logical(0), 
                shape = "NameString", type = "string", max = 255L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*")), 
            shape = "Action", type = "structure")), shape = "ActionList", 
            type = "list"), Predicate = structure(list(Logical = structure(logical(0), 
            shape = "Logical", type = "string"), Conditions = structure(list(structure(list(LogicalOperator = structure(logical(0), 
            shape = "LogicalOperator", type = "string"), JobName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            State = structure(logical(0), shape = "JobRunState", 
                type = "string")), shape = "Condition", type = "structure")), 
            shape = "ConditionList", type = "list")), shape = "Predicate", 
            type = "structure")), shape = "Trigger", type = "structure")), 
        shape = "UpdateTriggerResponse", type = "structure")
    return(populate(args, shape))
}

update_user_defined_function_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CatalogId = structure(logical(0), 
        shape = "CatalogIdString", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        DatabaseName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        FunctionName = structure(logical(0), shape = "NameString", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
        FunctionInput = structure(list(FunctionName = structure(logical(0), 
            shape = "NameString", type = "string", max = 255L, 
            min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            ClassName = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OwnerName = structure(logical(0), shape = "NameString", 
                type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"), 
            OwnerType = structure(logical(0), shape = "PrincipalType", 
                type = "string"), ResourceUris = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", type = "string"), Uri = structure(logical(0), 
                shape = "URI", type = "string", max = 1024L, 
                min = 1L, pattern = "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")), 
                shape = "ResourceUri", type = "structure")), 
                shape = "ResourceUriList", type = "list", max = 1000L, 
                min = 0L)), shape = "UserDefinedFunctionInput", 
            type = "structure")), shape = "UpdateUserDefinedFunctionRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_defined_function_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateUserDefinedFunctionResponse", 
        type = "structure")
    return(populate(args, shape))
}
