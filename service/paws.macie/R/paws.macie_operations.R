#' Associates a specified AWS account with Amazon Macie as a member account
#'
#' Associates a specified AWS account with Amazon Macie as a member account.
#'
#' @param memberAccountId The ID of the AWS account that you want to associate with Amazon Macie as a member account.
#'
#' @examples
#'
#' @export
associate_member_account <- function (memberAccountId) 
{
    op <- Operation(name = "AssociateMemberAccount", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_member_account_input(memberAccountId = memberAccountId)
    output <- associate_member_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates specified S3 resources with Amazon Macie for monitoring and data classification
#'
#' Associates specified S3 resources with Amazon Macie for monitoring and data classification. If memberAccountId isn\'t specified, the action associates specified S3 resources with Macie for the current master account. If memberAccountId is specified, the action associates specified S3 resources with Macie for the specified member account.
#'
#' @param s3Resources The S3 resources that you want to associate with Amazon Macie for monitoring and data classification.
#' @param memberAccountId The ID of the Amazon Macie member account whose resources you want to associate with Macie.
#'
#' @examples
#'
#' @export
associate_s3_resources <- function (s3Resources, memberAccountId = NULL) 
{
    op <- Operation(name = "AssociateS3Resources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_s3_resources_input(s3Resources = s3Resources, 
        memberAccountId = memberAccountId)
    output <- associate_s3_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the specified member account from Amazon Macie
#'
#' Removes the specified member account from Amazon Macie.
#'
#' @param memberAccountId The ID of the member account that you want to remove from Amazon Macie.
#'
#' @examples
#'
#' @export
disassociate_member_account <- function (memberAccountId) 
{
    op <- Operation(name = "DisassociateMemberAccount", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_member_account_input(memberAccountId = memberAccountId)
    output <- disassociate_member_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes specified S3 resources from being monitored by Amazon Macie
#'
#' Removes specified S3 resources from being monitored by Amazon Macie. If memberAccountId isn\'t specified, the action removes specified S3 resources from Macie for the current master account. If memberAccountId is specified, the action removes specified S3 resources from Macie for the specified member account.
#'
#' @param associatedS3Resources The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie.
#' @param memberAccountId The ID of the Amazon Macie member account whose resources you want to remove from being monitored by Amazon Macie.
#'
#' @examples
#'
#' @export
disassociate_s3_resources <- function (associatedS3Resources, 
    memberAccountId = NULL) 
{
    op <- Operation(name = "DisassociateS3Resources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_s3_resources_input(associatedS3Resources = associatedS3Resources, 
        memberAccountId = memberAccountId)
    output <- disassociate_s3_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all Amazon Macie member accounts for the current Amazon Macie master account
#'
#' Lists all Amazon Macie member accounts for the current Amazon Macie master account.
#'
#' @param nextToken Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
#' @param maxResults Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250.
#'
#' @examples
#'
#' @export
list_member_accounts <- function (nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListMemberAccounts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_member_accounts_input(nextToken = nextToken, 
        maxResults = maxResults)
    output <- list_member_accounts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all the S3 resources associated with Amazon Macie
#'
#' Lists all the S3 resources associated with Amazon Macie. If memberAccountId isn\'t specified, the action lists the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie for the specified member account.
#'
#' @param memberAccountId The Amazon Macie member account ID whose associated S3 resources you want to list.
#' @param nextToken Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
#' @param maxResults Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250.
#'
#' @examples
#'
#' @export
list_s3_resources <- function (memberAccountId = NULL, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "ListS3Resources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_s3_resources_input(memberAccountId = memberAccountId, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_s3_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the classification types for the specified S3 resources
#'
#' Updates the classification types for the specified S3 resources. If memberAccountId isn\'t specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the current master account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Amazon Macie for the specified member account.
#'
#' @param s3ResourcesUpdate The S3 resources whose classification types you want to update.
#' @param memberAccountId The AWS ID of the Amazon Macie member account whose S3 resources\' classification types you want to update.
#'
#' @examples
#'
#' @export
update_s3_resources <- function (s3ResourcesUpdate, memberAccountId = NULL) 
{
    op <- Operation(name = "UpdateS3Resources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_s3_resources_input(s3ResourcesUpdate = s3ResourcesUpdate, 
        memberAccountId = memberAccountId)
    output <- update_s3_resources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
