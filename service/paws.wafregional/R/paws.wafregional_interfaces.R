associate_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ResourceArn = structure(logical(0), shape = "ResourceArn", 
            type = "string", max = 1224L, min = 1L)), shape = "AssociateWebACLRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AssociateWebACLResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_byte_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateByteMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_byte_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ByteMatchSet = structure(list(ByteMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), ByteMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TargetString = structure(logical(0), 
            shape = "ByteMatchTargetString", type = "blob"), 
            TextTransformation = structure(logical(0), shape = "TextTransformation", 
                type = "string"), PositionalConstraint = structure(logical(0), 
                shape = "PositionalConstraint", type = "string")), 
            shape = "ByteMatchTuple", type = "structure")), shape = "ByteMatchTuples", 
            type = "list")), shape = "ByteMatchSet", type = "structure"), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "CreateByteMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_geo_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateGeoMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_geo_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GeoMatchSet = structure(list(GeoMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), GeoMatchConstraints = structure(list(structure(list(Type = structure(logical(0), 
            shape = "GeoMatchConstraintType", type = "string"), 
            Value = structure(logical(0), shape = "GeoMatchConstraintValue", 
                type = "string")), shape = "GeoMatchConstraint", 
            type = "structure")), shape = "GeoMatchConstraints", 
            type = "list")), shape = "GeoMatchSet", type = "structure"), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "CreateGeoMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateIPSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IPSet = structure(list(IPSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), IPSetDescriptors = structure(list(structure(list(Type = structure(logical(0), 
            shape = "IPSetDescriptorType", type = "string"), 
            Value = structure(logical(0), shape = "IPSetDescriptorValue", 
                type = "string")), shape = "IPSetDescriptor", 
            type = "structure")), shape = "IPSetDescriptors", 
            type = "list")), shape = "IPSet", type = "structure"), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "CreateIPSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_rate_based_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string"), RateKey = structure(logical(0), 
        shape = "RateKey", type = "string"), RateLimit = structure(logical(0), 
        shape = "RateLimit", type = "long", max = 2000000000L, 
        min = 2000L), ChangeToken = structure(logical(0), shape = "ChangeToken", 
        type = "string", min = 1L)), shape = "CreateRateBasedRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_rate_based_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(list(RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), MatchPredicates = structure(list(structure(list(Negated = structure(logical(0), 
            shape = "Negated", type = "boolean"), Type = structure(logical(0), 
            shape = "PredicateType", type = "string"), DataId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "Predicate", type = "structure")), 
            shape = "Predicates", type = "list"), RateKey = structure(logical(0), 
            shape = "RateKey", type = "string"), RateLimit = structure(logical(0), 
            shape = "RateLimit", type = "long", max = 2000000000L, 
            min = 2000L)), shape = "RateBasedRule", type = "structure"), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "CreateRateBasedRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_regex_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRegexMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_regex_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexMatchSet = structure(list(RegexMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), RegexMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string"), RegexPatternSetId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "RegexMatchTuple", type = "structure")), 
            shape = "RegexMatchTuples", type = "list")), shape = "RegexMatchSet", 
        type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRegexMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_regex_pattern_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRegexPatternSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_regex_pattern_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexPatternSet = structure(list(RegexPatternSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), RegexPatternStrings = structure(list(structure(logical(0), 
            shape = "RegexPatternString", type = "string", min = 1L)), 
            shape = "RegexPatternStrings", type = "list", max = 10L)), 
        shape = "RegexPatternSet", type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRegexPatternSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(list(RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Predicates = structure(list(structure(list(Negated = structure(logical(0), 
            shape = "Negated", type = "boolean"), Type = structure(logical(0), 
            shape = "PredicateType", type = "string"), DataId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "Predicate", type = "structure")), 
            shape = "Predicates", type = "list")), shape = "Rule", 
        type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_rule_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRuleGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_rule_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleGroup = structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string")), shape = "RuleGroup", 
        type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateRuleGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_size_constraint_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateSizeConstraintSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_size_constraint_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SizeConstraintSet = structure(list(SizeConstraintSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), SizeConstraints = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Size = structure(logical(0), 
            shape = "Size", type = "long", max = 21474836480, 
            min = 0L)), shape = "SizeConstraint", type = "structure")), 
            shape = "SizeConstraints", type = "list")), shape = "SizeConstraintSet", 
        type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateSizeConstraintSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_sql_injection_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateSqlInjectionMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_sql_injection_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SqlInjectionMatchSet = structure(list(SqlInjectionMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), SqlInjectionMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string")), 
            shape = "SqlInjectionMatchTuple", type = "structure")), 
            shape = "SqlInjectionMatchTuples", type = "list")), 
        shape = "SqlInjectionMatchSet", type = "structure"), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "CreateSqlInjectionMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
        shape = "MetricName", type = "string"), DefaultAction = structure(list(Type = structure(logical(0), 
        shape = "WafActionType", type = "string")), shape = "WafAction", 
        type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateWebACLRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACL = structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), DefaultAction = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), Rules = structure(list(structure(list(Priority = structure(logical(0), 
            shape = "RulePriority", type = "integer"), RuleId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L), Action = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), OverrideAction = structure(list(Type = structure(logical(0), 
            shape = "WafOverrideActionType", type = "string")), 
            shape = "WafOverrideAction", type = "structure"), 
            Type = structure(logical(0), shape = "WafRuleType", 
                type = "string")), shape = "ActivatedRule", type = "structure")), 
            shape = "ActivatedRules", type = "list")), shape = "WebACL", 
        type = "structure"), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateWebACLResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_xss_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "ResourceName", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "CreateXssMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_xss_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(XssMatchSet = structure(list(XssMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), XssMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string")), 
            shape = "XssMatchTuple", type = "structure")), shape = "XssMatchTuples", 
            type = "list")), shape = "XssMatchSet", type = "structure"), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "CreateXssMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_byte_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ByteMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteByteMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_byte_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteByteMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_geo_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GeoMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteGeoMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_geo_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteGeoMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IPSetId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteIPSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteIPSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_logging_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "DeleteLoggingConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_logging_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLoggingConfigurationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_permission_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "DeletePermissionPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_permission_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeletePermissionPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_rate_based_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRateBasedRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_rate_based_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRateBasedRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_regex_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteRegexMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_regex_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRegexMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_regex_pattern_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexPatternSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteRegexPatternSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_regex_pattern_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRegexPatternSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_rule_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteRuleGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_rule_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteRuleGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_size_constraint_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SizeConstraintSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteSizeConstraintSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_size_constraint_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteSizeConstraintSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_sql_injection_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SqlInjectionMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteSqlInjectionMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_sql_injection_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteSqlInjectionMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteWebACLRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteWebACLResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_xss_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(XssMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "DeleteXssMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_xss_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "DeleteXssMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "DisassociateWebACLRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DisassociateWebACLResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_byte_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ByteMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetByteMatchSetRequest", type = "structure")
    return(populate(args, shape))
}

get_byte_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ByteMatchSet = structure(list(ByteMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), ByteMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TargetString = structure(logical(0), 
            shape = "ByteMatchTargetString", type = "blob"), 
            TextTransformation = structure(logical(0), shape = "TextTransformation", 
                type = "string"), PositionalConstraint = structure(logical(0), 
                shape = "PositionalConstraint", type = "string")), 
            shape = "ByteMatchTuple", type = "structure")), shape = "ByteMatchTuples", 
            type = "list")), shape = "ByteMatchSet", type = "structure")), 
        shape = "GetByteMatchSetResponse", type = "structure")
    return(populate(args, shape))
}

get_change_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "GetChangeTokenRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_change_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "GetChangeTokenResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_change_token_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "GetChangeTokenStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_change_token_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeTokenStatus = structure(logical(0), 
        shape = "ChangeTokenStatus", type = "string")), shape = "GetChangeTokenStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_geo_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GeoMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetGeoMatchSetRequest", type = "structure")
    return(populate(args, shape))
}

get_geo_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GeoMatchSet = structure(list(GeoMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), GeoMatchConstraints = structure(list(structure(list(Type = structure(logical(0), 
            shape = "GeoMatchConstraintType", type = "string"), 
            Value = structure(logical(0), shape = "GeoMatchConstraintValue", 
                type = "string")), shape = "GeoMatchConstraint", 
            type = "structure")), shape = "GeoMatchConstraints", 
            type = "list")), shape = "GeoMatchSet", type = "structure")), 
        shape = "GetGeoMatchSetResponse", type = "structure")
    return(populate(args, shape))
}

get_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IPSetId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L)), shape = "GetIPSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IPSet = structure(list(IPSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), IPSetDescriptors = structure(list(structure(list(Type = structure(logical(0), 
            shape = "IPSetDescriptorType", type = "string"), 
            Value = structure(logical(0), shape = "IPSetDescriptorValue", 
                type = "string")), shape = "IPSetDescriptor", 
            type = "structure")), shape = "IPSetDescriptors", 
            type = "list")), shape = "IPSet", type = "structure")), 
        shape = "GetIPSetResponse", type = "structure")
    return(populate(args, shape))
}

get_logging_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "GetLoggingConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_logging_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingConfiguration = structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L), LogDestinationConfigs = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "LogDestinationConfigs", type = "list", 
        max = 1L, min = 1L), RedactedFields = structure(list(structure(list(Type = structure(logical(0), 
        shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
        shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
        type = "structure")), shape = "RedactedFields", type = "list")), 
        shape = "LoggingConfiguration", type = "structure")), 
        shape = "GetLoggingConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

get_permission_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "GetPermissionPolicyRequest", type = "structure")
    return(populate(args, shape))
}

get_permission_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policy = structure(logical(0), shape = "PolicyString", 
        type = "string", min = 1L)), shape = "GetPermissionPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_rate_based_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L)), shape = "GetRateBasedRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_rate_based_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(list(RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), MatchPredicates = structure(list(structure(list(Negated = structure(logical(0), 
            shape = "Negated", type = "boolean"), Type = structure(logical(0), 
            shape = "PredicateType", type = "string"), DataId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "Predicate", type = "structure")), 
            shape = "Predicates", type = "list"), RateKey = structure(logical(0), 
            shape = "RateKey", type = "string"), RateLimit = structure(logical(0), 
            shape = "RateLimit", type = "long", max = 2000000000L, 
            min = 2000L)), shape = "RateBasedRule", type = "structure")), 
        shape = "GetRateBasedRuleResponse", type = "structure")
    return(populate(args, shape))
}

get_rate_based_rule_managed_keys_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L)), shape = "GetRateBasedRuleManagedKeysRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_rate_based_rule_managed_keys_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ManagedKeys = structure(list(structure(logical(0), 
        shape = "ManagedKey", type = "string")), shape = "ManagedKeys", 
        type = "list"), NextMarker = structure(logical(0), shape = "NextMarker", 
        type = "string", min = 1L)), shape = "GetRateBasedRuleManagedKeysResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_regex_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetRegexMatchSetRequest", type = "structure")
    return(populate(args, shape))
}

get_regex_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexMatchSet = structure(list(RegexMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), RegexMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string"), RegexPatternSetId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "RegexMatchTuple", type = "structure")), 
            shape = "RegexMatchTuples", type = "list")), shape = "RegexMatchSet", 
        type = "structure")), shape = "GetRegexMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_regex_pattern_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexPatternSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetRegexPatternSetRequest", type = "structure")
    return(populate(args, shape))
}

get_regex_pattern_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexPatternSet = structure(list(RegexPatternSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), RegexPatternStrings = structure(list(structure(logical(0), 
            shape = "RegexPatternString", type = "string", min = 1L)), 
            shape = "RegexPatternStrings", type = "list", max = 10L)), 
        shape = "RegexPatternSet", type = "structure")), shape = "GetRegexPatternSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L)), shape = "GetRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(list(RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), Predicates = structure(list(structure(list(Negated = structure(logical(0), 
            shape = "Negated", type = "boolean"), Type = structure(logical(0), 
            shape = "PredicateType", type = "string"), DataId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "Predicate", type = "structure")), 
            shape = "Predicates", type = "list")), shape = "Rule", 
        type = "structure")), shape = "GetRuleResponse", type = "structure")
    return(populate(args, shape))
}

get_rule_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetRuleGroupRequest", type = "structure")
    return(populate(args, shape))
}

get_rule_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleGroup = structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string")), shape = "RuleGroup", 
        type = "structure")), shape = "GetRuleGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_sampled_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebAclId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        RuleId = structure(logical(0), shape = "ResourceId", 
            type = "string", max = 128L, min = 1L), TimeWindow = structure(list(StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "TimeWindow", 
            type = "structure"), MaxItems = structure(logical(0), 
            shape = "GetSampledRequestsMaxItems", type = "long", 
            max = 500L, min = 1L)), shape = "GetSampledRequestsRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_sampled_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SampledRequests = structure(list(structure(list(Request = structure(list(ClientIP = structure(logical(0), 
        shape = "IPString", type = "string"), Country = structure(logical(0), 
        shape = "Country", type = "string"), URI = structure(logical(0), 
        shape = "URIString", type = "string"), Method = structure(logical(0), 
        shape = "HTTPMethod", type = "string"), HTTPVersion = structure(logical(0), 
        shape = "HTTPVersion", type = "string"), Headers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "HeaderName", type = "string"), Value = structure(logical(0), 
        shape = "HeaderValue", type = "string")), shape = "HTTPHeader", 
        type = "structure")), shape = "HTTPHeaders", type = "list")), 
        shape = "HTTPRequest", type = "structure"), Weight = structure(logical(0), 
        shape = "SampleWeight", type = "long", min = 0L), Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), Action = structure(logical(0), 
        shape = "Action", type = "string"), RuleWithinRuleGroup = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "SampledHTTPRequest", type = "structure")), shape = "SampledHTTPRequests", 
        type = "list"), PopulationSize = structure(logical(0), 
        shape = "PopulationSize", type = "long"), TimeWindow = structure(list(StartTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "TimeWindow", 
        type = "structure")), shape = "GetSampledRequestsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_size_constraint_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SizeConstraintSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetSizeConstraintSetRequest", type = "structure")
    return(populate(args, shape))
}

get_size_constraint_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SizeConstraintSet = structure(list(SizeConstraintSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), SizeConstraints = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Size = structure(logical(0), 
            shape = "Size", type = "long", max = 21474836480, 
            min = 0L)), shape = "SizeConstraint", type = "structure")), 
            shape = "SizeConstraints", type = "list")), shape = "SizeConstraintSet", 
        type = "structure")), shape = "GetSizeConstraintSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_sql_injection_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SqlInjectionMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetSqlInjectionMatchSetRequest", type = "structure")
    return(populate(args, shape))
}

get_sql_injection_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SqlInjectionMatchSet = structure(list(SqlInjectionMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), SqlInjectionMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string")), 
            shape = "SqlInjectionMatchTuple", type = "structure")), 
            shape = "SqlInjectionMatchTuples", type = "list")), 
        shape = "SqlInjectionMatchSet", type = "structure")), 
        shape = "GetSqlInjectionMatchSetResponse", type = "structure")
    return(populate(args, shape))
}

get_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetWebACLRequest", type = "structure")
    return(populate(args, shape))
}

get_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACL = structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string"), DefaultAction = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), Rules = structure(list(structure(list(Priority = structure(logical(0), 
            shape = "RulePriority", type = "integer"), RuleId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L), Action = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), OverrideAction = structure(list(Type = structure(logical(0), 
            shape = "WafOverrideActionType", type = "string")), 
            shape = "WafOverrideAction", type = "structure"), 
            Type = structure(logical(0), shape = "WafRuleType", 
                type = "string")), shape = "ActivatedRule", type = "structure")), 
            shape = "ActivatedRules", type = "list")), shape = "WebACL", 
        type = "structure")), shape = "GetWebACLResponse", type = "structure")
    return(populate(args, shape))
}

get_web_acl_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "GetWebACLForResourceRequest", type = "structure")
    return(populate(args, shape))
}

get_web_acl_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACLSummary = structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "WebACLSummary", 
        type = "structure")), shape = "GetWebACLForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_xss_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(XssMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "GetXssMatchSetRequest", type = "structure")
    return(populate(args, shape))
}

get_xss_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(XssMatchSet = structure(list(XssMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), XssMatchTuples = structure(list(structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string")), 
            shape = "XssMatchTuple", type = "structure")), shape = "XssMatchTuples", 
            type = "list")), shape = "XssMatchSet", type = "structure")), 
        shape = "GetXssMatchSetResponse", type = "structure")
    return(populate(args, shape))
}

list_activated_rules_in_rule_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        NextMarker = structure(logical(0), shape = "NextMarker", 
            type = "string", min = 1L), Limit = structure(logical(0), 
            shape = "PaginationLimit", type = "integer", max = 100L, 
            min = 0L)), shape = "ListActivatedRulesInRuleGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_activated_rules_in_rule_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), ActivatedRules = structure(list(structure(list(Priority = structure(logical(0), 
        shape = "RulePriority", type = "integer"), RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Action = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), OverrideAction = structure(list(Type = structure(logical(0), 
            shape = "WafOverrideActionType", type = "string")), 
            shape = "WafOverrideAction", type = "structure"), 
        Type = structure(logical(0), shape = "WafRuleType", type = "string")), 
        shape = "ActivatedRule", type = "structure")), shape = "ActivatedRules", 
        type = "list")), shape = "ListActivatedRulesInRuleGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_byte_match_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListByteMatchSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_byte_match_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), ByteMatchSets = structure(list(structure(list(ByteMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "ByteMatchSetSummary", 
        type = "structure")), shape = "ByteMatchSetSummaries", 
        type = "list")), shape = "ListByteMatchSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_geo_match_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListGeoMatchSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_geo_match_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), GeoMatchSets = structure(list(structure(list(GeoMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "GeoMatchSetSummary", 
        type = "structure")), shape = "GeoMatchSetSummaries", 
        type = "list")), shape = "ListGeoMatchSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_ip_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListIPSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_ip_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), IPSets = structure(list(structure(list(IPSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "IPSetSummary", 
        type = "structure")), shape = "IPSetSummaries", type = "list")), 
        shape = "ListIPSetsResponse", type = "structure")
    return(populate(args, shape))
}

list_logging_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListLoggingConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_logging_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingConfigurations = structure(list(structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L), LogDestinationConfigs = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "LogDestinationConfigs", type = "list", 
        max = 1L, min = 1L), RedactedFields = structure(list(structure(list(Type = structure(logical(0), 
        shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
        shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
        type = "structure")), shape = "RedactedFields", type = "list")), 
        shape = "LoggingConfiguration", type = "structure")), 
        shape = "LoggingConfigurations", type = "list"), NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L)), shape = "ListLoggingConfigurationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_rate_based_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListRateBasedRulesRequest", type = "structure")
    return(populate(args, shape))
}

list_rate_based_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Rules = structure(list(structure(list(RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "RuleSummary", 
        type = "structure")), shape = "RuleSummaries", type = "list")), 
        shape = "ListRateBasedRulesResponse", type = "structure")
    return(populate(args, shape))
}

list_regex_match_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListRegexMatchSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_regex_match_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), RegexMatchSets = structure(list(structure(list(RegexMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "RegexMatchSetSummary", 
        type = "structure")), shape = "RegexMatchSetSummaries", 
        type = "list")), shape = "ListRegexMatchSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_regex_pattern_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListRegexPatternSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_regex_pattern_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), RegexPatternSets = structure(list(structure(list(RegexPatternSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "RegexPatternSetSummary", 
        type = "structure")), shape = "RegexPatternSetSummaries", 
        type = "list")), shape = "ListRegexPatternSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_resources_for_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "ListResourcesForWebACLRequest", type = "structure")
    return(populate(args, shape))
}

list_resources_for_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "ResourceArns", type = "list")), 
        shape = "ListResourcesForWebACLResponse", type = "structure")
    return(populate(args, shape))
}

list_rule_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListRuleGroupsRequest", type = "structure")
    return(populate(args, shape))
}

list_rule_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), RuleGroups = structure(list(structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "RuleGroupSummary", 
        type = "structure")), shape = "RuleGroupSummaries", type = "list")), 
        shape = "ListRuleGroupsResponse", type = "structure")
    return(populate(args, shape))
}

list_rules_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListRulesRequest", type = "structure")
    return(populate(args, shape))
}

list_rules_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Rules = structure(list(structure(list(RuleId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "RuleSummary", 
        type = "structure")), shape = "RuleSummaries", type = "list")), 
        shape = "ListRulesResponse", type = "structure")
    return(populate(args, shape))
}

list_size_constraint_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListSizeConstraintSetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_size_constraint_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), SizeConstraintSets = structure(list(structure(list(SizeConstraintSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "SizeConstraintSetSummary", 
        type = "structure")), shape = "SizeConstraintSetSummaries", 
        type = "list")), shape = "ListSizeConstraintSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_sql_injection_match_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListSqlInjectionMatchSetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_sql_injection_match_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), SqlInjectionMatchSets = structure(list(structure(list(SqlInjectionMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "SqlInjectionMatchSetSummary", 
        type = "structure")), shape = "SqlInjectionMatchSetSummaries", 
        type = "list")), shape = "ListSqlInjectionMatchSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_subscribed_rule_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListSubscribedRuleGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_subscribed_rule_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), RuleGroups = structure(list(structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L), MetricName = structure(logical(0), 
            shape = "MetricName", type = "string")), shape = "SubscribedRuleGroupSummary", 
        type = "structure")), shape = "SubscribedRuleGroupSummaries", 
        type = "list")), shape = "ListSubscribedRuleGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_web_ac_ls_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListWebACLsRequest", type = "structure")
    return(populate(args, shape))
}

list_web_ac_ls_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), WebACLs = structure(list(structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "WebACLSummary", 
        type = "structure")), shape = "WebACLSummaries", type = "list")), 
        shape = "ListWebACLsResponse", type = "structure")
    return(populate(args, shape))
}

list_xss_match_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), Limit = structure(logical(0), 
        shape = "PaginationLimit", type = "integer", max = 100L, 
        min = 0L)), shape = "ListXssMatchSetsRequest", type = "structure")
    return(populate(args, shape))
}

list_xss_match_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextMarker = structure(logical(0), 
        shape = "NextMarker", type = "string", min = 1L), XssMatchSets = structure(list(structure(list(XssMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Name = structure(logical(0), shape = "ResourceName", 
            type = "string", max = 128L, min = 1L)), shape = "XssMatchSetSummary", 
        type = "structure")), shape = "XssMatchSetSummaries", 
        type = "list")), shape = "ListXssMatchSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_logging_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingConfiguration = structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L), LogDestinationConfigs = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "LogDestinationConfigs", type = "list", 
        max = 1L, min = 1L), RedactedFields = structure(list(structure(list(Type = structure(logical(0), 
        shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
        shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
        type = "structure")), shape = "RedactedFields", type = "list")), 
        shape = "LoggingConfiguration", type = "structure")), 
        shape = "PutLoggingConfigurationRequest", type = "structure")
    return(populate(args, shape))
}

put_logging_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoggingConfiguration = structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L), LogDestinationConfigs = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L)), shape = "LogDestinationConfigs", type = "list", 
        max = 1L, min = 1L), RedactedFields = structure(list(structure(list(Type = structure(logical(0), 
        shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
        shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
        type = "structure")), shape = "RedactedFields", type = "list")), 
        shape = "LoggingConfiguration", type = "structure")), 
        shape = "PutLoggingConfigurationResponse", type = "structure")
    return(populate(args, shape))
}

put_permission_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 1224L, 
        min = 1L), Policy = structure(logical(0), shape = "PolicyString", 
        type = "string", min = 1L)), shape = "PutPermissionPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_permission_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutPermissionPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_byte_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ByteMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), ByteMatchTuple = structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TargetString = structure(logical(0), 
            shape = "ByteMatchTargetString", type = "blob"), 
            TextTransformation = structure(logical(0), shape = "TextTransformation", 
                type = "string"), PositionalConstraint = structure(logical(0), 
                shape = "PositionalConstraint", type = "string")), 
            shape = "ByteMatchTuple", type = "structure")), shape = "ByteMatchSetUpdate", 
            type = "structure")), shape = "ByteMatchSetUpdates", 
            type = "list", min = 1L)), shape = "UpdateByteMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_byte_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateByteMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_geo_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GeoMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), GeoMatchConstraint = structure(list(Type = structure(logical(0), 
            shape = "GeoMatchConstraintType", type = "string"), 
            Value = structure(logical(0), shape = "GeoMatchConstraintValue", 
                type = "string")), shape = "GeoMatchConstraint", 
            type = "structure")), shape = "GeoMatchSetUpdate", 
            type = "structure")), shape = "GeoMatchSetUpdates", 
            type = "list", min = 1L)), shape = "UpdateGeoMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_geo_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateGeoMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_ip_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IPSetId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
        shape = "ChangeAction", type = "string"), IPSetDescriptor = structure(list(Type = structure(logical(0), 
        shape = "IPSetDescriptorType", type = "string"), Value = structure(logical(0), 
        shape = "IPSetDescriptorValue", type = "string")), shape = "IPSetDescriptor", 
        type = "structure")), shape = "IPSetUpdate", type = "structure")), 
        shape = "IPSetUpdates", type = "list", min = 1L)), shape = "UpdateIPSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_ip_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateIPSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_rate_based_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
        shape = "ChangeAction", type = "string"), Predicate = structure(list(Negated = structure(logical(0), 
        shape = "Negated", type = "boolean"), Type = structure(logical(0), 
        shape = "PredicateType", type = "string"), DataId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "Predicate", type = "structure")), shape = "RuleUpdate", 
        type = "structure")), shape = "RuleUpdates", type = "list"), 
        RateLimit = structure(logical(0), shape = "RateLimit", 
            type = "long", max = 2000000000L, min = 2000L)), 
        shape = "UpdateRateBasedRuleRequest", type = "structure")
    return(populate(args, shape))
}

update_rate_based_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateRateBasedRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_regex_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), RegexMatchTuple = structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string"), RegexPatternSetId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L)), shape = "RegexMatchTuple", type = "structure")), 
            shape = "RegexMatchSetUpdate", type = "structure")), 
            shape = "RegexMatchSetUpdates", type = "list", min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "UpdateRegexMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_regex_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateRegexMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_regex_pattern_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegexPatternSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), RegexPatternString = structure(logical(0), 
            shape = "RegexPatternString", type = "string", min = 1L)), 
            shape = "RegexPatternSetUpdate", type = "structure")), 
            shape = "RegexPatternSetUpdates", type = "list", 
            min = 1L), ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "UpdateRegexPatternSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_regex_pattern_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateRegexPatternSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleId = structure(logical(0), shape = "ResourceId", 
        type = "string", max = 128L, min = 1L), ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
        shape = "ChangeAction", type = "string"), Predicate = structure(list(Negated = structure(logical(0), 
        shape = "Negated", type = "boolean"), Type = structure(logical(0), 
        shape = "PredicateType", type = "string"), DataId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L)), 
        shape = "Predicate", type = "structure")), shape = "RuleUpdate", 
        type = "structure")), shape = "RuleUpdates", type = "list")), 
        shape = "UpdateRuleRequest", type = "structure")
    return(populate(args, shape))
}

update_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_rule_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleGroupId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), ActivatedRule = structure(list(Priority = structure(logical(0), 
            shape = "RulePriority", type = "integer"), RuleId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L), Action = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), OverrideAction = structure(list(Type = structure(logical(0), 
            shape = "WafOverrideActionType", type = "string")), 
            shape = "WafOverrideAction", type = "structure"), 
            Type = structure(logical(0), shape = "WafRuleType", 
                type = "string")), shape = "ActivatedRule", type = "structure")), 
            shape = "RuleGroupUpdate", type = "structure")), 
            shape = "RuleGroupUpdates", type = "list", min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L)), shape = "UpdateRuleGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_rule_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateRuleGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_size_constraint_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SizeConstraintSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), SizeConstraint = structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string"), ComparisonOperator = structure(logical(0), 
            shape = "ComparisonOperator", type = "string"), Size = structure(logical(0), 
            shape = "Size", type = "long", max = 21474836480, 
            min = 0L)), shape = "SizeConstraint", type = "structure")), 
            shape = "SizeConstraintSetUpdate", type = "structure")), 
            shape = "SizeConstraintSetUpdates", type = "list", 
            min = 1L)), shape = "UpdateSizeConstraintSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_size_constraint_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateSizeConstraintSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_sql_injection_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SqlInjectionMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), SqlInjectionMatchTuple = structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string")), 
            shape = "SqlInjectionMatchTuple", type = "structure")), 
            shape = "SqlInjectionMatchSetUpdate", type = "structure")), 
            shape = "SqlInjectionMatchSetUpdates", type = "list", 
            min = 1L)), shape = "UpdateSqlInjectionMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_sql_injection_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateSqlInjectionMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_web_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(WebACLId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), ActivatedRule = structure(list(Priority = structure(logical(0), 
            shape = "RulePriority", type = "integer"), RuleId = structure(logical(0), 
            shape = "ResourceId", type = "string", max = 128L, 
            min = 1L), Action = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure"), OverrideAction = structure(list(Type = structure(logical(0), 
            shape = "WafOverrideActionType", type = "string")), 
            shape = "WafOverrideAction", type = "structure"), 
            Type = structure(logical(0), shape = "WafRuleType", 
                type = "string")), shape = "ActivatedRule", type = "structure")), 
            shape = "WebACLUpdate", type = "structure")), shape = "WebACLUpdates", 
            type = "list"), DefaultAction = structure(list(Type = structure(logical(0), 
            shape = "WafActionType", type = "string")), shape = "WafAction", 
            type = "structure")), shape = "UpdateWebACLRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_web_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateWebACLResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_xss_match_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(XssMatchSetId = structure(logical(0), 
        shape = "ResourceId", type = "string", max = 128L, min = 1L), 
        ChangeToken = structure(logical(0), shape = "ChangeToken", 
            type = "string", min = 1L), Updates = structure(list(structure(list(Action = structure(logical(0), 
            shape = "ChangeAction", type = "string"), XssMatchTuple = structure(list(FieldToMatch = structure(list(Type = structure(logical(0), 
            shape = "MatchFieldType", type = "string"), Data = structure(logical(0), 
            shape = "MatchFieldData", type = "string")), shape = "FieldToMatch", 
            type = "structure"), TextTransformation = structure(logical(0), 
            shape = "TextTransformation", type = "string")), 
            shape = "XssMatchTuple", type = "structure")), shape = "XssMatchSetUpdate", 
            type = "structure")), shape = "XssMatchSetUpdates", 
            type = "list", min = 1L)), shape = "UpdateXssMatchSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_xss_match_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ChangeToken = structure(logical(0), 
        shape = "ChangeToken", type = "string", min = 1L)), shape = "UpdateXssMatchSetResponse", 
        type = "structure")
    return(populate(args, shape))
}
