accept_qualification_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationRequestId = structure(logical(0), 
        shape = "String", type = "string"), IntegerValue = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "AcceptQualificationRequestRequest", 
        type = "structure")
    return(populate(args, shape))
}

accept_qualification_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AcceptQualificationRequestResponse", 
        type = "structure")
    return(populate(args, shape))
}

approve_assignment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignmentId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), RequesterFeedback = structure(logical(0), 
        shape = "String", type = "string"), OverrideRejection = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ApproveAssignmentRequest", 
        type = "structure")
    return(populate(args, shape))
}

approve_assignment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ApproveAssignmentResponse", 
        type = "structure")
    return(populate(args, shape))
}

associate_qualification_with_worker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), IntegerValue = structure(logical(0), 
        shape = "Integer", type = "integer"), SendNotification = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "AssociateQualificationWithWorkerRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_qualification_with_worker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateQualificationWithWorkerResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_additional_assignments_for_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        NumberOfAdditionalAssignments = structure(logical(0), 
            shape = "Integer", type = "integer"), UniqueRequestToken = structure(logical(0), 
            shape = "IdempotencyToken", type = "string", max = 64L, 
            min = 1L)), shape = "CreateAdditionalAssignmentsForHITRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_additional_assignments_for_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateAdditionalAssignmentsForHITResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), AutoApprovalDelayInSeconds = structure(logical(0), 
        shape = "Long", type = "long"), LifetimeInSeconds = structure(logical(0), 
        shape = "Long", type = "long"), AssignmentDurationInSeconds = structure(logical(0), 
        shape = "Long", type = "long"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        Title = structure(logical(0), shape = "String", type = "string"), 
        Keywords = structure(logical(0), shape = "String", type = "string"), 
        Description = structure(logical(0), shape = "String", 
            type = "string"), Question = structure(logical(0), 
            shape = "String", type = "string"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        UniqueRequestToken = structure(logical(0), shape = "IdempotencyToken", 
            type = "string", max = 64L, min = 1L), AssignmentReviewPolicy = structure(list(PolicyName = structure(logical(0), 
            shape = "String", type = "string"), Parameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), MapEntries = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "ParameterMapEntry", type = "structure")), 
            shape = "ParameterMapEntryList", type = "list")), 
            shape = "PolicyParameter", type = "structure")), 
            shape = "PolicyParameterList", type = "list")), shape = "ReviewPolicy", 
            type = "structure"), HITReviewPolicy = structure(list(PolicyName = structure(logical(0), 
            shape = "String", type = "string"), Parameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), MapEntries = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "ParameterMapEntry", type = "structure")), 
            shape = "ParameterMapEntryList", type = "list")), 
            shape = "PolicyParameter", type = "structure")), 
            shape = "PolicyParameterList", type = "list")), shape = "ReviewPolicy", 
            type = "structure"), HITLayoutId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), HITLayoutParameters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "HITLayoutParameter", 
            type = "structure")), shape = "HITLayoutParameterList", 
            type = "list")), shape = "CreateHITRequest", type = "structure")
    return(populate(args, shape))
}

create_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HIT = structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "CreateHITResponse", type = "structure")
    return(populate(args, shape))
}

create_hit_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoApprovalDelayInSeconds = structure(logical(0), 
        shape = "Long", type = "long"), AssignmentDurationInSeconds = structure(logical(0), 
        shape = "Long", type = "long"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        Title = structure(logical(0), shape = "String", type = "string"), 
        Keywords = structure(logical(0), shape = "String", type = "string"), 
        Description = structure(logical(0), shape = "String", 
            type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list")), 
        shape = "CreateHITTypeRequest", type = "structure")
    return(populate(args, shape))
}

create_hit_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$")), shape = "CreateHITTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_hit_with_hit_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), LifetimeInSeconds = structure(logical(0), 
        shape = "Long", type = "long"), Question = structure(logical(0), 
        shape = "String", type = "string"), RequesterAnnotation = structure(logical(0), 
        shape = "String", type = "string"), UniqueRequestToken = structure(logical(0), 
        shape = "IdempotencyToken", type = "string", max = 64L, 
        min = 1L), AssignmentReviewPolicy = structure(list(PolicyName = structure(logical(0), 
        shape = "String", type = "string"), Parameters = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list"), MapEntries = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "StringList", 
        type = "list")), shape = "ParameterMapEntry", type = "structure")), 
        shape = "ParameterMapEntryList", type = "list")), shape = "PolicyParameter", 
        type = "structure")), shape = "PolicyParameterList", 
        type = "list")), shape = "ReviewPolicy", type = "structure"), 
        HITReviewPolicy = structure(list(PolicyName = structure(logical(0), 
            shape = "String", type = "string"), Parameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), MapEntries = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "ParameterMapEntry", type = "structure")), 
            shape = "ParameterMapEntryList", type = "list")), 
            shape = "PolicyParameter", type = "structure")), 
            shape = "PolicyParameterList", type = "list")), shape = "ReviewPolicy", 
            type = "structure"), HITLayoutId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), HITLayoutParameters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "HITLayoutParameter", 
            type = "structure")), shape = "HITLayoutParameterList", 
            type = "list")), shape = "CreateHITWithHITTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_hit_with_hit_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HIT = structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "CreateHITWithHITTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_qualification_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), Keywords = structure(logical(0), shape = "String", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeStatus = structure(logical(0), 
        shape = "QualificationTypeStatus", type = "string"), 
        RetryDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Test = structure(logical(0), shape = "String", 
            type = "string"), AnswerKey = structure(logical(0), 
            shape = "String", type = "string"), TestDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), AutoGranted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGrantedValue = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "CreateQualificationTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_qualification_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationType = structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeStatus = structure(logical(0), 
        shape = "QualificationTypeStatus", type = "string"), 
        Test = structure(logical(0), shape = "String", type = "string"), 
        TestDurationInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), AnswerKey = structure(logical(0), 
            shape = "String", type = "string"), RetryDelayInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), IsRequestable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGranted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGrantedValue = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "QualificationType", 
        type = "structure")), shape = "CreateQualificationTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_worker_block_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), Reason = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateWorkerBlockRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_worker_block_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateWorkerBlockResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$")), 
        shape = "DeleteHITRequest", type = "structure")
    return(populate(args, shape))
}

delete_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteHITResponse", type = "structure")
    return(populate(args, shape))
}

delete_qualification_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$")), shape = "DeleteQualificationTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_qualification_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteQualificationTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_worker_block_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), Reason = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteWorkerBlockRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_worker_block_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteWorkerBlockResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_qualification_from_worker_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), Reason = structure(logical(0), 
        shape = "String", type = "string")), shape = "DisassociateQualificationFromWorkerRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_qualification_from_worker_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateQualificationFromWorkerResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_account_balance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetAccountBalanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_account_balance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailableBalance = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        OnHoldBalance = structure(logical(0), shape = "CurrencyAmount", 
            type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$")), 
        shape = "GetAccountBalanceResponse", type = "structure")
    return(populate(args, shape))
}

get_assignment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignmentId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$")), shape = "GetAssignmentRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_assignment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Assignment = structure(list(AssignmentId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), AssignmentStatus = structure(logical(0), 
        shape = "AssignmentStatus", type = "string"), AutoApprovalTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), AcceptTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ApprovalTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), RejectionTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Deadline = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Answer = structure(logical(0), 
        shape = "String", type = "string"), RequesterFeedback = structure(logical(0), 
        shape = "String", type = "string")), shape = "Assignment", 
        type = "structure"), HIT = structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "GetAssignmentResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_file_upload_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignmentId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), QuestionIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetFileUploadURLRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_file_upload_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FileUploadURL = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetFileUploadURLResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$")), 
        shape = "GetHITRequest", type = "structure")
    return(populate(args, shape))
}

get_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HIT = structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "GetHITResponse", type = "structure")
    return(populate(args, shape))
}

get_qualification_score_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$")), shape = "GetQualificationScoreRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_qualification_score_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Qualification = structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), GrantTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), IntegerValue = structure(logical(0), 
        shape = "Integer", type = "integer"), LocaleValue = structure(list(Country = structure(logical(0), 
        shape = "CountryParameters", type = "string", max = 2L, 
        min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
        type = "string", max = 2L, min = 2L)), shape = "Locale", 
        type = "structure"), Status = structure(logical(0), shape = "QualificationStatus", 
        type = "string")), shape = "Qualification", type = "structure")), 
        shape = "GetQualificationScoreResponse", type = "structure")
    return(populate(args, shape))
}

get_qualification_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$")), shape = "GetQualificationTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_qualification_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationType = structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeStatus = structure(logical(0), 
        shape = "QualificationTypeStatus", type = "string"), 
        Test = structure(logical(0), shape = "String", type = "string"), 
        TestDurationInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), AnswerKey = structure(logical(0), 
            shape = "String", type = "string"), RetryDelayInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), IsRequestable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGranted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGrantedValue = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "QualificationType", 
        type = "structure")), shape = "GetQualificationTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_assignments_for_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 255L, min = 1L), MaxResults = structure(logical(0), 
            shape = "ResultSize", type = "integer", max = 100L, 
            min = 1L), AssignmentStatuses = structure(list(structure(logical(0), 
            shape = "AssignmentStatus", type = "string")), shape = "AssignmentStatusList", 
            type = "list")), shape = "ListAssignmentsForHITRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_assignments_for_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), NumResults = structure(logical(0), shape = "Integer", 
        type = "integer"), Assignments = structure(list(structure(list(AssignmentId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), AssignmentStatus = structure(logical(0), 
        shape = "AssignmentStatus", type = "string"), AutoApprovalTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), AcceptTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), ApprovalTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), RejectionTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Deadline = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Answer = structure(logical(0), 
        shape = "String", type = "string"), RequesterFeedback = structure(logical(0), 
        shape = "String", type = "string")), shape = "Assignment", 
        type = "structure")), shape = "AssignmentList", type = "list")), 
        shape = "ListAssignmentsForHITResponse", type = "structure")
    return(populate(args, shape))
}

list_bonus_payments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        AssignmentId = structure(logical(0), shape = "EntityId", 
            type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 255L, min = 1L), MaxResults = structure(logical(0), 
            shape = "ResultSize", type = "integer", max = 100L, 
            min = 1L)), shape = "ListBonusPaymentsRequest", type = "structure")
    return(populate(args, shape))
}

list_bonus_payments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NumResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), BonusPayments = structure(list(structure(list(WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), BonusAmount = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AssignmentId = structure(logical(0), shape = "EntityId", 
            type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        Reason = structure(logical(0), shape = "String", type = "string"), 
        GrantTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "BonusPayment", type = "structure")), 
        shape = "BonusPaymentList", type = "list")), shape = "ListBonusPaymentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_hi_ts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListHITsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_hi_ts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), NumResults = structure(logical(0), shape = "Integer", 
        type = "integer"), HITs = structure(list(structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "HITList", type = "list")), 
        shape = "ListHITsResponse", type = "structure")
    return(populate(args, shape))
}

list_hi_ts_for_qualification_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListHITsForQualificationTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_hi_ts_for_qualification_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), NumResults = structure(logical(0), shape = "Integer", 
        type = "integer"), HITs = structure(list(structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "HITList", type = "list")), 
        shape = "ListHITsForQualificationTypeResponse", type = "structure")
    return(populate(args, shape))
}

list_qualification_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListQualificationRequestsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_qualification_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NumResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), QualificationRequests = structure(list(structure(list(QualificationRequestId = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), Test = structure(logical(0), 
        shape = "String", type = "string"), Answer = structure(logical(0), 
        shape = "String", type = "string"), SubmitTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "QualificationRequest", 
        type = "structure")), shape = "QualificationRequestList", 
        type = "list")), shape = "ListQualificationRequestsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_qualification_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Query = structure(logical(0), shape = "String", 
        type = "string"), MustBeRequestable = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MustBeOwnedByCaller = structure(logical(0), 
        shape = "Boolean", type = "boolean"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListQualificationTypesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_qualification_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NumResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), QualificationTypes = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeStatus = structure(logical(0), 
        shape = "QualificationTypeStatus", type = "string"), 
        Test = structure(logical(0), shape = "String", type = "string"), 
        TestDurationInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), AnswerKey = structure(logical(0), 
            shape = "String", type = "string"), RetryDelayInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), IsRequestable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGranted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGrantedValue = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "QualificationType", 
        type = "structure")), shape = "QualificationTypeList", 
        type = "list")), shape = "ListQualificationTypesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_review_policy_results_for_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        PolicyLevels = structure(list(structure(logical(0), shape = "ReviewPolicyLevel", 
            type = "string")), shape = "ReviewPolicyLevelList", 
            type = "list"), RetrieveActions = structure(logical(0), 
            shape = "Boolean", type = "boolean"), RetrieveResults = structure(logical(0), 
            shape = "Boolean", type = "boolean"), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L, 
            min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
            type = "integer", max = 100L, min = 1L)), shape = "ListReviewPolicyResultsForHITRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_review_policy_results_for_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        AssignmentReviewPolicy = structure(list(PolicyName = structure(logical(0), 
            shape = "String", type = "string"), Parameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), MapEntries = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "ParameterMapEntry", type = "structure")), 
            shape = "ParameterMapEntryList", type = "list")), 
            shape = "PolicyParameter", type = "structure")), 
            shape = "PolicyParameterList", type = "list")), shape = "ReviewPolicy", 
            type = "structure"), HITReviewPolicy = structure(list(PolicyName = structure(logical(0), 
            shape = "String", type = "string"), Parameters = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list"), MapEntries = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list")), shape = "ParameterMapEntry", type = "structure")), 
            shape = "ParameterMapEntryList", type = "list")), 
            shape = "PolicyParameter", type = "structure")), 
            shape = "PolicyParameterList", type = "list")), shape = "ReviewPolicy", 
            type = "structure"), AssignmentReviewReport = structure(list(ReviewResults = structure(list(structure(list(ActionId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), SubjectId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), SubjectType = structure(logical(0), 
            shape = "String", type = "string"), QuestionId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReviewResultDetail", 
            type = "structure")), shape = "ReviewResultDetailList", 
            type = "list"), ReviewActions = structure(list(structure(list(ActionId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), ActionName = structure(logical(0), 
            shape = "String", type = "string"), TargetId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), TargetType = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ReviewActionStatus", type = "string"), CompleteTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Result = structure(logical(0), 
            shape = "String", type = "string"), ErrorCode = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReviewActionDetail", 
            type = "structure")), shape = "ReviewActionDetailList", 
            type = "list")), shape = "ReviewReport", type = "structure"), 
        HITReviewReport = structure(list(ReviewResults = structure(list(structure(list(ActionId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), SubjectId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), SubjectType = structure(logical(0), 
            shape = "String", type = "string"), QuestionId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReviewResultDetail", 
            type = "structure")), shape = "ReviewResultDetailList", 
            type = "list"), ReviewActions = structure(list(structure(list(ActionId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), ActionName = structure(logical(0), 
            shape = "String", type = "string"), TargetId = structure(logical(0), 
            shape = "EntityId", type = "string", max = 64L, min = 1L, 
            pattern = "^[A-Z0-9]+$"), TargetType = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "ReviewActionStatus", type = "string"), CompleteTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), Result = structure(logical(0), 
            shape = "String", type = "string"), ErrorCode = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReviewActionDetail", 
            type = "structure")), shape = "ReviewActionDetailList", 
            type = "list")), shape = "ReviewReport", type = "structure"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 255L, min = 1L)), shape = "ListReviewPolicyResultsForHITResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_reviewable_hi_ts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), Status = structure(logical(0), 
        shape = "ReviewableHITStatus", type = "string"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListReviewableHITsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_reviewable_hi_ts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), NumResults = structure(logical(0), shape = "Integer", 
        type = "integer"), HITs = structure(list(structure(list(HITId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITGroupId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), HITLayoutId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Title = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Question = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), HITStatus = structure(logical(0), 
        shape = "HITStatus", type = "string"), MaxAssignments = structure(logical(0), 
        shape = "Integer", type = "integer"), Reward = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AutoApprovalDelayInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), Expiration = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), AssignmentDurationInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), RequesterAnnotation = structure(logical(0), 
            shape = "String", type = "string"), QualificationRequirements = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
            shape = "String", type = "string"), Comparator = structure(logical(0), 
            shape = "Comparator", type = "string"), IntegerValues = structure(list(structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "IntegerList", 
            type = "list"), LocaleValues = structure(list(structure(list(Country = structure(logical(0), 
            shape = "CountryParameters", type = "string", max = 2L, 
            min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
            type = "string", max = 2L, min = 2L)), shape = "Locale", 
            type = "structure")), shape = "LocaleList", type = "list"), 
            RequiredToPreview = structure(logical(0), shape = "Boolean", 
                deprecated = TRUE, type = "boolean"), ActionsGuarded = structure(logical(0), 
                shape = "HITAccessActions", type = "string")), 
            shape = "QualificationRequirement", type = "structure")), 
            shape = "QualificationRequirementList", type = "list"), 
        HITReviewStatus = structure(logical(0), shape = "HITReviewStatus", 
            type = "string"), NumberOfAssignmentsPending = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsAvailable = structure(logical(0), 
            shape = "Integer", type = "integer"), NumberOfAssignmentsCompleted = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "HIT", 
        type = "structure")), shape = "HITList", type = "list")), 
        shape = "ListReviewableHITsResponse", type = "structure")
    return(populate(args, shape))
}

list_worker_blocks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListWorkerBlocksRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_worker_blocks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), NumResults = structure(logical(0), shape = "Integer", 
        type = "integer"), WorkerBlocks = structure(list(structure(list(WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), Reason = structure(logical(0), 
        shape = "String", type = "string")), shape = "WorkerBlock", 
        type = "structure")), shape = "WorkerBlockList", type = "list")), 
        shape = "ListWorkerBlocksResponse", type = "structure")
    return(populate(args, shape))
}

list_workers_with_qualification_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), Status = structure(logical(0), 
        shape = "QualificationStatus", type = "string"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), MaxResults = structure(logical(0), shape = "ResultSize", 
        type = "integer", max = 100L, min = 1L)), shape = "ListWorkersWithQualificationTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_workers_with_qualification_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L, 
        min = 1L), NumResults = structure(logical(0), shape = "Integer", 
        type = "integer"), Qualifications = structure(list(structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), GrantTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), IntegerValue = structure(logical(0), 
        shape = "Integer", type = "integer"), LocaleValue = structure(list(Country = structure(logical(0), 
        shape = "CountryParameters", type = "string", max = 2L, 
        min = 2L), Subdivision = structure(logical(0), shape = "CountryParameters", 
        type = "string", max = 2L, min = 2L)), shape = "Locale", 
        type = "structure"), Status = structure(logical(0), shape = "QualificationStatus", 
        type = "string")), shape = "Qualification", type = "structure")), 
        shape = "QualificationList", type = "list")), shape = "ListWorkersWithQualificationTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}

notify_workers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subject = structure(logical(0), shape = "String", 
        type = "string"), MessageText = structure(logical(0), 
        shape = "String", type = "string"), WorkerIds = structure(list(structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$")), shape = "CustomerIdList", 
        type = "list")), shape = "NotifyWorkersRequest", type = "structure")
    return(populate(args, shape))
}

notify_workers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotifyWorkersFailureStatuses = structure(list(structure(list(NotifyWorkersFailureCode = structure(logical(0), 
        shape = "NotifyWorkersFailureCode", type = "string"), 
        NotifyWorkersFailureMessage = structure(logical(0), shape = "String", 
            type = "string"), WorkerId = structure(logical(0), 
            shape = "CustomerId", type = "string", max = 64L, 
            min = 1L, pattern = "^A[A-Z0-9]+$")), shape = "NotifyWorkersFailureStatus", 
        type = "structure")), shape = "NotifyWorkersFailureStatusList", 
        type = "list")), shape = "NotifyWorkersResponse", type = "structure")
    return(populate(args, shape))
}

reject_assignment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignmentId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), RequesterFeedback = structure(logical(0), 
        shape = "String", type = "string")), shape = "RejectAssignmentRequest", 
        type = "structure")
    return(populate(args, shape))
}

reject_assignment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RejectAssignmentResponse", 
        type = "structure")
    return(populate(args, shape))
}

reject_qualification_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationRequestId = structure(logical(0), 
        shape = "String", type = "string"), Reason = structure(logical(0), 
        shape = "String", type = "string")), shape = "RejectQualificationRequestRequest", 
        type = "structure")
    return(populate(args, shape))
}

reject_qualification_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RejectQualificationRequestResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_bonus_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WorkerId = structure(logical(0), 
        shape = "CustomerId", type = "string", max = 64L, min = 1L, 
        pattern = "^A[A-Z0-9]+$"), BonusAmount = structure(logical(0), 
        shape = "CurrencyAmount", type = "string", pattern = "^[0-9]+(\\.)?[0-9]{0,2}$"), 
        AssignmentId = structure(logical(0), shape = "EntityId", 
            type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        Reason = structure(logical(0), shape = "String", type = "string"), 
        UniqueRequestToken = structure(logical(0), shape = "IdempotencyToken", 
            type = "string", max = 64L, min = 1L)), shape = "SendBonusRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_bonus_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendBonusResponse", type = "structure")
    return(populate(args, shape))
}

send_test_event_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Notification = structure(list(Destination = structure(logical(0), 
        shape = "String", type = "string"), Transport = structure(logical(0), 
        shape = "NotificationTransport", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string"), EventTypes = structure(list(structure(logical(0), 
        shape = "EventType", type = "string")), shape = "EventTypeList", 
        type = "list")), shape = "NotificationSpecification", 
        type = "structure"), TestEventType = structure(logical(0), 
        shape = "EventType", type = "string")), shape = "SendTestEventNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_test_event_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SendTestEventNotificationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_expiration_for_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        ExpireAt = structure(logical(0), shape = "Timestamp", 
            type = "timestamp")), shape = "UpdateExpirationForHITRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_expiration_for_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateExpirationForHITResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_hit_review_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        Revert = structure(logical(0), shape = "Boolean", type = "boolean")), 
        shape = "UpdateHITReviewStatusRequest", type = "structure")
    return(populate(args, shape))
}

update_hit_review_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateHITReviewStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_hit_type_of_hit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITId = structure(logical(0), shape = "EntityId", 
        type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$"), 
        HITTypeId = structure(logical(0), shape = "EntityId", 
            type = "string", max = 64L, min = 1L, pattern = "^[A-Z0-9]+$")), 
        shape = "UpdateHITTypeOfHITRequest", type = "structure")
    return(populate(args, shape))
}

update_hit_type_of_hit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateHITTypeOfHITResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_notification_settings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HITTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), Notification = structure(list(Destination = structure(logical(0), 
        shape = "String", type = "string"), Transport = structure(logical(0), 
        shape = "NotificationTransport", type = "string"), Version = structure(logical(0), 
        shape = "String", type = "string"), EventTypes = structure(list(structure(logical(0), 
        shape = "EventType", type = "string")), shape = "EventTypeList", 
        type = "list")), shape = "NotificationSpecification", 
        type = "structure"), Active = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "UpdateNotificationSettingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_notification_settings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateNotificationSettingsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_qualification_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), Description = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeStatus = structure(logical(0), 
        shape = "QualificationTypeStatus", type = "string"), 
        Test = structure(logical(0), shape = "String", type = "string"), 
        AnswerKey = structure(logical(0), shape = "String", type = "string"), 
        TestDurationInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), RetryDelayInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), AutoGranted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGrantedValue = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "UpdateQualificationTypeRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_qualification_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QualificationType = structure(list(QualificationTypeId = structure(logical(0), 
        shape = "EntityId", type = "string", max = 64L, min = 1L, 
        pattern = "^[A-Z0-9]+$"), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Name = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Keywords = structure(logical(0), 
        shape = "String", type = "string"), QualificationTypeStatus = structure(logical(0), 
        shape = "QualificationTypeStatus", type = "string"), 
        Test = structure(logical(0), shape = "String", type = "string"), 
        TestDurationInSeconds = structure(logical(0), shape = "Long", 
            type = "long"), AnswerKey = structure(logical(0), 
            shape = "String", type = "string"), RetryDelayInSeconds = structure(logical(0), 
            shape = "Long", type = "long"), IsRequestable = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGranted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), AutoGrantedValue = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "QualificationType", 
        type = "structure")), shape = "UpdateQualificationTypeResponse", 
        type = "structure")
    return(populate(args, shape))
}
