add_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), Label = structure(logical(0), 
        shape = "label", type = "string"), AWSAccountId = structure(list(structure(logical(0), 
        shape = "delegate", type = "string")), shape = "DelegatesList", 
        type = "list"), ActionName = structure(list(structure(logical(0), 
        shape = "action", type = "string")), shape = "ActionsList", 
        type = "list")), shape = "AddPermissionInput", type = "structure")
    return(populate(args, shape))
}

add_permission_output <- function () 
{
    return(list())
}

check_if_phone_number_is_opted_out_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PhoneNumber = structure(logical(0), 
        shape = "PhoneNumber", type = "string", locationName = "phoneNumber")), 
        shape = "CheckIfPhoneNumberIsOptedOutInput", type = "structure")
    return(populate(args, shape))
}

check_if_phone_number_is_opted_out_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IsOptedOut = structure(logical(0), 
        shape = "boolean", type = "boolean", locationName = "isOptedOut")), 
        shape = "CheckIfPhoneNumberIsOptedOutResponse", type = "structure")
    return(populate(args, shape))
}

confirm_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), Token = structure(logical(0), 
        shape = "token", type = "string"), AuthenticateOnUnsubscribe = structure(logical(0), 
        shape = "authenticateOnUnsubscribe", type = "string")), 
        shape = "ConfirmSubscriptionInput", type = "structure")
    return(populate(args, shape))
}

confirm_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string")), shape = "ConfirmSubscriptionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_platform_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "String", 
        type = "string"), Platform = structure(logical(0), shape = "String", 
        type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "CreatePlatformApplicationInput", 
        type = "structure")
    return(populate(args, shape))
}

create_platform_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreatePlatformApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_platform_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string"), Token = structure(logical(0), 
        shape = "String", type = "string"), CustomUserData = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "CreatePlatformEndpointInput", 
        type = "structure")
    return(populate(args, shape))
}

create_platform_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateEndpointResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_topic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "topicName", 
        type = "string")), shape = "CreateTopicInput", type = "structure")
    return(populate(args, shape))
}

create_topic_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string")), shape = "CreateTopicResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteEndpointInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_endpoint_output <- function () 
{
    return(list())
}

delete_platform_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeletePlatformApplicationInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_platform_application_output <- function () 
{
    return(list())
}

delete_topic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string")), shape = "DeleteTopicInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_topic_output <- function () 
{
    return(list())
}

get_endpoint_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetEndpointAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_endpoint_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "GetEndpointAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_platform_application_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetPlatformApplicationAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_platform_application_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "GetPlatformApplicationAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_sms_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ListString", 
        type = "list", locationName = "attributes")), shape = "GetSMSAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_sms_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map", locationName = "attributes")), shape = "GetSMSAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string")), shape = "GetSubscriptionAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_subscription_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "attributeValue", type = "string")), shape = "SubscriptionAttributesMap", 
        type = "map")), shape = "GetSubscriptionAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_topic_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string")), shape = "GetTopicAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_topic_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "attributeValue", type = "string")), shape = "TopicAttributesMap", 
        type = "map")), shape = "GetTopicAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_endpoints_by_platform_application_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListEndpointsByPlatformApplicationInput", 
        type = "structure")
    return(populate(args, shape))
}

list_endpoints_by_platform_application_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Endpoints = structure(list(structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "Endpoint", type = "structure")), 
        shape = "ListOfEndpoints", type = "list"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListEndpointsByPlatformApplicationResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_phone_numbers_opted_out_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextToken")), 
        shape = "ListPhoneNumbersOptedOutInput", type = "structure")
    return(populate(args, shape))
}

list_phone_numbers_opted_out_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PhoneNumbers = structure(list(structure(logical(0), 
        shape = "PhoneNumber", type = "string")), shape = "PhoneNumberList", 
        type = "list", locationName = "phoneNumbers"), NextToken = structure(logical(0), 
        shape = "string", type = "string", locationName = "nextToken")), 
        shape = "ListPhoneNumbersOptedOutResponse", type = "structure")
    return(populate(args, shape))
}

list_platform_applications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListPlatformApplicationsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_platform_applications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplications = structure(list(structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "PlatformApplication", type = "structure")), 
        shape = "ListOfPlatformApplications", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string")), 
        shape = "ListPlatformApplicationsResponse", type = "structure")
    return(populate(args, shape))
}

list_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "nextToken", type = "string")), shape = "ListSubscriptionsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_subscriptions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscriptions = structure(list(structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string"), Owner = structure(logical(0), 
        shape = "account", type = "string"), Protocol = structure(logical(0), 
        shape = "protocol", type = "string"), Endpoint = structure(logical(0), 
        shape = "endpoint", type = "string"), TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string")), shape = "Subscription", 
        type = "structure")), shape = "SubscriptionsList", type = "list"), 
        NextToken = structure(logical(0), shape = "nextToken", 
            type = "string")), shape = "ListSubscriptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_subscriptions_by_topic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), NextToken = structure(logical(0), 
        shape = "nextToken", type = "string")), shape = "ListSubscriptionsByTopicInput", 
        type = "structure")
    return(populate(args, shape))
}

list_subscriptions_by_topic_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscriptions = structure(list(structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string"), Owner = structure(logical(0), 
        shape = "account", type = "string"), Protocol = structure(logical(0), 
        shape = "protocol", type = "string"), Endpoint = structure(logical(0), 
        shape = "endpoint", type = "string"), TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string")), shape = "Subscription", 
        type = "structure")), shape = "SubscriptionsList", type = "list"), 
        NextToken = structure(logical(0), shape = "nextToken", 
            type = "string")), shape = "ListSubscriptionsByTopicResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_topics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "nextToken", type = "string")), shape = "ListTopicsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_topics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Topics = structure(list(structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string")), shape = "Topic", 
        type = "structure")), shape = "TopicsList", type = "list"), 
        NextToken = structure(logical(0), shape = "nextToken", 
            type = "string")), shape = "ListTopicsResponse", 
        type = "structure")
    return(populate(args, shape))
}

opt_in_phone_number_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PhoneNumber = structure(logical(0), 
        shape = "PhoneNumber", type = "string", locationName = "phoneNumber")), 
        shape = "OptInPhoneNumberInput", type = "structure")
    return(populate(args, shape))
}

opt_in_phone_number_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "OptInPhoneNumberResponse", 
        type = "structure")
    return(populate(args, shape))
}

publish_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), TargetArn = structure(logical(0), 
        shape = "String", type = "string"), PhoneNumber = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "message", type = "string"), Subject = structure(logical(0), 
        shape = "subject", type = "string"), MessageStructure = structure(logical(0), 
        shape = "messageStructure", type = "string"), MessageAttributes = structure(list(structure(list(DataType = structure(logical(0), 
        shape = "String", type = "string"), StringValue = structure(logical(0), 
        shape = "String", type = "string"), BinaryValue = structure(logical(0), 
        shape = "Binary", type = "blob")), shape = "MessageAttributeValue", 
        locationName = "Value", type = "structure")), shape = "MessageAttributeMap", 
        type = "map")), shape = "PublishInput", type = "structure")
    return(populate(args, shape))
}

publish_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MessageId = structure(logical(0), 
        shape = "messageId", type = "string")), shape = "PublishResponse", 
        type = "structure")
    return(populate(args, shape))
}

remove_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), Label = structure(logical(0), 
        shape = "label", type = "string")), shape = "RemovePermissionInput", 
        type = "structure")
    return(populate(args, shape))
}

remove_permission_output <- function () 
{
    return(list())
}

set_endpoint_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "SetEndpointAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

set_endpoint_attributes_output <- function () 
{
    return(list())
}

set_platform_application_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformApplicationArn = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map")), shape = "SetPlatformApplicationAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

set_platform_application_attributes_output <- function () 
{
    return(list())
}

set_sms_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "MapStringToString", 
        type = "map", locationName = "attributes")), shape = "SetSMSAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

set_sms_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "SetSMSAttributesResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_subscription_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string"), AttributeName = structure(logical(0), 
        shape = "attributeName", type = "string"), AttributeValue = structure(logical(0), 
        shape = "attributeValue", type = "string")), shape = "SetSubscriptionAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

set_subscription_attributes_output <- function () 
{
    return(list())
}

set_topic_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), AttributeName = structure(logical(0), 
        shape = "attributeName", type = "string"), AttributeValue = structure(logical(0), 
        shape = "attributeValue", type = "string")), shape = "SetTopicAttributesInput", 
        type = "structure")
    return(populate(args, shape))
}

set_topic_attributes_output <- function () 
{
    return(list())
}

subscribe_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicArn = structure(logical(0), 
        shape = "topicARN", type = "string"), Protocol = structure(logical(0), 
        shape = "protocol", type = "string"), Endpoint = structure(logical(0), 
        shape = "endpoint", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "attributeValue", type = "string")), shape = "SubscriptionAttributesMap", 
        type = "map"), ReturnSubscriptionArn = structure(logical(0), 
        shape = "boolean", type = "boolean")), shape = "SubscribeInput", 
        type = "structure")
    return(populate(args, shape))
}

subscribe_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string")), shape = "SubscribeResponse", 
        type = "structure")
    return(populate(args, shape))
}

unsubscribe_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionArn = structure(logical(0), 
        shape = "subscriptionARN", type = "string")), shape = "UnsubscribeInput", 
        type = "structure")
    return(populate(args, shape))
}

unsubscribe_output <- function () 
{
    return(list())
}
