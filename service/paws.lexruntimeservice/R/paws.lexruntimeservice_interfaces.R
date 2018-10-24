post_content_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "botName", type = "string"), 
        BotAlias = structure(logical(0), shape = "BotAlias", 
            location = "uri", locationName = "botAlias", type = "string"), 
        UserId = structure(logical(0), shape = "UserId", location = "uri", 
            locationName = "userId", type = "string", max = 100L, 
            min = 2L, pattern = "[0-9a-zA-Z._:-]+"), SessionAttributes = structure(logical(0), 
            shape = "AttributesString", jsonvalue = TRUE, location = "header", 
            locationName = "sessionAttributes", type = "string", 
            sensitive = TRUE), RequestAttributes = structure(logical(0), 
            shape = "AttributesString", jsonvalue = TRUE, location = "header", 
            locationName = "requestAttributes", type = "string", 
            sensitive = TRUE), ContentType = structure(logical(0), 
            shape = "HttpContentType", location = "header", locationName = "contentType", 
            type = "string"), Accept = structure(logical(0), 
            shape = "Accept", location = "header", locationName = "accept", 
            type = "string"), InputStream = structure(logical(0), 
            shape = "BlobStream", type = "blob", streaming = TRUE, 
            locationName = "inputStream")), shape = "PostContentRequest", 
        type = "structure", payload = "inputStream")
    return(populate(args, shape))
}

post_content_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ContentType = structure(logical(0), 
        shape = "HttpContentType", location = "header", locationName = "contentType", 
        type = "string"), IntentName = structure(logical(0), 
        shape = "IntentName", location = "header", locationName = "intentName", 
        type = "string"), Slots = structure(logical(0), shape = "String", 
        jsonvalue = TRUE, location = "header", locationName = "slots", 
        type = "string"), SessionAttributes = structure(logical(0), 
        shape = "String", jsonvalue = TRUE, location = "header", 
        locationName = "sessionAttributes", type = "string"), 
        Message = structure(logical(0), shape = "Text", location = "header", 
            locationName = "message", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE), MessageFormat = structure(logical(0), 
            shape = "MessageFormatType", location = "header", 
            locationName = "messageFormat", type = "string"), 
        DialogState = structure(logical(0), shape = "DialogState", 
            location = "header", locationName = "dialogState", 
            type = "string"), SlotToElicit = structure(logical(0), 
            shape = "String", location = "header", locationName = "slotToElicit", 
            type = "string"), InputTranscript = structure(logical(0), 
            shape = "String", location = "header", locationName = "inputTranscript", 
            type = "string"), AudioStream = structure(logical(0), 
            shape = "BlobStream", type = "blob", streaming = TRUE, 
            locationName = "audioStream")), shape = "PostContentResponse", 
        type = "structure", payload = "audioStream")
    return(populate(args, shape))
}

post_text_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BotName = structure(logical(0), shape = "BotName", 
        location = "uri", locationName = "botName", type = "string"), 
        BotAlias = structure(logical(0), shape = "BotAlias", 
            location = "uri", locationName = "botAlias", type = "string"), 
        UserId = structure(logical(0), shape = "UserId", location = "uri", 
            locationName = "userId", type = "string", max = 100L, 
            min = 2L, pattern = "[0-9a-zA-Z._:-]+"), SessionAttributes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map", sensitive = TRUE, locationName = "sessionAttributes"), 
        RequestAttributes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map", sensitive = TRUE, locationName = "requestAttributes"), 
        InputText = structure(logical(0), shape = "Text", type = "string", 
            max = 1024L, min = 1L, sensitive = TRUE, locationName = "inputText")), 
        shape = "PostTextRequest", type = "structure")
    return(populate(args, shape))
}

post_text_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IntentName = structure(logical(0), 
        shape = "IntentName", type = "string", locationName = "intentName"), 
        Slots = structure(list(structure(logical(0), shape = "String", 
            type = "string")), shape = "StringMap", type = "map", 
            sensitive = TRUE, locationName = "slots"), SessionAttributes = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "StringMap", 
            type = "map", sensitive = TRUE, locationName = "sessionAttributes"), 
        Message = structure(logical(0), shape = "Text", type = "string", 
            max = 1024L, min = 1L, sensitive = TRUE, locationName = "message"), 
        MessageFormat = structure(logical(0), shape = "MessageFormatType", 
            type = "string", locationName = "messageFormat"), 
        DialogState = structure(logical(0), shape = "DialogState", 
            type = "string", locationName = "dialogState"), SlotToElicit = structure(logical(0), 
            shape = "String", type = "string", locationName = "slotToElicit"), 
        ResponseCard = structure(list(Version = structure(logical(0), 
            shape = "String", type = "string", locationName = "version"), 
            ContentType = structure(logical(0), shape = "ContentType", 
                type = "string", locationName = "contentType"), 
            GenericAttachments = structure(list(structure(list(Title = structure(logical(0), 
                shape = "StringWithLength", type = "string", 
                max = 80L, min = 1L, locationName = "title"), 
                SubTitle = structure(logical(0), shape = "StringWithLength", 
                  type = "string", max = 80L, min = 1L, locationName = "subTitle"), 
                AttachmentLinkUrl = structure(logical(0), shape = "StringUrlWithLength", 
                  type = "string", max = 2048L, min = 1L, locationName = "attachmentLinkUrl"), 
                ImageUrl = structure(logical(0), shape = "StringUrlWithLength", 
                  type = "string", max = 2048L, min = 1L, locationName = "imageUrl"), 
                Buttons = structure(list(structure(list(Text = structure(logical(0), 
                  shape = "ButtonTextStringWithLength", type = "string", 
                  max = 15L, min = 1L, locationName = "text"), 
                  Value = structure(logical(0), shape = "ButtonValueStringWithLength", 
                    type = "string", max = 1000L, min = 1L, locationName = "value")), 
                  shape = "Button", type = "structure")), shape = "listOfButtons", 
                  type = "list", max = 5L, min = 0L, locationName = "buttons")), 
                shape = "GenericAttachment", type = "structure")), 
                shape = "genericAttachmentList", type = "list", 
                max = 10L, min = 0L, locationName = "genericAttachments")), 
            shape = "ResponseCard", type = "structure", locationName = "responseCard")), 
        shape = "PostTextResponse", type = "structure")
    return(populate(args, shape))
}
