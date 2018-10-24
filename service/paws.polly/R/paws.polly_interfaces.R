delete_lexicon_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "LexiconName", 
        location = "uri", locationName = "LexiconName", type = "string", 
        pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE)), shape = "DeleteLexiconInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_lexicon_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLexiconOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_voices_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LanguageCode = structure(logical(0), 
        shape = "LanguageCode", location = "querystring", locationName = "LanguageCode", 
        type = "string"), IncludeAdditionalLanguageCodes = structure(logical(0), 
        shape = "IncludeAdditionalLanguageCodes", location = "querystring", 
        locationName = "IncludeAdditionalLanguageCodes", type = "boolean"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "NextToken", 
            type = "string")), shape = "DescribeVoicesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_voices_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Voices = structure(list(structure(list(Gender = structure(logical(0), 
        shape = "Gender", type = "string"), Id = structure(logical(0), 
        shape = "VoiceId", type = "string"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), LanguageName = structure(logical(0), 
        shape = "LanguageName", type = "string"), Name = structure(logical(0), 
        shape = "VoiceName", type = "string"), AdditionalLanguageCodes = structure(list(structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "LanguageCodeList", 
        type = "list")), shape = "Voice", type = "structure")), 
        shape = "VoiceList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "DescribeVoicesOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_lexicon_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "LexiconName", 
        location = "uri", locationName = "LexiconName", type = "string", 
        pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE)), shape = "GetLexiconInput", 
        type = "structure")
    return(populate(args, shape))
}

get_lexicon_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Lexicon = structure(list(Content = structure(logical(0), 
        shape = "LexiconContent", type = "string"), Name = structure(logical(0), 
        shape = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE)), shape = "Lexicon", type = "structure"), 
        LexiconAttributes = structure(list(Alphabet = structure(logical(0), 
            shape = "Alphabet", type = "string"), LanguageCode = structure(logical(0), 
            shape = "LanguageCode", type = "string"), LastModified = structure(logical(0), 
            shape = "LastModified", type = "timestamp"), LexiconArn = structure(logical(0), 
            shape = "LexiconArn", type = "string"), LexemesCount = structure(logical(0), 
            shape = "LexemesCount", type = "integer"), Size = structure(logical(0), 
            shape = "Size", type = "integer")), shape = "LexiconAttributes", 
            type = "structure")), shape = "GetLexiconOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_speech_synthesis_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TaskId = structure(logical(0), shape = "TaskId", 
        location = "uri", locationName = "TaskId", type = "string", 
        max = 128L, min = 1L)), shape = "GetSpeechSynthesisTaskInput", 
        type = "structure")
    return(populate(args, shape))
}

get_speech_synthesis_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SynthesisTask = structure(list(TaskId = structure(logical(0), 
        shape = "TaskId", type = "string", max = 128L, min = 1L), 
        TaskStatus = structure(logical(0), shape = "TaskStatus", 
            type = "string"), TaskStatusReason = structure(logical(0), 
            shape = "TaskStatusReason", type = "string"), OutputUri = structure(logical(0), 
            shape = "OutputUri", type = "string"), CreationTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), RequestCharacters = structure(logical(0), 
            shape = "RequestCharacters", type = "integer"), SnsTopicArn = structure(logical(0), 
            shape = "SnsTopicArn", type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$"), 
        LexiconNames = structure(list(structure(logical(0), shape = "LexiconName", 
            type = "string", pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE)), 
            shape = "LexiconNameList", type = "list", max = 5L), 
        OutputFormat = structure(logical(0), shape = "OutputFormat", 
            type = "string"), SampleRate = structure(logical(0), 
            shape = "SampleRate", type = "string"), SpeechMarkTypes = structure(list(structure(logical(0), 
            shape = "SpeechMarkType", type = "string")), shape = "SpeechMarkTypeList", 
            type = "list", max = 4L), TextType = structure(logical(0), 
            shape = "TextType", type = "string"), VoiceId = structure(logical(0), 
            shape = "VoiceId", type = "string"), LanguageCode = structure(logical(0), 
            shape = "LanguageCode", type = "string")), shape = "SynthesisTask", 
        type = "structure")), shape = "GetSpeechSynthesisTaskOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_lexicons_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "NextToken", 
        type = "string")), shape = "ListLexiconsInput", type = "structure")
    return(populate(args, shape))
}

list_lexicons_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Lexicons = structure(list(structure(list(Name = structure(logical(0), 
        shape = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE), Attributes = structure(list(Alphabet = structure(logical(0), 
        shape = "Alphabet", type = "string"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), LastModified = structure(logical(0), 
        shape = "LastModified", type = "timestamp"), LexiconArn = structure(logical(0), 
        shape = "LexiconArn", type = "string"), LexemesCount = structure(logical(0), 
        shape = "LexemesCount", type = "integer"), Size = structure(logical(0), 
        shape = "Size", type = "integer")), shape = "LexiconAttributes", 
        type = "structure")), shape = "LexiconDescription", type = "structure")), 
        shape = "LexiconDescriptionList", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "ListLexiconsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_speech_synthesis_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "MaxResults", 
        type = "integer", max = 100L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "NextToken", 
        type = "string"), Status = structure(logical(0), shape = "TaskStatus", 
        location = "querystring", locationName = "Status", type = "string")), 
        shape = "ListSpeechSynthesisTasksInput", type = "structure")
    return(populate(args, shape))
}

list_speech_synthesis_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string"), SynthesisTasks = structure(list(structure(list(TaskId = structure(logical(0), 
        shape = "TaskId", type = "string", max = 128L, min = 1L), 
        TaskStatus = structure(logical(0), shape = "TaskStatus", 
            type = "string"), TaskStatusReason = structure(logical(0), 
            shape = "TaskStatusReason", type = "string"), OutputUri = structure(logical(0), 
            shape = "OutputUri", type = "string"), CreationTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), RequestCharacters = structure(logical(0), 
            shape = "RequestCharacters", type = "integer"), SnsTopicArn = structure(logical(0), 
            shape = "SnsTopicArn", type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$"), 
        LexiconNames = structure(list(structure(logical(0), shape = "LexiconName", 
            type = "string", pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE)), 
            shape = "LexiconNameList", type = "list", max = 5L), 
        OutputFormat = structure(logical(0), shape = "OutputFormat", 
            type = "string"), SampleRate = structure(logical(0), 
            shape = "SampleRate", type = "string"), SpeechMarkTypes = structure(list(structure(logical(0), 
            shape = "SpeechMarkType", type = "string")), shape = "SpeechMarkTypeList", 
            type = "list", max = 4L), TextType = structure(logical(0), 
            shape = "TextType", type = "string"), VoiceId = structure(logical(0), 
            shape = "VoiceId", type = "string"), LanguageCode = structure(logical(0), 
            shape = "LanguageCode", type = "string")), shape = "SynthesisTask", 
        type = "structure")), shape = "SynthesisTasks", type = "list")), 
        shape = "ListSpeechSynthesisTasksOutput", type = "structure")
    return(populate(args, shape))
}

put_lexicon_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "LexiconName", 
        location = "uri", locationName = "LexiconName", type = "string", 
        pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE), Content = structure(logical(0), 
        shape = "LexiconContent", type = "string")), shape = "PutLexiconInput", 
        type = "structure")
    return(populate(args, shape))
}

put_lexicon_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "PutLexiconOutput", type = "structure")
    return(populate(args, shape))
}

start_speech_synthesis_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LexiconNames = structure(list(structure(logical(0), 
        shape = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE)), shape = "LexiconNameList", type = "list", 
        max = 5L), OutputFormat = structure(logical(0), shape = "OutputFormat", 
        type = "string"), OutputS3BucketName = structure(logical(0), 
        shape = "OutputS3BucketName", type = "string", pattern = "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"), 
        OutputS3KeyPrefix = structure(logical(0), shape = "OutputS3KeyPrefix", 
            type = "string", pattern = "^[0-9a-zA-Z\\/\\!\\-_\\.\\*\\'\\(\\)]{0,800}$"), 
        SampleRate = structure(logical(0), shape = "SampleRate", 
            type = "string"), SnsTopicArn = structure(logical(0), 
            shape = "SnsTopicArn", type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$"), 
        SpeechMarkTypes = structure(list(structure(logical(0), 
            shape = "SpeechMarkType", type = "string")), shape = "SpeechMarkTypeList", 
            type = "list", max = 4L), Text = structure(logical(0), 
            shape = "Text", type = "string"), TextType = structure(logical(0), 
            shape = "TextType", type = "string"), VoiceId = structure(logical(0), 
            shape = "VoiceId", type = "string"), LanguageCode = structure(logical(0), 
            shape = "LanguageCode", type = "string")), shape = "StartSpeechSynthesisTaskInput", 
        type = "structure")
    return(populate(args, shape))
}

start_speech_synthesis_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SynthesisTask = structure(list(TaskId = structure(logical(0), 
        shape = "TaskId", type = "string", max = 128L, min = 1L), 
        TaskStatus = structure(logical(0), shape = "TaskStatus", 
            type = "string"), TaskStatusReason = structure(logical(0), 
            shape = "TaskStatusReason", type = "string"), OutputUri = structure(logical(0), 
            shape = "OutputUri", type = "string"), CreationTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), RequestCharacters = structure(logical(0), 
            shape = "RequestCharacters", type = "integer"), SnsTopicArn = structure(logical(0), 
            shape = "SnsTopicArn", type = "string", pattern = "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:.*:\\w{12}:.+$"), 
        LexiconNames = structure(list(structure(logical(0), shape = "LexiconName", 
            type = "string", pattern = "[0-9A-Za-z]{1,20}", sensitive = TRUE)), 
            shape = "LexiconNameList", type = "list", max = 5L), 
        OutputFormat = structure(logical(0), shape = "OutputFormat", 
            type = "string"), SampleRate = structure(logical(0), 
            shape = "SampleRate", type = "string"), SpeechMarkTypes = structure(list(structure(logical(0), 
            shape = "SpeechMarkType", type = "string")), shape = "SpeechMarkTypeList", 
            type = "list", max = 4L), TextType = structure(logical(0), 
            shape = "TextType", type = "string"), VoiceId = structure(logical(0), 
            shape = "VoiceId", type = "string"), LanguageCode = structure(logical(0), 
            shape = "LanguageCode", type = "string")), shape = "SynthesisTask", 
        type = "structure")), shape = "StartSpeechSynthesisTaskOutput", 
        type = "structure")
    return(populate(args, shape))
}

synthesize_speech_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LexiconNames = structure(list(structure(logical(0), 
        shape = "LexiconName", type = "string", pattern = "[0-9A-Za-z]{1,20}", 
        sensitive = TRUE)), shape = "LexiconNameList", type = "list", 
        max = 5L), OutputFormat = structure(logical(0), shape = "OutputFormat", 
        type = "string"), SampleRate = structure(logical(0), 
        shape = "SampleRate", type = "string"), SpeechMarkTypes = structure(list(structure(logical(0), 
        shape = "SpeechMarkType", type = "string")), shape = "SpeechMarkTypeList", 
        type = "list", max = 4L), Text = structure(logical(0), 
        shape = "Text", type = "string"), TextType = structure(logical(0), 
        shape = "TextType", type = "string"), VoiceId = structure(logical(0), 
        shape = "VoiceId", type = "string"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "SynthesizeSpeechInput", 
        type = "structure")
    return(populate(args, shape))
}

synthesize_speech_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AudioStream = structure(logical(0), 
        shape = "AudioStream", type = "blob", streaming = TRUE), 
        ContentType = structure(logical(0), shape = "ContentType", 
            location = "header", locationName = "Content-Type", 
            type = "string"), RequestCharacters = structure(logical(0), 
            shape = "RequestCharacters", location = "header", 
            locationName = "x-amzn-RequestCharacters", type = "integer")), 
        shape = "SynthesizeSpeechOutput", type = "structure", 
        payload = "AudioStream")
    return(populate(args, shape))
}
