#' Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings
#'
#' Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Use ListNamedQueries to get the list of named query IDs. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under UnprocessedNamedQueryId. Named queries are different from executed queries. Use BatchGetQueryExecution to get details about each unique query execution, and ListQueryExecutions to get a list of query execution IDs.
#'
#' @param NamedQueryIds An array of query IDs.
#'
#' @examples
#'
#' @export
batch_get_named_query <- function (NamedQueryIds) 
{
    op <- Operation(name = "BatchGetNamedQuery", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_named_query_input(NamedQueryIds = NamedQueryIds)
    output <- batch_get_named_query_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings
#'
#' Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. To get a list of query execution IDs, use ListQueryExecutions. Query executions are different from named (saved) queries. Use BatchGetNamedQuery to get details about named queries.
#'
#' @param QueryExecutionIds An array of query execution IDs.
#'
#' @examples
#'
#' @export
batch_get_query_execution <- function (QueryExecutionIds) 
{
    op <- Operation(name = "BatchGetQueryExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_query_execution_input(QueryExecutionIds = QueryExecutionIds)
    output <- batch_get_query_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a named query
#'
#' Creates a named query.
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.
#'
#' @param Name The plain language name for the query.
#' @param Database The database to which the query belongs.
#' @param QueryString The text of the query itself. In other words, all query statements.
#' @param Description A brief explanation of the query.
#' @param ClientRequestToken A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another `CreateNamedQuery` request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the `QueryString`, an error is returned.
#' 
#' This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.
#'
#' @examples
#'
#' @export
create_named_query <- function (Name, Database, QueryString, 
    Description = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "CreateNamedQuery", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_named_query_input(Name = Name, Database = Database, 
        QueryString = QueryString, Description = Description, 
        ClientRequestToken = ClientRequestToken)
    output <- create_named_query_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a named query
#'
#' Deletes a named query.
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.
#'
#' @param NamedQueryId The unique ID of the query to delete.
#'
#' @examples
#'
#' @export
delete_named_query <- function (NamedQueryId) 
{
    op <- Operation(name = "DeleteNamedQuery", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_named_query_input(NamedQueryId = NamedQueryId)
    output <- delete_named_query_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a single query
#'
#' Returns information about a single query.
#'
#' @param NamedQueryId The unique ID of the query. Use ListNamedQueries to get query IDs.
#'
#' @examples
#'
#' @export
get_named_query <- function (NamedQueryId) 
{
    op <- Operation(name = "GetNamedQuery", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_named_query_input(NamedQueryId = NamedQueryId)
    output <- get_named_query_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a single execution of a query
#'
#' Returns information about a single execution of a query. Each time a query executes, information about the query execution is saved with a unique ID.
#'
#' @param QueryExecutionId The unique ID of the query execution.
#'
#' @examples
#'
#' @export
get_query_execution <- function (QueryExecutionId) 
{
    op <- Operation(name = "GetQueryExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_query_execution_input(QueryExecutionId = QueryExecutionId)
    output <- get_query_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the results of a single query execution specified by `QueryExecutionId`
#'
#' Returns the results of a single query execution specified by `QueryExecutionId`. This request does not execute the query but returns results. Use StartQueryExecution to run a query.
#'
#' @param QueryExecutionId The unique ID of the query execution.
#' @param NextToken The token that specifies where to start pagination if a previous request was truncated.
#' @param MaxResults The maximum number of results (rows) to return in this request.
#'
#' @examples
#'
#' @export
get_query_results <- function (QueryExecutionId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "GetQueryResults", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_query_results_input(QueryExecutionId = QueryExecutionId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- get_query_results_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides a list of all available query IDs
#'
#' Provides a list of all available query IDs.
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.
#'
#' @param NextToken The token that specifies where to start pagination if a previous request was truncated.
#' @param MaxResults The maximum number of queries to return in this request.
#'
#' @examples
#'
#' @export
list_named_queries <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListNamedQueries", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_named_queries_input(NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_named_queries_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides a list of all available query execution IDs
#'
#' Provides a list of all available query execution IDs.
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.
#'
#' @param NextToken The token that specifies where to start pagination if a previous request was truncated.
#' @param MaxResults The maximum number of query executions to return in this request.
#'
#' @examples
#'
#' @export
list_query_executions <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListQueryExecutions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_query_executions_input(NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_query_executions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Runs (executes) the SQL query statements contained in the `Query` string
#'
#' Runs (executes) the SQL query statements contained in the `Query` string.
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.
#'
#' @param QueryString The SQL query statements to be executed.
#' @param ResultConfiguration Specifies information about where and how to save the results of the query execution.
#' @param ClientRequestToken A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another `StartQueryExecution` request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the `QueryString`, an error is returned.
#' 
#' This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.
#' @param QueryExecutionContext The database within which the query executes.
#'
#' @examples
#'
#' @export
start_query_execution <- function (QueryString, ResultConfiguration, 
    ClientRequestToken = NULL, QueryExecutionContext = NULL) 
{
    op <- Operation(name = "StartQueryExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_query_execution_input(QueryString = QueryString, 
        ResultConfiguration = ResultConfiguration, ClientRequestToken = ClientRequestToken, 
        QueryExecutionContext = QueryExecutionContext)
    output <- start_query_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a query execution
#'
#' Stops a query execution.
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the *Amazon Athena User Guide*.
#'
#' @param QueryExecutionId The unique ID of the query execution to stop.
#'
#' @examples
#'
#' @export
stop_query_execution <- function (QueryExecutionId) 
{
    op <- Operation(name = "StopQueryExecution", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_query_execution_input(QueryExecutionId = QueryExecutionId)
    output <- stop_query_execution_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
