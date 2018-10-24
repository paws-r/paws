#' Accepts the invitation to be monitored by a master GuardDuty account
#'
#' Accepts the invitation to be monitored by a master GuardDuty account.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty member account.
#' @param MasterId The account ID of the master GuardDuty account whose invitation you're accepting.
#' @param InvitationId This value is used to validate the master account to the member account.
#'
#' @examples
#'
#' @export
accept_invitation <- function (DetectorId, MasterId, InvitationId) 
{
    op <- Operation(name = "AcceptInvitation", http_method = "POST", 
        http_path = "/detector/{detectorId}/master", paginator = list())
    input <- accept_invitation_input(DetectorId = DetectorId, 
        MasterId = MasterId, InvitationId = InvitationId)
    output <- accept_invitation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Archives Amazon GuardDuty findings specified by the list of finding IDs
#'
#' Archives Amazon GuardDuty findings specified by the list of finding IDs.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service whose findings you want to archive.
#' @param FindingIds IDs of the findings that you want to archive.
#'
#' @examples
#'
#' @export
archive_findings <- function (DetectorId, FindingIds) 
{
    op <- Operation(name = "ArchiveFindings", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings/archive", 
        paginator = list())
    input <- archive_findings_input(DetectorId = DetectorId, 
        FindingIds = FindingIds)
    output <- archive_findings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a single Amazon GuardDuty detector
#'
#' Creates a single Amazon GuardDuty detector. A detector is an object that represents the GuardDuty service. A detector must be created in order for GuardDuty to become operational.
#'
#' @param Enable A boolean value that specifies whether the detector is to be enabled.
#' @param ClientToken The idempotency token for the create request.
#' @param FindingPublishingFrequency A enum value that specifies how frequently customer got Finding updates published.
#'
#' @examples
#'
#' @export
create_detector <- function (Enable, ClientToken = NULL, FindingPublishingFrequency = NULL) 
{
    op <- Operation(name = "CreateDetector", http_method = "POST", 
        http_path = "/detector", paginator = list())
    input <- create_detector_input(Enable = Enable, ClientToken = ClientToken, 
        FindingPublishingFrequency = FindingPublishingFrequency)
    output <- create_detector_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a filter using the specified finding criteria
#'
#' Creates a filter using the specified finding criteria.
#'
#' @param DetectorId The unique ID of the detector that you want to update.
#' @param FindingCriteria Represents the criteria to be used in the filter for querying findings.
#' @param Name The name of the filter.
#' @param Action Specifies the action that is to be applied to the findings that match the filter.
#' @param ClientToken The idempotency token for the create request.
#' @param Description The description of the filter.
#' @param Rank Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
#'
#' @examples
#'
#' @export
create_filter <- function (DetectorId, FindingCriteria, Name, 
    Action = NULL, ClientToken = NULL, Description = NULL, Rank = NULL) 
{
    op <- Operation(name = "CreateFilter", http_method = "POST", 
        http_path = "/detector/{detectorId}/filter", paginator = list())
    input <- create_filter_input(DetectorId = DetectorId, FindingCriteria = FindingCriteria, 
        Name = Name, Action = Action, ClientToken = ClientToken, 
        Description = Description, Rank = Rank)
    output <- create_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications
#'
#' Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications.
#'
#' @param DetectorId The unique ID of the detector that you want to update.
#' @param Format The format of the file that contains the IPSet.
#' @param Activate A boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.
#' @param Location The URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
#' @param Name The user friendly name to identify the IPSet. This name is displayed in all findings that are triggered by activity that involves IP addresses included in this IPSet.
#' @param ClientToken The idempotency token for the create request.
#'
#' @examples
#'
#' @export
create_ip_set <- function (DetectorId, Format, Activate, Location, 
    Name, ClientToken = NULL) 
{
    op <- Operation(name = "CreateIPSet", http_method = "POST", 
        http_path = "/detector/{detectorId}/ipset", paginator = list())
    input <- create_ip_set_input(DetectorId = DetectorId, Format = Format, 
        Activate = Activate, Location = Location, Name = Name, 
        ClientToken = ClientToken)
    output <- create_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates member accounts of the current AWS account by specifying a list of AWS account IDs
#'
#' Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account with which you want to associate member accounts.
#' @param AccountDetails A list of account ID and email address pairs of the accounts that you want to associate with the master GuardDuty account.
#'
#' @examples
#'
#' @export
create_members <- function (DetectorId, AccountDetails) 
{
    op <- Operation(name = "CreateMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member", paginator = list())
    input <- create_members_input(DetectorId = DetectorId, AccountDetails = AccountDetails)
    output <- create_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates example findings of types specified by the list of finding types
#'
#' Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
#'
#' @param DetectorId The ID of the detector to create sample findings for.
#' @param FindingTypes Types of sample findings that you want to generate.
#'
#' @examples
#'
#' @export
create_sample_findings <- function (DetectorId, FindingTypes = NULL) 
{
    op <- Operation(name = "CreateSampleFindings", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings/create", 
        paginator = list())
    input <- create_sample_findings_input(DetectorId = DetectorId, 
        FindingTypes = FindingTypes)
    output <- create_sample_findings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Create a new ThreatIntelSet
#'
#' Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets.
#'
#' @param DetectorId The unique ID of the detector that you want to update.
#' @param Format The format of the file that contains the ThreatIntelSet.
#' @param Activate A boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.
#' @param Location The URI of the file that contains the ThreatIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
#' @param Name A user-friendly ThreatIntelSet name that is displayed in all finding generated by activity that involves IP addresses included in this ThreatIntelSet.
#' @param ClientToken The idempotency token for the create request.
#'
#' @examples
#'
#' @export
create_threat_intel_set <- function (DetectorId, Format, Activate, 
    Location, Name, ClientToken = NULL) 
{
    op <- Operation(name = "CreateThreatIntelSet", http_method = "POST", 
        http_path = "/detector/{detectorId}/threatintelset", 
        paginator = list())
    input <- create_threat_intel_set_input(DetectorId = DetectorId, 
        Format = Format, Activate = Activate, Location = Location, 
        Name = Name, ClientToken = ClientToken)
    output <- create_threat_intel_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Declines invitations sent to the current member account by AWS account specified by their account IDs
#'
#' Declines invitations sent to the current member account by AWS account specified by their account IDs.
#'
#' @param AccountIds A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to decline invitations from.
#'
#' @examples
#'
#' @export
decline_invitations <- function (AccountIds) 
{
    op <- Operation(name = "DeclineInvitations", http_method = "POST", 
        http_path = "/invitation/decline", paginator = list())
    input <- decline_invitations_input(AccountIds = AccountIds)
    output <- decline_invitations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a Amazon GuardDuty detector specified by the detector ID
#'
#' Deletes a Amazon GuardDuty detector specified by the detector ID.
#'
#' @param DetectorId The unique ID that specifies the detector that you want to delete.
#'
#' @examples
#'
#' @export
delete_detector <- function (DetectorId) 
{
    op <- Operation(name = "DeleteDetector", http_method = "DELETE", 
        http_path = "/detector/{detectorId}", paginator = list())
    input <- delete_detector_input(DetectorId = DetectorId)
    output <- delete_detector_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the filter specified by the filter name
#'
#' Deletes the filter specified by the filter name.
#'
#' @param DetectorId The unique ID that specifies the detector where you want to delete a filter.
#' @param FilterName The name of the filter.
#'
#' @examples
#'
#' @export
delete_filter <- function (DetectorId, FilterName) 
{
    op <- Operation(name = "DeleteFilter", http_method = "DELETE", 
        http_path = "/detector/{detectorId}/filter/{filterName}", 
        paginator = list())
    input <- delete_filter_input(DetectorId = DetectorId, FilterName = FilterName)
    output <- delete_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the IPSet specified by the IPSet ID
#'
#' Deletes the IPSet specified by the IPSet ID.
#'
#' @param DetectorId The detectorID that specifies the GuardDuty service whose IPSet you want to delete.
#' @param IpSetId The unique ID that specifies the IPSet that you want to delete.
#'
#' @examples
#'
#' @export
delete_ip_set <- function (DetectorId, IpSetId) 
{
    op <- Operation(name = "DeleteIPSet", http_method = "DELETE", 
        http_path = "/detector/{detectorId}/ipset/{ipSetId}", 
        paginator = list())
    input <- delete_ip_set_input(DetectorId = DetectorId, IpSetId = IpSetId)
    output <- delete_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes invitations sent to the current member account by AWS accounts specified by their account IDs
#'
#' Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
#'
#' @param AccountIds A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from.
#'
#' @examples
#'
#' @export
delete_invitations <- function (AccountIds) 
{
    op <- Operation(name = "DeleteInvitations", http_method = "POST", 
        http_path = "/invitation/delete", paginator = list())
    input <- delete_invitations_input(AccountIds = AccountIds)
    output <- delete_invitations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs
#'
#' Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account whose members you want to delete.
#' @param AccountIds A list of account IDs of the GuardDuty member accounts that you want to delete.
#'
#' @examples
#'
#' @export
delete_members <- function (DetectorId, AccountIds) 
{
    op <- Operation(name = "DeleteMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member/delete", paginator = list())
    input <- delete_members_input(DetectorId = DetectorId, AccountIds = AccountIds)
    output <- delete_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes ThreatIntelSet specified by the ThreatIntelSet ID
#'
#' Deletes ThreatIntelSet specified by the ThreatIntelSet ID.
#'
#' @param ThreatIntelSetId The unique ID that specifies the ThreatIntelSet that you want to delete.
#' @param DetectorId The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to delete.
#'
#' @examples
#'
#' @export
delete_threat_intel_set <- function (ThreatIntelSetId, DetectorId) 
{
    op <- Operation(name = "DeleteThreatIntelSet", http_method = "DELETE", 
        http_path = "/detector/{detectorId}/threatintelset/{threatIntelSetId}", 
        paginator = list())
    input <- delete_threat_intel_set_input(ThreatIntelSetId = ThreatIntelSetId, 
        DetectorId = DetectorId)
    output <- delete_threat_intel_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates the current GuardDuty member account from its master account
#'
#' Disassociates the current GuardDuty member account from its master account.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty member account.
#'
#' @examples
#'
#' @export
disassociate_from_master_account <- function (DetectorId) 
{
    op <- Operation(name = "DisassociateFromMasterAccount", http_method = "POST", 
        http_path = "/detector/{detectorId}/master/disassociate", 
        paginator = list())
    input <- disassociate_from_master_account_input(DetectorId = DetectorId)
    output <- disassociate_from_master_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs
#'
#' Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account whose members you want to disassociate from master.
#' @param AccountIds A list of account IDs of the GuardDuty member accounts that you want to disassociate from master.
#'
#' @examples
#'
#' @export
disassociate_members <- function (DetectorId, AccountIds) 
{
    op <- Operation(name = "DisassociateMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member/disassociate", 
        paginator = list())
    input <- disassociate_members_input(DetectorId = DetectorId, 
        AccountIds = AccountIds)
    output <- disassociate_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves an Amazon GuardDuty detector specified by the detectorId
#'
#' Retrieves an Amazon GuardDuty detector specified by the detectorId.
#'
#' @param DetectorId The unique ID of the detector that you want to retrieve.
#'
#' @examples
#'
#' @export
get_detector <- function (DetectorId) 
{
    op <- Operation(name = "GetDetector", http_method = "GET", 
        http_path = "/detector/{detectorId}", paginator = list())
    input <- get_detector_input(DetectorId = DetectorId)
    output <- get_detector_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the details of the filter specified by the filter name
#'
#' Returns the details of the filter specified by the filter name.
#'
#' @param DetectorId The detector ID that specifies the GuardDuty service where you want to list the details of the specified filter.
#' @param FilterName The name of the filter whose details you want to get.
#'
#' @examples
#'
#' @export
get_filter <- function (DetectorId, FilterName) 
{
    op <- Operation(name = "GetFilter", http_method = "GET", 
        http_path = "/detector/{detectorId}/filter/{filterName}", 
        paginator = list())
    input <- get_filter_input(DetectorId = DetectorId, FilterName = FilterName)
    output <- get_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes Amazon GuardDuty findings specified by finding IDs
#'
#' Describes Amazon GuardDuty findings specified by finding IDs.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve.
#' @param FindingIds IDs of the findings that you want to retrieve.
#' @param SortCriteria Represents the criteria used for sorting findings.
#'
#' @examples
#'
#' @export
get_findings <- function (DetectorId, FindingIds, SortCriteria = NULL) 
{
    op <- Operation(name = "GetFindings", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings/get", paginator = list())
    input <- get_findings_input(DetectorId = DetectorId, FindingIds = FindingIds, 
        SortCriteria = SortCriteria)
    output <- get_findings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists Amazon GuardDuty findings' statistics for the specified detector ID
#'
#' Lists Amazon GuardDuty findings' statistics for the specified detector ID.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service whose findings' statistics you want to retrieve.
#' @param FindingStatisticTypes Types of finding statistics to retrieve.
#' @param FindingCriteria Represents the criteria used for querying findings.
#'
#' @examples
#'
#' @export
get_findings_statistics <- function (DetectorId, FindingStatisticTypes, 
    FindingCriteria = NULL) 
{
    op <- Operation(name = "GetFindingsStatistics", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings/statistics", 
        paginator = list())
    input <- get_findings_statistics_input(DetectorId = DetectorId, 
        FindingStatisticTypes = FindingStatisticTypes, FindingCriteria = FindingCriteria)
    output <- get_findings_statistics_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the IPSet specified by the IPSet ID
#'
#' Retrieves the IPSet specified by the IPSet ID.
#'
#' @param DetectorId The detectorID that specifies the GuardDuty service whose IPSet you want to retrieve.
#' @param IpSetId The unique ID that specifies the IPSet that you want to describe.
#'
#' @examples
#'
#' @export
get_ip_set <- function (DetectorId, IpSetId) 
{
    op <- Operation(name = "GetIPSet", http_method = "GET", http_path = "/detector/{detectorId}/ipset/{ipSetId}", 
        paginator = list())
    input <- get_ip_set_input(DetectorId = DetectorId, IpSetId = IpSetId)
    output <- get_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation
#'
#' Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
#'
#' @examples
#'
#' @export
get_invitations_count <- function () 
{
    op <- Operation(name = "GetInvitationsCount", http_method = "GET", 
        http_path = "/invitation/count", paginator = list())
    input <- get_invitations_count_input()
    output <- get_invitations_count_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides the details for the GuardDuty master account to the current GuardDuty member account
#'
#' Provides the details for the GuardDuty master account to the current GuardDuty member account.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty member account.
#'
#' @examples
#'
#' @export
get_master_account <- function (DetectorId) 
{
    op <- Operation(name = "GetMasterAccount", http_method = "GET", 
        http_path = "/detector/{detectorId}/master", paginator = list())
    input <- get_master_account_input(DetectorId = DetectorId)
    output <- get_master_account_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs
#'
#' Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account whose members you want to retrieve.
#' @param AccountIds A list of account IDs of the GuardDuty member accounts that you want to describe.
#'
#' @examples
#'
#' @export
get_members <- function (DetectorId, AccountIds) 
{
    op <- Operation(name = "GetMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member/get", paginator = list())
    input <- get_members_input(DetectorId = DetectorId, AccountIds = AccountIds)
    output <- get_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID
#'
#' Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
#'
#' @param ThreatIntelSetId The unique ID that specifies the ThreatIntelSet that you want to describe.
#' @param DetectorId The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to describe.
#'
#' @examples
#'
#' @export
get_threat_intel_set <- function (ThreatIntelSetId, DetectorId) 
{
    op <- Operation(name = "GetThreatIntelSet", http_method = "GET", 
        http_path = "/detector/{detectorId}/threatintelset/{threatIntelSetId}", 
        paginator = list())
    input <- get_threat_intel_set_input(ThreatIntelSetId = ThreatIntelSetId, 
        DetectorId = DetectorId)
    output <- get_threat_intel_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account
#'
#' Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account with which you want to invite members.
#' @param AccountIds A list of account IDs of the accounts that you want to invite to GuardDuty as members.
#' @param DisableEmailNotification A boolean value that specifies whether you want to disable email notification to the accounts that you’re inviting to GuardDuty as members.
#' @param Message The invitation message that you want to send to the accounts that you’re inviting to GuardDuty as members.
#'
#' @examples
#'
#' @export
invite_members <- function (DetectorId, AccountIds, DisableEmailNotification = NULL, 
    Message = NULL) 
{
    op <- Operation(name = "InviteMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member/invite", paginator = list())
    input <- invite_members_input(DetectorId = DetectorId, AccountIds = AccountIds, 
        DisableEmailNotification = DisableEmailNotification, 
        Message = Message)
    output <- invite_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists detectorIds of all the existing Amazon GuardDuty detector resources
#'
#' Lists detectorIds of all the existing Amazon GuardDuty detector resources.
#'
#' @param MaxResults You can use this parameter to indicate the maximum number of detectors that you want in the response.
#' @param NextToken You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListDetectors action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
#'
#' @examples
#'
#' @export
list_detectors <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListDetectors", http_method = "GET", 
        http_path = "/detector", paginator = list())
    input <- list_detectors_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- list_detectors_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a paginated list of the current filters
#'
#' Returns a paginated list of the current filters.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service where you want to list filters.
#' @param MaxResults Indicates the maximum number of items that you want in the response. The maximum value is 50.
#' @param NextToken Paginates results. Set the value of this parameter to NULL on your first call to the ListFilters operation.For subsequent calls to the operation, fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
#'
#' @examples
#'
#' @export
list_filters <- function (DetectorId, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListFilters", http_method = "GET", 
        http_path = "/detector/{detectorId}/filter", paginator = list())
    input <- list_filters_input(DetectorId = DetectorId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_filters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists Amazon GuardDuty findings for the specified detector ID
#'
#' Lists Amazon GuardDuty findings for the specified detector ID.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service whose findings you want to list.
#' @param FindingCriteria Represents the criteria used for querying findings.
#' @param MaxResults You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.
#' @param NextToken You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListFindings action. For subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
#' @param SortCriteria Represents the criteria used for sorting findings.
#'
#' @examples
#'
#' @export
list_findings <- function (DetectorId, FindingCriteria = NULL, 
    MaxResults = NULL, NextToken = NULL, SortCriteria = NULL) 
{
    op <- Operation(name = "ListFindings", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings", paginator = list())
    input <- list_findings_input(DetectorId = DetectorId, FindingCriteria = FindingCriteria, 
        MaxResults = MaxResults, NextToken = NextToken, SortCriteria = SortCriteria)
    output <- list_findings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the IPSets of the GuardDuty service specified by the detector ID
#'
#' Lists the IPSets of the GuardDuty service specified by the detector ID.
#'
#' @param DetectorId The unique ID of the detector that you want to retrieve.
#' @param MaxResults You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 7. The maximum value is 7.
#' @param NextToken You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListIPSet action. For subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
#'
#' @examples
#'
#' @export
list_ip_sets <- function (DetectorId, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListIPSets", http_method = "GET", 
        http_path = "/detector/{detectorId}/ipset", paginator = list())
    input <- list_ip_sets_input(DetectorId = DetectorId, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_ip_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all GuardDuty membership invitations that were sent to the current AWS account
#'
#' Lists all GuardDuty membership invitations that were sent to the current AWS account.
#'
#' @param MaxResults You can use this parameter to indicate the maximum number of invitations you want in the response. The default value is 50. The maximum value is 50.
#' @param NextToken You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListInvitations action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
#'
#' @examples
#'
#' @export
list_invitations <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "ListInvitations", http_method = "GET", 
        http_path = "/invitation", paginator = list())
    input <- list_invitations_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- list_invitations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists details about all member accounts for the current GuardDuty master account
#'
#' Lists details about all member accounts for the current GuardDuty master account.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account whose members you want to list.
#' @param MaxResults You can use this parameter to indicate the maximum number of items you want in the response. The default value is 1. The maximum value is 50.
#' @param NextToken You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMembers action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
#' @param OnlyAssociated Specifies what member accounts the response is to include based on their relationship status with the master account. The default value is TRUE. If onlyAssociated is set to TRUE, the response will include member accounts whose relationship status with the master is set to Enabled, Disabled. If onlyAssociated is set to FALSE, the response will include all existing member accounts.
#'
#' @examples
#'
#' @export
list_members <- function (DetectorId, MaxResults = NULL, NextToken = NULL, 
    OnlyAssociated = NULL) 
{
    op <- Operation(name = "ListMembers", http_method = "GET", 
        http_path = "/detector/{detectorId}/member", paginator = list())
    input <- list_members_input(DetectorId = DetectorId, MaxResults = MaxResults, 
        NextToken = NextToken, OnlyAssociated = OnlyAssociated)
    output <- list_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID
#'
#' Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.
#'
#' @param DetectorId The detectorID that specifies the GuardDuty service whose ThreatIntelSets you want to list.
#' @param MaxResults You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 7. The maximum value is 7.
#' @param NextToken Pagination token to start retrieving threat intel sets from.
#'
#' @examples
#'
#' @export
list_threat_intel_sets <- function (DetectorId, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "ListThreatIntelSets", http_method = "GET", 
        http_path = "/detector/{detectorId}/threatintelset", 
        paginator = list())
    input <- list_threat_intel_sets_input(DetectorId = DetectorId, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- list_threat_intel_sets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs
#'
#' Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs. A master GuardDuty account can run this command after disabling GuardDuty from monitoring these members' findings by running StopMonitoringMembers.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account whom you want to re-enable to monitor members' findings.
#' @param AccountIds A list of account IDs of the GuardDuty member accounts whose findings you want the master account to monitor.
#'
#' @examples
#'
#' @export
start_monitoring_members <- function (DetectorId, AccountIds) 
{
    op <- Operation(name = "StartMonitoringMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member/start", paginator = list())
    input <- start_monitoring_members_input(DetectorId = DetectorId, 
        AccountIds = AccountIds)
    output <- start_monitoring_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs
#'
#' Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs. After running this command, a master GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty to monitor these members’ findings.
#'
#' @param DetectorId The unique ID of the detector of the GuardDuty account that you want to stop from monitor members' findings.
#' @param AccountIds A list of account IDs of the GuardDuty member accounts whose findings you want the master account to stop monitoring.
#'
#' @examples
#'
#' @export
stop_monitoring_members <- function (DetectorId, AccountIds) 
{
    op <- Operation(name = "StopMonitoringMembers", http_method = "POST", 
        http_path = "/detector/{detectorId}/member/stop", paginator = list())
    input <- stop_monitoring_members_input(DetectorId = DetectorId, 
        AccountIds = AccountIds)
    output <- stop_monitoring_members_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unarchives Amazon GuardDuty findings specified by the list of finding IDs
#'
#' Unarchives Amazon GuardDuty findings specified by the list of finding IDs.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service whose findings you want to unarchive.
#' @param FindingIds IDs of the findings that you want to unarchive.
#'
#' @examples
#'
#' @export
unarchive_findings <- function (DetectorId, FindingIds) 
{
    op <- Operation(name = "UnarchiveFindings", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings/unarchive", 
        paginator = list())
    input <- unarchive_findings_input(DetectorId = DetectorId, 
        FindingIds = FindingIds)
    output <- unarchive_findings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an Amazon GuardDuty detector specified by the detectorId
#'
#' Updates an Amazon GuardDuty detector specified by the detectorId.
#'
#' @param DetectorId The unique ID of the detector that you want to update.
#' @param Enable Updated boolean value for the detector that specifies whether the detector is enabled.
#' @param FindingPublishingFrequency A enum value that specifies how frequently customer got Finding updates published.
#'
#' @examples
#'
#' @export
update_detector <- function (DetectorId, Enable = NULL, FindingPublishingFrequency = NULL) 
{
    op <- Operation(name = "UpdateDetector", http_method = "POST", 
        http_path = "/detector/{detectorId}", paginator = list())
    input <- update_detector_input(DetectorId = DetectorId, Enable = Enable, 
        FindingPublishingFrequency = FindingPublishingFrequency)
    output <- update_detector_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the filter specified by the filter name
#'
#' Updates the filter specified by the filter name.
#'
#' @param DetectorId The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.
#' @param FilterName The name of the filter.
#' @param Action Specifies the action that is to be applied to the findings that match the filter.
#' @param Description The description of the filter.
#' @param FindingCriteria Represents the criteria to be used in the filter for querying findings.
#' @param Rank Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
#'
#' @examples
#'
#' @export
update_filter <- function (DetectorId, FilterName, Action = NULL, 
    Description = NULL, FindingCriteria = NULL, Rank = NULL) 
{
    op <- Operation(name = "UpdateFilter", http_method = "POST", 
        http_path = "/detector/{detectorId}/filter/{filterName}", 
        paginator = list())
    input <- update_filter_input(DetectorId = DetectorId, FilterName = FilterName, 
        Action = Action, Description = Description, FindingCriteria = FindingCriteria, 
        Rank = Rank)
    output <- update_filter_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Marks specified Amazon GuardDuty findings as useful or not useful
#'
#' Marks specified Amazon GuardDuty findings as useful or not useful.
#'
#' @param DetectorId The ID of the detector that specifies the GuardDuty service whose findings you want to mark as useful or not useful.
#' @param Feedback Valid values: USEFUL | NOT_USEFUL
#' @param FindingIds IDs of the findings that you want to mark as useful or not useful.
#' @param Comments Additional feedback about the GuardDuty findings.
#'
#' @examples
#'
#' @export
update_findings_feedback <- function (DetectorId, Feedback, FindingIds, 
    Comments = NULL) 
{
    op <- Operation(name = "UpdateFindingsFeedback", http_method = "POST", 
        http_path = "/detector/{detectorId}/findings/feedback", 
        paginator = list())
    input <- update_findings_feedback_input(DetectorId = DetectorId, 
        Feedback = Feedback, FindingIds = FindingIds, Comments = Comments)
    output <- update_findings_feedback_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the IPSet specified by the IPSet ID
#'
#' Updates the IPSet specified by the IPSet ID.
#'
#' @param DetectorId The detectorID that specifies the GuardDuty service whose IPSet you want to update.
#' @param IpSetId The unique ID that specifies the IPSet that you want to update.
#' @param Activate The updated boolean value that specifies whether the IPSet is active or not.
#' @param Location The updated URI of the file that contains the IPSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key).
#' @param Name The unique ID that specifies the IPSet that you want to update.
#'
#' @examples
#'
#' @export
update_ip_set <- function (DetectorId, IpSetId, Activate = NULL, 
    Location = NULL, Name = NULL) 
{
    op <- Operation(name = "UpdateIPSet", http_method = "POST", 
        http_path = "/detector/{detectorId}/ipset/{ipSetId}", 
        paginator = list())
    input <- update_ip_set_input(DetectorId = DetectorId, IpSetId = IpSetId, 
        Activate = Activate, Location = Location, Name = Name)
    output <- update_ip_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the ThreatIntelSet specified by ThreatIntelSet ID
#'
#' Updates the ThreatIntelSet specified by ThreatIntelSet ID.
#'
#' @param ThreatIntelSetId The unique ID that specifies the ThreatIntelSet that you want to update.
#' @param DetectorId The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.
#' @param Activate The updated boolean value that specifies whether the ThreateIntelSet is active or not.
#' @param Location The updated URI of the file that contains the ThreateIntelSet. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
#' @param Name The unique ID that specifies the ThreatIntelSet that you want to update.
#'
#' @examples
#'
#' @export
update_threat_intel_set <- function (ThreatIntelSetId, DetectorId, 
    Activate = NULL, Location = NULL, Name = NULL) 
{
    op <- Operation(name = "UpdateThreatIntelSet", http_method = "POST", 
        http_path = "/detector/{detectorId}/threatintelset/{threatIntelSetId}", 
        paginator = list())
    input <- update_threat_intel_set_input(ThreatIntelSetId = ThreatIntelSetId, 
        DetectorId = DetectorId, Activate = Activate, Location = Location, 
        Name = Name)
    output <- update_threat_intel_set_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
