translate_text_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), shape = "BoundedLengthString", 
        type = "string", max = 5000L, min = 1L), SourceLanguageCode = structure(logical(0), 
        shape = "LanguageCodeString", type = "string", max = 5L, 
        min = 2L), TargetLanguageCode = structure(logical(0), 
        shape = "LanguageCodeString", type = "string", max = 5L, 
        min = 2L)), shape = "TranslateTextRequest", type = "structure")
    return(populate(args, shape))
}

translate_text_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TranslatedText = structure(logical(0), 
        shape = "String", type = "string", min = 1L), SourceLanguageCode = structure(logical(0), 
        shape = "LanguageCodeString", type = "string", max = 5L, 
        min = 2L), TargetLanguageCode = structure(logical(0), 
        shape = "LanguageCodeString", type = "string", max = 5L, 
        min = 2L)), shape = "TranslateTextResponse", type = "structure")
    return(populate(args, shape))
}
