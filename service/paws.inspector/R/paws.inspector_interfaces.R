add_attributes_to_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FindingArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "AddRemoveAttributesFindingArnList", type = "list", 
        max = 10L, min = 1L, locationName = "findingArns"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "AttributeKey", type = "string", max = 128L, 
        min = 1L, locationName = "key"), Value = structure(logical(0), 
        shape = "AttributeValue", type = "string", max = 256L, 
        min = 1L, locationName = "value")), shape = "Attribute", 
        type = "structure")), shape = "UserAttributeList", type = "list", 
        max = 10L, min = 0L, locationName = "attributes")), shape = "AddAttributesToFindingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_attributes_to_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
        shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
        Retryable = structure(logical(0), shape = "Bool", type = "boolean", 
            locationName = "retryable")), shape = "FailedItemDetails", 
        type = "structure")), shape = "FailedItems", type = "map", 
        locationName = "failedItems")), shape = "AddAttributesToFindingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_assessment_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetName = structure(logical(0), 
        shape = "AssessmentTargetName", type = "string", max = 140L, 
        min = 1L, locationName = "assessmentTargetName"), ResourceGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceGroupArn")), shape = "CreateAssessmentTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_assessment_target_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTargetArn")), shape = "CreateAssessmentTargetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_assessment_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTargetArn"), AssessmentTemplateName = structure(logical(0), 
        shape = "AssessmentTemplateName", type = "string", max = 140L, 
        min = 1L, locationName = "assessmentTemplateName"), DurationInSeconds = structure(logical(0), 
        shape = "AssessmentRunDuration", type = "integer", max = 86400L, 
        min = 180L, locationName = "durationInSeconds"), RulesPackageArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "AssessmentTemplateRulesPackageArnList", type = "list", 
        max = 50L, min = 0L, locationName = "rulesPackageArns"), 
        UserAttributesForFindings = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "UserAttributeList", 
            type = "list", max = 10L, min = 0L, locationName = "userAttributesForFindings")), 
        shape = "CreateAssessmentTemplateRequest", type = "structure")
    return(populate(args, shape))
}

create_assessment_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTemplateArn")), shape = "CreateAssessmentTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_exclusions_preview_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTemplateArn")), shape = "CreateExclusionsPreviewRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_exclusions_preview_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PreviewToken = structure(logical(0), 
        shape = "UUID", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "previewToken")), shape = "CreateExclusionsPreviewResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_resource_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceGroupTags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        locationName = "value")), shape = "ResourceGroupTag", 
        type = "structure")), shape = "ResourceGroupTags", type = "list", 
        max = 10L, min = 1L, locationName = "resourceGroupTags")), 
        shape = "CreateResourceGroupRequest", type = "structure")
    return(populate(args, shape))
}

create_resource_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceGroupArn")), shape = "CreateResourceGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_assessment_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn")), shape = "DeleteAssessmentRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_assessment_run_output <- function () 
{
    return(list())
}

delete_assessment_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTargetArn")), shape = "DeleteAssessmentTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_assessment_target_output <- function () 
{
    return(list())
}

delete_assessment_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTemplateArn")), shape = "DeleteAssessmentTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_assessment_template_output <- function () 
{
    return(list())
}

describe_assessment_runs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeArnList", type = "list", max = 10L, 
        min = 1L, locationName = "assessmentRunArns")), shape = "DescribeAssessmentRunsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_assessment_runs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRuns = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), Name = structure(logical(0), shape = "AssessmentRunName", 
        type = "string", max = 140L, min = 1L, locationName = "name"), 
        AssessmentTemplateArn = structure(logical(0), shape = "Arn", 
            type = "string", max = 300L, min = 1L, locationName = "assessmentTemplateArn"), 
        State = structure(logical(0), shape = "AssessmentRunState", 
            type = "string", locationName = "state"), DurationInSeconds = structure(logical(0), 
            shape = "AssessmentRunDuration", type = "integer", 
            max = 86400L, min = 180L, locationName = "durationInSeconds"), 
        RulesPackageArns = structure(list(structure(logical(0), 
            shape = "Arn", type = "string", max = 300L, min = 1L)), 
            shape = "AssessmentRulesPackageArnList", type = "list", 
            max = 50L, min = 1L, locationName = "rulesPackageArns"), 
        UserAttributesForFindings = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "UserAttributeList", 
            type = "list", max = 10L, min = 0L, locationName = "userAttributesForFindings"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdAt"), 
        StartedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "startedAt"), 
        CompletedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "completedAt"), 
        StateChangedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "stateChangedAt"), 
        DataCollected = structure(logical(0), shape = "Bool", 
            type = "boolean", locationName = "dataCollected"), 
        StateChanges = structure(list(structure(list(StateChangedAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "stateChangedAt"), 
            State = structure(logical(0), shape = "AssessmentRunState", 
                type = "string", locationName = "state")), shape = "AssessmentRunStateChange", 
            type = "structure")), shape = "AssessmentRunStateChangeList", 
            type = "list", max = 50L, min = 0L, locationName = "stateChanges"), 
        Notifications = structure(list(structure(list(Date = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "date"), 
            Event = structure(logical(0), shape = "InspectorEvent", 
                type = "string", locationName = "event"), Message = structure(logical(0), 
                shape = "Message", type = "string", max = 1000L, 
                min = 0L, locationName = "message"), Error = structure(logical(0), 
                shape = "Bool", type = "boolean", locationName = "error"), 
            SnsTopicArn = structure(logical(0), shape = "Arn", 
                type = "string", max = 300L, min = 1L, locationName = "snsTopicArn"), 
            SnsPublishStatusCode = structure(logical(0), shape = "AssessmentRunNotificationSnsStatusCode", 
                type = "string", locationName = "snsPublishStatusCode")), 
            shape = "AssessmentRunNotification", type = "structure")), 
            shape = "AssessmentRunNotificationList", type = "list", 
            max = 50L, min = 0L, locationName = "notifications"), 
        FindingCounts = structure(list(structure(logical(0), 
            shape = "FindingCount", type = "integer")), shape = "AssessmentRunFindingCounts", 
            type = "map", locationName = "findingCounts")), shape = "AssessmentRun", 
        type = "structure")), shape = "AssessmentRunList", type = "list", 
        max = 10L, min = 0L, locationName = "assessmentRuns"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeAssessmentRunsResponse", type = "structure")
    return(populate(args, shape))
}

describe_assessment_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeArnList", type = "list", max = 10L, 
        min = 1L, locationName = "assessmentTargetArns")), shape = "DescribeAssessmentTargetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_assessment_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargets = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), Name = structure(logical(0), shape = "AssessmentTargetName", 
        type = "string", max = 140L, min = 1L, locationName = "name"), 
        ResourceGroupArn = structure(logical(0), shape = "Arn", 
            type = "string", max = 300L, min = 1L, locationName = "resourceGroupArn"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdAt"), 
        UpdatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "updatedAt")), 
        shape = "AssessmentTarget", type = "structure")), shape = "AssessmentTargetList", 
        type = "list", max = 10L, min = 0L, locationName = "assessmentTargets"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeAssessmentTargetsResponse", type = "structure")
    return(populate(args, shape))
}

describe_assessment_templates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeArnList", type = "list", max = 10L, 
        min = 1L, locationName = "assessmentTemplateArns")), 
        shape = "DescribeAssessmentTemplatesRequest", type = "structure")
    return(populate(args, shape))
}

describe_assessment_templates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplates = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), Name = structure(logical(0), shape = "AssessmentTemplateName", 
        type = "string", max = 140L, min = 1L, locationName = "name"), 
        AssessmentTargetArn = structure(logical(0), shape = "Arn", 
            type = "string", max = 300L, min = 1L, locationName = "assessmentTargetArn"), 
        DurationInSeconds = structure(logical(0), shape = "AssessmentRunDuration", 
            type = "integer", max = 86400L, min = 180L, locationName = "durationInSeconds"), 
        RulesPackageArns = structure(list(structure(logical(0), 
            shape = "Arn", type = "string", max = 300L, min = 1L)), 
            shape = "AssessmentTemplateRulesPackageArnList", 
            type = "list", max = 50L, min = 0L, locationName = "rulesPackageArns"), 
        UserAttributesForFindings = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "UserAttributeList", 
            type = "list", max = 10L, min = 0L, locationName = "userAttributesForFindings"), 
        LastAssessmentRunArn = structure(logical(0), shape = "Arn", 
            type = "string", max = 300L, min = 1L, locationName = "lastAssessmentRunArn"), 
        AssessmentRunCount = structure(logical(0), shape = "ArnCount", 
            type = "integer", locationName = "assessmentRunCount"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdAt")), 
        shape = "AssessmentTemplate", type = "structure")), shape = "AssessmentTemplateList", 
        type = "list", max = 10L, min = 0L, locationName = "assessmentTemplates"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeAssessmentTemplatesResponse", type = "structure")
    return(populate(args, shape))
}

describe_cross_account_access_role_input <- function () 
{
    return(list())
}

describe_cross_account_access_role_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "Arn", 
        type = "string", max = 300L, min = 1L, locationName = "roleArn"), 
        Valid = structure(logical(0), shape = "Bool", type = "boolean", 
            locationName = "valid"), RegisteredAt = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "registeredAt")), 
        shape = "DescribeCrossAccountAccessRoleResponse", type = "structure")
    return(populate(args, shape))
}

describe_exclusions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExclusionArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeExclusionsArnList", type = "list", 
        max = 100L, min = 1L, locationName = "exclusionArns"), 
        Locale = structure(logical(0), shape = "Locale", type = "string", 
            locationName = "locale")), shape = "DescribeExclusionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_exclusions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Exclusions = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), Title = structure(logical(0), 
        shape = "Text", type = "string", max = 20000L, min = 0L, 
        locationName = "title"), Description = structure(logical(0), 
        shape = "Text", type = "string", max = 20000L, min = 0L, 
        locationName = "description"), Recommendation = structure(logical(0), 
        shape = "Text", type = "string", max = 20000L, min = 0L, 
        locationName = "recommendation"), Scopes = structure(list(structure(list(Key = structure(logical(0), 
        shape = "ScopeType", type = "string", locationName = "key"), 
        Value = structure(logical(0), shape = "ScopeValue", type = "string", 
            locationName = "value")), shape = "Scope", type = "structure")), 
        shape = "ScopeList", type = "list", min = 1L, locationName = "scopes"), 
        Attributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "AttributeList", type = "list", 
            max = 50L, min = 0L, locationName = "attributes")), 
        shape = "Exclusion", type = "structure")), shape = "ExclusionMap", 
        type = "map", max = 100L, min = 1L, locationName = "exclusions"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeExclusionsResponse", type = "structure")
    return(populate(args, shape))
}

describe_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FindingArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeArnList", type = "list", max = 10L, 
        min = 1L, locationName = "findingArns"), Locale = structure(logical(0), 
        shape = "Locale", type = "string", locationName = "locale")), 
        shape = "DescribeFindingsRequest", type = "structure")
    return(populate(args, shape))
}

describe_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Findings = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), SchemaVersion = structure(logical(0), 
        shape = "NumericVersion", type = "integer", min = 0L, 
        locationName = "schemaVersion"), Service = structure(logical(0), 
        shape = "ServiceName", type = "string", max = 128L, min = 0L, 
        locationName = "service"), ServiceAttributes = structure(list(SchemaVersion = structure(logical(0), 
        shape = "NumericVersion", type = "integer", min = 0L, 
        locationName = "schemaVersion"), AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn"), RulesPackageArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "rulesPackageArn")), shape = "InspectorServiceAttributes", 
        type = "structure", locationName = "serviceAttributes"), 
        AssetType = structure(logical(0), shape = "AssetType", 
            type = "string", locationName = "assetType"), AssetAttributes = structure(list(SchemaVersion = structure(logical(0), 
            shape = "NumericVersion", type = "integer", min = 0L, 
            locationName = "schemaVersion"), AgentId = structure(logical(0), 
            shape = "AgentId", type = "string", max = 128L, min = 1L, 
            locationName = "agentId"), AutoScalingGroup = structure(logical(0), 
            shape = "AutoScalingGroup", type = "string", max = 256L, 
            min = 1L, locationName = "autoScalingGroup"), AmiId = structure(logical(0), 
            shape = "AmiId", type = "string", max = 256L, min = 0L, 
            locationName = "amiId"), Hostname = structure(logical(0), 
            shape = "Hostname", type = "string", max = 256L, 
            min = 0L, locationName = "hostname"), Ipv4Addresses = structure(list(structure(logical(0), 
            shape = "Ipv4Address", type = "string", max = 15L, 
            min = 7L)), shape = "Ipv4AddressList", type = "list", 
            max = 50L, min = 0L, locationName = "ipv4Addresses")), 
            shape = "AssetAttributes", type = "structure", locationName = "assetAttributes"), 
        Id = structure(logical(0), shape = "FindingId", type = "string", 
            max = 128L, min = 0L, locationName = "id"), Title = structure(logical(0), 
            shape = "Text", type = "string", max = 20000L, min = 0L, 
            locationName = "title"), Description = structure(logical(0), 
            shape = "Text", type = "string", max = 20000L, min = 0L, 
            locationName = "description"), Recommendation = structure(logical(0), 
            shape = "Text", type = "string", max = 20000L, min = 0L, 
            locationName = "recommendation"), Severity = structure(logical(0), 
            shape = "Severity", type = "string", locationName = "severity"), 
        NumericSeverity = structure(logical(0), shape = "NumericSeverity", 
            type = "double", max = 10, min = 0, locationName = "numericSeverity"), 
        Confidence = structure(logical(0), shape = "IocConfidence", 
            type = "integer", max = 10L, min = 0L, locationName = "confidence"), 
        IndicatorOfCompromise = structure(logical(0), shape = "Bool", 
            type = "boolean", locationName = "indicatorOfCompromise"), 
        Attributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "AttributeList", type = "list", 
            max = 50L, min = 0L, locationName = "attributes"), 
        UserAttributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "UserAttributeList", 
            type = "list", max = 10L, min = 0L, locationName = "userAttributes"), 
        CreatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdAt"), 
        UpdatedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "updatedAt")), 
        shape = "Finding", type = "structure")), shape = "FindingList", 
        type = "list", max = 100L, min = 0L, locationName = "findings"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeFindingsResponse", type = "structure")
    return(populate(args, shape))
}

describe_resource_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceGroupArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeArnList", type = "list", max = 10L, 
        min = 1L, locationName = "resourceGroupArns")), shape = "DescribeResourceGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_resource_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceGroups = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        locationName = "value")), shape = "ResourceGroupTag", 
        type = "structure")), shape = "ResourceGroupTags", type = "list", 
        max = 10L, min = 1L, locationName = "tags"), CreatedAt = structure(logical(0), 
        shape = "Timestamp", type = "timestamp", locationName = "createdAt")), 
        shape = "ResourceGroup", type = "structure")), shape = "ResourceGroupList", 
        type = "list", max = 10L, min = 0L, locationName = "resourceGroups"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeResourceGroupsResponse", type = "structure")
    return(populate(args, shape))
}

describe_rules_packages_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RulesPackageArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "BatchDescribeArnList", type = "list", max = 10L, 
        min = 1L, locationName = "rulesPackageArns"), Locale = structure(logical(0), 
        shape = "Locale", type = "string", locationName = "locale")), 
        shape = "DescribeRulesPackagesRequest", type = "structure")
    return(populate(args, shape))
}

describe_rules_packages_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RulesPackages = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "arn"), Name = structure(logical(0), shape = "RulesPackageName", 
        type = "string", max = 1000L, min = 0L, locationName = "name"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 1000L, min = 0L, locationName = "version"), 
        Provider = structure(logical(0), shape = "ProviderName", 
            type = "string", max = 1000L, min = 0L, locationName = "provider"), 
        Description = structure(logical(0), shape = "Text", type = "string", 
            max = 20000L, min = 0L, locationName = "description")), 
        shape = "RulesPackage", type = "structure")), shape = "RulesPackageList", 
        type = "list", max = 10L, min = 0L, locationName = "rulesPackages"), 
        FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
            shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
            Retryable = structure(logical(0), shape = "Bool", 
                type = "boolean", locationName = "retryable")), 
            shape = "FailedItemDetails", type = "structure")), 
            shape = "FailedItems", type = "map", locationName = "failedItems")), 
        shape = "DescribeRulesPackagesResponse", type = "structure")
    return(populate(args, shape))
}

get_assessment_report_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn"), ReportFileFormat = structure(logical(0), 
        shape = "ReportFileFormat", type = "string", locationName = "reportFileFormat"), 
        ReportType = structure(logical(0), shape = "ReportType", 
            type = "string", locationName = "reportType")), shape = "GetAssessmentReportRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_assessment_report_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "ReportStatus", 
        type = "string", locationName = "status"), Url = structure(logical(0), 
        shape = "Url", type = "string", max = 2048L, locationName = "url")), 
        shape = "GetAssessmentReportResponse", type = "structure")
    return(populate(args, shape))
}

get_exclusions_preview_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTemplateArn"), PreviewToken = structure(logical(0), 
        shape = "UUID", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", 
        locationName = "previewToken"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "ListMaxResults", type = "integer", locationName = "maxResults"), 
        Locale = structure(logical(0), shape = "Locale", type = "string", 
            locationName = "locale")), shape = "GetExclusionsPreviewRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_exclusions_preview_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PreviewStatus = structure(logical(0), 
        shape = "PreviewStatus", type = "string", locationName = "previewStatus"), 
        ExclusionPreviews = structure(list(structure(list(Title = structure(logical(0), 
            shape = "Text", type = "string", max = 20000L, min = 0L, 
            locationName = "title"), Description = structure(logical(0), 
            shape = "Text", type = "string", max = 20000L, min = 0L, 
            locationName = "description"), Recommendation = structure(logical(0), 
            shape = "Text", type = "string", max = 20000L, min = 0L, 
            locationName = "recommendation"), Scopes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "ScopeType", type = "string", locationName = "key"), 
            Value = structure(logical(0), shape = "ScopeValue", 
                type = "string", locationName = "value")), shape = "Scope", 
            type = "structure")), shape = "ScopeList", type = "list", 
            min = 1L, locationName = "scopes"), Attributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "AttributeList", type = "list", 
            max = 50L, min = 0L, locationName = "attributes")), 
            shape = "ExclusionPreview", type = "structure")), 
            shape = "ExclusionPreviewList", type = "list", max = 100L, 
            min = 0L, locationName = "exclusionPreviews"), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 300L, 
            min = 1L, locationName = "nextToken")), shape = "GetExclusionsPreviewResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_telemetry_metadata_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn")), shape = "GetTelemetryMetadataRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_telemetry_metadata_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TelemetryMetadata = structure(list(structure(list(MessageType = structure(logical(0), 
        shape = "MessageType", type = "string", max = 300L, min = 1L, 
        locationName = "messageType"), Count = structure(logical(0), 
        shape = "Long", type = "long", locationName = "count"), 
        DataSize = structure(logical(0), shape = "Long", type = "long", 
            locationName = "dataSize")), shape = "TelemetryMetadata", 
        type = "structure")), shape = "TelemetryMetadataList", 
        type = "list", max = 5000L, min = 0L, locationName = "telemetryMetadata")), 
        shape = "GetTelemetryMetadataResponse", type = "structure")
    return(populate(args, shape))
}

list_assessment_run_agents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn"), Filter = structure(list(AgentHealths = structure(list(structure(logical(0), 
        shape = "AgentHealth", type = "string")), shape = "AgentHealthList", 
        type = "list", max = 10L, min = 0L, locationName = "agentHealths"), 
        AgentHealthCodes = structure(list(structure(logical(0), 
            shape = "AgentHealthCode", type = "string")), shape = "AgentHealthCodeList", 
            type = "list", max = 10L, min = 0L, locationName = "agentHealthCodes")), 
        shape = "AgentFilter", type = "structure", locationName = "filter"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 300L, min = 1L, locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "ListMaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "ListAssessmentRunAgentsRequest", type = "structure")
    return(populate(args, shape))
}

list_assessment_run_agents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunAgents = structure(list(structure(list(AgentId = structure(logical(0), 
        shape = "AgentId", type = "string", max = 128L, min = 1L, 
        locationName = "agentId"), AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn"), AgentHealth = structure(logical(0), 
        shape = "AgentHealth", type = "string", locationName = "agentHealth"), 
        AgentHealthCode = structure(logical(0), shape = "AgentHealthCode", 
            type = "string", locationName = "agentHealthCode"), 
        AgentHealthDetails = structure(logical(0), shape = "Message", 
            type = "string", max = 1000L, min = 0L, locationName = "agentHealthDetails"), 
        AutoScalingGroup = structure(logical(0), shape = "AutoScalingGroup", 
            type = "string", max = 256L, min = 1L, locationName = "autoScalingGroup"), 
        TelemetryMetadata = structure(list(structure(list(MessageType = structure(logical(0), 
            shape = "MessageType", type = "string", max = 300L, 
            min = 1L, locationName = "messageType"), Count = structure(logical(0), 
            shape = "Long", type = "long", locationName = "count"), 
            DataSize = structure(logical(0), shape = "Long", 
                type = "long", locationName = "dataSize")), shape = "TelemetryMetadata", 
            type = "structure")), shape = "TelemetryMetadataList", 
            type = "list", max = 5000L, min = 0L, locationName = "telemetryMetadata")), 
        shape = "AssessmentRunAgent", type = "structure")), shape = "AssessmentRunAgentList", 
        type = "list", max = 500L, min = 0L, locationName = "assessmentRunAgents"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 300L, min = 1L, locationName = "nextToken")), 
        shape = "ListAssessmentRunAgentsResponse", type = "structure")
    return(populate(args, shape))
}

list_assessment_runs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListParentArnList", type = "list", max = 50L, 
        min = 0L, locationName = "assessmentTemplateArns"), Filter = structure(list(NamePattern = structure(logical(0), 
        shape = "NamePattern", type = "string", max = 140L, min = 1L, 
        locationName = "namePattern"), States = structure(list(structure(logical(0), 
        shape = "AssessmentRunState", type = "string")), shape = "AssessmentRunStateList", 
        type = "list", max = 50L, min = 0L, locationName = "states"), 
        DurationRange = structure(list(MinSeconds = structure(logical(0), 
            shape = "AssessmentRunDuration", type = "integer", 
            max = 86400L, min = 180L, locationName = "minSeconds"), 
            MaxSeconds = structure(logical(0), shape = "AssessmentRunDuration", 
                type = "integer", max = 86400L, min = 180L, locationName = "maxSeconds")), 
            shape = "DurationRange", type = "structure", locationName = "durationRange"), 
        RulesPackageArns = structure(list(structure(logical(0), 
            shape = "Arn", type = "string", max = 300L, min = 1L)), 
            shape = "FilterRulesPackageArnList", type = "list", 
            max = 50L, min = 0L, locationName = "rulesPackageArns"), 
        StartTimeRange = structure(list(BeginDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "beginDate"), 
            EndDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "endDate")), 
            shape = "TimestampRange", type = "structure", locationName = "startTimeRange"), 
        CompletionTimeRange = structure(list(BeginDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "beginDate"), 
            EndDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "endDate")), 
            shape = "TimestampRange", type = "structure", locationName = "completionTimeRange"), 
        StateChangeTimeRange = structure(list(BeginDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "beginDate"), 
            EndDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "endDate")), 
            shape = "TimestampRange", type = "structure", locationName = "stateChangeTimeRange")), 
        shape = "AssessmentRunFilter", type = "structure", locationName = "filter"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 300L, min = 1L, locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "ListMaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "ListAssessmentRunsRequest", type = "structure")
    return(populate(args, shape))
}

list_assessment_runs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListReturnedArnList", type = "list", max = 100L, 
        min = 0L, locationName = "assessmentRunArns"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken")), shape = "ListAssessmentRunsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_assessment_targets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(AssessmentTargetNamePattern = structure(logical(0), 
        shape = "NamePattern", type = "string", max = 140L, min = 1L, 
        locationName = "assessmentTargetNamePattern")), shape = "AssessmentTargetFilter", 
        type = "structure", locationName = "filter"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "ListMaxResults", type = "integer", locationName = "maxResults")), 
        shape = "ListAssessmentTargetsRequest", type = "structure")
    return(populate(args, shape))
}

list_assessment_targets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListReturnedArnList", type = "list", max = 100L, 
        min = 0L, locationName = "assessmentTargetArns"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken")), shape = "ListAssessmentTargetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_assessment_templates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListParentArnList", type = "list", max = 50L, 
        min = 0L, locationName = "assessmentTargetArns"), Filter = structure(list(NamePattern = structure(logical(0), 
        shape = "NamePattern", type = "string", max = 140L, min = 1L, 
        locationName = "namePattern"), DurationRange = structure(list(MinSeconds = structure(logical(0), 
        shape = "AssessmentRunDuration", type = "integer", max = 86400L, 
        min = 180L, locationName = "minSeconds"), MaxSeconds = structure(logical(0), 
        shape = "AssessmentRunDuration", type = "integer", max = 86400L, 
        min = 180L, locationName = "maxSeconds")), shape = "DurationRange", 
        type = "structure", locationName = "durationRange"), 
        RulesPackageArns = structure(list(structure(logical(0), 
            shape = "Arn", type = "string", max = 300L, min = 1L)), 
            shape = "FilterRulesPackageArnList", type = "list", 
            max = 50L, min = 0L, locationName = "rulesPackageArns")), 
        shape = "AssessmentTemplateFilter", type = "structure", 
        locationName = "filter"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "ListMaxResults", type = "integer", locationName = "maxResults")), 
        shape = "ListAssessmentTemplatesRequest", type = "structure")
    return(populate(args, shape))
}

list_assessment_templates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListReturnedArnList", type = "list", max = 100L, 
        min = 0L, locationName = "assessmentTemplateArns"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken")), shape = "ListAssessmentTemplatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_event_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceArn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "ListEventSubscriptionsMaxResults", type = "integer", 
        locationName = "maxResults")), shape = "ListEventSubscriptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_event_subscriptions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscriptions = structure(list(structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceArn"), TopicArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "topicArn"), EventSubscriptions = structure(list(structure(list(Event = structure(logical(0), 
        shape = "InspectorEvent", type = "string", locationName = "event"), 
        SubscribedAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "subscribedAt")), 
        shape = "EventSubscription", type = "structure")), shape = "EventSubscriptionList", 
        type = "list", max = 50L, min = 1L, locationName = "eventSubscriptions")), 
        shape = "Subscription", type = "structure")), shape = "SubscriptionList", 
        type = "list", max = 50L, min = 0L, locationName = "subscriptions"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 300L, min = 1L, locationName = "nextToken")), 
        shape = "ListEventSubscriptionsResponse", type = "structure")
    return(populate(args, shape))
}

list_exclusions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "ListMaxResults", type = "integer", locationName = "maxResults")), 
        shape = "ListExclusionsRequest", type = "structure")
    return(populate(args, shape))
}

list_exclusions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExclusionArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListReturnedArnList", type = "list", max = 100L, 
        min = 0L, locationName = "exclusionArns"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken")), shape = "ListExclusionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListParentArnList", type = "list", max = 50L, 
        min = 0L, locationName = "assessmentRunArns"), Filter = structure(list(AgentIds = structure(list(structure(logical(0), 
        shape = "AgentId", type = "string", max = 128L, min = 1L)), 
        shape = "AgentIdList", type = "list", max = 500L, min = 0L, 
        locationName = "agentIds"), AutoScalingGroups = structure(list(structure(logical(0), 
        shape = "AutoScalingGroup", type = "string", max = 256L, 
        min = 1L)), shape = "AutoScalingGroupList", type = "list", 
        max = 20L, min = 0L, locationName = "autoScalingGroups"), 
        RuleNames = structure(list(structure(logical(0), shape = "RuleName", 
            type = "string", max = 1000L)), shape = "RuleNameList", 
            type = "list", max = 50L, min = 0L, locationName = "ruleNames"), 
        Severities = structure(list(structure(logical(0), shape = "Severity", 
            type = "string")), shape = "SeverityList", type = "list", 
            max = 50L, min = 0L, locationName = "severities"), 
        RulesPackageArns = structure(list(structure(logical(0), 
            shape = "Arn", type = "string", max = 300L, min = 1L)), 
            shape = "FilterRulesPackageArnList", type = "list", 
            max = 50L, min = 0L, locationName = "rulesPackageArns"), 
        Attributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "AttributeList", type = "list", 
            max = 50L, min = 0L, locationName = "attributes"), 
        UserAttributes = structure(list(structure(list(Key = structure(logical(0), 
            shape = "AttributeKey", type = "string", max = 128L, 
            min = 1L, locationName = "key"), Value = structure(logical(0), 
            shape = "AttributeValue", type = "string", max = 256L, 
            min = 1L, locationName = "value")), shape = "Attribute", 
            type = "structure")), shape = "AttributeList", type = "list", 
            max = 50L, min = 0L, locationName = "userAttributes"), 
        CreationTimeRange = structure(list(BeginDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "beginDate"), 
            EndDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "endDate")), 
            shape = "TimestampRange", type = "structure", locationName = "creationTimeRange")), 
        shape = "FindingFilter", type = "structure", locationName = "filter"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 300L, min = 1L, locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "ListMaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "ListFindingsRequest", type = "structure")
    return(populate(args, shape))
}

list_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FindingArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListReturnedArnList", type = "list", max = 100L, 
        min = 0L, locationName = "findingArns"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken")), shape = "ListFindingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_rules_packages_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "ListMaxResults", type = "integer", locationName = "maxResults")), 
        shape = "ListRulesPackagesRequest", type = "structure")
    return(populate(args, shape))
}

list_rules_packages_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RulesPackageArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "ListReturnedArnList", type = "list", max = 100L, 
        min = 0L, locationName = "rulesPackageArns"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken")), shape = "ListRulesPackagesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceArn")), shape = "ListTagsForResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", max = 10L, min = 0L, 
        locationName = "tags")), shape = "ListTagsForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

preview_agents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PreviewAgentsArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "previewAgentsArn"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 300L, 
        min = 1L, locationName = "nextToken"), MaxResults = structure(logical(0), 
        shape = "PreviewAgentsMaxResults", type = "integer", 
        locationName = "maxResults")), shape = "PreviewAgentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

preview_agents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AgentPreviews = structure(list(structure(list(Hostname = structure(logical(0), 
        shape = "Hostname", type = "string", max = 256L, min = 0L, 
        locationName = "hostname"), AgentId = structure(logical(0), 
        shape = "AgentId", type = "string", max = 128L, min = 1L, 
        locationName = "agentId"), AutoScalingGroup = structure(logical(0), 
        shape = "AutoScalingGroup", type = "string", max = 256L, 
        min = 1L, locationName = "autoScalingGroup"), AgentHealth = structure(logical(0), 
        shape = "AgentHealth", type = "string", locationName = "agentHealth"), 
        AgentVersion = structure(logical(0), shape = "AgentVersion", 
            type = "string", max = 128L, min = 1L, locationName = "agentVersion"), 
        OperatingSystem = structure(logical(0), shape = "OperatingSystem", 
            type = "string", max = 256L, min = 1L, locationName = "operatingSystem"), 
        KernelVersion = structure(logical(0), shape = "KernelVersion", 
            type = "string", max = 128L, min = 1L, locationName = "kernelVersion"), 
        Ipv4Address = structure(logical(0), shape = "Ipv4Address", 
            type = "string", max = 15L, min = 7L, locationName = "ipv4Address")), 
        shape = "AgentPreview", type = "structure")), shape = "AgentPreviewList", 
        type = "list", max = 100L, min = 0L, locationName = "agentPreviews"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 300L, min = 1L, locationName = "nextToken")), 
        shape = "PreviewAgentsResponse", type = "structure")
    return(populate(args, shape))
}

register_cross_account_access_role_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RoleArn = structure(logical(0), shape = "Arn", 
        type = "string", max = 300L, min = 1L, locationName = "roleArn")), 
        shape = "RegisterCrossAccountAccessRoleRequest", type = "structure")
    return(populate(args, shape))
}

register_cross_account_access_role_output <- function () 
{
    return(list())
}

remove_attributes_from_findings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FindingArns = structure(list(structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L)), 
        shape = "AddRemoveAttributesFindingArnList", type = "list", 
        max = 10L, min = 1L, locationName = "findingArns"), AttributeKeys = structure(list(structure(logical(0), 
        shape = "AttributeKey", type = "string", max = 128L, 
        min = 1L)), shape = "UserAttributeKeyList", type = "list", 
        max = 10L, min = 0L, locationName = "attributeKeys")), 
        shape = "RemoveAttributesFromFindingsRequest", type = "structure")
    return(populate(args, shape))
}

remove_attributes_from_findings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedItems = structure(list(structure(list(FailureCode = structure(logical(0), 
        shape = "FailedItemErrorCode", type = "string", locationName = "failureCode"), 
        Retryable = structure(logical(0), shape = "Bool", type = "boolean", 
            locationName = "retryable")), shape = "FailedItemDetails", 
        type = "structure")), shape = "FailedItems", type = "map", 
        locationName = "failedItems")), shape = "RemoveAttributesFromFindingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceArn"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        locationName = "key"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", max = 256L, min = 1L, 
        locationName = "value")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list", max = 10L, min = 0L, 
        locationName = "tags")), shape = "SetTagsForResourceRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_tags_for_resource_output <- function () 
{
    return(list())
}

start_assessment_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTemplateArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTemplateArn"), AssessmentRunName = structure(logical(0), 
        shape = "AssessmentRunName", type = "string", max = 140L, 
        min = 1L, locationName = "assessmentRunName")), shape = "StartAssessmentRunRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_assessment_run_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn")), shape = "StartAssessmentRunResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_assessment_run_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentRunArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentRunArn"), StopAction = structure(logical(0), 
        shape = "StopAction", type = "string", locationName = "stopAction")), 
        shape = "StopAssessmentRunRequest", type = "structure")
    return(populate(args, shape))
}

stop_assessment_run_output <- function () 
{
    return(list())
}

subscribe_to_event_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceArn"), Event = structure(logical(0), 
        shape = "InspectorEvent", type = "string", locationName = "event"), 
        TopicArn = structure(logical(0), shape = "Arn", type = "string", 
            max = 300L, min = 1L, locationName = "topicArn")), 
        shape = "SubscribeToEventRequest", type = "structure")
    return(populate(args, shape))
}

subscribe_to_event_output <- function () 
{
    return(list())
}

unsubscribe_from_event_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceArn"), Event = structure(logical(0), 
        shape = "InspectorEvent", type = "string", locationName = "event"), 
        TopicArn = structure(logical(0), shape = "Arn", type = "string", 
            max = 300L, min = 1L, locationName = "topicArn")), 
        shape = "UnsubscribeFromEventRequest", type = "structure")
    return(populate(args, shape))
}

unsubscribe_from_event_output <- function () 
{
    return(list())
}

update_assessment_target_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssessmentTargetArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "assessmentTargetArn"), AssessmentTargetName = structure(logical(0), 
        shape = "AssessmentTargetName", type = "string", max = 140L, 
        min = 1L, locationName = "assessmentTargetName"), ResourceGroupArn = structure(logical(0), 
        shape = "Arn", type = "string", max = 300L, min = 1L, 
        locationName = "resourceGroupArn")), shape = "UpdateAssessmentTargetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_assessment_target_output <- function () 
{
    return(list())
}
