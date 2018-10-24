create_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutionRoleArn = structure(logical(0), 
        shape = "ExecutionRoleArn", type = "string"), Description = structure(logical(0), 
        shape = "PolicyDescription", type = "string", max = 500L, 
        min = 0L), State = structure(logical(0), shape = "SettablePolicyStateValues", 
        type = "string"), PolicyDetails = structure(list(ResourceTypes = structure(list(structure(logical(0), 
        shape = "ResourceTypeValues", type = "string")), shape = "ResourceTypeValuesList", 
        type = "list", max = 1L, min = 1L), TargetTags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TargetTagList", type = "list", max = 50L, min = 1L), 
        Schedules = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ScheduleName", type = "string", max = 500L, 
            min = 0L), TagsToAdd = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagsToAddList", type = "list", 
            max = 50L, min = 0L), CreateRule = structure(list(Interval = structure(logical(0), 
            shape = "Interval", type = "integer", min = 1L), 
            IntervalUnit = structure(logical(0), shape = "IntervalUnitValues", 
                type = "string"), Times = structure(list(structure(logical(0), 
                shape = "Time", type = "string", pattern = "^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$")), 
                shape = "TimesList", type = "list", max = 1L)), 
            shape = "CreateRule", type = "structure"), RetainRule = structure(list(Count = structure(logical(0), 
            shape = "Count", type = "integer", max = 1000L, min = 1L)), 
            shape = "RetainRule", type = "structure")), shape = "Schedule", 
            type = "structure")), shape = "ScheduleList", type = "list", 
            max = 1L, min = 1L)), shape = "PolicyDetails", type = "structure")), 
        shape = "CreateLifecyclePolicyRequest", type = "structure")
    return(populate(args, shape))
}

create_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string")), shape = "CreateLifecyclePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", location = "uri", locationName = "policyId", 
        type = "string")), shape = "DeleteLifecyclePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLifecyclePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyIds = structure(list(structure(logical(0), 
        shape = "PolicyId", type = "string")), shape = "PolicyIdList", 
        location = "querystring", locationName = "policyIds", 
        type = "list"), State = structure(logical(0), shape = "GettablePolicyStateValues", 
        location = "querystring", locationName = "state", type = "string"), 
        ResourceTypes = structure(list(structure(logical(0), 
            shape = "ResourceTypeValues", type = "string")), 
            shape = "ResourceTypeValuesList", location = "querystring", 
            locationName = "resourceTypes", type = "list", max = 1L, 
            min = 1L), TargetTags = structure(list(structure(logical(0), 
            shape = "TagFilter", type = "string")), shape = "TargetTagsFilterList", 
            location = "querystring", locationName = "targetTags", 
            type = "list", max = 50L, min = 1L), TagsToAdd = structure(list(structure(logical(0), 
            shape = "TagFilter", type = "string")), shape = "TagsToAddFilterList", 
            location = "querystring", locationName = "tagsToAdd", 
            type = "list", max = 50L, min = 0L)), shape = "GetLifecyclePoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string"), Description = structure(logical(0), 
        shape = "PolicyDescription", type = "string", max = 500L, 
        min = 0L), State = structure(logical(0), shape = "GettablePolicyStateValues", 
        type = "string")), shape = "LifecyclePolicySummary", 
        type = "structure")), shape = "LifecyclePolicySummaryList", 
        type = "list")), shape = "GetLifecyclePoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", location = "uri", locationName = "policyId", 
        type = "string")), shape = "GetLifecyclePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", type = "string"), Description = structure(logical(0), 
        shape = "PolicyDescription", type = "string", max = 500L, 
        min = 0L), State = structure(logical(0), shape = "GettablePolicyStateValues", 
        type = "string"), ExecutionRoleArn = structure(logical(0), 
        shape = "ExecutionRoleArn", type = "string"), DateCreated = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), DateModified = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), PolicyDetails = structure(list(ResourceTypes = structure(list(structure(logical(0), 
        shape = "ResourceTypeValues", type = "string")), shape = "ResourceTypeValuesList", 
        type = "list", max = 1L, min = 1L), TargetTags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TargetTagList", type = "list", max = 50L, min = 1L), 
        Schedules = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ScheduleName", type = "string", max = 500L, 
            min = 0L), TagsToAdd = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagsToAddList", type = "list", 
            max = 50L, min = 0L), CreateRule = structure(list(Interval = structure(logical(0), 
            shape = "Interval", type = "integer", min = 1L), 
            IntervalUnit = structure(logical(0), shape = "IntervalUnitValues", 
                type = "string"), Times = structure(list(structure(logical(0), 
                shape = "Time", type = "string", pattern = "^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$")), 
                shape = "TimesList", type = "list", max = 1L)), 
            shape = "CreateRule", type = "structure"), RetainRule = structure(list(Count = structure(logical(0), 
            shape = "Count", type = "integer", max = 1000L, min = 1L)), 
            shape = "RetainRule", type = "structure")), shape = "Schedule", 
            type = "structure")), shape = "ScheduleList", type = "list", 
            max = 1L, min = 1L)), shape = "PolicyDetails", type = "structure")), 
        shape = "LifecyclePolicy", type = "structure")), shape = "GetLifecyclePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyId = structure(logical(0), 
        shape = "PolicyId", location = "uri", locationName = "policyId", 
        type = "string"), ExecutionRoleArn = structure(logical(0), 
        shape = "ExecutionRoleArn", type = "string"), State = structure(logical(0), 
        shape = "SettablePolicyStateValues", type = "string"), 
        Description = structure(logical(0), shape = "PolicyDescription", 
            type = "string", max = 500L, min = 0L), PolicyDetails = structure(list(ResourceTypes = structure(list(structure(logical(0), 
            shape = "ResourceTypeValues", type = "string")), 
            shape = "ResourceTypeValuesList", type = "list", 
            max = 1L, min = 1L), TargetTags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TargetTagList", type = "list", 
            max = 50L, min = 1L), Schedules = structure(list(structure(list(Name = structure(logical(0), 
            shape = "ScheduleName", type = "string", max = 500L, 
            min = 0L), TagsToAdd = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagsToAddList", type = "list", 
            max = 50L, min = 0L), CreateRule = structure(list(Interval = structure(logical(0), 
            shape = "Interval", type = "integer", min = 1L), 
            IntervalUnit = structure(logical(0), shape = "IntervalUnitValues", 
                type = "string"), Times = structure(list(structure(logical(0), 
                shape = "Time", type = "string", pattern = "^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$")), 
                shape = "TimesList", type = "list", max = 1L)), 
            shape = "CreateRule", type = "structure"), RetainRule = structure(list(Count = structure(logical(0), 
            shape = "Count", type = "integer", max = 1000L, min = 1L)), 
            shape = "RetainRule", type = "structure")), shape = "Schedule", 
            type = "structure")), shape = "ScheduleList", type = "list", 
            max = 1L, min = 1L)), shape = "PolicyDetails", type = "structure")), 
        shape = "UpdateLifecyclePolicyRequest", type = "structure")
    return(populate(args, shape))
}

update_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateLifecyclePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}
