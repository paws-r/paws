add_attachments_to_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachmentSetId = structure(logical(0), 
        shape = "AttachmentSetId", type = "string", locationName = "attachmentSetId"), 
        Attachments = structure(list(structure(list(FileName = structure(logical(0), 
            shape = "FileName", type = "string", locationName = "fileName"), 
            Data = structure(logical(0), shape = "Data", type = "blob", 
                locationName = "data")), shape = "Attachment", 
            type = "structure")), shape = "Attachments", type = "list", 
            locationName = "attachments")), shape = "AddAttachmentsToSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_attachments_to_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachmentSetId = structure(logical(0), 
        shape = "AttachmentSetId", type = "string", locationName = "attachmentSetId"), 
        ExpiryTime = structure(logical(0), shape = "ExpiryTime", 
            type = "string", locationName = "expiryTime")), shape = "AddAttachmentsToSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

add_communication_to_case_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaseId = structure(logical(0), shape = "CaseId", 
        type = "string", locationName = "caseId"), CommunicationBody = structure(logical(0), 
        shape = "CommunicationBody", type = "string", max = 8000L, 
        min = 1L, locationName = "communicationBody"), CcEmailAddresses = structure(list(structure(logical(0), 
        shape = "CcEmailAddress", type = "string")), shape = "CcEmailAddressList", 
        type = "list", max = 10L, min = 0L, locationName = "ccEmailAddresses"), 
        AttachmentSetId = structure(logical(0), shape = "AttachmentSetId", 
            type = "string", locationName = "attachmentSetId")), 
        shape = "AddCommunicationToCaseRequest", type = "structure")
    return(populate(args, shape))
}

add_communication_to_case_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Result = structure(logical(0), shape = "Result", 
        type = "boolean", locationName = "result")), shape = "AddCommunicationToCaseResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_case_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subject = structure(logical(0), shape = "Subject", 
        type = "string", locationName = "subject"), ServiceCode = structure(logical(0), 
        shape = "ServiceCode", type = "string", locationName = "serviceCode"), 
        SeverityCode = structure(logical(0), shape = "SeverityCode", 
            type = "string", locationName = "severityCode"), 
        CategoryCode = structure(logical(0), shape = "CategoryCode", 
            type = "string", locationName = "categoryCode"), 
        CommunicationBody = structure(logical(0), shape = "CommunicationBody", 
            type = "string", max = 8000L, min = 1L, locationName = "communicationBody"), 
        CcEmailAddresses = structure(list(structure(logical(0), 
            shape = "CcEmailAddress", type = "string")), shape = "CcEmailAddressList", 
            type = "list", max = 10L, min = 0L, locationName = "ccEmailAddresses"), 
        Language = structure(logical(0), shape = "Language", 
            type = "string", locationName = "language"), IssueType = structure(logical(0), 
            shape = "IssueType", type = "string", locationName = "issueType"), 
        AttachmentSetId = structure(logical(0), shape = "AttachmentSetId", 
            type = "string", locationName = "attachmentSetId")), 
        shape = "CreateCaseRequest", type = "structure")
    return(populate(args, shape))
}

create_case_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaseId = structure(logical(0), shape = "CaseId", 
        type = "string", locationName = "caseId")), shape = "CreateCaseResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_attachment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachmentId = structure(logical(0), 
        shape = "AttachmentId", type = "string", locationName = "attachmentId")), 
        shape = "DescribeAttachmentRequest", type = "structure")
    return(populate(args, shape))
}

describe_attachment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attachment = structure(list(FileName = structure(logical(0), 
        shape = "FileName", type = "string", locationName = "fileName"), 
        Data = structure(logical(0), shape = "Data", type = "blob", 
            locationName = "data")), shape = "Attachment", type = "structure", 
        locationName = "attachment")), shape = "DescribeAttachmentResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_cases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaseIdList = structure(list(structure(logical(0), 
        shape = "CaseId", type = "string")), shape = "CaseIdList", 
        type = "list", max = 100L, min = 0L, locationName = "caseIdList"), 
        DisplayId = structure(logical(0), shape = "DisplayId", 
            type = "string", locationName = "displayId"), AfterTime = structure(logical(0), 
            shape = "AfterTime", type = "string", locationName = "afterTime"), 
        BeforeTime = structure(logical(0), shape = "BeforeTime", 
            type = "string", locationName = "beforeTime"), IncludeResolvedCases = structure(logical(0), 
            shape = "IncludeResolvedCases", type = "boolean", 
            locationName = "includeResolvedCases"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 10L, locationName = "maxResults"), 
        Language = structure(logical(0), shape = "Language", 
            type = "string", locationName = "language"), IncludeCommunications = structure(logical(0), 
            shape = "IncludeCommunications", type = "boolean", 
            locationName = "includeCommunications")), shape = "DescribeCasesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_cases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Cases = structure(list(structure(list(CaseId = structure(logical(0), 
        shape = "CaseId", type = "string", locationName = "caseId"), 
        DisplayId = structure(logical(0), shape = "DisplayId", 
            type = "string", locationName = "displayId"), Subject = structure(logical(0), 
            shape = "Subject", type = "string", locationName = "subject"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), ServiceCode = structure(logical(0), 
            shape = "ServiceCode", type = "string", locationName = "serviceCode"), 
        CategoryCode = structure(logical(0), shape = "CategoryCode", 
            type = "string", locationName = "categoryCode"), 
        SeverityCode = structure(logical(0), shape = "SeverityCode", 
            type = "string", locationName = "severityCode"), 
        SubmittedBy = structure(logical(0), shape = "SubmittedBy", 
            type = "string", locationName = "submittedBy"), TimeCreated = structure(logical(0), 
            shape = "TimeCreated", type = "string", locationName = "timeCreated"), 
        RecentCommunications = structure(list(Communications = structure(list(structure(list(CaseId = structure(logical(0), 
            shape = "CaseId", type = "string", locationName = "caseId"), 
            Body = structure(logical(0), shape = "CommunicationBody", 
                type = "string", max = 8000L, min = 1L, locationName = "body"), 
            SubmittedBy = structure(logical(0), shape = "SubmittedBy", 
                type = "string", locationName = "submittedBy"), 
            TimeCreated = structure(logical(0), shape = "TimeCreated", 
                type = "string", locationName = "timeCreated"), 
            AttachmentSet = structure(list(structure(list(AttachmentId = structure(logical(0), 
                shape = "AttachmentId", type = "string", locationName = "attachmentId"), 
                FileName = structure(logical(0), shape = "FileName", 
                  type = "string", locationName = "fileName")), 
                shape = "AttachmentDetails", type = "structure")), 
                shape = "AttachmentSet", type = "list", locationName = "attachmentSet")), 
            shape = "Communication", type = "structure")), shape = "CommunicationList", 
            type = "list", locationName = "communications"), 
            NextToken = structure(logical(0), shape = "NextToken", 
                type = "string", locationName = "nextToken")), 
            shape = "RecentCaseCommunications", type = "structure", 
            locationName = "recentCommunications"), CcEmailAddresses = structure(list(structure(logical(0), 
            shape = "CcEmailAddress", type = "string")), shape = "CcEmailAddressList", 
            type = "list", max = 10L, min = 0L, locationName = "ccEmailAddresses"), 
        Language = structure(logical(0), shape = "Language", 
            type = "string", locationName = "language")), shape = "CaseDetails", 
        type = "structure")), shape = "CaseList", type = "list", 
        locationName = "cases"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeCasesResponse", type = "structure")
    return(populate(args, shape))
}

describe_communications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaseId = structure(logical(0), shape = "CaseId", 
        type = "string", locationName = "caseId"), BeforeTime = structure(logical(0), 
        shape = "BeforeTime", type = "string", locationName = "beforeTime"), 
        AfterTime = structure(logical(0), shape = "AfterTime", 
            type = "string", locationName = "afterTime"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 10L, locationName = "maxResults")), 
        shape = "DescribeCommunicationsRequest", type = "structure")
    return(populate(args, shape))
}

describe_communications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Communications = structure(list(structure(list(CaseId = structure(logical(0), 
        shape = "CaseId", type = "string", locationName = "caseId"), 
        Body = structure(logical(0), shape = "CommunicationBody", 
            type = "string", max = 8000L, min = 1L, locationName = "body"), 
        SubmittedBy = structure(logical(0), shape = "SubmittedBy", 
            type = "string", locationName = "submittedBy"), TimeCreated = structure(logical(0), 
            shape = "TimeCreated", type = "string", locationName = "timeCreated"), 
        AttachmentSet = structure(list(structure(list(AttachmentId = structure(logical(0), 
            shape = "AttachmentId", type = "string", locationName = "attachmentId"), 
            FileName = structure(logical(0), shape = "FileName", 
                type = "string", locationName = "fileName")), 
            shape = "AttachmentDetails", type = "structure")), 
            shape = "AttachmentSet", type = "list", locationName = "attachmentSet")), 
        shape = "Communication", type = "structure")), shape = "CommunicationList", 
        type = "list", locationName = "communications"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeCommunicationsResponse", type = "structure")
    return(populate(args, shape))
}

describe_services_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceCodeList = structure(list(structure(logical(0), 
        shape = "ServiceCode", type = "string")), shape = "ServiceCodeList", 
        type = "list", max = 100L, min = 0L, locationName = "serviceCodeList"), 
        Language = structure(logical(0), shape = "Language", 
            type = "string", locationName = "language")), shape = "DescribeServicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_services_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Services = structure(list(structure(list(Code = structure(logical(0), 
        shape = "ServiceCode", type = "string", locationName = "code"), 
        Name = structure(logical(0), shape = "ServiceName", type = "string", 
            locationName = "name"), Categories = structure(list(structure(list(Code = structure(logical(0), 
            shape = "CategoryCode", type = "string", locationName = "code"), 
            Name = structure(logical(0), shape = "CategoryName", 
                type = "string", locationName = "name")), shape = "Category", 
            type = "structure")), shape = "CategoryList", type = "list", 
            locationName = "categories")), shape = "Service", 
        type = "structure")), shape = "ServiceList", type = "list", 
        locationName = "services")), shape = "DescribeServicesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_severity_levels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Language = structure(logical(0), 
        shape = "Language", type = "string", locationName = "language")), 
        shape = "DescribeSeverityLevelsRequest", type = "structure")
    return(populate(args, shape))
}

describe_severity_levels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SeverityLevels = structure(list(structure(list(Code = structure(logical(0), 
        shape = "SeverityLevelCode", type = "string", locationName = "code"), 
        Name = structure(logical(0), shape = "SeverityLevelName", 
            type = "string", locationName = "name")), shape = "SeverityLevel", 
        type = "structure")), shape = "SeverityLevelsList", type = "list", 
        locationName = "severityLevels")), shape = "DescribeSeverityLevelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_check_refresh_statuses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CheckIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "checkIds")), shape = "DescribeTrustedAdvisorCheckRefreshStatusesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_check_refresh_statuses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Statuses = structure(list(structure(list(CheckId = structure(logical(0), 
        shape = "String", type = "string", locationName = "checkId"), 
        Status = structure(logical(0), shape = "String", type = "string", 
            locationName = "status"), MillisUntilNextRefreshable = structure(logical(0), 
            shape = "Long", type = "long", locationName = "millisUntilNextRefreshable")), 
        shape = "TrustedAdvisorCheckRefreshStatus", type = "structure")), 
        shape = "TrustedAdvisorCheckRefreshStatusList", type = "list", 
        locationName = "statuses")), shape = "DescribeTrustedAdvisorCheckRefreshStatusesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_check_result_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CheckId = structure(logical(0), shape = "String", 
        type = "string", locationName = "checkId"), Language = structure(logical(0), 
        shape = "String", type = "string", locationName = "language")), 
        shape = "DescribeTrustedAdvisorCheckResultRequest", type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_check_result_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Result = structure(list(CheckId = structure(logical(0), 
        shape = "String", type = "string", locationName = "checkId"), 
        Timestamp = structure(logical(0), shape = "String", type = "string", 
            locationName = "timestamp"), Status = structure(logical(0), 
            shape = "String", type = "string", locationName = "status"), 
        ResourcesSummary = structure(list(ResourcesProcessed = structure(logical(0), 
            shape = "Long", type = "long", locationName = "resourcesProcessed"), 
            ResourcesFlagged = structure(logical(0), shape = "Long", 
                type = "long", locationName = "resourcesFlagged"), 
            ResourcesIgnored = structure(logical(0), shape = "Long", 
                type = "long", locationName = "resourcesIgnored"), 
            ResourcesSuppressed = structure(logical(0), shape = "Long", 
                type = "long", locationName = "resourcesSuppressed")), 
            shape = "TrustedAdvisorResourcesSummary", type = "structure", 
            locationName = "resourcesSummary"), CategorySpecificSummary = structure(list(CostOptimizing = structure(list(EstimatedMonthlySavings = structure(logical(0), 
            shape = "Double", type = "double", locationName = "estimatedMonthlySavings"), 
            EstimatedPercentMonthlySavings = structure(logical(0), 
                shape = "Double", type = "double", locationName = "estimatedPercentMonthlySavings")), 
            shape = "TrustedAdvisorCostOptimizingSummary", type = "structure", 
            locationName = "costOptimizing")), shape = "TrustedAdvisorCategorySpecificSummary", 
            type = "structure", locationName = "categorySpecificSummary"), 
        FlaggedResources = structure(list(structure(list(Status = structure(logical(0), 
            shape = "String", type = "string", locationName = "status"), 
            Region = structure(logical(0), shape = "String", 
                type = "string", locationName = "region"), ResourceId = structure(logical(0), 
                shape = "String", type = "string", locationName = "resourceId"), 
            IsSuppressed = structure(logical(0), shape = "Boolean", 
                type = "boolean", locationName = "isSuppressed"), 
            Metadata = structure(list(structure(logical(0), shape = "String", 
                type = "string")), shape = "StringList", type = "list", 
                locationName = "metadata")), shape = "TrustedAdvisorResourceDetail", 
            type = "structure")), shape = "TrustedAdvisorResourceDetailList", 
            type = "list", locationName = "flaggedResources")), 
        shape = "TrustedAdvisorCheckResult", type = "structure", 
        locationName = "result")), shape = "DescribeTrustedAdvisorCheckResultResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_check_summaries_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CheckIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list", locationName = "checkIds")), shape = "DescribeTrustedAdvisorCheckSummariesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_check_summaries_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Summaries = structure(list(structure(list(CheckId = structure(logical(0), 
        shape = "String", type = "string", locationName = "checkId"), 
        Timestamp = structure(logical(0), shape = "String", type = "string", 
            locationName = "timestamp"), Status = structure(logical(0), 
            shape = "String", type = "string", locationName = "status"), 
        HasFlaggedResources = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "hasFlaggedResources"), 
        ResourcesSummary = structure(list(ResourcesProcessed = structure(logical(0), 
            shape = "Long", type = "long", locationName = "resourcesProcessed"), 
            ResourcesFlagged = structure(logical(0), shape = "Long", 
                type = "long", locationName = "resourcesFlagged"), 
            ResourcesIgnored = structure(logical(0), shape = "Long", 
                type = "long", locationName = "resourcesIgnored"), 
            ResourcesSuppressed = structure(logical(0), shape = "Long", 
                type = "long", locationName = "resourcesSuppressed")), 
            shape = "TrustedAdvisorResourcesSummary", type = "structure", 
            locationName = "resourcesSummary"), CategorySpecificSummary = structure(list(CostOptimizing = structure(list(EstimatedMonthlySavings = structure(logical(0), 
            shape = "Double", type = "double", locationName = "estimatedMonthlySavings"), 
            EstimatedPercentMonthlySavings = structure(logical(0), 
                shape = "Double", type = "double", locationName = "estimatedPercentMonthlySavings")), 
            shape = "TrustedAdvisorCostOptimizingSummary", type = "structure", 
            locationName = "costOptimizing")), shape = "TrustedAdvisorCategorySpecificSummary", 
            type = "structure", locationName = "categorySpecificSummary")), 
        shape = "TrustedAdvisorCheckSummary", type = "structure")), 
        shape = "TrustedAdvisorCheckSummaryList", type = "list", 
        locationName = "summaries")), shape = "DescribeTrustedAdvisorCheckSummariesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_checks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Language = structure(logical(0), 
        shape = "String", type = "string", locationName = "language")), 
        shape = "DescribeTrustedAdvisorChecksRequest", type = "structure")
    return(populate(args, shape))
}

describe_trusted_advisor_checks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Checks = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string", locationName = "id"), 
        Name = structure(logical(0), shape = "String", type = "string", 
            locationName = "name"), Description = structure(logical(0), 
            shape = "String", type = "string", locationName = "description"), 
        Category = structure(logical(0), shape = "String", type = "string", 
            locationName = "category"), Metadata = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "metadata")), shape = "TrustedAdvisorCheckDescription", 
        type = "structure")), shape = "TrustedAdvisorCheckList", 
        type = "list", locationName = "checks")), shape = "DescribeTrustedAdvisorChecksResponse", 
        type = "structure")
    return(populate(args, shape))
}

refresh_trusted_advisor_check_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CheckId = structure(logical(0), shape = "String", 
        type = "string", locationName = "checkId")), shape = "RefreshTrustedAdvisorCheckRequest", 
        type = "structure")
    return(populate(args, shape))
}

refresh_trusted_advisor_check_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(list(CheckId = structure(logical(0), 
        shape = "String", type = "string", locationName = "checkId"), 
        Status = structure(logical(0), shape = "String", type = "string", 
            locationName = "status"), MillisUntilNextRefreshable = structure(logical(0), 
            shape = "Long", type = "long", locationName = "millisUntilNextRefreshable")), 
        shape = "TrustedAdvisorCheckRefreshStatus", type = "structure", 
        locationName = "status")), shape = "RefreshTrustedAdvisorCheckResponse", 
        type = "structure")
    return(populate(args, shape))
}

resolve_case_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CaseId = structure(logical(0), shape = "CaseId", 
        type = "string", locationName = "caseId")), shape = "ResolveCaseRequest", 
        type = "structure")
    return(populate(args, shape))
}

resolve_case_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InitialCaseStatus = structure(logical(0), 
        shape = "CaseStatus", type = "string", locationName = "initialCaseStatus"), 
        FinalCaseStatus = structure(logical(0), shape = "CaseStatus", 
            type = "string", locationName = "finalCaseStatus")), 
        shape = "ResolveCaseResponse", type = "structure")
    return(populate(args, shape))
}
