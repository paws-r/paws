create_vocabulary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), Phrases = structure(list(structure(logical(0), 
        shape = "Phrase", type = "string", max = 256L, min = 0L)), 
        shape = "Phrases", type = "list")), shape = "CreateVocabularyRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vocabulary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), VocabularyState = structure(logical(0), 
        shape = "VocabularyState", type = "string"), LastModifiedTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), FailureReason = structure(logical(0), 
        shape = "FailureReason", type = "string")), shape = "CreateVocabularyResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_transcription_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TranscriptionJobName = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+")), shape = "DeleteTranscriptionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_transcription_job_output <- function () 
{
    return(list())
}

delete_vocabulary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+")), shape = "DeleteVocabularyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vocabulary_output <- function () 
{
    return(list())
}

get_transcription_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TranscriptionJobName = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+")), shape = "GetTranscriptionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_transcription_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TranscriptionJob = structure(list(TranscriptionJobName = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), TranscriptionJobStatus = structure(logical(0), 
        shape = "TranscriptionJobStatus", type = "string"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), MediaSampleRateHertz = structure(logical(0), 
        shape = "MediaSampleRateHertz", type = "integer", max = 48000L, 
        min = 8000L), MediaFormat = structure(logical(0), shape = "MediaFormat", 
        type = "string"), Media = structure(list(MediaFileUri = structure(logical(0), 
        shape = "Uri", type = "string", max = 2000L, min = 1L)), 
        shape = "Media", type = "structure"), Transcript = structure(list(TranscriptFileUri = structure(logical(0), 
        shape = "Uri", type = "string", max = 2000L, min = 1L)), 
        shape = "Transcript", type = "structure"), CreationTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), CompletionTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), FailureReason = structure(logical(0), 
        shape = "FailureReason", type = "string"), Settings = structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), ShowSpeakerLabels = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MaxSpeakerLabels = structure(logical(0), 
        shape = "MaxSpeakers", type = "integer", max = 10L, min = 2L), 
        ChannelIdentification = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "Settings", type = "structure")), 
        shape = "TranscriptionJob", type = "structure")), shape = "GetTranscriptionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_vocabulary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+")), shape = "GetVocabularyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_vocabulary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), VocabularyState = structure(logical(0), 
        shape = "VocabularyState", type = "string"), LastModifiedTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), FailureReason = structure(logical(0), 
        shape = "FailureReason", type = "string"), DownloadUri = structure(logical(0), 
        shape = "Uri", type = "string", max = 2000L, min = 1L)), 
        shape = "GetVocabularyResponse", type = "structure")
    return(populate(args, shape))
}

list_transcription_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "TranscriptionJobStatus", 
        type = "string"), JobNameContains = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L)), 
        shape = "ListTranscriptionJobsRequest", type = "structure")
    return(populate(args, shape))
}

list_transcription_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "TranscriptionJobStatus", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 8192L), TranscriptionJobSummaries = structure(list(structure(list(TranscriptionJobName = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), CreationTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), CompletionTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), TranscriptionJobStatus = structure(logical(0), 
        shape = "TranscriptionJobStatus", type = "string"), FailureReason = structure(logical(0), 
        shape = "FailureReason", type = "string"), OutputLocationType = structure(logical(0), 
        shape = "OutputLocationType", type = "string")), shape = "TranscriptionJobSummary", 
        type = "structure")), shape = "TranscriptionJobSummaries", 
        type = "list")), shape = "ListTranscriptionJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_vocabularies_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        StateEquals = structure(logical(0), shape = "VocabularyState", 
            type = "string"), NameContains = structure(logical(0), 
            shape = "VocabularyName", type = "string", max = 200L, 
            min = 1L, pattern = "^[0-9a-zA-Z._-]+")), shape = "ListVocabulariesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_vocabularies_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "TranscriptionJobStatus", 
        type = "string"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 8192L), Vocabularies = structure(list(structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), LastModifiedTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), VocabularyState = structure(logical(0), 
        shape = "VocabularyState", type = "string")), shape = "VocabularyInfo", 
        type = "structure")), shape = "Vocabularies", type = "list")), 
        shape = "ListVocabulariesResponse", type = "structure")
    return(populate(args, shape))
}

start_transcription_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TranscriptionJobName = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), MediaSampleRateHertz = structure(logical(0), 
        shape = "MediaSampleRateHertz", type = "integer", max = 48000L, 
        min = 8000L), MediaFormat = structure(logical(0), shape = "MediaFormat", 
        type = "string"), Media = structure(list(MediaFileUri = structure(logical(0), 
        shape = "Uri", type = "string", max = 2000L, min = 1L)), 
        shape = "Media", type = "structure"), OutputBucketName = structure(logical(0), 
        shape = "OutputBucketName", type = "string", pattern = "[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]"), 
        Settings = structure(list(VocabularyName = structure(logical(0), 
            shape = "VocabularyName", type = "string", max = 200L, 
            min = 1L, pattern = "^[0-9a-zA-Z._-]+"), ShowSpeakerLabels = structure(logical(0), 
            shape = "Boolean", type = "boolean"), MaxSpeakerLabels = structure(logical(0), 
            shape = "MaxSpeakers", type = "integer", max = 10L, 
            min = 2L), ChannelIdentification = structure(logical(0), 
            shape = "Boolean", type = "boolean")), shape = "Settings", 
            type = "structure")), shape = "StartTranscriptionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_transcription_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TranscriptionJob = structure(list(TranscriptionJobName = structure(logical(0), 
        shape = "TranscriptionJobName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), TranscriptionJobStatus = structure(logical(0), 
        shape = "TranscriptionJobStatus", type = "string"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), MediaSampleRateHertz = structure(logical(0), 
        shape = "MediaSampleRateHertz", type = "integer", max = 48000L, 
        min = 8000L), MediaFormat = structure(logical(0), shape = "MediaFormat", 
        type = "string"), Media = structure(list(MediaFileUri = structure(logical(0), 
        shape = "Uri", type = "string", max = 2000L, min = 1L)), 
        shape = "Media", type = "structure"), Transcript = structure(list(TranscriptFileUri = structure(logical(0), 
        shape = "Uri", type = "string", max = 2000L, min = 1L)), 
        shape = "Transcript", type = "structure"), CreationTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), CompletionTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), FailureReason = structure(logical(0), 
        shape = "FailureReason", type = "string"), Settings = structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), ShowSpeakerLabels = structure(logical(0), 
        shape = "Boolean", type = "boolean"), MaxSpeakerLabels = structure(logical(0), 
        shape = "MaxSpeakers", type = "integer", max = 10L, min = 2L), 
        ChannelIdentification = structure(logical(0), shape = "Boolean", 
            type = "boolean")), shape = "Settings", type = "structure")), 
        shape = "TranscriptionJob", type = "structure")), shape = "StartTranscriptionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_vocabulary_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), Phrases = structure(list(structure(logical(0), 
        shape = "Phrase", type = "string", max = 256L, min = 0L)), 
        shape = "Phrases", type = "list")), shape = "UpdateVocabularyRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_vocabulary_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VocabularyName = structure(logical(0), 
        shape = "VocabularyName", type = "string", max = 200L, 
        min = 1L, pattern = "^[0-9a-zA-Z._-]+"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string"), LastModifiedTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), VocabularyState = structure(logical(0), 
        shape = "VocabularyState", type = "string")), shape = "UpdateVocabularyResponse", 
        type = "structure")
    return(populate(args, shape))
}
