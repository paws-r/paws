add_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Label = structure(logical(0), 
        shape = "String", type = "string"), AWSAccountIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "AWSAccountId", type = "string")), 
        shape = "AWSAccountIdList", type = "list", flattened = TRUE), 
        Actions = structure(list(structure(logical(0), shape = "String", 
            locationName = "ActionName", type = "string")), shape = "ActionNameList", 
            type = "list", flattened = TRUE)), shape = "AddPermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_permission_output <- function () 
{
    return(list())
}

change_message_visibility_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), ReceiptHandle = structure(logical(0), 
        shape = "String", type = "string"), VisibilityTimeout = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ChangeMessageVisibilityRequest", 
        type = "structure")
    return(populate(args, shape))
}

change_message_visibility_output <- function () 
{
    return(list())
}

change_message_visibility_batch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Entries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), ReceiptHandle = structure(logical(0), 
        shape = "String", type = "string"), VisibilityTimeout = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ChangeMessageVisibilityBatchRequestEntry", 
        locationName = "ChangeMessageVisibilityBatchRequestEntry", 
        type = "structure")), shape = "ChangeMessageVisibilityBatchRequestEntryList", 
        type = "list", flattened = TRUE)), shape = "ChangeMessageVisibilityBatchRequest", 
        type = "structure")
    return(populate(args, shape))
}

change_message_visibility_batch_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Successful = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string")), shape = "ChangeMessageVisibilityBatchResultEntry", 
        locationName = "ChangeMessageVisibilityBatchResultEntry", 
        type = "structure")), shape = "ChangeMessageVisibilityBatchResultEntryList", 
        type = "list", flattened = TRUE), Failed = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), SenderFault = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Code = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string")), shape = "BatchResultErrorEntry", 
        locationName = "BatchResultErrorEntry", type = "structure")), 
        shape = "BatchResultErrorEntryList", type = "list", flattened = TRUE)), 
        shape = "ChangeMessageVisibilityBatchResult", type = "structure")
    return(populate(args, shape))
}

create_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueName = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "QueueAttributeMap", locationName = "Attribute", 
        type = "map", flattened = TRUE)), shape = "CreateQueueRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_queue_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateQueueResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_message_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), ReceiptHandle = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteMessageRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_message_output <- function () 
{
    return(list())
}

delete_message_batch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Entries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), ReceiptHandle = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteMessageBatchRequestEntry", 
        locationName = "DeleteMessageBatchRequestEntry", type = "structure")), 
        shape = "DeleteMessageBatchRequestEntryList", type = "list", 
        flattened = TRUE)), shape = "DeleteMessageBatchRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_message_batch_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Successful = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteMessageBatchResultEntry", 
        locationName = "DeleteMessageBatchResultEntry", type = "structure")), 
        shape = "DeleteMessageBatchResultEntryList", type = "list", 
        flattened = TRUE), Failed = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), SenderFault = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Code = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string")), shape = "BatchResultErrorEntry", 
        locationName = "BatchResultErrorEntry", type = "structure")), 
        shape = "BatchResultErrorEntryList", type = "list", flattened = TRUE)), 
        shape = "DeleteMessageBatchResult", type = "structure")
    return(populate(args, shape))
}

delete_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteQueueRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_queue_output <- function () 
{
    return(list())
}

get_queue_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), AttributeNames = structure(list(structure(logical(0), 
        shape = "QueueAttributeName", locationName = "AttributeName", 
        type = "string")), shape = "AttributeNameList", type = "list", 
        flattened = TRUE)), shape = "GetQueueAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_queue_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attributes = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "QueueAttributeMap", locationName = "Attribute", 
        type = "map", flattened = TRUE)), shape = "GetQueueAttributesResult", 
        type = "structure")
    return(populate(args, shape))
}

get_queue_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueName = structure(logical(0), 
        shape = "String", type = "string"), QueueOwnerAWSAccountId = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetQueueUrlRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_queue_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetQueueUrlResult", 
        type = "structure")
    return(populate(args, shape))
}

list_dead_letter_source_queues_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListDeadLetterSourceQueuesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_dead_letter_source_queues_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrls = structure(list(structure(logical(0), 
        shape = "String", locationName = "QueueUrl", type = "string")), 
        shape = "QueueUrlList", type = "list", flattened = TRUE, 
        locationName = "queueUrls")), shape = "ListDeadLetterSourceQueuesResult", 
        type = "structure")
    return(populate(args, shape))
}

list_queue_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListQueueTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_queue_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(logical(0), 
        shape = "TagValue", locationName = "Value", type = "string")), 
        shape = "TagMap", locationName = "Tag", type = "map", 
        flattened = TRUE)), shape = "ListQueueTagsResult", type = "structure")
    return(populate(args, shape))
}

list_queues_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueNamePrefix = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListQueuesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_queues_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrls = structure(list(structure(logical(0), 
        shape = "String", locationName = "QueueUrl", type = "string")), 
        shape = "QueueUrlList", type = "list", flattened = TRUE)), 
        shape = "ListQueuesResult", type = "structure")
    return(populate(args, shape))
}

purge_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "PurgeQueueRequest", 
        type = "structure")
    return(populate(args, shape))
}

purge_queue_output <- function () 
{
    return(list())
}

receive_message_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), AttributeNames = structure(list(structure(logical(0), 
        shape = "QueueAttributeName", locationName = "AttributeName", 
        type = "string")), shape = "AttributeNameList", type = "list", 
        flattened = TRUE), MessageAttributeNames = structure(list(structure(logical(0), 
        shape = "MessageAttributeName", locationName = "MessageAttributeName", 
        type = "string")), shape = "MessageAttributeNameList", 
        type = "list", flattened = TRUE), MaxNumberOfMessages = structure(logical(0), 
        shape = "Integer", type = "integer"), VisibilityTimeout = structure(logical(0), 
        shape = "Integer", type = "integer"), WaitTimeSeconds = structure(logical(0), 
        shape = "Integer", type = "integer"), ReceiveRequestAttemptId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ReceiveMessageRequest", 
        type = "structure")
    return(populate(args, shape))
}

receive_message_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Messages = structure(list(structure(list(MessageId = structure(logical(0), 
        shape = "String", type = "string"), ReceiptHandle = structure(logical(0), 
        shape = "String", type = "string"), MD5OfBody = structure(logical(0), 
        shape = "String", type = "string"), Body = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "MessageSystemAttributeMap", locationName = "Attribute", 
        type = "map", flattened = TRUE), MD5OfMessageAttributes = structure(logical(0), 
        shape = "String", type = "string"), MessageAttributes = structure(list(structure(list(StringValue = structure(logical(0), 
        shape = "String", type = "string"), BinaryValue = structure(logical(0), 
        shape = "Binary", type = "blob"), StringListValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "StringListValue", type = "string")), 
        shape = "StringList", flattened = TRUE, locationName = "StringListValue", 
        type = "list"), BinaryListValues = structure(list(structure(logical(0), 
        shape = "Binary", locationName = "BinaryListValue", type = "blob")), 
        shape = "BinaryList", flattened = TRUE, locationName = "BinaryListValue", 
        type = "list"), DataType = structure(logical(0), shape = "String", 
        type = "string")), shape = "MessageAttributeValue", locationName = "Value", 
        type = "structure")), shape = "MessageBodyAttributeMap", 
        locationName = "MessageAttribute", type = "map", flattened = TRUE)), 
        shape = "Message", locationName = "Message", type = "structure")), 
        shape = "MessageList", type = "list", flattened = TRUE)), 
        shape = "ReceiveMessageResult", type = "structure")
    return(populate(args, shape))
}

remove_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Label = structure(logical(0), 
        shape = "String", type = "string")), shape = "RemovePermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_permission_output <- function () 
{
    return(list())
}

send_message_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), MessageBody = structure(logical(0), 
        shape = "String", type = "string"), DelaySeconds = structure(logical(0), 
        shape = "Integer", type = "integer"), MessageAttributes = structure(list(structure(list(StringValue = structure(logical(0), 
        shape = "String", type = "string"), BinaryValue = structure(logical(0), 
        shape = "Binary", type = "blob"), StringListValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "StringListValue", type = "string")), 
        shape = "StringList", flattened = TRUE, locationName = "StringListValue", 
        type = "list"), BinaryListValues = structure(list(structure(logical(0), 
        shape = "Binary", locationName = "BinaryListValue", type = "blob")), 
        shape = "BinaryList", flattened = TRUE, locationName = "BinaryListValue", 
        type = "list"), DataType = structure(logical(0), shape = "String", 
        type = "string")), shape = "MessageAttributeValue", locationName = "Value", 
        type = "structure")), shape = "MessageBodyAttributeMap", 
        locationName = "MessageAttribute", type = "map", flattened = TRUE), 
        MessageDeduplicationId = structure(logical(0), shape = "String", 
            type = "string"), MessageGroupId = structure(logical(0), 
            shape = "String", type = "string")), shape = "SendMessageRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_message_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MD5OfMessageBody = structure(logical(0), 
        shape = "String", type = "string"), MD5OfMessageAttributes = structure(logical(0), 
        shape = "String", type = "string"), MessageId = structure(logical(0), 
        shape = "String", type = "string"), SequenceNumber = structure(logical(0), 
        shape = "String", type = "string")), shape = "SendMessageResult", 
        type = "structure")
    return(populate(args, shape))
}

send_message_batch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Entries = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), MessageBody = structure(logical(0), 
        shape = "String", type = "string"), DelaySeconds = structure(logical(0), 
        shape = "Integer", type = "integer"), MessageAttributes = structure(list(structure(list(StringValue = structure(logical(0), 
        shape = "String", type = "string"), BinaryValue = structure(logical(0), 
        shape = "Binary", type = "blob"), StringListValues = structure(list(structure(logical(0), 
        shape = "String", locationName = "StringListValue", type = "string")), 
        shape = "StringList", flattened = TRUE, locationName = "StringListValue", 
        type = "list"), BinaryListValues = structure(list(structure(logical(0), 
        shape = "Binary", locationName = "BinaryListValue", type = "blob")), 
        shape = "BinaryList", flattened = TRUE, locationName = "BinaryListValue", 
        type = "list"), DataType = structure(logical(0), shape = "String", 
        type = "string")), shape = "MessageAttributeValue", locationName = "Value", 
        type = "structure")), shape = "MessageBodyAttributeMap", 
        locationName = "MessageAttribute", type = "map", flattened = TRUE), 
        MessageDeduplicationId = structure(logical(0), shape = "String", 
            type = "string"), MessageGroupId = structure(logical(0), 
            shape = "String", type = "string")), shape = "SendMessageBatchRequestEntry", 
        locationName = "SendMessageBatchRequestEntry", type = "structure")), 
        shape = "SendMessageBatchRequestEntryList", type = "list", 
        flattened = TRUE)), shape = "SendMessageBatchRequest", 
        type = "structure")
    return(populate(args, shape))
}

send_message_batch_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Successful = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), MessageId = structure(logical(0), 
        shape = "String", type = "string"), MD5OfMessageBody = structure(logical(0), 
        shape = "String", type = "string"), MD5OfMessageAttributes = structure(logical(0), 
        shape = "String", type = "string"), SequenceNumber = structure(logical(0), 
        shape = "String", type = "string")), shape = "SendMessageBatchResultEntry", 
        locationName = "SendMessageBatchResultEntry", type = "structure")), 
        shape = "SendMessageBatchResultEntryList", type = "list", 
        flattened = TRUE), Failed = structure(list(structure(list(Id = structure(logical(0), 
        shape = "String", type = "string"), SenderFault = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Code = structure(logical(0), 
        shape = "String", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string")), shape = "BatchResultErrorEntry", 
        locationName = "BatchResultErrorEntry", type = "structure")), 
        shape = "BatchResultErrorEntryList", type = "list", flattened = TRUE)), 
        shape = "SendMessageBatchResult", type = "structure")
    return(populate(args, shape))
}

set_queue_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Attributes = structure(list(structure(logical(0), 
        shape = "String", locationName = "Value", type = "string")), 
        shape = "QueueAttributeMap", locationName = "Attribute", 
        type = "map", flattened = TRUE)), shape = "SetQueueAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

set_queue_attributes_output <- function () 
{
    return(list())
}

tag_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(logical(0), 
        shape = "TagValue", locationName = "Value", type = "string")), 
        shape = "TagMap", type = "map", flattened = TRUE, locationName = "Tag")), 
        shape = "TagQueueRequest", type = "structure")
    return(populate(args, shape))
}

tag_queue_output <- function () 
{
    return(list())
}

untag_queue_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(QueueUrl = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", locationName = "TagKey", type = "string")), 
        shape = "TagKeyList", type = "list", flattened = TRUE)), 
        shape = "UntagQueueRequest", type = "structure")
    return(populate(args, shape))
}

untag_queue_output <- function () 
{
    return(list())
}
