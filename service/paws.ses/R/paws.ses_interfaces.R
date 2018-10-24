clone_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), OriginalRuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string")), shape = "CloneReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

clone_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CloneReceiptRuleSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSet = structure(list(Name = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string")), shape = "ConfigurationSet", 
        type = "structure")), shape = "CreateConfigurationSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateConfigurationSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_set_event_destination_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), EventDestination = structure(list(Name = structure(logical(0), 
        shape = "EventDestinationName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), MatchingEventTypes = structure(list(structure(logical(0), 
        shape = "EventType", type = "string")), shape = "EventTypes", 
        type = "list"), KinesisFirehoseDestination = structure(list(IAMRoleARN = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), DeliveryStreamARN = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "KinesisFirehoseDestination", 
        type = "structure"), CloudWatchDestination = structure(list(DimensionConfigurations = structure(list(structure(list(DimensionName = structure(logical(0), 
        shape = "DimensionName", type = "string"), DimensionValueSource = structure(logical(0), 
        shape = "DimensionValueSource", type = "string"), DefaultDimensionValue = structure(logical(0), 
        shape = "DefaultDimensionValue", type = "string")), shape = "CloudWatchDimensionConfiguration", 
        type = "structure")), shape = "CloudWatchDimensionConfigurations", 
        type = "list")), shape = "CloudWatchDestination", type = "structure"), 
        SNSDestination = structure(list(TopicARN = structure(logical(0), 
            shape = "AmazonResourceName", type = "string")), 
            shape = "SNSDestination", type = "structure")), shape = "EventDestination", 
        type = "structure")), shape = "CreateConfigurationSetEventDestinationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_set_event_destination_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateConfigurationSetEventDestinationResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_set_tracking_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), TrackingOptions = structure(list(CustomRedirectDomain = structure(logical(0), 
        shape = "CustomRedirectDomain", type = "string")), shape = "TrackingOptions", 
        type = "structure")), shape = "CreateConfigurationSetTrackingOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_configuration_set_tracking_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateConfigurationSetTrackingOptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_custom_verification_email_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), FromEmailAddress = structure(logical(0), 
        shape = "FromAddress", type = "string"), TemplateSubject = structure(logical(0), 
        shape = "Subject", type = "string"), TemplateContent = structure(logical(0), 
        shape = "TemplateContent", type = "string"), SuccessRedirectionURL = structure(logical(0), 
        shape = "SuccessRedirectionURL", type = "string"), FailureRedirectionURL = structure(logical(0), 
        shape = "FailureRedirectionURL", type = "string")), shape = "CreateCustomVerificationEmailTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_custom_verification_email_template_output <- function () 
{
    return(list())
}

create_receipt_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(Name = structure(logical(0), 
        shape = "ReceiptFilterName", type = "string"), IpFilter = structure(list(Policy = structure(logical(0), 
        shape = "ReceiptFilterPolicy", type = "string"), Cidr = structure(logical(0), 
        shape = "Cidr", type = "string")), shape = "ReceiptIpFilter", 
        type = "structure")), shape = "ReceiptFilter", type = "structure")), 
        shape = "CreateReceiptFilterRequest", type = "structure")
    return(populate(args, shape))
}

create_receipt_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateReceiptFilterResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_receipt_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), After = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), Rule = structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), TlsPolicy = structure(logical(0), 
        shape = "TlsPolicy", type = "string"), Recipients = structure(list(structure(logical(0), 
        shape = "Recipient", type = "string")), shape = "RecipientsList", 
        type = "list"), Actions = structure(list(structure(list(S3Action = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), BucketName = structure(logical(0), 
        shape = "S3BucketName", type = "string"), ObjectKeyPrefix = structure(logical(0), 
        shape = "S3KeyPrefix", type = "string"), KmsKeyArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "S3Action", 
        type = "structure"), BounceAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), SmtpReplyCode = structure(logical(0), 
        shape = "BounceSmtpReplyCode", type = "string"), StatusCode = structure(logical(0), 
        shape = "BounceStatusCode", type = "string"), Message = structure(logical(0), 
        shape = "BounceMessage", type = "string"), Sender = structure(logical(0), 
        shape = "Address", type = "string")), shape = "BounceAction", 
        type = "structure"), WorkmailAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), OrganizationArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "WorkmailAction", 
        type = "structure"), LambdaAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), FunctionArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), InvocationType = structure(logical(0), 
        shape = "InvocationType", type = "string")), shape = "LambdaAction", 
        type = "structure"), StopAction = structure(list(Scope = structure(logical(0), 
        shape = "StopScope", type = "string"), TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "StopAction", 
        type = "structure"), AddHeaderAction = structure(list(HeaderName = structure(logical(0), 
        shape = "HeaderName", type = "string"), HeaderValue = structure(logical(0), 
        shape = "HeaderValue", type = "string")), shape = "AddHeaderAction", 
        type = "structure"), SNSAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), Encoding = structure(logical(0), 
        shape = "SNSActionEncoding", type = "string")), shape = "SNSAction", 
        type = "structure")), shape = "ReceiptAction", type = "structure")), 
        shape = "ReceiptActionsList", type = "list"), ScanEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "ReceiptRule", 
        type = "structure")), shape = "CreateReceiptRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_receipt_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateReceiptRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string")), shape = "CreateReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateReceiptRuleSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Template = structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), SubjectPart = structure(logical(0), 
        shape = "SubjectPart", type = "string"), TextPart = structure(logical(0), 
        shape = "TextPart", type = "string"), HtmlPart = structure(logical(0), 
        shape = "HtmlPart", type = "string")), shape = "Template", 
        type = "structure")), shape = "CreateTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string")), shape = "DeleteConfigurationSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteConfigurationSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_set_event_destination_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), EventDestinationName = structure(logical(0), 
        shape = "EventDestinationName", type = "string")), shape = "DeleteConfigurationSetEventDestinationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_set_event_destination_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteConfigurationSetEventDestinationResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_set_tracking_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string")), shape = "DeleteConfigurationSetTrackingOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_configuration_set_tracking_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteConfigurationSetTrackingOptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_custom_verification_email_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string")), shape = "DeleteCustomVerificationEmailTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_custom_verification_email_template_output <- function () 
{
    return(list())
}

delete_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string")), shape = "DeleteIdentityRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteIdentityResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_identity_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 64L, min = 1L)), 
        shape = "DeleteIdentityPolicyRequest", type = "structure")
    return(populate(args, shape))
}

delete_identity_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteIdentityPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_receipt_filter_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterName = structure(logical(0), 
        shape = "ReceiptFilterName", type = "string")), shape = "DeleteReceiptFilterRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_receipt_filter_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteReceiptFilterResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_receipt_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), RuleName = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string")), shape = "DeleteReceiptRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_receipt_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteReceiptRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string")), shape = "DeleteReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteReceiptRuleSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string")), shape = "DeleteTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_verified_email_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmailAddress = structure(logical(0), 
        shape = "Address", type = "string")), shape = "DeleteVerifiedEmailAddressRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_verified_email_address_output <- function () 
{
    return(list())
}

describe_active_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeActiveReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_active_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), CreatedTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "ReceiptRuleSetMetadata", 
        type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), TlsPolicy = structure(logical(0), 
        shape = "TlsPolicy", type = "string"), Recipients = structure(list(structure(logical(0), 
        shape = "Recipient", type = "string")), shape = "RecipientsList", 
        type = "list"), Actions = structure(list(structure(list(S3Action = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), BucketName = structure(logical(0), 
        shape = "S3BucketName", type = "string"), ObjectKeyPrefix = structure(logical(0), 
        shape = "S3KeyPrefix", type = "string"), KmsKeyArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "S3Action", 
        type = "structure"), BounceAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), SmtpReplyCode = structure(logical(0), 
        shape = "BounceSmtpReplyCode", type = "string"), StatusCode = structure(logical(0), 
        shape = "BounceStatusCode", type = "string"), Message = structure(logical(0), 
        shape = "BounceMessage", type = "string"), Sender = structure(logical(0), 
        shape = "Address", type = "string")), shape = "BounceAction", 
        type = "structure"), WorkmailAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), OrganizationArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "WorkmailAction", 
        type = "structure"), LambdaAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), FunctionArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), InvocationType = structure(logical(0), 
        shape = "InvocationType", type = "string")), shape = "LambdaAction", 
        type = "structure"), StopAction = structure(list(Scope = structure(logical(0), 
        shape = "StopScope", type = "string"), TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "StopAction", 
        type = "structure"), AddHeaderAction = structure(list(HeaderName = structure(logical(0), 
        shape = "HeaderName", type = "string"), HeaderValue = structure(logical(0), 
        shape = "HeaderValue", type = "string")), shape = "AddHeaderAction", 
        type = "structure"), SNSAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), Encoding = structure(logical(0), 
        shape = "SNSActionEncoding", type = "string")), shape = "SNSAction", 
        type = "structure")), shape = "ReceiptAction", type = "structure")), 
        shape = "ReceiptActionsList", type = "list"), ScanEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "ReceiptRule", 
        type = "structure")), shape = "ReceiptRulesList", type = "list")), 
        shape = "DescribeActiveReceiptRuleSetResponse", type = "structure")
    return(populate(args, shape))
}

describe_configuration_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), ConfigurationSetAttributeNames = structure(list(structure(logical(0), 
        shape = "ConfigurationSetAttribute", type = "string")), 
        shape = "ConfigurationSetAttributeList", type = "list")), 
        shape = "DescribeConfigurationSetRequest", type = "structure")
    return(populate(args, shape))
}

describe_configuration_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSet = structure(list(Name = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string")), shape = "ConfigurationSet", 
        type = "structure"), EventDestinations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "EventDestinationName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), MatchingEventTypes = structure(list(structure(logical(0), 
        shape = "EventType", type = "string")), shape = "EventTypes", 
        type = "list"), KinesisFirehoseDestination = structure(list(IAMRoleARN = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), DeliveryStreamARN = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "KinesisFirehoseDestination", 
        type = "structure"), CloudWatchDestination = structure(list(DimensionConfigurations = structure(list(structure(list(DimensionName = structure(logical(0), 
        shape = "DimensionName", type = "string"), DimensionValueSource = structure(logical(0), 
        shape = "DimensionValueSource", type = "string"), DefaultDimensionValue = structure(logical(0), 
        shape = "DefaultDimensionValue", type = "string")), shape = "CloudWatchDimensionConfiguration", 
        type = "structure")), shape = "CloudWatchDimensionConfigurations", 
        type = "list")), shape = "CloudWatchDestination", type = "structure"), 
        SNSDestination = structure(list(TopicARN = structure(logical(0), 
            shape = "AmazonResourceName", type = "string")), 
            shape = "SNSDestination", type = "structure")), shape = "EventDestination", 
        type = "structure")), shape = "EventDestinations", type = "list"), 
        TrackingOptions = structure(list(CustomRedirectDomain = structure(logical(0), 
            shape = "CustomRedirectDomain", type = "string")), 
            shape = "TrackingOptions", type = "structure"), ReputationOptions = structure(list(SendingEnabled = structure(logical(0), 
            shape = "Enabled", type = "boolean"), ReputationMetricsEnabled = structure(logical(0), 
            shape = "Enabled", type = "boolean"), LastFreshStart = structure(logical(0), 
            shape = "LastFreshStart", type = "timestamp")), shape = "ReputationOptions", 
            type = "structure")), shape = "DescribeConfigurationSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_receipt_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), RuleName = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string")), shape = "DescribeReceiptRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_receipt_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Rule = structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), TlsPolicy = structure(logical(0), 
        shape = "TlsPolicy", type = "string"), Recipients = structure(list(structure(logical(0), 
        shape = "Recipient", type = "string")), shape = "RecipientsList", 
        type = "list"), Actions = structure(list(structure(list(S3Action = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), BucketName = structure(logical(0), 
        shape = "S3BucketName", type = "string"), ObjectKeyPrefix = structure(logical(0), 
        shape = "S3KeyPrefix", type = "string"), KmsKeyArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "S3Action", 
        type = "structure"), BounceAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), SmtpReplyCode = structure(logical(0), 
        shape = "BounceSmtpReplyCode", type = "string"), StatusCode = structure(logical(0), 
        shape = "BounceStatusCode", type = "string"), Message = structure(logical(0), 
        shape = "BounceMessage", type = "string"), Sender = structure(logical(0), 
        shape = "Address", type = "string")), shape = "BounceAction", 
        type = "structure"), WorkmailAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), OrganizationArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "WorkmailAction", 
        type = "structure"), LambdaAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), FunctionArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), InvocationType = structure(logical(0), 
        shape = "InvocationType", type = "string")), shape = "LambdaAction", 
        type = "structure"), StopAction = structure(list(Scope = structure(logical(0), 
        shape = "StopScope", type = "string"), TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "StopAction", 
        type = "structure"), AddHeaderAction = structure(list(HeaderName = structure(logical(0), 
        shape = "HeaderName", type = "string"), HeaderValue = structure(logical(0), 
        shape = "HeaderValue", type = "string")), shape = "AddHeaderAction", 
        type = "structure"), SNSAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), Encoding = structure(logical(0), 
        shape = "SNSActionEncoding", type = "string")), shape = "SNSAction", 
        type = "structure")), shape = "ReceiptAction", type = "structure")), 
        shape = "ReceiptActionsList", type = "list"), ScanEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "ReceiptRule", 
        type = "structure")), shape = "DescribeReceiptRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string")), shape = "DescribeReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), CreatedTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "ReceiptRuleSetMetadata", 
        type = "structure"), Rules = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), TlsPolicy = structure(logical(0), 
        shape = "TlsPolicy", type = "string"), Recipients = structure(list(structure(logical(0), 
        shape = "Recipient", type = "string")), shape = "RecipientsList", 
        type = "list"), Actions = structure(list(structure(list(S3Action = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), BucketName = structure(logical(0), 
        shape = "S3BucketName", type = "string"), ObjectKeyPrefix = structure(logical(0), 
        shape = "S3KeyPrefix", type = "string"), KmsKeyArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "S3Action", 
        type = "structure"), BounceAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), SmtpReplyCode = structure(logical(0), 
        shape = "BounceSmtpReplyCode", type = "string"), StatusCode = structure(logical(0), 
        shape = "BounceStatusCode", type = "string"), Message = structure(logical(0), 
        shape = "BounceMessage", type = "string"), Sender = structure(logical(0), 
        shape = "Address", type = "string")), shape = "BounceAction", 
        type = "structure"), WorkmailAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), OrganizationArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "WorkmailAction", 
        type = "structure"), LambdaAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), FunctionArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), InvocationType = structure(logical(0), 
        shape = "InvocationType", type = "string")), shape = "LambdaAction", 
        type = "structure"), StopAction = structure(list(Scope = structure(logical(0), 
        shape = "StopScope", type = "string"), TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "StopAction", 
        type = "structure"), AddHeaderAction = structure(list(HeaderName = structure(logical(0), 
        shape = "HeaderName", type = "string"), HeaderValue = structure(logical(0), 
        shape = "HeaderValue", type = "string")), shape = "AddHeaderAction", 
        type = "structure"), SNSAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), Encoding = structure(logical(0), 
        shape = "SNSActionEncoding", type = "string")), shape = "SNSAction", 
        type = "structure")), shape = "ReceiptAction", type = "structure")), 
        shape = "ReceiptActionsList", type = "list"), ScanEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "ReceiptRule", 
        type = "structure")), shape = "ReceiptRulesList", type = "list")), 
        shape = "DescribeReceiptRuleSetResponse", type = "structure")
    return(populate(args, shape))
}

get_account_sending_enabled_input <- function () 
{
    return(list())
}

get_account_sending_enabled_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Enabled = structure(logical(0), shape = "Enabled", 
        type = "boolean")), shape = "GetAccountSendingEnabledResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_custom_verification_email_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string")), shape = "GetCustomVerificationEmailTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_custom_verification_email_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), FromEmailAddress = structure(logical(0), 
        shape = "FromAddress", type = "string"), TemplateSubject = structure(logical(0), 
        shape = "Subject", type = "string"), TemplateContent = structure(logical(0), 
        shape = "TemplateContent", type = "string"), SuccessRedirectionURL = structure(logical(0), 
        shape = "SuccessRedirectionURL", type = "string"), FailureRedirectionURL = structure(logical(0), 
        shape = "FailureRedirectionURL", type = "string")), shape = "GetCustomVerificationEmailTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_dkim_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identities = structure(list(structure(logical(0), 
        shape = "Identity", type = "string")), shape = "IdentityList", 
        type = "list")), shape = "GetIdentityDkimAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_dkim_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DkimAttributes = structure(list(structure(list(DkimEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), DkimVerificationStatus = structure(logical(0), 
        shape = "VerificationStatus", type = "string"), DkimTokens = structure(list(structure(logical(0), 
        shape = "VerificationToken", type = "string")), shape = "VerificationTokenList", 
        type = "list")), shape = "IdentityDkimAttributes", type = "structure")), 
        shape = "DkimAttributes", type = "map")), shape = "GetIdentityDkimAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_mail_from_domain_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identities = structure(list(structure(logical(0), 
        shape = "Identity", type = "string")), shape = "IdentityList", 
        type = "list")), shape = "GetIdentityMailFromDomainAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_mail_from_domain_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MailFromDomainAttributes = structure(list(structure(list(MailFromDomain = structure(logical(0), 
        shape = "MailFromDomainName", type = "string"), MailFromDomainStatus = structure(logical(0), 
        shape = "CustomMailFromStatus", type = "string"), BehaviorOnMXFailure = structure(logical(0), 
        shape = "BehaviorOnMXFailure", type = "string")), shape = "IdentityMailFromDomainAttributes", 
        type = "structure")), shape = "MailFromDomainAttributes", 
        type = "map")), shape = "GetIdentityMailFromDomainAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_notification_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identities = structure(list(structure(logical(0), 
        shape = "Identity", type = "string")), shape = "IdentityList", 
        type = "list")), shape = "GetIdentityNotificationAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_notification_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotificationAttributes = structure(list(structure(list(BounceTopic = structure(logical(0), 
        shape = "NotificationTopic", type = "string"), ComplaintTopic = structure(logical(0), 
        shape = "NotificationTopic", type = "string"), DeliveryTopic = structure(logical(0), 
        shape = "NotificationTopic", type = "string"), ForwardingEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), HeadersInBounceNotificationsEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), HeadersInComplaintNotificationsEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), HeadersInDeliveryNotificationsEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "IdentityNotificationAttributes", 
        type = "structure")), shape = "NotificationAttributes", 
        type = "map")), shape = "GetIdentityNotificationAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), PolicyNames = structure(list(structure(logical(0), 
        shape = "PolicyName", type = "string", max = 64L, min = 1L)), 
        shape = "PolicyNameList", type = "list")), shape = "GetIdentityPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Policies = structure(list(structure(logical(0), 
        shape = "Policy", type = "string", min = 1L)), shape = "PolicyMap", 
        type = "map")), shape = "GetIdentityPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_verification_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identities = structure(list(structure(logical(0), 
        shape = "Identity", type = "string")), shape = "IdentityList", 
        type = "list")), shape = "GetIdentityVerificationAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_identity_verification_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VerificationAttributes = structure(list(structure(list(VerificationStatus = structure(logical(0), 
        shape = "VerificationStatus", type = "string"), VerificationToken = structure(logical(0), 
        shape = "VerificationToken", type = "string")), shape = "IdentityVerificationAttributes", 
        type = "structure")), shape = "VerificationAttributes", 
        type = "map")), shape = "GetIdentityVerificationAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_send_quota_input <- function () 
{
    return(list())
}

get_send_quota_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Max24HourSend = structure(logical(0), 
        shape = "Max24HourSend", type = "double"), MaxSendRate = structure(logical(0), 
        shape = "MaxSendRate", type = "double"), SentLast24Hours = structure(logical(0), 
        shape = "SentLast24Hours", type = "double")), shape = "GetSendQuotaResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_send_statistics_input <- function () 
{
    return(list())
}

get_send_statistics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SendDataPoints = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), DeliveryAttempts = structure(logical(0), 
        shape = "Counter", type = "long"), Bounces = structure(logical(0), 
        shape = "Counter", type = "long"), Complaints = structure(logical(0), 
        shape = "Counter", type = "long"), Rejects = structure(logical(0), 
        shape = "Counter", type = "long")), shape = "SendDataPoint", 
        type = "structure")), shape = "SendDataPointList", type = "list")), 
        shape = "GetSendStatisticsResponse", type = "structure")
    return(populate(args, shape))
}

get_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string")), shape = "GetTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Template = structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), SubjectPart = structure(logical(0), 
        shape = "SubjectPart", type = "string"), TextPart = structure(logical(0), 
        shape = "TextPart", type = "string"), HtmlPart = structure(logical(0), 
        shape = "HtmlPart", type = "string")), shape = "Template", 
        type = "structure")), shape = "GetTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_configuration_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxItems = structure(logical(0), 
        shape = "MaxItems", type = "integer")), shape = "ListConfigurationSetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_configuration_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSets = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string")), shape = "ConfigurationSet", 
        type = "structure")), shape = "ConfigurationSets", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "ListConfigurationSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_custom_verification_email_templates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", box = TRUE, max = 50L, 
        min = 1L)), shape = "ListCustomVerificationEmailTemplatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_custom_verification_email_templates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomVerificationEmailTemplates = structure(list(structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), FromEmailAddress = structure(logical(0), 
        shape = "FromAddress", type = "string"), TemplateSubject = structure(logical(0), 
        shape = "Subject", type = "string"), SuccessRedirectionURL = structure(logical(0), 
        shape = "SuccessRedirectionURL", type = "string"), FailureRedirectionURL = structure(logical(0), 
        shape = "FailureRedirectionURL", type = "string")), shape = "CustomVerificationEmailTemplate", 
        type = "structure")), shape = "CustomVerificationEmailTemplates", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListCustomVerificationEmailTemplatesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_identities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IdentityType = structure(logical(0), 
        shape = "IdentityType", type = "string"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxItems = structure(logical(0), 
        shape = "MaxItems", type = "integer")), shape = "ListIdentitiesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_identities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identities = structure(list(structure(logical(0), 
        shape = "Identity", type = "string")), shape = "IdentityList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListIdentitiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_identity_policies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string")), shape = "ListIdentityPoliciesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_identity_policies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PolicyNames = structure(list(structure(logical(0), 
        shape = "PolicyName", type = "string", max = 64L, min = 1L)), 
        shape = "PolicyNameList", type = "list")), shape = "ListIdentityPoliciesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_receipt_filters_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ListReceiptFiltersRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_receipt_filters_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ReceiptFilterName", type = "string"), IpFilter = structure(list(Policy = structure(logical(0), 
        shape = "ReceiptFilterPolicy", type = "string"), Cidr = structure(logical(0), 
        shape = "Cidr", type = "string")), shape = "ReceiptIpFilter", 
        type = "structure")), shape = "ReceiptFilter", type = "structure")), 
        shape = "ReceiptFilterList", type = "list")), shape = "ListReceiptFiltersResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_receipt_rule_sets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListReceiptRuleSetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_receipt_rule_sets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSets = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), CreatedTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "ReceiptRuleSetMetadata", 
        type = "structure")), shape = "ReceiptRuleSetsLists", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListReceiptRuleSetsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_templates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), MaxItems = structure(logical(0), 
        shape = "MaxItems", type = "integer")), shape = "ListTemplatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_templates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplatesMetadata = structure(list(structure(list(Name = structure(logical(0), 
        shape = "TemplateName", type = "string"), CreatedTimestamp = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "TemplateMetadata", 
        type = "structure")), shape = "TemplateMetadataList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string")), shape = "ListTemplatesResponse", type = "structure")
    return(populate(args, shape))
}

list_verified_email_addresses_input <- function () 
{
    return(list())
}

list_verified_email_addresses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VerifiedEmailAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list")), shape = "ListVerifiedEmailAddressesResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_identity_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), PolicyName = structure(logical(0), 
        shape = "PolicyName", type = "string", max = 64L, min = 1L), 
        Policy = structure(logical(0), shape = "Policy", type = "string", 
            min = 1L)), shape = "PutIdentityPolicyRequest", type = "structure")
    return(populate(args, shape))
}

put_identity_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutIdentityPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

reorder_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), RuleNames = structure(list(structure(logical(0), 
        shape = "ReceiptRuleName", type = "string")), shape = "ReceiptRuleNamesList", 
        type = "list")), shape = "ReorderReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

reorder_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "ReorderReceiptRuleSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_bounce_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OriginalMessageId = structure(logical(0), 
        shape = "MessageId", type = "string"), BounceSender = structure(logical(0), 
        shape = "Address", type = "string"), Explanation = structure(logical(0), 
        shape = "Explanation", type = "string"), MessageDsn = structure(list(ReportingMta = structure(logical(0), 
        shape = "ReportingMta", type = "string"), ArrivalDate = structure(logical(0), 
        shape = "ArrivalDate", type = "timestamp"), ExtensionFields = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ExtensionFieldName", type = "string"), Value = structure(logical(0), 
        shape = "ExtensionFieldValue", type = "string")), shape = "ExtensionField", 
        type = "structure")), shape = "ExtensionFieldList", type = "list")), 
        shape = "MessageDsn", type = "structure"), BouncedRecipientInfoList = structure(list(structure(list(Recipient = structure(logical(0), 
        shape = "Address", type = "string"), RecipientArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), BounceType = structure(logical(0), 
        shape = "BounceType", type = "string"), RecipientDsnFields = structure(list(FinalRecipient = structure(logical(0), 
        shape = "Address", type = "string"), Action = structure(logical(0), 
        shape = "DsnAction", type = "string"), RemoteMta = structure(logical(0), 
        shape = "RemoteMta", type = "string"), Status = structure(logical(0), 
        shape = "DsnStatus", type = "string"), DiagnosticCode = structure(logical(0), 
        shape = "DiagnosticCode", type = "string"), LastAttemptDate = structure(logical(0), 
        shape = "LastAttemptDate", type = "timestamp"), ExtensionFields = structure(list(structure(list(Name = structure(logical(0), 
        shape = "ExtensionFieldName", type = "string"), Value = structure(logical(0), 
        shape = "ExtensionFieldValue", type = "string")), shape = "ExtensionField", 
        type = "structure")), shape = "ExtensionFieldList", type = "list")), 
        shape = "RecipientDsnFields", type = "structure")), shape = "BouncedRecipientInfo", 
        type = "structure")), shape = "BouncedRecipientInfoList", 
        type = "list"), BounceSenderArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "SendBounceRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_bounce_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MessageId = structure(logical(0), 
        shape = "MessageId", type = "string")), shape = "SendBounceResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_bulk_templated_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Source = structure(logical(0), shape = "Address", 
        type = "string"), SourceArn = structure(logical(0), shape = "AmazonResourceName", 
        type = "string"), ReplyToAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list"), ReturnPath = structure(logical(0), shape = "Address", 
        type = "string"), ReturnPathArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), DefaultTags = structure(list(structure(list(Name = structure(logical(0), 
        shape = "MessageTagName", type = "string"), Value = structure(logical(0), 
        shape = "MessageTagValue", type = "string")), shape = "MessageTag", 
        type = "structure")), shape = "MessageTagList", type = "list"), 
        Template = structure(logical(0), shape = "TemplateName", 
            type = "string"), TemplateArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string"), DefaultTemplateData = structure(logical(0), 
            shape = "TemplateData", type = "string", max = 262144L), 
        Destinations = structure(list(structure(list(Destination = structure(list(ToAddresses = structure(list(structure(logical(0), 
            shape = "Address", type = "string")), shape = "AddressList", 
            type = "list"), CcAddresses = structure(list(structure(logical(0), 
            shape = "Address", type = "string")), shape = "AddressList", 
            type = "list"), BccAddresses = structure(list(structure(logical(0), 
            shape = "Address", type = "string")), shape = "AddressList", 
            type = "list")), shape = "Destination", type = "structure"), 
            ReplacementTags = structure(list(structure(list(Name = structure(logical(0), 
                shape = "MessageTagName", type = "string"), Value = structure(logical(0), 
                shape = "MessageTagValue", type = "string")), 
                shape = "MessageTag", type = "structure")), shape = "MessageTagList", 
                type = "list"), ReplacementTemplateData = structure(logical(0), 
                shape = "TemplateData", type = "string", max = 262144L)), 
            shape = "BulkEmailDestination", type = "structure")), 
            shape = "BulkEmailDestinationList", type = "list")), 
        shape = "SendBulkTemplatedEmailRequest", type = "structure")
    return(populate(args, shape))
}

send_bulk_templated_email_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(list(structure(list(Status = structure(logical(0), 
        shape = "BulkEmailStatus", type = "string"), Error = structure(logical(0), 
        shape = "Error", type = "string"), MessageId = structure(logical(0), 
        shape = "MessageId", type = "string")), shape = "BulkEmailDestinationStatus", 
        type = "structure")), shape = "BulkEmailDestinationStatusList", 
        type = "list")), shape = "SendBulkTemplatedEmailResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_custom_verification_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmailAddress = structure(logical(0), 
        shape = "Address", type = "string"), TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string")), shape = "SendCustomVerificationEmailRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_custom_verification_email_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MessageId = structure(logical(0), 
        shape = "MessageId", type = "string")), shape = "SendCustomVerificationEmailResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Source = structure(logical(0), shape = "Address", 
        type = "string"), Destination = structure(list(ToAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list"), CcAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list"), BccAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list")), shape = "Destination", type = "structure"), 
        Message = structure(list(Subject = structure(list(Data = structure(logical(0), 
            shape = "MessageData", type = "string"), Charset = structure(logical(0), 
            shape = "Charset", type = "string")), shape = "Content", 
            type = "structure"), Body = structure(list(Text = structure(list(Data = structure(logical(0), 
            shape = "MessageData", type = "string"), Charset = structure(logical(0), 
            shape = "Charset", type = "string")), shape = "Content", 
            type = "structure"), Html = structure(list(Data = structure(logical(0), 
            shape = "MessageData", type = "string"), Charset = structure(logical(0), 
            shape = "Charset", type = "string")), shape = "Content", 
            type = "structure")), shape = "Body", type = "structure")), 
            shape = "Message", type = "structure"), ReplyToAddresses = structure(list(structure(logical(0), 
            shape = "Address", type = "string")), shape = "AddressList", 
            type = "list"), ReturnPath = structure(logical(0), 
            shape = "Address", type = "string"), SourceArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string"), ReturnPathArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string"), Tags = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MessageTagName", type = "string"), Value = structure(logical(0), 
            shape = "MessageTagValue", type = "string")), shape = "MessageTag", 
            type = "structure")), shape = "MessageTagList", type = "list"), 
        ConfigurationSetName = structure(logical(0), shape = "ConfigurationSetName", 
            type = "string")), shape = "SendEmailRequest", type = "structure")
    return(populate(args, shape))
}

send_email_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MessageId = structure(logical(0), 
        shape = "MessageId", type = "string")), shape = "SendEmailResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_raw_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Source = structure(logical(0), shape = "Address", 
        type = "string"), Destinations = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list"), RawMessage = structure(list(Data = structure(logical(0), 
        shape = "RawMessageData", type = "blob")), shape = "RawMessage", 
        type = "structure"), FromArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), SourceArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), ReturnPathArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), Tags = structure(list(structure(list(Name = structure(logical(0), 
        shape = "MessageTagName", type = "string"), Value = structure(logical(0), 
        shape = "MessageTagValue", type = "string")), shape = "MessageTag", 
        type = "structure")), shape = "MessageTagList", type = "list"), 
        ConfigurationSetName = structure(logical(0), shape = "ConfigurationSetName", 
            type = "string")), shape = "SendRawEmailRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_raw_email_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MessageId = structure(logical(0), 
        shape = "MessageId", type = "string")), shape = "SendRawEmailResponse", 
        type = "structure")
    return(populate(args, shape))
}

send_templated_email_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Source = structure(logical(0), shape = "Address", 
        type = "string"), Destination = structure(list(ToAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list"), CcAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list"), BccAddresses = structure(list(structure(logical(0), 
        shape = "Address", type = "string")), shape = "AddressList", 
        type = "list")), shape = "Destination", type = "structure"), 
        ReplyToAddresses = structure(list(structure(logical(0), 
            shape = "Address", type = "string")), shape = "AddressList", 
            type = "list"), ReturnPath = structure(logical(0), 
            shape = "Address", type = "string"), SourceArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string"), ReturnPathArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string"), Tags = structure(list(structure(list(Name = structure(logical(0), 
            shape = "MessageTagName", type = "string"), Value = structure(logical(0), 
            shape = "MessageTagValue", type = "string")), shape = "MessageTag", 
            type = "structure")), shape = "MessageTagList", type = "list"), 
        ConfigurationSetName = structure(logical(0), shape = "ConfigurationSetName", 
            type = "string"), Template = structure(logical(0), 
            shape = "TemplateName", type = "string"), TemplateArn = structure(logical(0), 
            shape = "AmazonResourceName", type = "string"), TemplateData = structure(logical(0), 
            shape = "TemplateData", type = "string", max = 262144L)), 
        shape = "SendTemplatedEmailRequest", type = "structure")
    return(populate(args, shape))
}

send_templated_email_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MessageId = structure(logical(0), 
        shape = "MessageId", type = "string")), shape = "SendTemplatedEmailResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_active_receipt_rule_set_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string")), shape = "SetActiveReceiptRuleSetRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_active_receipt_rule_set_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetActiveReceiptRuleSetResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_dkim_enabled_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), DkimEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "SetIdentityDkimEnabledRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_dkim_enabled_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetIdentityDkimEnabledResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_feedback_forwarding_enabled_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), ForwardingEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "SetIdentityFeedbackForwardingEnabledRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_feedback_forwarding_enabled_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetIdentityFeedbackForwardingEnabledResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_headers_in_notifications_enabled_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), NotificationType = structure(logical(0), 
        shape = "NotificationType", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "SetIdentityHeadersInNotificationsEnabledRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_headers_in_notifications_enabled_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetIdentityHeadersInNotificationsEnabledResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_mail_from_domain_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), MailFromDomain = structure(logical(0), 
        shape = "MailFromDomainName", type = "string"), BehaviorOnMXFailure = structure(logical(0), 
        shape = "BehaviorOnMXFailure", type = "string")), shape = "SetIdentityMailFromDomainRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_mail_from_domain_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetIdentityMailFromDomainResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_notification_topic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Identity = structure(logical(0), 
        shape = "Identity", type = "string"), NotificationType = structure(logical(0), 
        shape = "NotificationType", type = "string"), SnsTopic = structure(logical(0), 
        shape = "NotificationTopic", type = "string")), shape = "SetIdentityNotificationTopicRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_identity_notification_topic_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetIdentityNotificationTopicResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_receipt_rule_position_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), RuleName = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), After = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string")), shape = "SetReceiptRulePositionRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_receipt_rule_position_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetReceiptRulePositionResponse", 
        type = "structure")
    return(populate(args, shape))
}

test_render_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), TemplateData = structure(logical(0), 
        shape = "TemplateData", type = "string", max = 262144L)), 
        shape = "TestRenderTemplateRequest", type = "structure")
    return(populate(args, shape))
}

test_render_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RenderedTemplate = structure(logical(0), 
        shape = "RenderedTemplate", type = "string")), shape = "TestRenderTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_account_sending_enabled_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Enabled = structure(logical(0), shape = "Enabled", 
        type = "boolean")), shape = "UpdateAccountSendingEnabledRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_account_sending_enabled_output <- function () 
{
    return(list())
}

update_configuration_set_event_destination_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), EventDestination = structure(list(Name = structure(logical(0), 
        shape = "EventDestinationName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), MatchingEventTypes = structure(list(structure(logical(0), 
        shape = "EventType", type = "string")), shape = "EventTypes", 
        type = "list"), KinesisFirehoseDestination = structure(list(IAMRoleARN = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), DeliveryStreamARN = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "KinesisFirehoseDestination", 
        type = "structure"), CloudWatchDestination = structure(list(DimensionConfigurations = structure(list(structure(list(DimensionName = structure(logical(0), 
        shape = "DimensionName", type = "string"), DimensionValueSource = structure(logical(0), 
        shape = "DimensionValueSource", type = "string"), DefaultDimensionValue = structure(logical(0), 
        shape = "DefaultDimensionValue", type = "string")), shape = "CloudWatchDimensionConfiguration", 
        type = "structure")), shape = "CloudWatchDimensionConfigurations", 
        type = "list")), shape = "CloudWatchDestination", type = "structure"), 
        SNSDestination = structure(list(TopicARN = structure(logical(0), 
            shape = "AmazonResourceName", type = "string")), 
            shape = "SNSDestination", type = "structure")), shape = "EventDestination", 
        type = "structure")), shape = "UpdateConfigurationSetEventDestinationRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_configuration_set_event_destination_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateConfigurationSetEventDestinationResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_configuration_set_reputation_metrics_enabled_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "UpdateConfigurationSetReputationMetricsEnabledRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_configuration_set_reputation_metrics_enabled_output <- function () 
{
    return(list())
}

update_configuration_set_sending_enabled_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "UpdateConfigurationSetSendingEnabledRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_configuration_set_sending_enabled_output <- function () 
{
    return(list())
}

update_configuration_set_tracking_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationSetName = structure(logical(0), 
        shape = "ConfigurationSetName", type = "string"), TrackingOptions = structure(list(CustomRedirectDomain = structure(logical(0), 
        shape = "CustomRedirectDomain", type = "string")), shape = "TrackingOptions", 
        type = "structure")), shape = "UpdateConfigurationSetTrackingOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_configuration_set_tracking_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateConfigurationSetTrackingOptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_custom_verification_email_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), FromEmailAddress = structure(logical(0), 
        shape = "FromAddress", type = "string"), TemplateSubject = structure(logical(0), 
        shape = "Subject", type = "string"), TemplateContent = structure(logical(0), 
        shape = "TemplateContent", type = "string"), SuccessRedirectionURL = structure(logical(0), 
        shape = "SuccessRedirectionURL", type = "string"), FailureRedirectionURL = structure(logical(0), 
        shape = "FailureRedirectionURL", type = "string")), shape = "UpdateCustomVerificationEmailTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_custom_verification_email_template_output <- function () 
{
    return(list())
}

update_receipt_rule_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RuleSetName = structure(logical(0), 
        shape = "ReceiptRuleSetName", type = "string"), Rule = structure(list(Name = structure(logical(0), 
        shape = "ReceiptRuleName", type = "string"), Enabled = structure(logical(0), 
        shape = "Enabled", type = "boolean"), TlsPolicy = structure(logical(0), 
        shape = "TlsPolicy", type = "string"), Recipients = structure(list(structure(logical(0), 
        shape = "Recipient", type = "string")), shape = "RecipientsList", 
        type = "list"), Actions = structure(list(structure(list(S3Action = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), BucketName = structure(logical(0), 
        shape = "S3BucketName", type = "string"), ObjectKeyPrefix = structure(logical(0), 
        shape = "S3KeyPrefix", type = "string"), KmsKeyArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "S3Action", 
        type = "structure"), BounceAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), SmtpReplyCode = structure(logical(0), 
        shape = "BounceSmtpReplyCode", type = "string"), StatusCode = structure(logical(0), 
        shape = "BounceStatusCode", type = "string"), Message = structure(logical(0), 
        shape = "BounceMessage", type = "string"), Sender = structure(logical(0), 
        shape = "Address", type = "string")), shape = "BounceAction", 
        type = "structure"), WorkmailAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), OrganizationArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "WorkmailAction", 
        type = "structure"), LambdaAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), FunctionArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), InvocationType = structure(logical(0), 
        shape = "InvocationType", type = "string")), shape = "LambdaAction", 
        type = "structure"), StopAction = structure(list(Scope = structure(logical(0), 
        shape = "StopScope", type = "string"), TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string")), shape = "StopAction", 
        type = "structure"), AddHeaderAction = structure(list(HeaderName = structure(logical(0), 
        shape = "HeaderName", type = "string"), HeaderValue = structure(logical(0), 
        shape = "HeaderValue", type = "string")), shape = "AddHeaderAction", 
        type = "structure"), SNSAction = structure(list(TopicArn = structure(logical(0), 
        shape = "AmazonResourceName", type = "string"), Encoding = structure(logical(0), 
        shape = "SNSActionEncoding", type = "string")), shape = "SNSAction", 
        type = "structure")), shape = "ReceiptAction", type = "structure")), 
        shape = "ReceiptActionsList", type = "list"), ScanEnabled = structure(logical(0), 
        shape = "Enabled", type = "boolean")), shape = "ReceiptRule", 
        type = "structure")), shape = "UpdateReceiptRuleRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_receipt_rule_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateReceiptRuleResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Template = structure(list(TemplateName = structure(logical(0), 
        shape = "TemplateName", type = "string"), SubjectPart = structure(logical(0), 
        shape = "SubjectPart", type = "string"), TextPart = structure(logical(0), 
        shape = "TextPart", type = "string"), HtmlPart = structure(logical(0), 
        shape = "HtmlPart", type = "string")), shape = "Template", 
        type = "structure")), shape = "UpdateTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateTemplateResponse", 
        type = "structure")
    return(populate(args, shape))
}

verify_domain_dkim_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(logical(0), shape = "Domain", 
        type = "string")), shape = "VerifyDomainDkimRequest", 
        type = "structure")
    return(populate(args, shape))
}

verify_domain_dkim_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DkimTokens = structure(list(structure(logical(0), 
        shape = "VerificationToken", type = "string")), shape = "VerificationTokenList", 
        type = "list")), shape = "VerifyDomainDkimResponse", 
        type = "structure")
    return(populate(args, shape))
}

verify_domain_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(logical(0), shape = "Domain", 
        type = "string")), shape = "VerifyDomainIdentityRequest", 
        type = "structure")
    return(populate(args, shape))
}

verify_domain_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VerificationToken = structure(logical(0), 
        shape = "VerificationToken", type = "string")), shape = "VerifyDomainIdentityResponse", 
        type = "structure")
    return(populate(args, shape))
}

verify_email_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmailAddress = structure(logical(0), 
        shape = "Address", type = "string")), shape = "VerifyEmailAddressRequest", 
        type = "structure")
    return(populate(args, shape))
}

verify_email_address_output <- function () 
{
    return(list())
}

verify_email_identity_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EmailAddress = structure(logical(0), 
        shape = "Address", type = "string")), shape = "VerifyEmailIdentityRequest", 
        type = "structure")
    return(populate(args, shape))
}

verify_email_identity_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "VerifyEmailIdentityResponse", 
        type = "structure")
    return(populate(args, shape))
}
