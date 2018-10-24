#' Delete a specified report definition
#'
#' Delete a specified report definition
#'
#' @param ReportName 
#'
#' @examples
#'
#' @export
delete_report_definition <- function (ReportName = NULL) 
{
    op <- Operation(name = "DeleteReportDefinition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_report_definition_input(ReportName = ReportName)
    output <- delete_report_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describe a list of report definitions owned by the account
#'
#' Describe a list of report definitions owned by the account
#'
#' @param MaxResults 
#' @param NextToken 
#'
#' @examples
#'
#' @export
describe_report_definitions <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeReportDefinitions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_report_definitions_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_report_definitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a new report definition
#'
#' Create a new report definition
#'
#' @param ReportDefinition 
#'
#' @examples
#'
#' @export
put_report_definition <- function (ReportDefinition) 
{
    op <- Operation(name = "PutReportDefinition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_report_definition_input(ReportDefinition = ReportDefinition)
    output <- put_report_definition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
