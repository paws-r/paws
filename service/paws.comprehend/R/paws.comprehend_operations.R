#' Determines the dominant language of the input text for a batch of documents
#'
#' Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
#'
#' @param TextList A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document should contain at least 20 characters and must contain fewer than 5,000 bytes of UTF-8 encoded characters.
#'
#' @examples
#'
#' @export
batch_detect_dominant_language <- function (TextList) 
{
    op <- Operation(name = "BatchDetectDominantLanguage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_detect_dominant_language_input(TextList = TextList)
    output <- batch_detect_dominant_language_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects the text of a batch of documents for named entities and returns information about them
#'
#' Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see how-entities
#'
#' @param TextList A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
batch_detect_entities <- function (TextList, LanguageCode) 
{
    op <- Operation(name = "BatchDetectEntities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_detect_entities_input(TextList = TextList, 
        LanguageCode = LanguageCode)
    output <- batch_detect_entities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detects the key noun phrases found in a batch of documents
#'
#' Detects the key noun phrases found in a batch of documents.
#'
#' @param TextList A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
batch_detect_key_phrases <- function (TextList, LanguageCode) 
{
    op <- Operation(name = "BatchDetectKeyPhrases", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_detect_key_phrases_input(TextList = TextList, 
        LanguageCode = LanguageCode)
    output <- batch_detect_key_phrases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects a batch of documents and returns an inference of the prevailing sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one
#'
#' Inspects a batch of documents and returns an inference of the prevailing sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one.
#'
#' @param TextList A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
batch_detect_sentiment <- function (TextList, LanguageCode) 
{
    op <- Operation(name = "BatchDetectSentiment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_detect_sentiment_input(TextList = TextList, 
        LanguageCode = LanguageCode)
    output <- batch_detect_sentiment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them
#'
#' Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see how-syntax.
#'
#' @param TextList A list containing the text of the input documents. The list can contain a maximum of 25 documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
batch_detect_syntax <- function (TextList, LanguageCode) 
{
    op <- Operation(name = "BatchDetectSyntax", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_detect_syntax_input(TextList = TextList, LanguageCode = LanguageCode)
    output <- batch_detect_syntax_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the properties associated with a dominant language detection job
#'
#' Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
#'
#' @param JobId The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
#'
#' @examples
#'
#' @export
describe_dominant_language_detection_job <- function (JobId) 
{
    op <- Operation(name = "DescribeDominantLanguageDetectionJob", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_dominant_language_detection_job_input(JobId = JobId)
    output <- describe_dominant_language_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the properties associated with an entities detection job
#'
#' Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.
#'
#' @param JobId The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
#'
#' @examples
#'
#' @export
describe_entities_detection_job <- function (JobId) 
{
    op <- Operation(name = "DescribeEntitiesDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_entities_detection_job_input(JobId = JobId)
    output <- describe_entities_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the properties associated with a key phrases detection job
#'
#' Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
#'
#' @param JobId The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
#'
#' @examples
#'
#' @export
describe_key_phrases_detection_job <- function (JobId) 
{
    op <- Operation(name = "DescribeKeyPhrasesDetectionJob", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_key_phrases_detection_job_input(JobId = JobId)
    output <- describe_key_phrases_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the properties associated with a sentiment detection job
#'
#' Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
#'
#' @param JobId The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
#'
#' @examples
#'
#' @export
describe_sentiment_detection_job <- function (JobId) 
{
    op <- Operation(name = "DescribeSentimentDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_sentiment_detection_job_input(JobId = JobId)
    output <- describe_sentiment_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the properties associated with a topic detection job
#'
#' Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
#'
#' @param JobId The identifier assigned by the user to the detection job.
#'
#' @examples
#'
#' @export
describe_topics_detection_job <- function (JobId) 
{
    op <- Operation(name = "DescribeTopicsDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_topics_detection_job_input(JobId = JobId)
    output <- describe_topics_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Determines the dominant language of the input text
#'
#' Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
#'
#' @param Text A UTF-8 text string. Each string should contain at least 20 characters and must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#'
#' @examples
#'
#' @export
detect_dominant_language <- function (Text) 
{
    op <- Operation(name = "DetectDominantLanguage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_dominant_language_input(Text = Text)
    output <- detect_dominant_language_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects text for named entities, and returns information about them
#'
#' Inspects text for named entities, and returns information about them. For more information, about named entities, see how-entities.
#'
#' @param Text A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
detect_entities <- function (Text, LanguageCode) 
{
    op <- Operation(name = "DetectEntities", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_entities_input(Text = Text, LanguageCode = LanguageCode)
    output <- detect_entities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detects the key noun phrases found in the text
#'
#' Detects the key noun phrases found in the text.
#'
#' @param Text A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
detect_key_phrases <- function (Text, LanguageCode) 
{
    op <- Operation(name = "DetectKeyPhrases", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_key_phrases_input(Text = Text, LanguageCode = LanguageCode)
    output <- detect_key_phrases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects text and returns an inference of the prevailing sentiment (`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`)
#'
#' Inspects text and returns an inference of the prevailing sentiment (`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`).
#'
#' @param Text A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded characters.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#'
#' @examples
#'
#' @export
detect_sentiment <- function (Text, LanguageCode) 
{
    op <- Operation(name = "DetectSentiment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_sentiment_input(Text = Text, LanguageCode = LanguageCode)
    output <- detect_sentiment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Inspects text for syntax and the part of speech of words in the document
#'
#' Inspects text for syntax and the part of speech of words in the document. For more information, how-syntax.
#'
#' @param Text A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded characters.
#' @param LanguageCode The language code of the input documents. You can specify English (\"en\") or Spanish (\"es\").
#'
#' @examples
#'
#' @export
detect_syntax <- function (Text, LanguageCode) 
{
    op <- Operation(name = "DetectSyntax", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detect_syntax_input(Text = Text, LanguageCode = LanguageCode)
    output <- detect_syntax_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of the dominant language detection jobs that you have submitted
#'
#' Gets a list of the dominant language detection jobs that you have submitted.
#'
#' @param Filter Filters that jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
#' @param NextToken Identifies the next page of results to return.
#' @param MaxResults The maximum number of results to return in each page. The default is 100.
#'
#' @examples
#'
#' @export
list_dominant_language_detection_jobs <- function (Filter = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListDominantLanguageDetectionJobs", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- list_dominant_language_detection_jobs_input(Filter = Filter, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_dominant_language_detection_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of the entity detection jobs that you have submitted
#'
#' Gets a list of the entity detection jobs that you have submitted.
#'
#' @param Filter Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
#' @param NextToken Identifies the next page of results to return.
#' @param MaxResults The maximum number of results to return in each page. The default is 100.
#'
#' @examples
#'
#' @export
list_entities_detection_jobs <- function (Filter = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListEntitiesDetectionJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_entities_detection_jobs_input(Filter = Filter, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_entities_detection_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get a list of key phrase detection jobs that you have submitted
#'
#' Get a list of key phrase detection jobs that you have submitted.
#'
#' @param Filter Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
#' @param NextToken Identifies the next page of results to return.
#' @param MaxResults The maximum number of results to return in each page. The default is 100.
#'
#' @examples
#'
#' @export
list_key_phrases_detection_jobs <- function (Filter = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListKeyPhrasesDetectionJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_key_phrases_detection_jobs_input(Filter = Filter, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_key_phrases_detection_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of sentiment detection jobs that you have submitted
#'
#' Gets a list of sentiment detection jobs that you have submitted.
#'
#' @param Filter Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
#' @param NextToken Identifies the next page of results to return.
#' @param MaxResults The maximum number of results to return in each page. The default is 100.
#'
#' @examples
#'
#' @export
list_sentiment_detection_jobs <- function (Filter = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListSentimentDetectionJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_sentiment_detection_jobs_input(Filter = Filter, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_sentiment_detection_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of the topic detection jobs that you have submitted
#'
#' Gets a list of the topic detection jobs that you have submitted.
#'
#' @param Filter Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.
#' @param NextToken Identifies the next page of results to return.
#' @param MaxResults The maximum number of results to return in each page. The default is 100.
#'
#' @examples
#'
#' @export
list_topics_detection_jobs <- function (Filter = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListTopicsDetectionJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_topics_detection_jobs_input(Filter = Filter, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_topics_detection_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an asynchronous dominant language detection job for a collection of documents
#'
#' Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.
#'
#' @param InputDataConfig Specifies the format and location of the input data for the job.
#' @param OutputDataConfig Specifies where to send the output files.
#' @param DataAccessRoleArn The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions>.
#' @param JobName An identifier for the job.
#' @param ClientRequestToken A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.
#'
#' @examples
#'
#' @export
start_dominant_language_detection_job <- function (InputDataConfig, 
    OutputDataConfig, DataAccessRoleArn, JobName = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "StartDominantLanguageDetectionJob", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- start_dominant_language_detection_job_input(InputDataConfig = InputDataConfig, 
        OutputDataConfig = OutputDataConfig, DataAccessRoleArn = DataAccessRoleArn, 
        JobName = JobName, ClientRequestToken = ClientRequestToken)
    output <- start_dominant_language_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an asynchronous entity detection job for a collection of documents
#'
#' Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job.
#'
#' @param InputDataConfig Specifies the format and location of the input data for the job.
#' @param OutputDataConfig Specifies where to send the output files.
#' @param DataAccessRoleArn The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions>.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#' @param JobName The identifier of the job.
#' @param ClientRequestToken A unique identifier for the request. If you don\'t set the client request token, Amazon Comprehend generates one.
#'
#' @examples
#'
#' @export
start_entities_detection_job <- function (InputDataConfig, OutputDataConfig, 
    DataAccessRoleArn, LanguageCode, JobName = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "StartEntitiesDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_entities_detection_job_input(InputDataConfig = InputDataConfig, 
        OutputDataConfig = OutputDataConfig, DataAccessRoleArn = DataAccessRoleArn, 
        LanguageCode = LanguageCode, JobName = JobName, ClientRequestToken = ClientRequestToken)
    output <- start_entities_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an asynchronous key phrase detection job for a collection of documents
#'
#' Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.
#'
#' @param InputDataConfig Specifies the format and location of the input data for the job.
#' @param OutputDataConfig Specifies where to send the output files.
#' @param DataAccessRoleArn The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions>.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#' @param JobName The identifier of the job.
#' @param ClientRequestToken A unique identifier for the request. If you don\'t set the client request token, Amazon Comprehend generates one.
#'
#' @examples
#'
#' @export
start_key_phrases_detection_job <- function (InputDataConfig, 
    OutputDataConfig, DataAccessRoleArn, LanguageCode, JobName = NULL, 
    ClientRequestToken = NULL) 
{
    op <- Operation(name = "StartKeyPhrasesDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_key_phrases_detection_job_input(InputDataConfig = InputDataConfig, 
        OutputDataConfig = OutputDataConfig, DataAccessRoleArn = DataAccessRoleArn, 
        LanguageCode = LanguageCode, JobName = JobName, ClientRequestToken = ClientRequestToken)
    output <- start_key_phrases_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an asynchronous sentiment detection job for a collection of documents
#'
#' Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.
#'
#' @param InputDataConfig Specifies the format and location of the input data for the job.
#' @param OutputDataConfig Specifies where to send the output files.
#' @param DataAccessRoleArn The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions>.
#' @param LanguageCode The language of the input documents. You can specify English (\"en\") or Spanish (\"es\"). All documents must be in the same language.
#' @param JobName The identifier of the job.
#' @param ClientRequestToken A unique identifier for the request. If you don\'t set the client request token, Amazon Comprehend generates one.
#'
#' @examples
#'
#' @export
start_sentiment_detection_job <- function (InputDataConfig, OutputDataConfig, 
    DataAccessRoleArn, LanguageCode, JobName = NULL, ClientRequestToken = NULL) 
{
    op <- Operation(name = "StartSentimentDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_sentiment_detection_job_input(InputDataConfig = InputDataConfig, 
        OutputDataConfig = OutputDataConfig, DataAccessRoleArn = DataAccessRoleArn, 
        LanguageCode = LanguageCode, JobName = JobName, ClientRequestToken = ClientRequestToken)
    output <- start_sentiment_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an asynchronous topic detection job
#'
#' Starts an asynchronous topic detection job. Use the `DescribeTopicDetectionJob` operation to track the status of a job.
#'
#' @param InputDataConfig Specifies the format and location of the input data for the job.
#' @param OutputDataConfig Specifies where to send the output files. The output is a compressed archive with two files, `topic-terms.csv` that lists the terms associated with each topic, and `doc-topics.csv` that lists the documents associated with each topic
#' @param DataAccessRoleArn The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data. For more information, see <https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions>.
#' @param JobName The identifier of the job.
#' @param NumberOfTopics The number of topics to detect.
#' @param ClientRequestToken A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.
#'
#' @examples
#'
#' @export
start_topics_detection_job <- function (InputDataConfig, OutputDataConfig, 
    DataAccessRoleArn, JobName = NULL, NumberOfTopics = NULL, 
    ClientRequestToken = NULL) 
{
    op <- Operation(name = "StartTopicsDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_topics_detection_job_input(InputDataConfig = InputDataConfig, 
        OutputDataConfig = OutputDataConfig, DataAccessRoleArn = DataAccessRoleArn, 
        JobName = JobName, NumberOfTopics = NumberOfTopics, ClientRequestToken = ClientRequestToken)
    output <- start_topics_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a dominant language detection job in progress
#'
#' Stops a dominant language detection job in progress.
#' 
#' If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is stopped and put into the `STOPPED` state.
#' 
#' If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.
#' 
#' When a job is stopped, any documents already processed are written to the output location.
#'
#' @param JobId The identifier of the dominant language detection job to stop.
#'
#' @examples
#'
#' @export
stop_dominant_language_detection_job <- function (JobId) 
{
    op <- Operation(name = "StopDominantLanguageDetectionJob", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- stop_dominant_language_detection_job_input(JobId = JobId)
    output <- stop_dominant_language_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops an entities detection job in progress
#'
#' Stops an entities detection job in progress.
#' 
#' If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is stopped and put into the `STOPPED` state.
#' 
#' If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.
#' 
#' When a job is stopped, any documents already processed are written to the output location.
#'
#' @param JobId The identifier of the entities detection job to stop.
#'
#' @examples
#'
#' @export
stop_entities_detection_job <- function (JobId) 
{
    op <- Operation(name = "StopEntitiesDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_entities_detection_job_input(JobId = JobId)
    output <- stop_entities_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a key phrases detection job in progress
#'
#' Stops a key phrases detection job in progress.
#' 
#' If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is stopped and put into the `STOPPED` state.
#' 
#' If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.
#' 
#' When a job is stopped, any documents already processed are written to the output location.
#'
#' @param JobId The identifier of the key phrases detection job to stop.
#'
#' @examples
#'
#' @export
stop_key_phrases_detection_job <- function (JobId) 
{
    op <- Operation(name = "StopKeyPhrasesDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_key_phrases_detection_job_input(JobId = JobId)
    output <- stop_key_phrases_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a sentiment detection job in progress
#'
#' Stops a sentiment detection job in progress.
#' 
#' If the job state is `IN_PROGRESS` the job is marked for termination and put into the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is put into the `COMPLETED` state; otherwise the job is be stopped and put into the `STOPPED` state.
#' 
#' If the job is in the `COMPLETED` or `FAILED` state when you call the `StopDominantLanguageDetectionJob` operation, the operation returns a 400 Internal Request Exception.
#' 
#' When a job is stopped, any documents already processed are written to the output location.
#'
#' @param JobId The identifier of the sentiment detection job to stop.
#'
#' @examples
#'
#' @export
stop_sentiment_detection_job <- function (JobId) 
{
    op <- Operation(name = "StopSentimentDetectionJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_sentiment_detection_job_input(JobId = JobId)
    output <- stop_sentiment_detection_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
