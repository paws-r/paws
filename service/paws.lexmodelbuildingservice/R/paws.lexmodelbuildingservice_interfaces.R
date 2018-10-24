create_bot_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "name", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), Checksum = structure(logical(0), 
        shape = "String", type = "string", locationName = "checksum")), 
        shape = "CreateBotVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_bot_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Intents = structure(list(structure(list(IntentName = structure(logical(0), 
        shape = "IntentName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "intentName"), 
        IntentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "intentVersion")), shape = "Intent", 
        type = "structure")), shape = "IntentList", type = "list", 
        locationName = "intents"), ClarificationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
        shape = "ContentType", type = "string", locationName = "contentType"), 
        Content = structure(logical(0), shape = "ContentString", 
            type = "string", max = 1000L, min = 1L, locationName = "content"), 
        GroupNumber = structure(logical(0), shape = "GroupNumber", 
            type = "integer", box = TRUE, max = 5L, min = 1L, 
            locationName = "groupNumber")), shape = "Message", 
        type = "structure")), shape = "MessageList", type = "list", 
        max = 15L, min = 1L, locationName = "messages"), MaxAttempts = structure(logical(0), 
        shape = "PromptMaxAttempts", type = "integer", max = 5L, 
        min = 1L, locationName = "maxAttempts"), ResponseCard = structure(logical(0), 
        shape = "ResponseCard", type = "string", max = 50000L, 
        min = 1L, locationName = "responseCard")), shape = "Prompt", 
        type = "structure", locationName = "clarificationPrompt"), 
        AbortStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "abortStatement"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), FailureReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "failureReason"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        IdleSessionTTLInSeconds = structure(logical(0), shape = "SessionTTL", 
            type = "integer", max = 86400L, min = 60L, locationName = "idleSessionTTLInSeconds"), 
        VoiceId = structure(logical(0), shape = "String", type = "string", 
            locationName = "voiceId"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Locale = structure(logical(0), 
            shape = "Locale", type = "string", locationName = "locale"), 
        ChildDirected = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "childDirected")), 
        shape = "CreateBotVersionResponse", type = "structure")
    return(populate(args, shape))
}

create_intent_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Checksum = structure(logical(0), 
        shape = "String", type = "string", locationName = "checksum")), 
        shape = "CreateIntentVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_intent_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Slots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SlotName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z](-|_|.)?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        SlotConstraint = structure(logical(0), shape = "SlotConstraint", 
            type = "string", locationName = "slotConstraint"), 
        SlotType = structure(logical(0), shape = "CustomOrBuiltinSlotTypeName", 
            type = "string", max = 100L, min = 1L, pattern = "^((AMAZON\\.)_?|[A-Za-z]_?)+", 
            locationName = "slotType"), SlotTypeVersion = structure(logical(0), 
            shape = "Version", type = "string", max = 64L, min = 1L, 
            pattern = "\\$LATEST|[0-9]+", locationName = "slotTypeVersion"), 
        ValueElicitationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "valueElicitationPrompt"), 
        Priority = structure(logical(0), shape = "Priority", 
            type = "integer", max = 100L, min = 0L, locationName = "priority"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "SlotUtteranceList", type = "list", 
            max = 10L, min = 0L, locationName = "sampleUtterances"), 
        ResponseCard = structure(logical(0), shape = "ResponseCard", 
            type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
        shape = "Slot", type = "structure")), shape = "SlotList", 
        type = "list", max = 100L, min = 0L, locationName = "slots"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "IntentUtteranceList", type = "list", 
            max = 1500L, min = 0L, locationName = "sampleUtterances"), 
        ConfirmationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "confirmationPrompt"), 
        RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "rejectionStatement"), 
        FollowUpPrompt = structure(list(Prompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "prompt"), 
            RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
                shape = "ContentType", type = "string", locationName = "contentType"), 
                Content = structure(logical(0), shape = "ContentString", 
                  type = "string", max = 1000L, min = 1L, locationName = "content"), 
                GroupNumber = structure(logical(0), shape = "GroupNumber", 
                  type = "integer", box = TRUE, max = 5L, min = 1L, 
                  locationName = "groupNumber")), shape = "Message", 
                type = "structure")), shape = "MessageList", 
                type = "list", max = 15L, min = 1L, locationName = "messages"), 
                ResponseCard = structure(logical(0), shape = "ResponseCard", 
                  type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
                shape = "Statement", type = "structure", locationName = "rejectionStatement")), 
            shape = "FollowUpPrompt", type = "structure", locationName = "followUpPrompt"), 
        ConclusionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "conclusionStatement"), 
        DialogCodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "dialogCodeHook"), 
        FulfillmentActivity = structure(list(Type = structure(logical(0), 
            shape = "FulfillmentActivityType", type = "string", 
            locationName = "type"), CodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "codeHook")), 
            shape = "FulfillmentActivity", type = "structure", 
            locationName = "fulfillmentActivity"), ParentIntentSignature = structure(logical(0), 
            shape = "BuiltinIntentSignature", type = "string", 
            locationName = "parentIntentSignature"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum")), 
        shape = "CreateIntentVersionResponse", type = "structure")
    return(populate(args, shape))
}

create_slot_type_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Checksum = structure(logical(0), 
        shape = "String", type = "string", locationName = "checksum")), 
        shape = "CreateSlotTypeVersionRequest", type = "structure")
    return(populate(args, shape))
}

create_slot_type_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), EnumerationValues = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L, 
        locationName = "value"), Synonyms = structure(list(structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L)), 
        shape = "SynonymList", type = "list", locationName = "synonyms")), 
        shape = "EnumerationValue", type = "structure")), shape = "EnumerationValues", 
        type = "list", max = 10000L, min = 1L, locationName = "enumerationValues"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        ValueSelectionStrategy = structure(logical(0), shape = "SlotValueSelectionStrategy", 
            type = "string", locationName = "valueSelectionStrategy")), 
        shape = "CreateSlotTypeVersionResponse", type = "structure")
    return(populate(args, shape))
}

delete_bot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "name", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$")), shape = "DeleteBotRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_bot_output <- function () 
{
    return(list())
}

delete_bot_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "AliasName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), BotName = structure(logical(0), 
        shape = "BotName", location = "uri", locationName = "botName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "DeleteBotAliasRequest", type = "structure")
    return(populate(args, shape))
}

delete_bot_alias_output <- function () 
{
    return(list())
}

delete_bot_channel_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotChannelName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), BotName = structure(logical(0), 
        shape = "BotName", location = "uri", locationName = "botName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), 
        BotAlias = structure(logical(0), shape = "AliasName", 
            location = "uri", locationName = "botAlias", type = "string", 
            max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "DeleteBotChannelAssociationRequest", type = "structure")
    return(populate(args, shape))
}

delete_bot_channel_association_output <- function () 
{
    return(list())
}

delete_bot_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "name", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), Version = structure(logical(0), 
        shape = "NumericalVersion", location = "uri", locationName = "version", 
        type = "string", max = 64L, min = 1L, pattern = "[0-9]+")), 
        shape = "DeleteBotVersionRequest", type = "structure")
    return(populate(args, shape))
}

delete_bot_version_output <- function () 
{
    return(list())
}

delete_intent_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "DeleteIntentRequest", type = "structure")
    return(populate(args, shape))
}

delete_intent_output <- function () 
{
    return(list())
}

delete_intent_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Version = structure(logical(0), 
        shape = "NumericalVersion", location = "uri", locationName = "version", 
        type = "string", max = 64L, min = 1L, pattern = "[0-9]+")), 
        shape = "DeleteIntentVersionRequest", type = "structure")
    return(populate(args, shape))
}

delete_intent_version_output <- function () 
{
    return(list())
}

delete_slot_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "DeleteSlotTypeRequest", type = "structure")
    return(populate(args, shape))
}

delete_slot_type_output <- function () 
{
    return(list())
}

delete_slot_type_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Version = structure(logical(0), 
        shape = "NumericalVersion", location = "uri", locationName = "version", 
        type = "string", max = 64L, min = 1L, pattern = "[0-9]+")), 
        shape = "DeleteSlotTypeVersionRequest", type = "structure")
    return(populate(args, shape))
}

delete_slot_type_version_output <- function () 
{
    return(list())
}

delete_utterances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "botName", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), UserId = structure(logical(0), 
        shape = "UserId", location = "uri", locationName = "userId", 
        type = "string", max = 100L, min = 2L)), shape = "DeleteUtterancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_utterances_output <- function () 
{
    return(list())
}

get_bot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "name", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), VersionOrAlias = structure(logical(0), 
        shape = "String", location = "uri", locationName = "versionOrAlias", 
        type = "string")), shape = "GetBotRequest", type = "structure")
    return(populate(args, shape))
}

get_bot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Intents = structure(list(structure(list(IntentName = structure(logical(0), 
        shape = "IntentName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "intentName"), 
        IntentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "intentVersion")), shape = "Intent", 
        type = "structure")), shape = "IntentList", type = "list", 
        locationName = "intents"), ClarificationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
        shape = "ContentType", type = "string", locationName = "contentType"), 
        Content = structure(logical(0), shape = "ContentString", 
            type = "string", max = 1000L, min = 1L, locationName = "content"), 
        GroupNumber = structure(logical(0), shape = "GroupNumber", 
            type = "integer", box = TRUE, max = 5L, min = 1L, 
            locationName = "groupNumber")), shape = "Message", 
        type = "structure")), shape = "MessageList", type = "list", 
        max = 15L, min = 1L, locationName = "messages"), MaxAttempts = structure(logical(0), 
        shape = "PromptMaxAttempts", type = "integer", max = 5L, 
        min = 1L, locationName = "maxAttempts"), ResponseCard = structure(logical(0), 
        shape = "ResponseCard", type = "string", max = 50000L, 
        min = 1L, locationName = "responseCard")), shape = "Prompt", 
        type = "structure", locationName = "clarificationPrompt"), 
        AbortStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "abortStatement"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), FailureReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "failureReason"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        IdleSessionTTLInSeconds = structure(logical(0), shape = "SessionTTL", 
            type = "integer", max = 86400L, min = 60L, locationName = "idleSessionTTLInSeconds"), 
        VoiceId = structure(logical(0), shape = "String", type = "string", 
            locationName = "voiceId"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Locale = structure(logical(0), 
            shape = "Locale", type = "string", locationName = "locale"), 
        ChildDirected = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "childDirected")), 
        shape = "GetBotResponse", type = "structure")
    return(populate(args, shape))
}

get_bot_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "AliasName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), BotName = structure(logical(0), 
        shape = "BotName", location = "uri", locationName = "botName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetBotAliasRequest", type = "structure")
    return(populate(args, shape))
}

get_bot_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "AliasName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), BotVersion = structure(logical(0), 
        shape = "Version", type = "string", max = 64L, min = 1L, 
        pattern = "\\$LATEST|[0-9]+", locationName = "botVersion"), 
        BotName = structure(logical(0), shape = "BotName", type = "string", 
            max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
            locationName = "botName"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Checksum = structure(logical(0), shape = "String", type = "string", 
            locationName = "checksum")), shape = "GetBotAliasResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_bot_aliases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "botName", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L), NameContains = structure(logical(0), 
        shape = "AliasName", location = "querystring", locationName = "nameContains", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetBotAliasesRequest", type = "structure")
    return(populate(args, shape))
}

get_bot_aliases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotAliases = structure(list(structure(list(Name = structure(logical(0), 
        shape = "AliasName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        BotVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "botVersion"), BotName = structure(logical(0), 
            shape = "BotName", type = "string", max = 50L, min = 2L, 
            pattern = "^([A-Za-z]_?)+$", locationName = "botName"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Checksum = structure(logical(0), shape = "String", type = "string", 
            locationName = "checksum")), shape = "BotAliasMetadata", 
        type = "structure")), shape = "BotAliasMetadataList", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", locationName = "nextToken")), shape = "GetBotAliasesResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_bot_channel_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotChannelName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), BotName = structure(logical(0), 
        shape = "BotName", location = "uri", locationName = "botName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), 
        BotAlias = structure(logical(0), shape = "AliasName", 
            location = "uri", locationName = "botAlias", type = "string", 
            max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetBotChannelAssociationRequest", type = "structure")
    return(populate(args, shape))
}

get_bot_channel_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotChannelName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), BotAlias = structure(logical(0), 
        shape = "AliasName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "botAlias"), 
        BotName = structure(logical(0), shape = "BotName", type = "string", 
            max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
            locationName = "botName"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate"), 
        Type = structure(logical(0), shape = "ChannelType", type = "string", 
            locationName = "type"), BotConfiguration = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ChannelConfigurationMap", 
            type = "map", max = 10L, min = 1L, sensitive = TRUE, 
            locationName = "botConfiguration"), Status = structure(logical(0), 
            shape = "ChannelStatus", type = "string", locationName = "status"), 
        FailureReason = structure(logical(0), shape = "String", 
            type = "string", locationName = "failureReason")), 
        shape = "GetBotChannelAssociationResponse", type = "structure")
    return(populate(args, shape))
}

get_bot_channel_associations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "botName", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), BotAlias = structure(logical(0), 
        shape = "AliasNameOrListAll", location = "uri", locationName = "botAlias", 
        type = "string", max = 100L, min = 1L, pattern = "^(-|^([A-Za-z]_?)+$)$"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", box = TRUE, max = 50L, min = 1L), 
        NameContains = structure(logical(0), shape = "BotChannelName", 
            location = "querystring", locationName = "nameContains", 
            type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetBotChannelAssociationsRequest", type = "structure")
    return(populate(args, shape))
}

get_bot_channel_associations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotChannelAssociations = structure(list(structure(list(Name = structure(logical(0), 
        shape = "BotChannelName", type = "string", max = 100L, 
        min = 1L, pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        BotAlias = structure(logical(0), shape = "AliasName", 
            type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
            locationName = "botAlias"), BotName = structure(logical(0), 
            shape = "BotName", type = "string", max = 50L, min = 2L, 
            pattern = "^([A-Za-z]_?)+$", locationName = "botName"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Type = structure(logical(0), shape = "ChannelType", type = "string", 
            locationName = "type"), BotConfiguration = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ChannelConfigurationMap", 
            type = "map", max = 10L, min = 1L, sensitive = TRUE, 
            locationName = "botConfiguration"), Status = structure(logical(0), 
            shape = "ChannelStatus", type = "string", locationName = "status"), 
        FailureReason = structure(logical(0), shape = "String", 
            type = "string", locationName = "failureReason")), 
        shape = "BotChannelAssociation", type = "structure")), 
        shape = "BotChannelAssociationList", type = "list", locationName = "botChannelAssociations"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetBotChannelAssociationsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_bot_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "name", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L)), 
        shape = "GetBotVersionsRequest", type = "structure")
    return(populate(args, shape))
}

get_bot_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Bots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "BotName", type = "string", max = 50L, min = 2L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version")), shape = "BotMetadata", 
        type = "structure")), shape = "BotMetadataList", type = "list", 
        locationName = "bots"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetBotVersionsResponse", type = "structure")
    return(populate(args, shape))
}

get_bots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L), NameContains = structure(logical(0), 
        shape = "BotName", location = "querystring", locationName = "nameContains", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetBotsRequest", type = "structure")
    return(populate(args, shape))
}

get_bots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Bots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "BotName", type = "string", max = 50L, min = 2L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version")), shape = "BotMetadata", 
        type = "structure")), shape = "BotMetadataList", type = "list", 
        locationName = "bots"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetBotsResponse", type = "structure")
    return(populate(args, shape))
}

get_builtin_intent_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Signature = structure(logical(0), 
        shape = "BuiltinIntentSignature", location = "uri", locationName = "signature", 
        type = "string")), shape = "GetBuiltinIntentRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_builtin_intent_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Signature = structure(logical(0), 
        shape = "BuiltinIntentSignature", type = "string", locationName = "signature"), 
        SupportedLocales = structure(list(structure(logical(0), 
            shape = "Locale", type = "string")), shape = "LocaleList", 
            type = "list", locationName = "supportedLocales"), 
        Slots = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string", locationName = "name")), 
            shape = "BuiltinIntentSlot", type = "structure")), 
            shape = "BuiltinIntentSlotList", type = "list", locationName = "slots")), 
        shape = "GetBuiltinIntentResponse", type = "structure")
    return(populate(args, shape))
}

get_builtin_intents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Locale = structure(logical(0), shape = "Locale", 
        location = "querystring", locationName = "locale", type = "string"), 
        SignatureContains = structure(logical(0), shape = "String", 
            location = "querystring", locationName = "signatureContains", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", box = TRUE, max = 50L, min = 1L)), 
        shape = "GetBuiltinIntentsRequest", type = "structure")
    return(populate(args, shape))
}

get_builtin_intents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Intents = structure(list(structure(list(Signature = structure(logical(0), 
        shape = "BuiltinIntentSignature", type = "string", locationName = "signature"), 
        SupportedLocales = structure(list(structure(logical(0), 
            shape = "Locale", type = "string")), shape = "LocaleList", 
            type = "list", locationName = "supportedLocales")), 
        shape = "BuiltinIntentMetadata", type = "structure")), 
        shape = "BuiltinIntentMetadataList", type = "list", locationName = "intents"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetBuiltinIntentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_builtin_slot_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Locale = structure(logical(0), shape = "Locale", 
        location = "querystring", locationName = "locale", type = "string"), 
        SignatureContains = structure(logical(0), shape = "String", 
            location = "querystring", locationName = "signatureContains", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "NextToken", location = "querystring", locationName = "nextToken", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", box = TRUE, max = 50L, min = 1L)), 
        shape = "GetBuiltinSlotTypesRequest", type = "structure")
    return(populate(args, shape))
}

get_builtin_slot_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SlotTypes = structure(list(structure(list(Signature = structure(logical(0), 
        shape = "BuiltinSlotTypeSignature", type = "string", 
        locationName = "signature"), SupportedLocales = structure(list(structure(logical(0), 
        shape = "Locale", type = "string")), shape = "LocaleList", 
        type = "list", locationName = "supportedLocales")), shape = "BuiltinSlotTypeMetadata", 
        type = "structure")), shape = "BuiltinSlotTypeMetadataList", 
        type = "list", locationName = "slotTypes"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetBuiltinSlotTypesResponse", type = "structure")
    return(populate(args, shape))
}

get_export_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        location = "querystring", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "[a-zA-Z_]+"), Version = structure(logical(0), 
        shape = "NumericalVersion", location = "querystring", 
        locationName = "version", type = "string", max = 64L, 
        min = 1L, pattern = "[0-9]+"), ResourceType = structure(logical(0), 
        shape = "ResourceType", location = "querystring", locationName = "resourceType", 
        type = "string"), ExportType = structure(logical(0), 
        shape = "ExportType", location = "querystring", locationName = "exportType", 
        type = "string")), shape = "GetExportRequest", type = "structure")
    return(populate(args, shape))
}

get_export_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 100L, min = 1L, pattern = "[a-zA-Z_]+", 
        locationName = "name"), Version = structure(logical(0), 
        shape = "NumericalVersion", type = "string", max = 64L, 
        min = 1L, pattern = "[0-9]+", locationName = "version"), 
        ResourceType = structure(logical(0), shape = "ResourceType", 
            type = "string", locationName = "resourceType"), 
        ExportType = structure(logical(0), shape = "ExportType", 
            type = "string", locationName = "exportType"), ExportStatus = structure(logical(0), 
            shape = "ExportStatus", type = "string", locationName = "exportStatus"), 
        FailureReason = structure(logical(0), shape = "String", 
            type = "string", locationName = "failureReason"), 
        Url = structure(logical(0), shape = "String", type = "string", 
            locationName = "url")), shape = "GetExportResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_import_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImportId = structure(logical(0), 
        shape = "String", location = "uri", locationName = "importId", 
        type = "string")), shape = "GetImportRequest", type = "structure")
    return(populate(args, shape))
}

get_import_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 100L, min = 1L, pattern = "[a-zA-Z_]+", 
        locationName = "name"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        MergeStrategy = structure(logical(0), shape = "MergeStrategy", 
            type = "string", locationName = "mergeStrategy"), 
        ImportId = structure(logical(0), shape = "String", type = "string", 
            locationName = "importId"), ImportStatus = structure(logical(0), 
            shape = "ImportStatus", type = "string", locationName = "importStatus"), 
        FailureReason = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringList", 
            type = "list", locationName = "failureReason"), CreatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "createdDate")), 
        shape = "GetImportResponse", type = "structure")
    return(populate(args, shape))
}

get_intent_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Version = structure(logical(0), 
        shape = "Version", location = "uri", locationName = "version", 
        type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+")), 
        shape = "GetIntentRequest", type = "structure")
    return(populate(args, shape))
}

get_intent_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Slots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SlotName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z](-|_|.)?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        SlotConstraint = structure(logical(0), shape = "SlotConstraint", 
            type = "string", locationName = "slotConstraint"), 
        SlotType = structure(logical(0), shape = "CustomOrBuiltinSlotTypeName", 
            type = "string", max = 100L, min = 1L, pattern = "^((AMAZON\\.)_?|[A-Za-z]_?)+", 
            locationName = "slotType"), SlotTypeVersion = structure(logical(0), 
            shape = "Version", type = "string", max = 64L, min = 1L, 
            pattern = "\\$LATEST|[0-9]+", locationName = "slotTypeVersion"), 
        ValueElicitationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "valueElicitationPrompt"), 
        Priority = structure(logical(0), shape = "Priority", 
            type = "integer", max = 100L, min = 0L, locationName = "priority"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "SlotUtteranceList", type = "list", 
            max = 10L, min = 0L, locationName = "sampleUtterances"), 
        ResponseCard = structure(logical(0), shape = "ResponseCard", 
            type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
        shape = "Slot", type = "structure")), shape = "SlotList", 
        type = "list", max = 100L, min = 0L, locationName = "slots"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "IntentUtteranceList", type = "list", 
            max = 1500L, min = 0L, locationName = "sampleUtterances"), 
        ConfirmationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "confirmationPrompt"), 
        RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "rejectionStatement"), 
        FollowUpPrompt = structure(list(Prompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "prompt"), 
            RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
                shape = "ContentType", type = "string", locationName = "contentType"), 
                Content = structure(logical(0), shape = "ContentString", 
                  type = "string", max = 1000L, min = 1L, locationName = "content"), 
                GroupNumber = structure(logical(0), shape = "GroupNumber", 
                  type = "integer", box = TRUE, max = 5L, min = 1L, 
                  locationName = "groupNumber")), shape = "Message", 
                type = "structure")), shape = "MessageList", 
                type = "list", max = 15L, min = 1L, locationName = "messages"), 
                ResponseCard = structure(logical(0), shape = "ResponseCard", 
                  type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
                shape = "Statement", type = "structure", locationName = "rejectionStatement")), 
            shape = "FollowUpPrompt", type = "structure", locationName = "followUpPrompt"), 
        ConclusionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "conclusionStatement"), 
        DialogCodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "dialogCodeHook"), 
        FulfillmentActivity = structure(list(Type = structure(logical(0), 
            shape = "FulfillmentActivityType", type = "string", 
            locationName = "type"), CodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "codeHook")), 
            shape = "FulfillmentActivity", type = "structure", 
            locationName = "fulfillmentActivity"), ParentIntentSignature = structure(logical(0), 
            shape = "BuiltinIntentSignature", type = "string", 
            locationName = "parentIntentSignature"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum")), 
        shape = "GetIntentResponse", type = "structure")
    return(populate(args, shape))
}

get_intent_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L)), 
        shape = "GetIntentVersionsRequest", type = "structure")
    return(populate(args, shape))
}

get_intent_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Intents = structure(list(structure(list(Name = structure(logical(0), 
        shape = "IntentName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version")), shape = "IntentMetadata", 
        type = "structure")), shape = "IntentMetadataList", type = "list", 
        locationName = "intents"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetIntentVersionsResponse", type = "structure")
    return(populate(args, shape))
}

get_intents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L), NameContains = structure(logical(0), 
        shape = "IntentName", location = "querystring", locationName = "nameContains", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetIntentsRequest", type = "structure")
    return(populate(args, shape))
}

get_intents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Intents = structure(list(structure(list(Name = structure(logical(0), 
        shape = "IntentName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version")), shape = "IntentMetadata", 
        type = "structure")), shape = "IntentMetadataList", type = "list", 
        locationName = "intents"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetIntentsResponse", type = "structure")
    return(populate(args, shape))
}

get_slot_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Version = structure(logical(0), 
        shape = "Version", location = "uri", locationName = "version", 
        type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+")), 
        shape = "GetSlotTypeRequest", type = "structure")
    return(populate(args, shape))
}

get_slot_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), EnumerationValues = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L, 
        locationName = "value"), Synonyms = structure(list(structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L)), 
        shape = "SynonymList", type = "list", locationName = "synonyms")), 
        shape = "EnumerationValue", type = "structure")), shape = "EnumerationValues", 
        type = "list", max = 10000L, min = 1L, locationName = "enumerationValues"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        ValueSelectionStrategy = structure(logical(0), shape = "SlotValueSelectionStrategy", 
            type = "string", locationName = "valueSelectionStrategy")), 
        shape = "GetSlotTypeResponse", type = "structure")
    return(populate(args, shape))
}

get_slot_type_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L)), 
        shape = "GetSlotTypeVersionsRequest", type = "structure")
    return(populate(args, shape))
}

get_slot_type_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SlotTypes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SlotTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version")), shape = "SlotTypeMetadata", 
        type = "structure")), shape = "SlotTypeMetadataList", 
        type = "list", locationName = "slotTypes"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetSlotTypeVersionsResponse", type = "structure")
    return(populate(args, shape))
}

get_slot_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 50L, min = 1L), NameContains = structure(logical(0), 
        shape = "SlotTypeName", location = "querystring", locationName = "nameContains", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$")), 
        shape = "GetSlotTypesRequest", type = "structure")
    return(populate(args, shape))
}

get_slot_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SlotTypes = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SlotTypeName", type = "string", max = 100L, 
        min = 1L, pattern = "^([A-Za-z]_?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version")), shape = "SlotTypeMetadata", 
        type = "structure")), shape = "SlotTypeMetadataList", 
        type = "list", locationName = "slotTypes"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "GetSlotTypesResponse", type = "structure")
    return(populate(args, shape))
}

get_utterances_view_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "botName", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), BotVersions = structure(list(structure(logical(0), 
        shape = "Version", type = "string", max = 64L, min = 1L, 
        pattern = "\\$LATEST|[0-9]+")), shape = "BotVersions", 
        location = "querystring", locationName = "botVersions", 
        type = "list", max = 5L, min = 1L), StatusType = structure(logical(0), 
        shape = "StatusType", location = "querystring", locationName = "statusType", 
        type = "string")), shape = "GetUtterancesViewRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_utterances_view_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "botName"), Utterances = structure(list(structure(list(BotVersion = structure(logical(0), 
        shape = "Version", type = "string", max = 64L, min = 1L, 
        pattern = "\\$LATEST|[0-9]+", locationName = "botVersion"), 
        Utterances = structure(list(structure(list(UtteranceString = structure(logical(0), 
            shape = "UtteranceString", type = "string", max = 2000L, 
            min = 1L, locationName = "utteranceString"), Count = structure(logical(0), 
            shape = "Count", type = "integer", locationName = "count"), 
            DistinctUsers = structure(logical(0), shape = "Count", 
                type = "integer", locationName = "distinctUsers"), 
            FirstUtteredDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "firstUtteredDate"), 
            LastUtteredDate = structure(logical(0), shape = "Timestamp", 
                type = "timestamp", locationName = "lastUtteredDate")), 
            shape = "UtteranceData", type = "structure")), shape = "ListOfUtterance", 
            type = "list", locationName = "utterances")), shape = "UtteranceList", 
        type = "structure")), shape = "ListsOfUtterances", type = "list", 
        locationName = "utterances")), shape = "GetUtterancesViewResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_bot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "name", type = "string", 
        max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Intents = structure(list(structure(list(IntentName = structure(logical(0), 
        shape = "IntentName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "intentName"), 
        IntentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "intentVersion")), shape = "Intent", 
        type = "structure")), shape = "IntentList", type = "list", 
        locationName = "intents"), ClarificationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
        shape = "ContentType", type = "string", locationName = "contentType"), 
        Content = structure(logical(0), shape = "ContentString", 
            type = "string", max = 1000L, min = 1L, locationName = "content"), 
        GroupNumber = structure(logical(0), shape = "GroupNumber", 
            type = "integer", box = TRUE, max = 5L, min = 1L, 
            locationName = "groupNumber")), shape = "Message", 
        type = "structure")), shape = "MessageList", type = "list", 
        max = 15L, min = 1L, locationName = "messages"), MaxAttempts = structure(logical(0), 
        shape = "PromptMaxAttempts", type = "integer", max = 5L, 
        min = 1L, locationName = "maxAttempts"), ResponseCard = structure(logical(0), 
        shape = "ResponseCard", type = "string", max = 50000L, 
        min = 1L, locationName = "responseCard")), shape = "Prompt", 
        type = "structure", locationName = "clarificationPrompt"), 
        AbortStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "abortStatement"), 
        IdleSessionTTLInSeconds = structure(logical(0), shape = "SessionTTL", 
            type = "integer", max = 86400L, min = 60L, locationName = "idleSessionTTLInSeconds"), 
        VoiceId = structure(logical(0), shape = "String", type = "string", 
            locationName = "voiceId"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        ProcessBehavior = structure(logical(0), shape = "ProcessBehavior", 
            type = "string", locationName = "processBehavior"), 
        Locale = structure(logical(0), shape = "Locale", type = "string", 
            locationName = "locale"), ChildDirected = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "childDirected"), 
        CreateVersion = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "createVersion")), 
        shape = "PutBotRequest", type = "structure")
    return(populate(args, shape))
}

put_bot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "BotName", 
        type = "string", max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Intents = structure(list(structure(list(IntentName = structure(logical(0), 
        shape = "IntentName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z]_?)+$", locationName = "intentName"), 
        IntentVersion = structure(logical(0), shape = "Version", 
            type = "string", max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "intentVersion")), shape = "Intent", 
        type = "structure")), shape = "IntentList", type = "list", 
        locationName = "intents"), ClarificationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
        shape = "ContentType", type = "string", locationName = "contentType"), 
        Content = structure(logical(0), shape = "ContentString", 
            type = "string", max = 1000L, min = 1L, locationName = "content"), 
        GroupNumber = structure(logical(0), shape = "GroupNumber", 
            type = "integer", box = TRUE, max = 5L, min = 1L, 
            locationName = "groupNumber")), shape = "Message", 
        type = "structure")), shape = "MessageList", type = "list", 
        max = 15L, min = 1L, locationName = "messages"), MaxAttempts = structure(logical(0), 
        shape = "PromptMaxAttempts", type = "integer", max = 5L, 
        min = 1L, locationName = "maxAttempts"), ResponseCard = structure(logical(0), 
        shape = "ResponseCard", type = "string", max = 50000L, 
        min = 1L, locationName = "responseCard")), shape = "Prompt", 
        type = "structure", locationName = "clarificationPrompt"), 
        AbortStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "abortStatement"), 
        Status = structure(logical(0), shape = "Status", type = "string", 
            locationName = "status"), FailureReason = structure(logical(0), 
            shape = "String", type = "string", locationName = "failureReason"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        IdleSessionTTLInSeconds = structure(logical(0), shape = "SessionTTL", 
            type = "integer", max = 86400L, min = 60L, locationName = "idleSessionTTLInSeconds"), 
        VoiceId = structure(logical(0), shape = "String", type = "string", 
            locationName = "voiceId"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Locale = structure(logical(0), 
            shape = "Locale", type = "string", locationName = "locale"), 
        ChildDirected = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "childDirected"), 
        CreateVersion = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "createVersion")), 
        shape = "PutBotResponse", type = "structure")
    return(populate(args, shape))
}

put_bot_alias_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "AliasName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), BotVersion = structure(logical(0), 
        shape = "Version", type = "string", max = 64L, min = 1L, 
        pattern = "\\$LATEST|[0-9]+", locationName = "botVersion"), 
        BotName = structure(logical(0), shape = "BotName", location = "uri", 
            locationName = "botName", type = "string", max = 50L, 
            min = 2L, pattern = "^([A-Za-z]_?)+$"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum")), 
        shape = "PutBotAliasRequest", type = "structure")
    return(populate(args, shape))
}

put_bot_alias_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "AliasName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), BotVersion = structure(logical(0), 
        shape = "Version", type = "string", max = 64L, min = 1L, 
        pattern = "\\$LATEST|[0-9]+", locationName = "botVersion"), 
        BotName = structure(logical(0), shape = "BotName", type = "string", 
            max = 50L, min = 2L, pattern = "^([A-Za-z]_?)+$", 
            locationName = "botName"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Checksum = structure(logical(0), shape = "String", type = "string", 
            locationName = "checksum")), shape = "PutBotAliasResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_intent_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Slots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SlotName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z](-|_|.)?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        SlotConstraint = structure(logical(0), shape = "SlotConstraint", 
            type = "string", locationName = "slotConstraint"), 
        SlotType = structure(logical(0), shape = "CustomOrBuiltinSlotTypeName", 
            type = "string", max = 100L, min = 1L, pattern = "^((AMAZON\\.)_?|[A-Za-z]_?)+", 
            locationName = "slotType"), SlotTypeVersion = structure(logical(0), 
            shape = "Version", type = "string", max = 64L, min = 1L, 
            pattern = "\\$LATEST|[0-9]+", locationName = "slotTypeVersion"), 
        ValueElicitationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "valueElicitationPrompt"), 
        Priority = structure(logical(0), shape = "Priority", 
            type = "integer", max = 100L, min = 0L, locationName = "priority"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "SlotUtteranceList", type = "list", 
            max = 10L, min = 0L, locationName = "sampleUtterances"), 
        ResponseCard = structure(logical(0), shape = "ResponseCard", 
            type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
        shape = "Slot", type = "structure")), shape = "SlotList", 
        type = "list", max = 100L, min = 0L, locationName = "slots"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "IntentUtteranceList", type = "list", 
            max = 1500L, min = 0L, locationName = "sampleUtterances"), 
        ConfirmationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "confirmationPrompt"), 
        RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "rejectionStatement"), 
        FollowUpPrompt = structure(list(Prompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "prompt"), 
            RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
                shape = "ContentType", type = "string", locationName = "contentType"), 
                Content = structure(logical(0), shape = "ContentString", 
                  type = "string", max = 1000L, min = 1L, locationName = "content"), 
                GroupNumber = structure(logical(0), shape = "GroupNumber", 
                  type = "integer", box = TRUE, max = 5L, min = 1L, 
                  locationName = "groupNumber")), shape = "Message", 
                type = "structure")), shape = "MessageList", 
                type = "list", max = 15L, min = 1L, locationName = "messages"), 
                ResponseCard = structure(logical(0), shape = "ResponseCard", 
                  type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
                shape = "Statement", type = "structure", locationName = "rejectionStatement")), 
            shape = "FollowUpPrompt", type = "structure", locationName = "followUpPrompt"), 
        ConclusionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "conclusionStatement"), 
        DialogCodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "dialogCodeHook"), 
        FulfillmentActivity = structure(list(Type = structure(logical(0), 
            shape = "FulfillmentActivityType", type = "string", 
            locationName = "type"), CodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "codeHook")), 
            shape = "FulfillmentActivity", type = "structure", 
            locationName = "fulfillmentActivity"), ParentIntentSignature = structure(logical(0), 
            shape = "BuiltinIntentSignature", type = "string", 
            locationName = "parentIntentSignature"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        CreateVersion = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "createVersion")), 
        shape = "PutIntentRequest", type = "structure")
    return(populate(args, shape))
}

put_intent_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "IntentName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), Slots = structure(list(structure(list(Name = structure(logical(0), 
        shape = "SlotName", type = "string", max = 100L, min = 1L, 
        pattern = "^([A-Za-z](-|_|.)?)+$", locationName = "name"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 200L, min = 0L, locationName = "description"), 
        SlotConstraint = structure(logical(0), shape = "SlotConstraint", 
            type = "string", locationName = "slotConstraint"), 
        SlotType = structure(logical(0), shape = "CustomOrBuiltinSlotTypeName", 
            type = "string", max = 100L, min = 1L, pattern = "^((AMAZON\\.)_?|[A-Za-z]_?)+", 
            locationName = "slotType"), SlotTypeVersion = structure(logical(0), 
            shape = "Version", type = "string", max = 64L, min = 1L, 
            pattern = "\\$LATEST|[0-9]+", locationName = "slotTypeVersion"), 
        ValueElicitationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "valueElicitationPrompt"), 
        Priority = structure(logical(0), shape = "Priority", 
            type = "integer", max = 100L, min = 0L, locationName = "priority"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "SlotUtteranceList", type = "list", 
            max = 10L, min = 0L, locationName = "sampleUtterances"), 
        ResponseCard = structure(logical(0), shape = "ResponseCard", 
            type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
        shape = "Slot", type = "structure")), shape = "SlotList", 
        type = "list", max = 100L, min = 0L, locationName = "slots"), 
        SampleUtterances = structure(list(structure(logical(0), 
            shape = "Utterance", type = "string", max = 200L, 
            min = 1L)), shape = "IntentUtteranceList", type = "list", 
            max = 1500L, min = 0L, locationName = "sampleUtterances"), 
        ConfirmationPrompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "confirmationPrompt"), 
        RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "rejectionStatement"), 
        FollowUpPrompt = structure(list(Prompt = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            MaxAttempts = structure(logical(0), shape = "PromptMaxAttempts", 
                type = "integer", max = 5L, min = 1L, locationName = "maxAttempts"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Prompt", type = "structure", locationName = "prompt"), 
            RejectionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
                shape = "ContentType", type = "string", locationName = "contentType"), 
                Content = structure(logical(0), shape = "ContentString", 
                  type = "string", max = 1000L, min = 1L, locationName = "content"), 
                GroupNumber = structure(logical(0), shape = "GroupNumber", 
                  type = "integer", box = TRUE, max = 5L, min = 1L, 
                  locationName = "groupNumber")), shape = "Message", 
                type = "structure")), shape = "MessageList", 
                type = "list", max = 15L, min = 1L, locationName = "messages"), 
                ResponseCard = structure(logical(0), shape = "ResponseCard", 
                  type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
                shape = "Statement", type = "structure", locationName = "rejectionStatement")), 
            shape = "FollowUpPrompt", type = "structure", locationName = "followUpPrompt"), 
        ConclusionStatement = structure(list(Messages = structure(list(structure(list(ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", locationName = "contentType"), 
            Content = structure(logical(0), shape = "ContentString", 
                type = "string", max = 1000L, min = 1L, locationName = "content"), 
            GroupNumber = structure(logical(0), shape = "GroupNumber", 
                type = "integer", box = TRUE, max = 5L, min = 1L, 
                locationName = "groupNumber")), shape = "Message", 
            type = "structure")), shape = "MessageList", type = "list", 
            max = 15L, min = 1L, locationName = "messages"), 
            ResponseCard = structure(logical(0), shape = "ResponseCard", 
                type = "string", max = 50000L, min = 1L, locationName = "responseCard")), 
            shape = "Statement", type = "structure", locationName = "conclusionStatement"), 
        DialogCodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "dialogCodeHook"), 
        FulfillmentActivity = structure(list(Type = structure(logical(0), 
            shape = "FulfillmentActivityType", type = "string", 
            locationName = "type"), CodeHook = structure(list(Uri = structure(logical(0), 
            shape = "LambdaARN", type = "string", max = 2048L, 
            min = 20L, pattern = "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?", 
            locationName = "uri"), MessageVersion = structure(logical(0), 
            shape = "MessageVersion", type = "string", max = 5L, 
            min = 1L, locationName = "messageVersion")), shape = "CodeHook", 
            type = "structure", locationName = "codeHook")), 
            shape = "FulfillmentActivity", type = "structure", 
            locationName = "fulfillmentActivity"), ParentIntentSignature = structure(logical(0), 
            shape = "BuiltinIntentSignature", type = "string", 
            locationName = "parentIntentSignature"), LastUpdatedDate = structure(logical(0), 
            shape = "Timestamp", type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        CreateVersion = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "createVersion")), 
        shape = "PutIntentResponse", type = "structure")
    return(populate(args, shape))
}

put_slot_type_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        location = "uri", locationName = "name", type = "string", 
        max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), EnumerationValues = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L, 
        locationName = "value"), Synonyms = structure(list(structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L)), 
        shape = "SynonymList", type = "list", locationName = "synonyms")), 
        shape = "EnumerationValue", type = "structure")), shape = "EnumerationValues", 
        type = "list", max = 10000L, min = 1L, locationName = "enumerationValues"), 
        Checksum = structure(logical(0), shape = "String", type = "string", 
            locationName = "checksum"), ValueSelectionStrategy = structure(logical(0), 
            shape = "SlotValueSelectionStrategy", type = "string", 
            locationName = "valueSelectionStrategy"), CreateVersion = structure(logical(0), 
            shape = "Boolean", type = "boolean", locationName = "createVersion")), 
        shape = "PutSlotTypeRequest", type = "structure")
    return(populate(args, shape))
}

put_slot_type_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "SlotTypeName", 
        type = "string", max = 100L, min = 1L, pattern = "^([A-Za-z]_?)+$", 
        locationName = "name"), Description = structure(logical(0), 
        shape = "Description", type = "string", max = 200L, min = 0L, 
        locationName = "description"), EnumerationValues = structure(list(structure(list(Value = structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L, 
        locationName = "value"), Synonyms = structure(list(structure(logical(0), 
        shape = "Value", type = "string", max = 140L, min = 1L)), 
        shape = "SynonymList", type = "list", locationName = "synonyms")), 
        shape = "EnumerationValue", type = "structure")), shape = "EnumerationValues", 
        type = "list", max = 10000L, min = 1L, locationName = "enumerationValues"), 
        LastUpdatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "lastUpdatedDate"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate"), 
        Version = structure(logical(0), shape = "Version", type = "string", 
            max = 64L, min = 1L, pattern = "\\$LATEST|[0-9]+", 
            locationName = "version"), Checksum = structure(logical(0), 
            shape = "String", type = "string", locationName = "checksum"), 
        ValueSelectionStrategy = structure(logical(0), shape = "SlotValueSelectionStrategy", 
            type = "string", locationName = "valueSelectionStrategy"), 
        CreateVersion = structure(logical(0), shape = "Boolean", 
            type = "boolean", locationName = "createVersion")), 
        shape = "PutSlotTypeResponse", type = "structure")
    return(populate(args, shape))
}

start_import_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Payload = structure(logical(0), shape = "Blob", 
        type = "blob", locationName = "payload"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        MergeStrategy = structure(logical(0), shape = "MergeStrategy", 
            type = "string", locationName = "mergeStrategy")), 
        shape = "StartImportRequest", type = "structure")
    return(populate(args, shape))
}

start_import_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "Name", 
        type = "string", max = 100L, min = 1L, pattern = "[a-zA-Z_]+", 
        locationName = "name"), ResourceType = structure(logical(0), 
        shape = "ResourceType", type = "string", locationName = "resourceType"), 
        MergeStrategy = structure(logical(0), shape = "MergeStrategy", 
            type = "string", locationName = "mergeStrategy"), 
        ImportId = structure(logical(0), shape = "String", type = "string", 
            locationName = "importId"), ImportStatus = structure(logical(0), 
            shape = "ImportStatus", type = "string", locationName = "importStatus"), 
        CreatedDate = structure(logical(0), shape = "Timestamp", 
            type = "timestamp", locationName = "createdDate")), 
        shape = "StartImportResponse", type = "structure")
    return(populate(args, shape))
}
