batch_get_named_query_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQueryIds = structure(list(structure(logical(0), 
        shape = "NamedQueryId", type = "string")), shape = "NamedQueryIdList", 
        type = "list", max = 50L, min = 1L)), shape = "BatchGetNamedQueryInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_named_query_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQueries = structure(list(structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 128L, min = 1L), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 1024L, min = 1L), Database = structure(logical(0), 
            shape = "DatabaseString", type = "string", max = 32L, 
            min = 1L), QueryString = structure(logical(0), shape = "QueryString", 
            type = "string", max = 262144L, min = 1L), NamedQueryId = structure(logical(0), 
            shape = "NamedQueryId", type = "string")), shape = "NamedQuery", 
        type = "structure")), shape = "NamedQueryList", type = "list"), 
        UnprocessedNamedQueryIds = structure(list(structure(list(NamedQueryId = structure(logical(0), 
            shape = "NamedQueryId", type = "string"), ErrorCode = structure(logical(0), 
            shape = "ErrorCode", type = "string", max = 256L, 
            min = 1L), ErrorMessage = structure(logical(0), shape = "ErrorMessage", 
            type = "string")), shape = "UnprocessedNamedQueryId", 
            type = "structure")), shape = "UnprocessedNamedQueryIdList", 
            type = "list")), shape = "BatchGetNamedQueryOutput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_query_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutionIds = structure(list(structure(logical(0), 
        shape = "QueryExecutionId", type = "string")), shape = "QueryExecutionIdList", 
        type = "list", max = 50L, min = 1L)), shape = "BatchGetQueryExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_query_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutions = structure(list(structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", type = "string"), Query = structure(logical(0), 
        shape = "QueryString", type = "string", max = 262144L, 
        min = 1L), StatementType = structure(logical(0), shape = "StatementType", 
        type = "string"), ResultConfiguration = structure(list(OutputLocation = structure(logical(0), 
        shape = "String", type = "string"), EncryptionConfiguration = structure(list(EncryptionOption = structure(logical(0), 
        shape = "EncryptionOption", type = "string"), KmsKey = structure(logical(0), 
        shape = "String", type = "string")), shape = "EncryptionConfiguration", 
        type = "structure")), shape = "ResultConfiguration", 
        type = "structure"), QueryExecutionContext = structure(list(Database = structure(logical(0), 
        shape = "DatabaseString", type = "string", max = 32L, 
        min = 1L)), shape = "QueryExecutionContext", type = "structure"), 
        Status = structure(list(State = structure(logical(0), 
            shape = "QueryExecutionState", type = "string"), 
            StateChangeReason = structure(logical(0), shape = "String", 
                type = "string"), SubmissionDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp"), CompletionDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp")), shape = "QueryExecutionStatus", 
            type = "structure"), Statistics = structure(list(EngineExecutionTimeInMillis = structure(logical(0), 
            shape = "Long", type = "long"), DataScannedInBytes = structure(logical(0), 
            shape = "Long", type = "long")), shape = "QueryExecutionStatistics", 
            type = "structure")), shape = "QueryExecution", type = "structure")), 
        shape = "QueryExecutionList", type = "list"), UnprocessedQueryExecutionIds = structure(list(structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", type = "string"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string", max = 256L, min = 1L), 
        ErrorMessage = structure(logical(0), shape = "ErrorMessage", 
            type = "string")), shape = "UnprocessedQueryExecutionId", 
        type = "structure")), shape = "UnprocessedQueryExecutionIdList", 
        type = "list")), shape = "BatchGetQueryExecutionOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_named_query_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "NameString", 
        type = "string", max = 128L, min = 1L), Description = structure(logical(0), 
        shape = "DescriptionString", type = "string", max = 1024L, 
        min = 1L), Database = structure(logical(0), shape = "DatabaseString", 
        type = "string", max = 32L, min = 1L), QueryString = structure(logical(0), 
        shape = "QueryString", type = "string", max = 262144L, 
        min = 1L), ClientRequestToken = structure(logical(0), 
        shape = "IdempotencyToken", idempotencyToken = TRUE, 
        type = "string", max = 128L, min = 32L)), shape = "CreateNamedQueryInput", 
        type = "structure")
    return(populate(args, shape))
}

create_named_query_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQueryId = structure(logical(0), 
        shape = "NamedQueryId", type = "string")), shape = "CreateNamedQueryOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_named_query_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQueryId = structure(logical(0), 
        shape = "NamedQueryId", idempotencyToken = TRUE, type = "string")), 
        shape = "DeleteNamedQueryInput", type = "structure")
    return(populate(args, shape))
}

delete_named_query_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteNamedQueryOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_named_query_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQueryId = structure(logical(0), 
        shape = "NamedQueryId", type = "string")), shape = "GetNamedQueryInput", 
        type = "structure")
    return(populate(args, shape))
}

get_named_query_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQuery = structure(list(Name = structure(logical(0), 
        shape = "NameString", type = "string", max = 128L, min = 1L), 
        Description = structure(logical(0), shape = "DescriptionString", 
            type = "string", max = 1024L, min = 1L), Database = structure(logical(0), 
            shape = "DatabaseString", type = "string", max = 32L, 
            min = 1L), QueryString = structure(logical(0), shape = "QueryString", 
            type = "string", max = 262144L, min = 1L), NamedQueryId = structure(logical(0), 
            shape = "NamedQueryId", type = "string")), shape = "NamedQuery", 
        type = "structure")), shape = "GetNamedQueryOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_query_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", type = "string")), shape = "GetQueryExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

get_query_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecution = structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", type = "string"), Query = structure(logical(0), 
        shape = "QueryString", type = "string", max = 262144L, 
        min = 1L), StatementType = structure(logical(0), shape = "StatementType", 
        type = "string"), ResultConfiguration = structure(list(OutputLocation = structure(logical(0), 
        shape = "String", type = "string"), EncryptionConfiguration = structure(list(EncryptionOption = structure(logical(0), 
        shape = "EncryptionOption", type = "string"), KmsKey = structure(logical(0), 
        shape = "String", type = "string")), shape = "EncryptionConfiguration", 
        type = "structure")), shape = "ResultConfiguration", 
        type = "structure"), QueryExecutionContext = structure(list(Database = structure(logical(0), 
        shape = "DatabaseString", type = "string", max = 32L, 
        min = 1L)), shape = "QueryExecutionContext", type = "structure"), 
        Status = structure(list(State = structure(logical(0), 
            shape = "QueryExecutionState", type = "string"), 
            StateChangeReason = structure(logical(0), shape = "String", 
                type = "string"), SubmissionDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp"), CompletionDateTime = structure(logical(0), 
                shape = "Date", type = "timestamp")), shape = "QueryExecutionStatus", 
            type = "structure"), Statistics = structure(list(EngineExecutionTimeInMillis = structure(logical(0), 
            shape = "Long", type = "long"), DataScannedInBytes = structure(logical(0), 
            shape = "Long", type = "long")), shape = "QueryExecutionStatistics", 
            type = "structure")), shape = "QueryExecution", type = "structure")), 
        shape = "GetQueryExecutionOutput", type = "structure")
    return(populate(args, shape))
}

get_query_results_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", type = "string"), NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxQueryResults", type = "integer", box = TRUE, 
        max = 1000L, min = 0L)), shape = "GetQueryResultsInput", 
        type = "structure")
    return(populate(args, shape))
}

get_query_results_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UpdateCount = structure(logical(0), 
        shape = "Long", type = "long"), ResultSet = structure(list(Rows = structure(list(structure(list(Data = structure(list(structure(list(VarCharValue = structure(logical(0), 
        shape = "datumString", type = "string")), shape = "Datum", 
        type = "structure")), shape = "datumList", type = "list")), 
        shape = "Row", type = "structure")), shape = "RowList", 
        type = "list"), ResultSetMetadata = structure(list(ColumnInfo = structure(list(structure(list(CatalogName = structure(logical(0), 
        shape = "String", type = "string"), SchemaName = structure(logical(0), 
        shape = "String", type = "string"), TableName = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), Label = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string"), Precision = structure(logical(0), 
        shape = "Integer", type = "integer"), Scale = structure(logical(0), 
        shape = "Integer", type = "integer"), Nullable = structure(logical(0), 
        shape = "ColumnNullable", type = "string"), CaseSensitive = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ColumnInfo", 
        type = "structure")), shape = "ColumnInfoList", type = "list")), 
        shape = "ResultSetMetadata", type = "structure")), shape = "ResultSet", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "GetQueryResultsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_named_queries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxNamedQueriesCount", type = "integer", box = TRUE, 
        max = 50L, min = 0L)), shape = "ListNamedQueriesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_named_queries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NamedQueryIds = structure(list(structure(logical(0), 
        shape = "NamedQueryId", type = "string")), shape = "NamedQueryIdList", 
        type = "list", max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "ListNamedQueriesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_query_executions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "Token", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxQueryExecutionsCount", type = "integer", 
        box = TRUE, max = 50L, min = 0L)), shape = "ListQueryExecutionsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_query_executions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutionIds = structure(list(structure(logical(0), 
        shape = "QueryExecutionId", type = "string")), shape = "QueryExecutionIdList", 
        type = "list", max = 50L, min = 1L), NextToken = structure(logical(0), 
        shape = "Token", type = "string")), shape = "ListQueryExecutionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

start_query_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryString = structure(logical(0), 
        shape = "QueryString", type = "string", max = 262144L, 
        min = 1L), ClientRequestToken = structure(logical(0), 
        shape = "IdempotencyToken", idempotencyToken = TRUE, 
        type = "string", max = 128L, min = 32L), QueryExecutionContext = structure(list(Database = structure(logical(0), 
        shape = "DatabaseString", type = "string", max = 32L, 
        min = 1L)), shape = "QueryExecutionContext", type = "structure"), 
        ResultConfiguration = structure(list(OutputLocation = structure(logical(0), 
            shape = "String", type = "string"), EncryptionConfiguration = structure(list(EncryptionOption = structure(logical(0), 
            shape = "EncryptionOption", type = "string"), KmsKey = structure(logical(0), 
            shape = "String", type = "string")), shape = "EncryptionConfiguration", 
            type = "structure")), shape = "ResultConfiguration", 
            type = "structure")), shape = "StartQueryExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

start_query_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", type = "string")), shape = "StartQueryExecutionOutput", 
        type = "structure")
    return(populate(args, shape))
}

stop_query_execution_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueryExecutionId = structure(logical(0), 
        shape = "QueryExecutionId", idempotencyToken = TRUE, 
        type = "string")), shape = "StopQueryExecutionInput", 
        type = "structure")
    return(populate(args, shape))
}

stop_query_execution_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopQueryExecutionOutput", 
        type = "structure")
    return(populate(args, shape))
}
