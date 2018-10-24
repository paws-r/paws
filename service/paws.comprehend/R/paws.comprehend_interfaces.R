batch_detect_dominant_language_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TextList = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list")), shape = "BatchDetectDominantLanguageRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_dominant_language_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResultList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), Languages = structure(list(structure(list(LanguageCode = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Score = structure(logical(0), 
        shape = "Float", type = "float")), shape = "DominantLanguage", 
        type = "structure")), shape = "ListOfDominantLanguages", 
        type = "list")), shape = "BatchDetectDominantLanguageItemResult", 
        type = "structure")), shape = "ListOfDetectDominantLanguageResult", 
        type = "list"), ErrorList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), ErrorCode = structure(logical(0), 
        shape = "String", type = "string", min = 1L), ErrorMessage = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "BatchItemError", 
        type = "structure")), shape = "BatchItemErrorList", type = "list")), 
        shape = "BatchDetectDominantLanguageResponse", type = "structure")
    return(populate(args, shape))
}

batch_detect_entities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TextList = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "BatchDetectEntitiesRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_entities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResultList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), Entities = structure(list(structure(list(Score = structure(logical(0), 
        shape = "Float", type = "float"), Type = structure(logical(0), 
        shape = "EntityType", type = "string"), Text = structure(logical(0), 
        shape = "String", type = "string", min = 1L), BeginOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), EndOffset = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Entity", 
        type = "structure")), shape = "ListOfEntities", type = "list")), 
        shape = "BatchDetectEntitiesItemResult", type = "structure")), 
        shape = "ListOfDetectEntitiesResult", type = "list"), 
        ErrorList = structure(list(structure(list(Index = structure(logical(0), 
            shape = "Integer", type = "integer"), ErrorCode = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "BatchItemError", 
            type = "structure")), shape = "BatchItemErrorList", 
            type = "list")), shape = "BatchDetectEntitiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_key_phrases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TextList = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "BatchDetectKeyPhrasesRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_key_phrases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResultList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), KeyPhrases = structure(list(structure(list(Score = structure(logical(0), 
        shape = "Float", type = "float"), Text = structure(logical(0), 
        shape = "String", type = "string", min = 1L), BeginOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), EndOffset = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "KeyPhrase", 
        type = "structure")), shape = "ListOfKeyPhrases", type = "list")), 
        shape = "BatchDetectKeyPhrasesItemResult", type = "structure")), 
        shape = "ListOfDetectKeyPhrasesResult", type = "list"), 
        ErrorList = structure(list(structure(list(Index = structure(logical(0), 
            shape = "Integer", type = "integer"), ErrorCode = structure(logical(0), 
            shape = "String", type = "string", min = 1L), ErrorMessage = structure(logical(0), 
            shape = "String", type = "string", min = 1L)), shape = "BatchItemError", 
            type = "structure")), shape = "BatchItemErrorList", 
            type = "list")), shape = "BatchDetectKeyPhrasesResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_sentiment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TextList = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "BatchDetectSentimentRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_sentiment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResultList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), Sentiment = structure(logical(0), 
        shape = "SentimentType", type = "string"), SentimentScore = structure(list(Positive = structure(logical(0), 
        shape = "Float", type = "float"), Negative = structure(logical(0), 
        shape = "Float", type = "float"), Neutral = structure(logical(0), 
        shape = "Float", type = "float"), Mixed = structure(logical(0), 
        shape = "Float", type = "float")), shape = "SentimentScore", 
        type = "structure")), shape = "BatchDetectSentimentItemResult", 
        type = "structure")), shape = "ListOfDetectSentimentResult", 
        type = "list"), ErrorList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), ErrorCode = structure(logical(0), 
        shape = "String", type = "string", min = 1L), ErrorMessage = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "BatchItemError", 
        type = "structure")), shape = "BatchItemErrorList", type = "list")), 
        shape = "BatchDetectSentimentResponse", type = "structure")
    return(populate(args, shape))
}

batch_detect_syntax_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TextList = structure(list(structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "StringList", 
        type = "list"), LanguageCode = structure(logical(0), 
        shape = "SyntaxLanguageCode", type = "string")), shape = "BatchDetectSyntaxRequest", 
        type = "structure")
    return(populate(args, shape))
}

batch_detect_syntax_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResultList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), SyntaxTokens = structure(list(structure(list(TokenId = structure(logical(0), 
        shape = "Integer", type = "integer"), Text = structure(logical(0), 
        shape = "String", type = "string", min = 1L), BeginOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), EndOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), PartOfSpeech = structure(list(Tag = structure(logical(0), 
        shape = "PartOfSpeechTagType", type = "string"), Score = structure(logical(0), 
        shape = "Float", type = "float")), shape = "PartOfSpeechTag", 
        type = "structure")), shape = "SyntaxToken", type = "structure")), 
        shape = "ListOfSyntaxTokens", type = "list")), shape = "BatchDetectSyntaxItemResult", 
        type = "structure")), shape = "ListOfDetectSyntaxResult", 
        type = "list"), ErrorList = structure(list(structure(list(Index = structure(logical(0), 
        shape = "Integer", type = "integer"), ErrorCode = structure(logical(0), 
        shape = "String", type = "string", min = 1L), ErrorMessage = structure(logical(0), 
        shape = "String", type = "string", min = 1L)), shape = "BatchItemError", 
        type = "structure")), shape = "BatchItemErrorList", type = "list")), 
        shape = "BatchDetectSyntaxResponse", type = "structure")
    return(populate(args, shape))
}

describe_dominant_language_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "DescribeDominantLanguageDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_dominant_language_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DominantLanguageDetectionJobProperties = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "DominantLanguageDetectionJobProperties", type = "structure")), 
        shape = "DescribeDominantLanguageDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_entities_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "DescribeEntitiesDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_entities_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EntitiesDetectionJobProperties = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), DataAccessRoleArn = structure(logical(0), 
            shape = "IamRoleArn", type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "EntitiesDetectionJobProperties", type = "structure")), 
        shape = "DescribeEntitiesDetectionJobResponse", type = "structure")
    return(populate(args, shape))
}

describe_key_phrases_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "DescribeKeyPhrasesDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_key_phrases_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPhrasesDetectionJobProperties = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), DataAccessRoleArn = structure(logical(0), 
            shape = "IamRoleArn", type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "KeyPhrasesDetectionJobProperties", type = "structure")), 
        shape = "DescribeKeyPhrasesDetectionJobResponse", type = "structure")
    return(populate(args, shape))
}

describe_sentiment_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "DescribeSentimentDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_sentiment_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SentimentDetectionJobProperties = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), DataAccessRoleArn = structure(logical(0), 
            shape = "IamRoleArn", type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "SentimentDetectionJobProperties", type = "structure")), 
        shape = "DescribeSentimentDetectionJobResponse", type = "structure")
    return(populate(args, shape))
}

describe_topics_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "DescribeTopicsDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_topics_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicsDetectionJobProperties = structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        NumberOfTopics = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "TopicsDetectionJobProperties", 
        type = "structure")), shape = "DescribeTopicsDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

detect_dominant_language_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "DetectDominantLanguageRequest", 
        type = "structure")
    return(populate(args, shape))
}

detect_dominant_language_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Languages = structure(list(structure(list(LanguageCode = structure(logical(0), 
        shape = "String", type = "string", min = 1L), Score = structure(logical(0), 
        shape = "Float", type = "float")), shape = "DominantLanguage", 
        type = "structure")), shape = "ListOfDominantLanguages", 
        type = "list")), shape = "DetectDominantLanguageResponse", 
        type = "structure")
    return(populate(args, shape))
}

detect_entities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), shape = "String", 
        type = "string", min = 1L), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "DetectEntitiesRequest", 
        type = "structure")
    return(populate(args, shape))
}

detect_entities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Entities = structure(list(structure(list(Score = structure(logical(0), 
        shape = "Float", type = "float"), Type = structure(logical(0), 
        shape = "EntityType", type = "string"), Text = structure(logical(0), 
        shape = "String", type = "string", min = 1L), BeginOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), EndOffset = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "Entity", 
        type = "structure")), shape = "ListOfEntities", type = "list")), 
        shape = "DetectEntitiesResponse", type = "structure")
    return(populate(args, shape))
}

detect_key_phrases_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), shape = "String", 
        type = "string", min = 1L), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "DetectKeyPhrasesRequest", 
        type = "structure")
    return(populate(args, shape))
}

detect_key_phrases_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPhrases = structure(list(structure(list(Score = structure(logical(0), 
        shape = "Float", type = "float"), Text = structure(logical(0), 
        shape = "String", type = "string", min = 1L), BeginOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), EndOffset = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "KeyPhrase", 
        type = "structure")), shape = "ListOfKeyPhrases", type = "list")), 
        shape = "DetectKeyPhrasesResponse", type = "structure")
    return(populate(args, shape))
}

detect_sentiment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), shape = "String", 
        type = "string", min = 1L), LanguageCode = structure(logical(0), 
        shape = "LanguageCode", type = "string")), shape = "DetectSentimentRequest", 
        type = "structure")
    return(populate(args, shape))
}

detect_sentiment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Sentiment = structure(logical(0), 
        shape = "SentimentType", type = "string"), SentimentScore = structure(list(Positive = structure(logical(0), 
        shape = "Float", type = "float"), Negative = structure(logical(0), 
        shape = "Float", type = "float"), Neutral = structure(logical(0), 
        shape = "Float", type = "float"), Mixed = structure(logical(0), 
        shape = "Float", type = "float")), shape = "SentimentScore", 
        type = "structure")), shape = "DetectSentimentResponse", 
        type = "structure")
    return(populate(args, shape))
}

detect_syntax_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Text = structure(logical(0), shape = "String", 
        type = "string", min = 1L), LanguageCode = structure(logical(0), 
        shape = "SyntaxLanguageCode", type = "string")), shape = "DetectSyntaxRequest", 
        type = "structure")
    return(populate(args, shape))
}

detect_syntax_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SyntaxTokens = structure(list(structure(list(TokenId = structure(logical(0), 
        shape = "Integer", type = "integer"), Text = structure(logical(0), 
        shape = "String", type = "string", min = 1L), BeginOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), EndOffset = structure(logical(0), 
        shape = "Integer", type = "integer"), PartOfSpeech = structure(list(Tag = structure(logical(0), 
        shape = "PartOfSpeechTagType", type = "string"), Score = structure(logical(0), 
        shape = "Float", type = "float")), shape = "PartOfSpeechTag", 
        type = "structure")), shape = "SyntaxToken", type = "structure")), 
        shape = "ListOfSyntaxTokens", type = "list")), shape = "DetectSyntaxResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_dominant_language_detection_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(JobName = structure(logical(0), 
        shape = "JobName", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string"), SubmitTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "DominantLanguageDetectionJobFilter", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResultsInteger", type = "integer", max = 500L, 
        min = 1L)), shape = "ListDominantLanguageDetectionJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_dominant_language_detection_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DominantLanguageDetectionJobPropertiesList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "DominantLanguageDetectionJobProperties", type = "structure")), 
        shape = "DominantLanguageDetectionJobPropertiesList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "ListDominantLanguageDetectionJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_entities_detection_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(JobName = structure(logical(0), 
        shape = "JobName", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string"), SubmitTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "EntitiesDetectionJobFilter", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResultsInteger", type = "integer", max = 500L, 
        min = 1L)), shape = "ListEntitiesDetectionJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_entities_detection_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EntitiesDetectionJobPropertiesList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), DataAccessRoleArn = structure(logical(0), 
            shape = "IamRoleArn", type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "EntitiesDetectionJobProperties", type = "structure")), 
        shape = "EntitiesDetectionJobPropertiesList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListEntitiesDetectionJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_key_phrases_detection_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(JobName = structure(logical(0), 
        shape = "JobName", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string"), SubmitTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "KeyPhrasesDetectionJobFilter", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResultsInteger", type = "integer", max = 500L, 
        min = 1L)), shape = "ListKeyPhrasesDetectionJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_key_phrases_detection_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPhrasesDetectionJobPropertiesList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), DataAccessRoleArn = structure(logical(0), 
            shape = "IamRoleArn", type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "KeyPhrasesDetectionJobProperties", type = "structure")), 
        shape = "KeyPhrasesDetectionJobPropertiesList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListKeyPhrasesDetectionJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_sentiment_detection_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(JobName = structure(logical(0), 
        shape = "JobName", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string"), SubmitTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "SentimentDetectionJobFilter", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResultsInteger", type = "integer", max = 500L, 
        min = 1L)), shape = "ListSentimentDetectionJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_sentiment_detection_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SentimentDetectionJobPropertiesList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), DataAccessRoleArn = structure(logical(0), 
            shape = "IamRoleArn", type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+")), 
        shape = "SentimentDetectionJobProperties", type = "structure")), 
        shape = "SentimentDetectionJobPropertiesList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string", 
            min = 1L)), shape = "ListSentimentDetectionJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_topics_detection_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(JobName = structure(logical(0), 
        shape = "JobName", type = "string", max = 256L, min = 1L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string"), SubmitTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), SubmitTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "TopicsDetectionJobFilter", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "String", type = "string", min = 1L), MaxResults = structure(logical(0), 
        shape = "MaxResultsInteger", type = "integer", max = 500L, 
        min = 1L)), shape = "ListTopicsDetectionJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_topics_detection_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TopicsDetectionJobPropertiesList = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", max = 32L, min = 1L), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        JobStatus = structure(logical(0), shape = "JobStatus", 
            type = "string"), Message = structure(logical(0), 
            shape = "AnyLengthString", type = "string"), SubmitTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), InputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
            InputFormat = structure(logical(0), shape = "InputFormat", 
                type = "string")), shape = "InputDataConfig", 
            type = "structure"), OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        NumberOfTopics = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "TopicsDetectionJobProperties", 
        type = "structure")), shape = "TopicsDetectionJobPropertiesList", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string", min = 1L)), shape = "ListTopicsDetectionJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_dominant_language_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InputDataConfig = structure(list(S3Uri = structure(logical(0), 
        shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
        InputFormat = structure(logical(0), shape = "InputFormat", 
            type = "string")), shape = "InputDataConfig", type = "structure"), 
        OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestTokenString", 
            idempotencyToken = TRUE, type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9-]+$")), shape = "StartDominantLanguageDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_dominant_language_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StartDominantLanguageDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_entities_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InputDataConfig = structure(list(S3Uri = structure(logical(0), 
        shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
        InputFormat = structure(logical(0), shape = "InputFormat", 
            type = "string")), shape = "InputDataConfig", type = "structure"), 
        OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestTokenString", idempotencyToken = TRUE, 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-]+$")), 
        shape = "StartEntitiesDetectionJobRequest", type = "structure")
    return(populate(args, shape))
}

start_entities_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StartEntitiesDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_key_phrases_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InputDataConfig = structure(list(S3Uri = structure(logical(0), 
        shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
        InputFormat = structure(logical(0), shape = "InputFormat", 
            type = "string")), shape = "InputDataConfig", type = "structure"), 
        OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestTokenString", idempotencyToken = TRUE, 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-]+$")), 
        shape = "StartKeyPhrasesDetectionJobRequest", type = "structure")
    return(populate(args, shape))
}

start_key_phrases_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StartKeyPhrasesDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_sentiment_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InputDataConfig = structure(list(S3Uri = structure(logical(0), 
        shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
        InputFormat = structure(logical(0), shape = "InputFormat", 
            type = "string")), shape = "InputDataConfig", type = "structure"), 
        OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        LanguageCode = structure(logical(0), shape = "LanguageCode", 
            type = "string"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestTokenString", idempotencyToken = TRUE, 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-]+$")), 
        shape = "StartSentimentDetectionJobRequest", type = "structure")
    return(populate(args, shape))
}

start_sentiment_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StartSentimentDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_topics_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InputDataConfig = structure(list(S3Uri = structure(logical(0), 
        shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"), 
        InputFormat = structure(logical(0), shape = "InputFormat", 
            type = "string")), shape = "InputDataConfig", type = "structure"), 
        OutputDataConfig = structure(list(S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?")), 
            shape = "OutputDataConfig", type = "structure"), 
        DataAccessRoleArn = structure(logical(0), shape = "IamRoleArn", 
            type = "string", pattern = "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"), 
        JobName = structure(logical(0), shape = "JobName", type = "string", 
            max = 256L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"), 
        NumberOfTopics = structure(logical(0), shape = "NumberOfTopicsInteger", 
            type = "integer", max = 100L, min = 1L), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestTokenString", idempotencyToken = TRUE, 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-]+$")), 
        shape = "StartTopicsDetectionJobRequest", type = "structure")
    return(populate(args, shape))
}

start_topics_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StartTopicsDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_dominant_language_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "StopDominantLanguageDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_dominant_language_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StopDominantLanguageDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_entities_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "StopEntitiesDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_entities_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StopEntitiesDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_key_phrases_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "StopKeyPhrasesDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_key_phrases_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StopKeyPhrasesDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_sentiment_detection_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L)), shape = "StopSentimentDetectionJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

stop_sentiment_detection_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 32L, min = 1L), JobStatus = structure(logical(0), 
        shape = "JobStatus", type = "string")), shape = "StopSentimentDetectionJobResponse", 
        type = "structure")
    return(populate(args, shape))
}
