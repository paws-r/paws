#' Translates input text from the source language to the target language
#'
#' Translates input text from the source language to the target language. You can translate between English (en) and one of the following languages, or between one of the following languages and English.
#' 
#' -   Arabic (ar)
#' 
#' -   Chinese (Simplified) (zh)
#' 
#' -   French (fr)
#' 
#' -   German (de)
#' 
#' -   Portuguese (pt)
#' 
#' -   Spanish (es)
#' 
#' To have Amazon Translate determine the source language of your text, you can specify `auto` in the `SourceLanguageCode` field. If you specify `auto`, Amazon Translate will call Amazon Comprehend to determine the source language.
#'
#' @param Text The text to translate.
#' @param SourceLanguageCode One of the supported language codes for the source text. If the `TargetLanguageCode` is not \"en\", the `SourceLanguageCode` must be \"en\".
#' 
#' To have Amazon Translate determine the source language of your text, you can specify `auto` in the `SourceLanguageCode` field. If you specify `auto`, Amazon Translate will call Amazon Comprehend to determine the source language.
#' @param TargetLanguageCode One of the supported language codes for the target text. If the `SourceLanguageCode` is not \"en\", the `TargetLanguageCode` must be \"en\".
#'
#' @examples
#'
#' @export
translate_text <- function (Text, SourceLanguageCode, TargetLanguageCode) 
{
    op <- Operation(name = "TranslateText", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- translate_text_input(Text = Text, SourceLanguageCode = SourceLanguageCode, 
        TargetLanguageCode = TargetLanguageCode)
    output <- translate_text_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
