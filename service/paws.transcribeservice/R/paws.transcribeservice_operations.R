#' Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file
#'
#' Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message.
#'
#' @param VocabularyName The name of the vocabulary. The name must be unique within an AWS account. The name is case-sensitive.
#' @param LanguageCode The language code of the vocabulary entries.
#' @param Phrases An array of strings that contains the vocabulary entries.
#'
#' @examples
#'
#' @export
create_vocabulary <- function (VocabularyName, LanguageCode, 
    Phrases) 
{
    op <- Operation(name = "CreateVocabulary", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vocabulary_input(VocabularyName = VocabularyName, 
        LanguageCode = LanguageCode, Phrases = Phrases)
    output <- create_vocabulary_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a previously submitted transcription job as well as any other generated results such as the transcription, models, and so on
#'
#' Deletes a previously submitted transcription job as well as any other generated results such as the transcription, models, and so on.
#'
#' @param TranscriptionJobName The name of the transcription job to be deleted.
#'
#' @examples
#'
#' @export
delete_transcription_job <- function (TranscriptionJobName) 
{
    op <- Operation(name = "DeleteTranscriptionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_transcription_job_input(TranscriptionJobName = TranscriptionJobName)
    output <- delete_transcription_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a vocabulary from Amazon Transcribe
#'
#' Deletes a vocabulary from Amazon Transcribe.
#'
#' @param VocabularyName The name of the vocabulary to delete.
#'
#' @examples
#'
#' @export
delete_vocabulary <- function (VocabularyName) 
{
    op <- Operation(name = "DeleteVocabulary", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vocabulary_input(VocabularyName = VocabularyName)
    output <- delete_vocabulary_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a transcription job
#'
#' Returns information about a transcription job. To see the status of the job, check the `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job is finished and you can find the results at the location specified in the `TranscriptionFileUri` field.
#'
#' @param TranscriptionJobName The name of the job.
#'
#' @examples
#'
#' @export
get_transcription_job <- function (TranscriptionJobName) 
{
    op <- Operation(name = "GetTranscriptionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_transcription_job_input(TranscriptionJobName = TranscriptionJobName)
    output <- get_transcription_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a vocabulary
#'
#' Gets information about a vocabulary. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message.
#'
#' @param VocabularyName The name of the vocabulary to return information about. The name is case-sensitive.
#'
#' @examples
#'
#' @export
get_vocabulary <- function (VocabularyName) 
{
    op <- Operation(name = "GetVocabulary", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_vocabulary_input(VocabularyName = VocabularyName)
    output <- get_vocabulary_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists transcription jobs with the specified status
#'
#' Lists transcription jobs with the specified status.
#'
#' @param Status When specified, returns only transcription jobs with the specified status.
#' @param JobNameContains When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.
#' @param NextToken If the result of the previous request to `ListTranscriptionJobs` was truncated, include the `NextToken` to fetch the next set of jobs.
#' @param MaxResults The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.
#'
#' @examples
#'
#' @export
list_transcription_jobs <- function (Status = NULL, JobNameContains = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListTranscriptionJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_transcription_jobs_input(Status = Status, JobNameContains = JobNameContains, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_transcription_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of vocabularies that match the specified criteria
#'
#' Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
#'
#' @param NextToken If the result of the previous request to `ListVocabularies` was truncated, include the `NextToken` to fetch the next set of jobs.
#' @param MaxResults The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.
#' @param StateEquals When specified, only returns vocabularies with the `VocabularyState` field equal to the specified state.
#' @param NameContains When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is case-insensitive, `ListVocabularies` will return both \"vocabularyname\" and \"VocabularyName\" in the response list.
#'
#' @examples
#'
#' @export
list_vocabularies <- function (NextToken = NULL, MaxResults = NULL, 
    StateEquals = NULL, NameContains = NULL) 
{
    op <- Operation(name = "ListVocabularies", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_vocabularies_input(NextToken = NextToken, MaxResults = MaxResults, 
        StateEquals = StateEquals, NameContains = NameContains)
    output <- list_vocabularies_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an asynchronous job to transcribe speech to text
#'
#' Starts an asynchronous job to transcribe speech to text. Note that en-AU, en-UK, and fr-CA languages are in preview and are only available to whitelisted customers.
#'
#' @param TranscriptionJobName The name of the job. You can\'t use the strings \".\" or \"..\" in the job name. The name must be unique within an AWS account.
#' @param LanguageCode The language code for the language used in the input media file.
#' @param MediaFormat The format of the input media file.
#' @param Media An object that describes the input media for a transcription job.
#' @param MediaSampleRateHertz The sample rate, in Hertz, of the audio track in the input media file.
#' @param OutputBucketName The location where the transcription is stored.
#' 
#' If you set the `OutputBucketName`, Amazon Transcribe puts the transcription in the specified S3 bucket. When you call the GetTranscriptionJob operation, the operation returns this location in the `TranscriptFileUri` field. The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see [Permissions Required for IAM User Roles](https://docs.aws.amazon.com/transcribe/latest/dg/access-control-managing-permissions.html#auth-role-iam-user).
#' 
#' If you don\'t set the `OutputBucketName`, Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the `TranscriptFileUri` field. Use this URL to download the transcription.
#' @param Settings A `Settings` object that provides optional settings for a transcription job.
#'
#' @examples
#'
#' @export
start_transcription_job <- function (TranscriptionJobName, LanguageCode, 
    MediaFormat, Media, MediaSampleRateHertz = NULL, OutputBucketName = NULL, 
    Settings = NULL) 
{
    op <- Operation(name = "StartTranscriptionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_transcription_job_input(TranscriptionJobName = TranscriptionJobName, 
        LanguageCode = LanguageCode, MediaFormat = MediaFormat, 
        Media = Media, MediaSampleRateHertz = MediaSampleRateHertz, 
        OutputBucketName = OutputBucketName, Settings = Settings)
    output <- start_transcription_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing vocabulary with new values
#'
#' Updates an existing vocabulary with new values. The `UpdateVocabulary` operation overwrites all of the existing information with the values that you provide in the request. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message.
#'
#' @param VocabularyName The name of the vocabulary to update. The name is case-sensitive.
#' @param LanguageCode The language code of the vocabulary entries.
#' @param Phrases An array of strings containing the vocabulary entries.
#'
#' @examples
#'
#' @export
update_vocabulary <- function (VocabularyName, LanguageCode, 
    Phrases) 
{
    op <- Operation(name = "UpdateVocabulary", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_vocabulary_input(VocabularyName = VocabularyName, 
        LanguageCode = LanguageCode, Phrases = Phrases)
    output <- update_vocabulary_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
