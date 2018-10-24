#' Adds one or more attachments to an attachment set
#'
#' Adds one or more attachments to an attachment set. If an `attachmentSetId` is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an `attachmentSetId` is specified, the attachments are added to the specified set, if it exists.
#' 
#' An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the `expiryTime` returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.
#'
#' @param attachments One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment.
#' @param attachmentSetId The ID of the attachment set. If an `attachmentSetId` is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an `attachmentSetId` is specified, the attachments are added to the specified set, if it exists.
#'
#' @examples
#'
#' @export
add_attachments_to_set <- function (attachments, attachmentSetId = NULL) 
{
    op <- Operation(name = "AddAttachmentsToSet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_attachments_to_set_input(attachments = attachments, 
        attachmentSetId = attachmentSetId)
    output <- add_attachments_to_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds additional customer communication to an AWS Support case
#'
#' Adds additional customer communication to an AWS Support case. You use the `caseId` value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the `ccEmailAddresses` value. The `communicationBody` value contains the text of the communication.
#' 
#' The response indicates the success or failure of the request.
#' 
#' This operation implements a subset of the features of the AWS Support Center.
#'
#' @param communicationBody The body of an email communication to add to the support case.
#' @param caseId The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-*12345678910-2013-c4c1d2bf33c5cf47*
#' @param ccEmailAddresses The email addresses in the CC line of an email to be added to the support case.
#' @param attachmentSetId The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling AddAttachmentsToSet
#'
#' @examples
#'
#' @export
add_communication_to_case <- function (communicationBody, caseId = NULL, 
    ccEmailAddresses = NULL, attachmentSetId = NULL) 
{
    op <- Operation(name = "AddCommunicationToCase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_communication_to_case_input(communicationBody = communicationBody, 
        caseId = caseId, ccEmailAddresses = ccEmailAddresses, 
        attachmentSetId = attachmentSetId)
    output <- add_communication_to_case_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new case in the AWS Support Center
#'
#' Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. Its parameters require you to specify the following information:
#' 
#' -   **issueType.** The type of issue for the case. You can specify either \"customer-service\" or \"technical.\" If you do not indicate a value, the default is \"technical.\"
#' 
#' -   **serviceCode.** The code for an AWS service. You obtain the `serviceCode` by calling DescribeServices.
#' 
#' -   **categoryCode.** The category for the service defined for the `serviceCode` value. You also obtain the category code for a service by calling DescribeServices. Each AWS service defines its own set of category codes.
#' 
#' -   **severityCode.** A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You obtain the SeverityCode by calling DescribeSeverityLevels.
#' 
#' -   **subject.** The **Subject** field on the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.
#' 
#' -   **communicationBody.** The **Description** field on the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.
#' 
#' -   **attachmentSetId.** The ID of a set of attachments that has been created by using AddAttachmentsToSet.
#' 
#' -   **language.** The human language in which AWS Support handles the case. English and Japanese are currently supported.
#' 
#' -   **ccEmailAddresses.** The AWS Support Center **CC** field on the [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an [AWS SDK](http://aws.amazon.com/tools/).
#' 
#' To add additional communication or attachments to an existing case, use AddCommunicationToCase.
#' 
#' A successful CreateCase request returns an AWS Support case number. Case numbers are used by the DescribeCases operation to retrieve existing AWS Support cases.
#'
#' @param subject The title of the AWS Support case.
#' @param communicationBody The communication body text when you create an AWS Support case by calling CreateCase.
#' @param serviceCode The code for the AWS service returned by the call to DescribeServices.
#' @param severityCode The code for the severity level returned by the call to DescribeSeverityLevels.
#' 
#' The availability of severity levels depends on each customer\'s support subscription. In other words, your subscription may not necessarily require the urgent level of response time.
#' @param categoryCode The category of problem for the AWS Support case.
#' @param ccEmailAddresses A list of email addresses that AWS Support copies on case correspondence.
#' @param language The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.
#' @param issueType The type of issue for the case. You can specify either \"customer-service\" or \"technical.\" If you do not indicate a value, the default is \"technical.\"
#' @param attachmentSetId The ID of a set of one or more attachments for the case. Create the set by using AddAttachmentsToSet.
#'
#' @examples
#'
#' @export
create_case <- function (subject, communicationBody, serviceCode = NULL, 
    severityCode = NULL, categoryCode = NULL, ccEmailAddresses = NULL, 
    language = NULL, issueType = NULL, attachmentSetId = NULL) 
{
    op <- Operation(name = "CreateCase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_case_input(subject = subject, communicationBody = communicationBody, 
        serviceCode = serviceCode, severityCode = severityCode, 
        categoryCode = categoryCode, ccEmailAddresses = ccEmailAddresses, 
        language = language, issueType = issueType, attachmentSetId = attachmentSetId)
    output <- create_case_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the attachment that has the specified ID
#'
#' Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.
#'
#' @param attachmentId The ID of the attachment to return. Attachment IDs are returned by the DescribeCommunications operation.
#'
#' @examples
#'
#' @export
describe_attachment <- function (attachmentId) 
{
    op <- Operation(name = "DescribeAttachment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_attachment_input(attachmentId = attachmentId)
    output <- describe_attachment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of cases that you specify by passing one or more case IDs
#'
#' Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the `afterTime` and `beforeTime` request parameters. You can set values for the `includeResolvedCases` and `includeCommunications` request parameters to control how much information is returned.
#' 
#' Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.
#' 
#' The response returns the following in JSON format:
#' 
#' -   One or more CaseDetails data types.
#' 
#' -   One or more `nextToken` values, which specify where to paginate the returned records represented by the `CaseDetails` objects.
#'
#' @param caseIdList A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.
#' @param displayId The ID displayed for a case in the AWS Support Center user interface.
#' @param afterTime The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
#' @param beforeTime The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
#' @param includeResolvedCases Specifies whether resolved support cases should be included in the DescribeCases results. The default is *false*.
#' @param nextToken A resumption point for pagination.
#' @param maxResults The maximum number of results to return before paginating.
#' @param language The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.
#' @param includeCommunications Specifies whether communications should be included in the DescribeCases results. The default is *true*.
#'
#' @examples
#'
#' @export
describe_cases <- function (caseIdList = NULL, displayId = NULL, 
    afterTime = NULL, beforeTime = NULL, includeResolvedCases = NULL, 
    nextToken = NULL, maxResults = NULL, language = NULL, includeCommunications = NULL) 
{
    op <- Operation(name = "DescribeCases", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_cases_input(caseIdList = caseIdList, displayId = displayId, 
        afterTime = afterTime, beforeTime = beforeTime, includeResolvedCases = includeResolvedCases, 
        nextToken = nextToken, maxResults = maxResults, language = language, 
        includeCommunications = includeCommunications)
    output <- describe_cases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns communications (and attachments) for one or more support cases
#'
#' Returns communications (and attachments) for one or more support cases. You can use the `afterTime` and `beforeTime` parameters to filter by date. You can use the `caseId` parameter to restrict the results to a particular case.
#' 
#' Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.
#' 
#' You can use the `maxResults` and `nextToken` parameters to control the pagination of the result set. Set `maxResults` to the number of cases you want displayed on each page, and use `nextToken` to specify the resumption of pagination.
#'
#' @param caseId The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-*12345678910-2013-c4c1d2bf33c5cf47*
#' @param beforeTime The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
#' @param afterTime The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
#' @param nextToken A resumption point for pagination.
#' @param maxResults The maximum number of results to return before paginating.
#'
#' @examples
#'
#' @export
describe_communications <- function (caseId, beforeTime = NULL, 
    afterTime = NULL, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "DescribeCommunications", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_communications_input(caseId = caseId, beforeTime = beforeTime, 
        afterTime = afterTime, nextToken = nextToken, maxResults = maxResults)
    output <- describe_communications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the current list of AWS services and a list of service categories that applies to each one
#'
#' Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your CreateCase requests. Each AWS service has its own set of categories.
#' 
#' The service codes and category codes correspond to the values that are displayed in the **Service** and **Category** drop-down lists on the AWS Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. The values in those fields, however, do not necessarily match the service codes and categories returned by the `DescribeServices` request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.
#'
#' @param serviceCodeList A JSON-formatted list of service codes available for AWS services.
#' @param language The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.
#'
#' @examples
#'
#' @export
describe_services <- function (serviceCodeList = NULL, language = NULL) 
{
    op <- Operation(name = "DescribeServices", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_services_input(serviceCodeList = serviceCodeList, 
        language = language)
    output <- describe_services_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the list of severity levels that you can assign to an AWS Support case
#'
#' Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the CaseDetails data type included in any CreateCase request.
#'
#' @param language The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.
#'
#' @examples
#'
#' @export
describe_severity_levels <- function (language = NULL) 
{
    op <- Operation(name = "DescribeSeverityLevels", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_severity_levels_input(language = language)
    output <- describe_severity_levels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the refresh status of the Trusted Advisor checks that have the specified check IDs
#'
#' Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.
#' 
#' Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the `DescribeTrustedAdvisorCheckRefreshStatuses` operation for these checks causes an `InvalidParameterValue` error.
#'
#' @param checkIds The IDs of the Trusted Advisor checks to get the status of. **Note:** Specifying the check ID of a check that is automatically refreshed causes an `InvalidParameterValue` error.
#'
#' @examples
#'
#' @export
describe_trusted_advisor_check_refresh_statuses <- function (checkIds) 
{
    op <- Operation(name = "DescribeTrustedAdvisorCheckRefreshStatuses", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_trusted_advisor_check_refresh_statuses_input(checkIds = checkIds)
    output <- describe_trusted_advisor_check_refresh_statuses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the results of the Trusted Advisor check that has the specified check ID
#'
#' Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.
#' 
#' The response contains a TrustedAdvisorCheckResult object, which contains these three objects:
#' 
#' -   TrustedAdvisorCategorySpecificSummary
#' 
#' -   TrustedAdvisorResourceDetail
#' 
#' -   TrustedAdvisorResourcesSummary
#' 
#' In addition, the response contains these fields:
#' 
#' -   **status.** The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or \"not\_available\".
#' 
#' -   **timestamp.** The time of the last refresh of the check.
#' 
#' -   **checkId.** The unique identifier for the check.
#'
#' @param checkId The unique identifier for the Trusted Advisor check.
#' @param language The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.
#'
#' @examples
#'
#' @export
describe_trusted_advisor_check_result <- function (checkId, language = NULL) 
{
    op <- Operation(name = "DescribeTrustedAdvisorCheckResult", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_trusted_advisor_check_result_input(checkId = checkId, 
        language = language)
    output <- describe_trusted_advisor_check_result_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs
#'
#' Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.
#' 
#' The response contains an array of TrustedAdvisorCheckSummary objects.
#'
#' @param checkIds The IDs of the Trusted Advisor checks.
#'
#' @examples
#'
#' @export
describe_trusted_advisor_check_summaries <- function (checkIds) 
{
    op <- Operation(name = "DescribeTrustedAdvisorCheckSummaries", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_trusted_advisor_check_summaries_input(checkIds = checkIds)
    output <- describe_trusted_advisor_check_summaries_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata
#'
#' Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English (\"en\") and Japanese (\"ja\") are currently supported. The response contains a TrustedAdvisorCheckDescription for each check.
#'
#' @param language The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be passed explicitly for operations that take them.
#'
#' @examples
#'
#' @export
describe_trusted_advisor_checks <- function (language) 
{
    op <- Operation(name = "DescribeTrustedAdvisorChecks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_trusted_advisor_checks_input(language = language)
    output <- describe_trusted_advisor_checks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Requests a refresh of the Trusted Advisor check that has the specified check ID
#'
#' Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling DescribeTrustedAdvisorChecks.
#' 
#' Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the `RefreshTrustedAdvisorCheck` operation for these checks causes an `InvalidParameterValue` error.
#' 
#' The response contains a TrustedAdvisorCheckRefreshStatus object, which contains these fields:
#' 
#' -   **status.** The refresh status of the check: \"none\", \"enqueued\", \"processing\", \"success\", or \"abandoned\".
#' 
#' -   **millisUntilNextRefreshable.** The amount of time, in milliseconds, until the check is eligible for refresh.
#' 
#' -   **checkId.** The unique identifier for the check.
#'
#' @param checkId The unique identifier for the Trusted Advisor check to refresh. **Note:** Specifying the check ID of a check that is automatically refreshed causes an `InvalidParameterValue` error.
#'
#' @examples
#'
#' @export
refresh_trusted_advisor_check <- function (checkId) 
{
    op <- Operation(name = "RefreshTrustedAdvisorCheck", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- refresh_trusted_advisor_check_input(checkId = checkId)
    output <- refresh_trusted_advisor_check_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Takes a `caseId` and returns the initial state of the case along with the state of the case after the call to ResolveCase completed
#'
#' Takes a `caseId` and returns the initial state of the case along with the state of the case after the call to ResolveCase completed.
#'
#' @param caseId The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-*12345678910-2013-c4c1d2bf33c5cf47*
#'
#' @examples
#'
#' @export
resolve_case <- function (caseId = NULL) 
{
    op <- Operation(name = "ResolveCase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- resolve_case_input(caseId = caseId)
    output <- resolve_case_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
