compare_faces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceImage = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        TargetImage = structure(list(Bytes = structure(logical(0), 
            shape = "ImageBlob", type = "blob", max = 5242880L, 
            min = 1L), S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        SimilarityThreshold = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L)), shape = "CompareFacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

compare_faces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceImageFace = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
        shape = "Float", type = "float"), Height = structure(logical(0), 
        shape = "Float", type = "float"), Left = structure(logical(0), 
        shape = "Float", type = "float"), Top = structure(logical(0), 
        shape = "Float", type = "float")), shape = "BoundingBox", 
        type = "structure"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "ComparedSourceImageFace", type = "structure"), 
        FaceMatches = structure(list(structure(list(Similarity = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            Face = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
                shape = "Float", type = "float"), Height = structure(logical(0), 
                shape = "Float", type = "float"), Left = structure(logical(0), 
                shape = "Float", type = "float"), Top = structure(logical(0), 
                shape = "Float", type = "float")), shape = "BoundingBox", 
                type = "structure"), Confidence = structure(logical(0), 
                shape = "Percent", type = "float", max = 100L, 
                min = 0L), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
                shape = "LandmarkType", type = "string"), X = structure(logical(0), 
                shape = "Float", type = "float"), Y = structure(logical(0), 
                shape = "Float", type = "float")), shape = "Landmark", 
                type = "structure")), shape = "Landmarks", type = "list"), 
                Pose = structure(list(Roll = structure(logical(0), 
                  shape = "Degree", type = "float", max = 180L, 
                  min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                  type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                  shape = "Degree", type = "float", max = 180L, 
                  min = -180L)), shape = "Pose", type = "structure"), 
                Quality = structure(list(Brightness = structure(logical(0), 
                  shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                  shape = "Float", type = "float")), shape = "ImageQuality", 
                  type = "structure")), shape = "ComparedFace", 
                type = "structure")), shape = "CompareFacesMatch", 
            type = "structure")), shape = "CompareFacesMatchList", 
            type = "list"), UnmatchedFaces = structure(list(structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            Landmarks = structure(list(structure(list(Type = structure(logical(0), 
                shape = "LandmarkType", type = "string"), X = structure(logical(0), 
                shape = "Float", type = "float"), Y = structure(logical(0), 
                shape = "Float", type = "float")), shape = "Landmark", 
                type = "structure")), shape = "Landmarks", type = "list"), 
            Pose = structure(list(Roll = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L)), shape = "Pose", type = "structure"), 
            Quality = structure(list(Brightness = structure(logical(0), 
                shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                shape = "Float", type = "float")), shape = "ImageQuality", 
                type = "structure")), shape = "ComparedFace", 
            type = "structure")), shape = "CompareFacesUnmatchList", 
            type = "list"), SourceImageOrientationCorrection = structure(logical(0), 
            shape = "OrientationCorrection", type = "string"), 
        TargetImageOrientationCorrection = structure(logical(0), 
            shape = "OrientationCorrection", type = "string")), 
        shape = "CompareFacesResponse", type = "structure")
    return(populate(args, shape))
}

create_collection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), shape = "CreateCollectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_collection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L), CollectionArn = structure(logical(0), 
        shape = "String", type = "string"), FaceModelVersion = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateCollectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_stream_processor_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Input = structure(list(KinesisVideoStream = structure(list(Arn = structure(logical(0), 
        shape = "KinesisVideoArn", type = "string", pattern = "(^arn:([a-z\\d-]+):kinesisvideo:([a-z\\d-]+):\\d{12}:.+$)")), 
        shape = "KinesisVideoStream", type = "structure")), shape = "StreamProcessorInput", 
        type = "structure"), Output = structure(list(KinesisDataStream = structure(list(Arn = structure(logical(0), 
        shape = "KinesisDataArn", type = "string", pattern = "(^arn:([a-z\\d-]+):kinesis:([a-z\\d-]+):\\d{12}:.+$)")), 
        shape = "KinesisDataStream", type = "structure")), shape = "StreamProcessorOutput", 
        type = "structure"), Name = structure(logical(0), shape = "StreamProcessorName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), 
        Settings = structure(list(FaceSearch = structure(list(CollectionId = structure(logical(0), 
            shape = "CollectionId", type = "string", max = 255L, 
            min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), FaceMatchThreshold = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "FaceSearchSettings", type = "structure")), 
            shape = "StreamProcessorSettings", type = "structure"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
        shape = "CreateStreamProcessorRequest", type = "structure")
    return(populate(args, shape))
}

create_stream_processor_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StreamProcessorArn = structure(logical(0), 
        shape = "StreamProcessorArn", type = "string", pattern = "(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:streamprocessor\\/.+$)")), 
        shape = "CreateStreamProcessorResponse", type = "structure")
    return(populate(args, shape))
}

delete_collection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), shape = "DeleteCollectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_collection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StatusCode = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L)), shape = "DeleteCollectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_faces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), FaceIds = structure(list(structure(logical(0), 
        shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "FaceIdList", type = "list", max = 4096L, min = 1L)), 
        shape = "DeleteFacesRequest", type = "structure")
    return(populate(args, shape))
}

delete_faces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletedFaces = structure(list(structure(logical(0), 
        shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")), 
        shape = "FaceIdList", type = "list", max = 4096L, min = 1L)), 
        shape = "DeleteFacesResponse", type = "structure")
    return(populate(args, shape))
}

delete_stream_processor_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "StreamProcessorName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), 
        shape = "DeleteStreamProcessorRequest", type = "structure")
    return(populate(args, shape))
}

delete_stream_processor_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteStreamProcessorResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_collection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), shape = "DescribeCollectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_collection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FaceCount = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), FaceModelVersion = structure(logical(0), 
        shape = "String", type = "string"), CollectionARN = structure(logical(0), 
        shape = "String", type = "string"), CreationTimestamp = structure(logical(0), 
        shape = "DateTime", type = "timestamp")), shape = "DescribeCollectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_stream_processor_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "StreamProcessorName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), 
        shape = "DescribeStreamProcessorRequest", type = "structure")
    return(populate(args, shape))
}

describe_stream_processor_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "StreamProcessorName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), 
        StreamProcessorArn = structure(logical(0), shape = "StreamProcessorArn", 
            type = "string", pattern = "(^arn:[a-z\\d-]+:rekognition:[a-z\\d-]+:\\d{12}:streamprocessor\\/.+$)"), 
        Status = structure(logical(0), shape = "StreamProcessorStatus", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", type = "string"), CreationTimestamp = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), LastUpdateTimestamp = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), Input = structure(list(KinesisVideoStream = structure(list(Arn = structure(logical(0), 
            shape = "KinesisVideoArn", type = "string", pattern = "(^arn:([a-z\\d-]+):kinesisvideo:([a-z\\d-]+):\\d{12}:.+$)")), 
            shape = "KinesisVideoStream", type = "structure")), 
            shape = "StreamProcessorInput", type = "structure"), 
        Output = structure(list(KinesisDataStream = structure(list(Arn = structure(logical(0), 
            shape = "KinesisDataArn", type = "string", pattern = "(^arn:([a-z\\d-]+):kinesis:([a-z\\d-]+):\\d{12}:.+$)")), 
            shape = "KinesisDataStream", type = "structure")), 
            shape = "StreamProcessorOutput", type = "structure"), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"), 
        Settings = structure(list(FaceSearch = structure(list(CollectionId = structure(logical(0), 
            shape = "CollectionId", type = "string", max = 255L, 
            min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), FaceMatchThreshold = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "FaceSearchSettings", type = "structure")), 
            shape = "StreamProcessorSettings", type = "structure")), 
        shape = "DescribeStreamProcessorResponse", type = "structure")
    return(populate(args, shape))
}

detect_faces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        Attributes = structure(list(structure(logical(0), shape = "Attribute", 
            type = "string")), shape = "Attributes", type = "list")), 
        shape = "DetectFacesRequest", type = "structure")
    return(populate(args, shape))
}

detect_faces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FaceDetails = structure(list(structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
        shape = "Float", type = "float"), Height = structure(logical(0), 
        shape = "Float", type = "float"), Left = structure(logical(0), 
        shape = "Float", type = "float"), Top = structure(logical(0), 
        shape = "Float", type = "float")), shape = "BoundingBox", 
        type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L), High = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L)), shape = "AgeRange", 
        type = "structure"), Smile = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Smile", type = "structure"), Eyeglasses = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Eyeglasses", type = "structure"), Sunglasses = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Sunglasses", type = "structure"), Gender = structure(list(Value = structure(logical(0), 
        shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Gender", type = "structure"), Beard = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Beard", type = "structure"), Mustache = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Mustache", type = "structure"), EyesOpen = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "EyeOpen", type = "structure"), MouthOpen = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "MouthOpen", type = "structure"), Emotions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Emotion", type = "structure")), shape = "Emotions", 
        type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
        shape = "LandmarkType", type = "string"), X = structure(logical(0), 
        shape = "Float", type = "float"), Y = structure(logical(0), 
        shape = "Float", type = "float")), shape = "Landmark", 
        type = "structure")), shape = "Landmarks", type = "list"), 
        Pose = structure(list(Roll = structure(logical(0), shape = "Degree", 
            type = "float", max = 180L, min = -180L), Yaw = structure(logical(0), 
            shape = "Degree", type = "float", max = 180L, min = -180L), 
            Pitch = structure(logical(0), shape = "Degree", type = "float", 
                max = 180L, min = -180L)), shape = "Pose", type = "structure"), 
        Quality = structure(list(Brightness = structure(logical(0), 
            shape = "Float", type = "float"), Sharpness = structure(logical(0), 
            shape = "Float", type = "float")), shape = "ImageQuality", 
            type = "structure"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "FaceDetail", type = "structure")), shape = "FaceDetailList", 
        type = "list"), OrientationCorrection = structure(logical(0), 
        shape = "OrientationCorrection", type = "string")), shape = "DetectFacesResponse", 
        type = "structure")
    return(populate(args, shape))
}

detect_labels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        MaxLabels = structure(logical(0), shape = "UInteger", 
            type = "integer", min = 0L), MinConfidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "DetectLabelsRequest", type = "structure")
    return(populate(args, shape))
}

detect_labels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Labels = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Label", type = "structure")), shape = "Labels", 
        type = "list"), OrientationCorrection = structure(logical(0), 
        shape = "OrientationCorrection", type = "string")), shape = "DetectLabelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

detect_moderation_labels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        MinConfidence = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L)), shape = "DetectModerationLabelsRequest", 
        type = "structure")
    return(populate(args, shape))
}

detect_moderation_labels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ModerationLabels = structure(list(structure(list(Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L), 
        Name = structure(logical(0), shape = "String", type = "string"), 
        ParentName = structure(logical(0), shape = "String", 
            type = "string")), shape = "ModerationLabel", type = "structure")), 
        shape = "ModerationLabels", type = "list")), shape = "DetectModerationLabelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

detect_text_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure")), 
        shape = "DetectTextRequest", type = "structure")
    return(populate(args, shape))
}

detect_text_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TextDetections = structure(list(structure(list(DetectedText = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "TextTypes", type = "string"), Id = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L), ParentId = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L), 
        Geometry = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), Polygon = structure(list(structure(list(X = structure(logical(0), 
            shape = "Float", type = "float"), Y = structure(logical(0), 
            shape = "Float", type = "float")), shape = "Point", 
            type = "structure")), shape = "Polygon", type = "list")), 
            shape = "Geometry", type = "structure")), shape = "TextDetection", 
        type = "structure")), shape = "TextDetectionList", type = "list")), 
        shape = "DetectTextResponse", type = "structure")
    return(populate(args, shape))
}

get_celebrity_info_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Id = structure(logical(0), shape = "RekognitionUniqueId", 
        type = "string", pattern = "[0-9A-Za-z]*")), shape = "GetCelebrityInfoRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_celebrity_info_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Urls = structure(list(structure(logical(0), 
        shape = "Url", type = "string")), shape = "Urls", type = "list"), 
        Name = structure(logical(0), shape = "String", type = "string")), 
        shape = "GetCelebrityInfoResponse", type = "structure")
    return(populate(args, shape))
}

get_celebrity_recognition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L), 
        SortBy = structure(logical(0), shape = "CelebrityRecognitionSortBy", 
            type = "string")), shape = "GetCelebrityRecognitionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_celebrity_recognition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobStatus = structure(logical(0), 
        shape = "VideoJobStatus", type = "string"), StatusMessage = structure(logical(0), 
        shape = "StatusMessage", type = "string"), VideoMetadata = structure(list(Codec = structure(logical(0), 
        shape = "String", type = "string"), DurationMillis = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), Format = structure(logical(0), 
        shape = "String", type = "string"), FrameRate = structure(logical(0), 
        shape = "Float", type = "float"), FrameHeight = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), FrameWidth = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L)), shape = "VideoMetadata", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        Celebrities = structure(list(structure(list(Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "long"), Celebrity = structure(list(Urls = structure(list(structure(logical(0), 
            shape = "Url", type = "string")), shape = "Urls", 
            type = "list"), Name = structure(logical(0), shape = "String", 
            type = "string"), Id = structure(logical(0), shape = "RekognitionUniqueId", 
            type = "string", pattern = "[0-9A-Za-z]*"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            BoundingBox = structure(list(Width = structure(logical(0), 
                shape = "Float", type = "float"), Height = structure(logical(0), 
                shape = "Float", type = "float"), Left = structure(logical(0), 
                shape = "Float", type = "float"), Top = structure(logical(0), 
                shape = "Float", type = "float")), shape = "BoundingBox", 
                type = "structure"), Face = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
                shape = "Float", type = "float"), Height = structure(logical(0), 
                shape = "Float", type = "float"), Left = structure(logical(0), 
                shape = "Float", type = "float"), Top = structure(logical(0), 
                shape = "Float", type = "float")), shape = "BoundingBox", 
                type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
                shape = "UInteger", type = "integer", min = 0L), 
                High = structure(logical(0), shape = "UInteger", 
                  type = "integer", min = 0L)), shape = "AgeRange", 
                type = "structure"), Smile = structure(list(Value = structure(logical(0), 
                shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                shape = "Percent", type = "float", max = 100L, 
                min = 0L)), shape = "Smile", type = "structure"), 
                Eyeglasses = structure(list(Value = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "Eyeglasses", type = "structure"), 
                Sunglasses = structure(list(Value = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "Sunglasses", type = "structure"), 
                Gender = structure(list(Value = structure(logical(0), 
                  shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "Gender", type = "structure"), 
                Beard = structure(list(Value = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "Beard", type = "structure"), 
                Mustache = structure(list(Value = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "Mustache", type = "structure"), 
                EyesOpen = structure(list(Value = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "EyeOpen", type = "structure"), 
                MouthOpen = structure(list(Value = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "MouthOpen", type = "structure"), 
                Emotions = structure(list(structure(list(Type = structure(logical(0), 
                  shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "Emotion", type = "structure")), 
                  shape = "Emotions", type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
                  shape = "LandmarkType", type = "string"), X = structure(logical(0), 
                  shape = "Float", type = "float"), Y = structure(logical(0), 
                  shape = "Float", type = "float")), shape = "Landmark", 
                  type = "structure")), shape = "Landmarks", 
                  type = "list"), Pose = structure(list(Roll = structure(logical(0), 
                  shape = "Degree", type = "float", max = 180L, 
                  min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                  type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                  shape = "Degree", type = "float", max = 180L, 
                  min = -180L)), shape = "Pose", type = "structure"), 
                Quality = structure(list(Brightness = structure(logical(0), 
                  shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                  shape = "Float", type = "float")), shape = "ImageQuality", 
                  type = "structure"), Confidence = structure(logical(0), 
                  shape = "Percent", type = "float", max = 100L, 
                  min = 0L)), shape = "FaceDetail", type = "structure")), 
            shape = "CelebrityDetail", type = "structure")), 
            shape = "CelebrityRecognition", type = "structure")), 
            shape = "CelebrityRecognitions", type = "list")), 
        shape = "GetCelebrityRecognitionResponse", type = "structure")
    return(populate(args, shape))
}

get_content_moderation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L), 
        SortBy = structure(logical(0), shape = "ContentModerationSortBy", 
            type = "string")), shape = "GetContentModerationRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_content_moderation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobStatus = structure(logical(0), 
        shape = "VideoJobStatus", type = "string"), StatusMessage = structure(logical(0), 
        shape = "StatusMessage", type = "string"), VideoMetadata = structure(list(Codec = structure(logical(0), 
        shape = "String", type = "string"), DurationMillis = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), Format = structure(logical(0), 
        shape = "String", type = "string"), FrameRate = structure(logical(0), 
        shape = "Float", type = "float"), FrameHeight = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), FrameWidth = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L)), shape = "VideoMetadata", 
        type = "structure"), ModerationLabels = structure(list(structure(list(Timestamp = structure(logical(0), 
        shape = "Timestamp", type = "long"), ModerationLabel = structure(list(Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L), 
        Name = structure(logical(0), shape = "String", type = "string"), 
        ParentName = structure(logical(0), shape = "String", 
            type = "string")), shape = "ModerationLabel", type = "structure")), 
        shape = "ContentModerationDetection", type = "structure")), 
        shape = "ContentModerationDetections", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 255L)), shape = "GetContentModerationResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_face_detection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L)), 
        shape = "GetFaceDetectionRequest", type = "structure")
    return(populate(args, shape))
}

get_face_detection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobStatus = structure(logical(0), 
        shape = "VideoJobStatus", type = "string"), StatusMessage = structure(logical(0), 
        shape = "StatusMessage", type = "string"), VideoMetadata = structure(list(Codec = structure(logical(0), 
        shape = "String", type = "string"), DurationMillis = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), Format = structure(logical(0), 
        shape = "String", type = "string"), FrameRate = structure(logical(0), 
        shape = "Float", type = "float"), FrameHeight = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), FrameWidth = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L)), shape = "VideoMetadata", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        Faces = structure(list(structure(list(Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "long"), Face = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
            shape = "UInteger", type = "integer", min = 0L), 
            High = structure(logical(0), shape = "UInteger", 
                type = "integer", min = 0L)), shape = "AgeRange", 
            type = "structure"), Smile = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Smile", type = "structure"), Eyeglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Eyeglasses", type = "structure"), Sunglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Sunglasses", type = "structure"), Gender = structure(list(Value = structure(logical(0), 
            shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Gender", type = "structure"), Beard = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Beard", type = "structure"), Mustache = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Mustache", type = "structure"), EyesOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "EyeOpen", type = "structure"), MouthOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "MouthOpen", type = "structure"), Emotions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Emotion", type = "structure")), shape = "Emotions", 
            type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
            shape = "LandmarkType", type = "string"), X = structure(logical(0), 
            shape = "Float", type = "float"), Y = structure(logical(0), 
            shape = "Float", type = "float")), shape = "Landmark", 
            type = "structure")), shape = "Landmarks", type = "list"), 
            Pose = structure(list(Roll = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L)), shape = "Pose", type = "structure"), 
            Quality = structure(list(Brightness = structure(logical(0), 
                shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                shape = "Float", type = "float")), shape = "ImageQuality", 
                type = "structure"), Confidence = structure(logical(0), 
                shape = "Percent", type = "float", max = 100L, 
                min = 0L)), shape = "FaceDetail", type = "structure")), 
            shape = "FaceDetection", type = "structure")), shape = "FaceDetections", 
            type = "list")), shape = "GetFaceDetectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_face_search_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L), 
        SortBy = structure(logical(0), shape = "FaceSearchSortBy", 
            type = "string")), shape = "GetFaceSearchRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_face_search_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobStatus = structure(logical(0), 
        shape = "VideoJobStatus", type = "string"), StatusMessage = structure(logical(0), 
        shape = "StatusMessage", type = "string"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        VideoMetadata = structure(list(Codec = structure(logical(0), 
            shape = "String", type = "string"), DurationMillis = structure(logical(0), 
            shape = "ULong", type = "long", min = 0L), Format = structure(logical(0), 
            shape = "String", type = "string"), FrameRate = structure(logical(0), 
            shape = "Float", type = "float"), FrameHeight = structure(logical(0), 
            shape = "ULong", type = "long", min = 0L), FrameWidth = structure(logical(0), 
            shape = "ULong", type = "long", min = 0L)), shape = "VideoMetadata", 
            type = "structure"), Persons = structure(list(structure(list(Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "long"), Person = structure(list(Index = structure(logical(0), 
            shape = "PersonIndex", type = "long"), BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), Face = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
            shape = "UInteger", type = "integer", min = 0L), 
            High = structure(logical(0), shape = "UInteger", 
                type = "integer", min = 0L)), shape = "AgeRange", 
            type = "structure"), Smile = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Smile", type = "structure"), Eyeglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Eyeglasses", type = "structure"), Sunglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Sunglasses", type = "structure"), Gender = structure(list(Value = structure(logical(0), 
            shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Gender", type = "structure"), Beard = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Beard", type = "structure"), Mustache = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Mustache", type = "structure"), EyesOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "EyeOpen", type = "structure"), MouthOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "MouthOpen", type = "structure"), Emotions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Emotion", type = "structure")), shape = "Emotions", 
            type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
            shape = "LandmarkType", type = "string"), X = structure(logical(0), 
            shape = "Float", type = "float"), Y = structure(logical(0), 
            shape = "Float", type = "float")), shape = "Landmark", 
            type = "structure")), shape = "Landmarks", type = "list"), 
            Pose = structure(list(Roll = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L)), shape = "Pose", type = "structure"), 
            Quality = structure(list(Brightness = structure(logical(0), 
                shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                shape = "Float", type = "float")), shape = "ImageQuality", 
                type = "structure"), Confidence = structure(logical(0), 
                shape = "Percent", type = "float", max = 100L, 
                min = 0L)), shape = "FaceDetail", type = "structure")), 
            shape = "PersonDetail", type = "structure"), FaceMatches = structure(list(structure(list(Similarity = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            Face = structure(list(FaceId = structure(logical(0), 
                shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
                BoundingBox = structure(list(Width = structure(logical(0), 
                  shape = "Float", type = "float"), Height = structure(logical(0), 
                  shape = "Float", type = "float"), Left = structure(logical(0), 
                  shape = "Float", type = "float"), Top = structure(logical(0), 
                  shape = "Float", type = "float")), shape = "BoundingBox", 
                  type = "structure"), ImageId = structure(logical(0), 
                  shape = "ImageId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
                ExternalImageId = structure(logical(0), shape = "ExternalImageId", 
                  type = "string", max = 255L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+"), 
                Confidence = structure(logical(0), shape = "Percent", 
                  type = "float", max = 100L, min = 0L)), shape = "Face", 
                type = "structure")), shape = "FaceMatch", type = "structure")), 
            shape = "FaceMatchList", type = "list")), shape = "PersonMatch", 
            type = "structure")), shape = "PersonMatches", type = "list")), 
        shape = "GetFaceSearchResponse", type = "structure")
    return(populate(args, shape))
}

get_label_detection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L), 
        SortBy = structure(logical(0), shape = "LabelDetectionSortBy", 
            type = "string")), shape = "GetLabelDetectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_label_detection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobStatus = structure(logical(0), 
        shape = "VideoJobStatus", type = "string"), StatusMessage = structure(logical(0), 
        shape = "StatusMessage", type = "string"), VideoMetadata = structure(list(Codec = structure(logical(0), 
        shape = "String", type = "string"), DurationMillis = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), Format = structure(logical(0), 
        shape = "String", type = "string"), FrameRate = structure(logical(0), 
        shape = "Float", type = "float"), FrameHeight = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), FrameWidth = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L)), shape = "VideoMetadata", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        Labels = structure(list(structure(list(Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "long"), Label = structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Label", type = "structure")), shape = "LabelDetection", 
            type = "structure")), shape = "LabelDetections", 
            type = "list")), shape = "GetLabelDetectionResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_person_tracking_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L), NextToken = structure(logical(0), 
            shape = "PaginationToken", type = "string", max = 255L), 
        SortBy = structure(logical(0), shape = "PersonTrackingSortBy", 
            type = "string")), shape = "GetPersonTrackingRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_person_tracking_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobStatus = structure(logical(0), 
        shape = "VideoJobStatus", type = "string"), StatusMessage = structure(logical(0), 
        shape = "StatusMessage", type = "string"), VideoMetadata = structure(list(Codec = structure(logical(0), 
        shape = "String", type = "string"), DurationMillis = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), Format = structure(logical(0), 
        shape = "String", type = "string"), FrameRate = structure(logical(0), 
        shape = "Float", type = "float"), FrameHeight = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L), FrameWidth = structure(logical(0), 
        shape = "ULong", type = "long", min = 0L)), shape = "VideoMetadata", 
        type = "structure"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        Persons = structure(list(structure(list(Timestamp = structure(logical(0), 
            shape = "Timestamp", type = "long"), Person = structure(list(Index = structure(logical(0), 
            shape = "PersonIndex", type = "long"), BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), Face = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
            shape = "UInteger", type = "integer", min = 0L), 
            High = structure(logical(0), shape = "UInteger", 
                type = "integer", min = 0L)), shape = "AgeRange", 
            type = "structure"), Smile = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Smile", type = "structure"), Eyeglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Eyeglasses", type = "structure"), Sunglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Sunglasses", type = "structure"), Gender = structure(list(Value = structure(logical(0), 
            shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Gender", type = "structure"), Beard = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Beard", type = "structure"), Mustache = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Mustache", type = "structure"), EyesOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "EyeOpen", type = "structure"), MouthOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "MouthOpen", type = "structure"), Emotions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Emotion", type = "structure")), shape = "Emotions", 
            type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
            shape = "LandmarkType", type = "string"), X = structure(logical(0), 
            shape = "Float", type = "float"), Y = structure(logical(0), 
            shape = "Float", type = "float")), shape = "Landmark", 
            type = "structure")), shape = "Landmarks", type = "list"), 
            Pose = structure(list(Roll = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L)), shape = "Pose", type = "structure"), 
            Quality = structure(list(Brightness = structure(logical(0), 
                shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                shape = "Float", type = "float")), shape = "ImageQuality", 
                type = "structure"), Confidence = structure(logical(0), 
                shape = "Percent", type = "float", max = 100L, 
                min = 0L)), shape = "FaceDetail", type = "structure")), 
            shape = "PersonDetail", type = "structure")), shape = "PersonDetection", 
            type = "structure")), shape = "PersonDetections", 
            type = "list")), shape = "GetPersonTrackingResponse", 
        type = "structure")
    return(populate(args, shape))
}

index_faces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        ExternalImageId = structure(logical(0), shape = "ExternalImageId", 
            type = "string", max = 255L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+"), 
        DetectionAttributes = structure(list(structure(logical(0), 
            shape = "Attribute", type = "string")), shape = "Attributes", 
            type = "list"), MaxFaces = structure(logical(0), 
            shape = "MaxFacesToIndex", type = "integer", min = 1L), 
        QualityFilter = structure(logical(0), shape = "QualityFilter", 
            type = "string")), shape = "IndexFacesRequest", type = "structure")
    return(populate(args, shape))
}

index_faces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FaceRecords = structure(list(structure(list(Face = structure(list(FaceId = structure(logical(0), 
        shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), ImageId = structure(logical(0), 
            shape = "ImageId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ExternalImageId = structure(logical(0), shape = "ExternalImageId", 
            type = "string", max = 255L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+"), 
        Confidence = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L)), shape = "Face", 
        type = "structure"), FaceDetail = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
        shape = "Float", type = "float"), Height = structure(logical(0), 
        shape = "Float", type = "float"), Left = structure(logical(0), 
        shape = "Float", type = "float"), Top = structure(logical(0), 
        shape = "Float", type = "float")), shape = "BoundingBox", 
        type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L), High = structure(logical(0), 
        shape = "UInteger", type = "integer", min = 0L)), shape = "AgeRange", 
        type = "structure"), Smile = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Smile", type = "structure"), Eyeglasses = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Eyeglasses", type = "structure"), Sunglasses = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Sunglasses", type = "structure"), Gender = structure(list(Value = structure(logical(0), 
        shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Gender", type = "structure"), Beard = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Beard", type = "structure"), Mustache = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Mustache", type = "structure"), EyesOpen = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "EyeOpen", type = "structure"), MouthOpen = structure(list(Value = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "MouthOpen", type = "structure"), Emotions = structure(list(structure(list(Type = structure(logical(0), 
        shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Emotion", type = "structure")), shape = "Emotions", 
        type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
        shape = "LandmarkType", type = "string"), X = structure(logical(0), 
        shape = "Float", type = "float"), Y = structure(logical(0), 
        shape = "Float", type = "float")), shape = "Landmark", 
        type = "structure")), shape = "Landmarks", type = "list"), 
        Pose = structure(list(Roll = structure(logical(0), shape = "Degree", 
            type = "float", max = 180L, min = -180L), Yaw = structure(logical(0), 
            shape = "Degree", type = "float", max = 180L, min = -180L), 
            Pitch = structure(logical(0), shape = "Degree", type = "float", 
                max = 180L, min = -180L)), shape = "Pose", type = "structure"), 
        Quality = structure(list(Brightness = structure(logical(0), 
            shape = "Float", type = "float"), Sharpness = structure(logical(0), 
            shape = "Float", type = "float")), shape = "ImageQuality", 
            type = "structure"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "FaceDetail", type = "structure")), shape = "FaceRecord", 
        type = "structure")), shape = "FaceRecordList", type = "list"), 
        OrientationCorrection = structure(logical(0), shape = "OrientationCorrection", 
            type = "string"), FaceModelVersion = structure(logical(0), 
            shape = "String", type = "string"), UnindexedFaces = structure(list(structure(list(Reasons = structure(list(structure(logical(0), 
            shape = "Reason", type = "string")), shape = "Reasons", 
            type = "list"), FaceDetail = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), AgeRange = structure(list(Low = structure(logical(0), 
            shape = "UInteger", type = "integer", min = 0L), 
            High = structure(logical(0), shape = "UInteger", 
                type = "integer", min = 0L)), shape = "AgeRange", 
            type = "structure"), Smile = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Smile", type = "structure"), Eyeglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Eyeglasses", type = "structure"), Sunglasses = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Sunglasses", type = "structure"), Gender = structure(list(Value = structure(logical(0), 
            shape = "GenderType", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Gender", type = "structure"), Beard = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Beard", type = "structure"), Mustache = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Mustache", type = "structure"), EyesOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "EyeOpen", type = "structure"), MouthOpen = structure(list(Value = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "MouthOpen", type = "structure"), Emotions = structure(list(structure(list(Type = structure(logical(0), 
            shape = "EmotionName", type = "string"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
            shape = "Emotion", type = "structure")), shape = "Emotions", 
            type = "list"), Landmarks = structure(list(structure(list(Type = structure(logical(0), 
            shape = "LandmarkType", type = "string"), X = structure(logical(0), 
            shape = "Float", type = "float"), Y = structure(logical(0), 
            shape = "Float", type = "float")), shape = "Landmark", 
            type = "structure")), shape = "Landmarks", type = "list"), 
            Pose = structure(list(Roll = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L)), shape = "Pose", type = "structure"), 
            Quality = structure(list(Brightness = structure(logical(0), 
                shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                shape = "Float", type = "float")), shape = "ImageQuality", 
                type = "structure"), Confidence = structure(logical(0), 
                shape = "Percent", type = "float", max = 100L, 
                min = 0L)), shape = "FaceDetail", type = "structure")), 
            shape = "UnindexedFace", type = "structure")), shape = "UnindexedFaces", 
            type = "list")), shape = "IndexFacesResponse", type = "structure")
    return(populate(args, shape))
}

list_collections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 4096L, min = 0L)), shape = "ListCollectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_collections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionIds = structure(list(structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), shape = "CollectionIdList", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 255L), FaceModelVersions = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FaceModelVersionList", 
        type = "list")), shape = "ListCollectionsResponse", type = "structure")
    return(populate(args, shape))
}

list_faces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        MaxResults = structure(logical(0), shape = "PageSize", 
            type = "integer", max = 4096L, min = 0L)), shape = "ListFacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_faces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Faces = structure(list(structure(list(FaceId = structure(logical(0), 
        shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), ImageId = structure(logical(0), 
            shape = "ImageId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        ExternalImageId = structure(logical(0), shape = "ExternalImageId", 
            type = "string", max = 255L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+"), 
        Confidence = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L)), shape = "Face", 
        type = "structure")), shape = "FaceList", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string"), 
        FaceModelVersion = structure(logical(0), shape = "String", 
            type = "string")), shape = "ListFacesResponse", type = "structure")
    return(populate(args, shape))
}

list_stream_processors_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", min = 1L)), shape = "ListStreamProcessorsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_stream_processors_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", max = 255L), 
        StreamProcessors = structure(list(structure(list(Name = structure(logical(0), 
            shape = "StreamProcessorName", type = "string", max = 128L, 
            min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), Status = structure(logical(0), 
            shape = "StreamProcessorStatus", type = "string")), 
            shape = "StreamProcessor", type = "structure")), 
            shape = "StreamProcessorList", type = "list")), shape = "ListStreamProcessorsResponse", 
        type = "structure")
    return(populate(args, shape))
}

recognize_celebrities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure")), 
        shape = "RecognizeCelebritiesRequest", type = "structure")
    return(populate(args, shape))
}

recognize_celebrities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CelebrityFaces = structure(list(structure(list(Urls = structure(list(structure(logical(0), 
        shape = "Url", type = "string")), shape = "Urls", type = "list"), 
        Name = structure(logical(0), shape = "String", type = "string"), 
        Id = structure(logical(0), shape = "RekognitionUniqueId", 
            type = "string", pattern = "[0-9A-Za-z]*"), Face = structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
            shape = "Float", type = "float"), Height = structure(logical(0), 
            shape = "Float", type = "float"), Left = structure(logical(0), 
            shape = "Float", type = "float"), Top = structure(logical(0), 
            shape = "Float", type = "float")), shape = "BoundingBox", 
            type = "structure"), Confidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            Landmarks = structure(list(structure(list(Type = structure(logical(0), 
                shape = "LandmarkType", type = "string"), X = structure(logical(0), 
                shape = "Float", type = "float"), Y = structure(logical(0), 
                shape = "Float", type = "float")), shape = "Landmark", 
                type = "structure")), shape = "Landmarks", type = "list"), 
            Pose = structure(list(Roll = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L), Yaw = structure(logical(0), shape = "Degree", 
                type = "float", max = 180L, min = -180L), Pitch = structure(logical(0), 
                shape = "Degree", type = "float", max = 180L, 
                min = -180L)), shape = "Pose", type = "structure"), 
            Quality = structure(list(Brightness = structure(logical(0), 
                shape = "Float", type = "float"), Sharpness = structure(logical(0), 
                shape = "Float", type = "float")), shape = "ImageQuality", 
                type = "structure")), shape = "ComparedFace", 
            type = "structure"), MatchConfidence = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "Celebrity", type = "structure")), shape = "CelebrityList", 
        type = "list"), UnrecognizedFaces = structure(list(structure(list(BoundingBox = structure(list(Width = structure(logical(0), 
        shape = "Float", type = "float"), Height = structure(logical(0), 
        shape = "Float", type = "float"), Left = structure(logical(0), 
        shape = "Float", type = "float"), Top = structure(logical(0), 
        shape = "Float", type = "float")), shape = "BoundingBox", 
        type = "structure"), Confidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L), 
        Landmarks = structure(list(structure(list(Type = structure(logical(0), 
            shape = "LandmarkType", type = "string"), X = structure(logical(0), 
            shape = "Float", type = "float"), Y = structure(logical(0), 
            shape = "Float", type = "float")), shape = "Landmark", 
            type = "structure")), shape = "Landmarks", type = "list"), 
        Pose = structure(list(Roll = structure(logical(0), shape = "Degree", 
            type = "float", max = 180L, min = -180L), Yaw = structure(logical(0), 
            shape = "Degree", type = "float", max = 180L, min = -180L), 
            Pitch = structure(logical(0), shape = "Degree", type = "float", 
                max = 180L, min = -180L)), shape = "Pose", type = "structure"), 
        Quality = structure(list(Brightness = structure(logical(0), 
            shape = "Float", type = "float"), Sharpness = structure(logical(0), 
            shape = "Float", type = "float")), shape = "ImageQuality", 
            type = "structure")), shape = "ComparedFace", type = "structure")), 
        shape = "ComparedFaceList", type = "list"), OrientationCorrection = structure(logical(0), 
        shape = "OrientationCorrection", type = "string")), shape = "RecognizeCelebritiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_faces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), FaceId = structure(logical(0), 
        shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        MaxFaces = structure(logical(0), shape = "MaxFaces", 
            type = "integer", max = 4096L, min = 1L), FaceMatchThreshold = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "SearchFacesRequest", type = "structure")
    return(populate(args, shape))
}

search_faces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SearchedFaceId = structure(logical(0), 
        shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
        FaceMatches = structure(list(structure(list(Similarity = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            Face = structure(list(FaceId = structure(logical(0), 
                shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
                BoundingBox = structure(list(Width = structure(logical(0), 
                  shape = "Float", type = "float"), Height = structure(logical(0), 
                  shape = "Float", type = "float"), Left = structure(logical(0), 
                  shape = "Float", type = "float"), Top = structure(logical(0), 
                  shape = "Float", type = "float")), shape = "BoundingBox", 
                  type = "structure"), ImageId = structure(logical(0), 
                  shape = "ImageId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
                ExternalImageId = structure(logical(0), shape = "ExternalImageId", 
                  type = "string", max = 255L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+"), 
                Confidence = structure(logical(0), shape = "Percent", 
                  type = "float", max = 100L, min = 0L)), shape = "Face", 
                type = "structure")), shape = "FaceMatch", type = "structure")), 
            shape = "FaceMatchList", type = "list"), FaceModelVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "SearchFacesResponse", 
        type = "structure")
    return(populate(args, shape))
}

search_faces_by_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CollectionId = structure(logical(0), 
        shape = "CollectionId", type = "string", max = 255L, 
        min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), Image = structure(list(Bytes = structure(logical(0), 
        shape = "ImageBlob", type = "blob", max = 5242880L, min = 1L), 
        S3Object = structure(list(Bucket = structure(logical(0), 
            shape = "S3Bucket", type = "string", max = 255L, 
            min = 3L, pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
            shape = "S3ObjectName", type = "string", max = 1024L, 
            min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
            type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
            type = "structure")), shape = "Image", type = "structure"), 
        MaxFaces = structure(logical(0), shape = "MaxFaces", 
            type = "integer", max = 4096L, min = 1L), FaceMatchThreshold = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L)), 
        shape = "SearchFacesByImageRequest", type = "structure")
    return(populate(args, shape))
}

search_faces_by_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SearchedFaceBoundingBox = structure(list(Width = structure(logical(0), 
        shape = "Float", type = "float"), Height = structure(logical(0), 
        shape = "Float", type = "float"), Left = structure(logical(0), 
        shape = "Float", type = "float"), Top = structure(logical(0), 
        shape = "Float", type = "float")), shape = "BoundingBox", 
        type = "structure"), SearchedFaceConfidence = structure(logical(0), 
        shape = "Percent", type = "float", max = 100L, min = 0L), 
        FaceMatches = structure(list(structure(list(Similarity = structure(logical(0), 
            shape = "Percent", type = "float", max = 100L, min = 0L), 
            Face = structure(list(FaceId = structure(logical(0), 
                shape = "FaceId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
                BoundingBox = structure(list(Width = structure(logical(0), 
                  shape = "Float", type = "float"), Height = structure(logical(0), 
                  shape = "Float", type = "float"), Left = structure(logical(0), 
                  shape = "Float", type = "float"), Top = structure(logical(0), 
                  shape = "Float", type = "float")), shape = "BoundingBox", 
                  type = "structure"), ImageId = structure(logical(0), 
                  shape = "ImageId", type = "string", pattern = "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"), 
                ExternalImageId = structure(logical(0), shape = "ExternalImageId", 
                  type = "string", max = 255L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+"), 
                Confidence = structure(logical(0), shape = "Percent", 
                  type = "float", max = 100L, min = 0L)), shape = "Face", 
                type = "structure")), shape = "FaceMatch", type = "structure")), 
            shape = "FaceMatchList", type = "list"), FaceModelVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "SearchFacesByImageResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_celebrity_recognition_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Video = structure(list(S3Object = structure(list(Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L, min = 3L, 
        pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
        shape = "S3ObjectName", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
        type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
        type = "structure")), shape = "Video", type = "structure"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        NotificationChannel = structure(list(SNSTopicArn = structure(logical(0), 
            shape = "SNSTopicArn", type = "string", pattern = "(^arn:aws:sns:.*:\\w{12}:.+$)"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "NotificationChannel", type = "structure"), 
        JobTag = structure(logical(0), shape = "JobTag", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+")), 
        shape = "StartCelebrityRecognitionRequest", type = "structure")
    return(populate(args, shape))
}

start_celebrity_recognition_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$")), 
        shape = "StartCelebrityRecognitionResponse", type = "structure")
    return(populate(args, shape))
}

start_content_moderation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Video = structure(list(S3Object = structure(list(Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L, min = 3L, 
        pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
        shape = "S3ObjectName", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
        type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
        type = "structure")), shape = "Video", type = "structure"), 
        MinConfidence = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", type = "string", max = 64L, 
            min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), NotificationChannel = structure(list(SNSTopicArn = structure(logical(0), 
            shape = "SNSTopicArn", type = "string", pattern = "(^arn:aws:sns:.*:\\w{12}:.+$)"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "NotificationChannel", type = "structure"), 
        JobTag = structure(logical(0), shape = "JobTag", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+")), 
        shape = "StartContentModerationRequest", type = "structure")
    return(populate(args, shape))
}

start_content_moderation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$")), 
        shape = "StartContentModerationResponse", type = "structure")
    return(populate(args, shape))
}

start_face_detection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Video = structure(list(S3Object = structure(list(Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L, min = 3L, 
        pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
        shape = "S3ObjectName", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
        type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
        type = "structure")), shape = "Video", type = "structure"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        NotificationChannel = structure(list(SNSTopicArn = structure(logical(0), 
            shape = "SNSTopicArn", type = "string", pattern = "(^arn:aws:sns:.*:\\w{12}:.+$)"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "NotificationChannel", type = "structure"), 
        FaceAttributes = structure(logical(0), shape = "FaceAttributes", 
            type = "string"), JobTag = structure(logical(0), 
            shape = "JobTag", type = "string", max = 256L, min = 1L, 
            pattern = "[a-zA-Z0-9_.\\-:]+")), shape = "StartFaceDetectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_face_detection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$")), 
        shape = "StartFaceDetectionResponse", type = "structure")
    return(populate(args, shape))
}

start_face_search_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Video = structure(list(S3Object = structure(list(Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L, min = 3L, 
        pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
        shape = "S3ObjectName", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
        type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
        type = "structure")), shape = "Video", type = "structure"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        FaceMatchThreshold = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L), CollectionId = structure(logical(0), 
            shape = "CollectionId", type = "string", max = 255L, 
            min = 1L, pattern = "[a-zA-Z0-9_.\\-]+"), NotificationChannel = structure(list(SNSTopicArn = structure(logical(0), 
            shape = "SNSTopicArn", type = "string", pattern = "(^arn:aws:sns:.*:\\w{12}:.+$)"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "NotificationChannel", type = "structure"), 
        JobTag = structure(logical(0), shape = "JobTag", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+")), 
        shape = "StartFaceSearchRequest", type = "structure")
    return(populate(args, shape))
}

start_face_search_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$")), 
        shape = "StartFaceSearchResponse", type = "structure")
    return(populate(args, shape))
}

start_label_detection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Video = structure(list(S3Object = structure(list(Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L, min = 3L, 
        pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
        shape = "S3ObjectName", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
        type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
        type = "structure")), shape = "Video", type = "structure"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        MinConfidence = structure(logical(0), shape = "Percent", 
            type = "float", max = 100L, min = 0L), NotificationChannel = structure(list(SNSTopicArn = structure(logical(0), 
            shape = "SNSTopicArn", type = "string", pattern = "(^arn:aws:sns:.*:\\w{12}:.+$)"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "NotificationChannel", type = "structure"), 
        JobTag = structure(logical(0), shape = "JobTag", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+")), 
        shape = "StartLabelDetectionRequest", type = "structure")
    return(populate(args, shape))
}

start_label_detection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$")), 
        shape = "StartLabelDetectionResponse", type = "structure")
    return(populate(args, shape))
}

start_person_tracking_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Video = structure(list(S3Object = structure(list(Bucket = structure(logical(0), 
        shape = "S3Bucket", type = "string", max = 255L, min = 3L, 
        pattern = "[0-9A-Za-z\\.\\-_]*"), Name = structure(logical(0), 
        shape = "S3ObjectName", type = "string", max = 1024L, 
        min = 1L), Version = structure(logical(0), shape = "S3ObjectVersion", 
        type = "string", max = 1024L, min = 1L)), shape = "S3Object", 
        type = "structure")), shape = "Video", type = "structure"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$"), 
        NotificationChannel = structure(list(SNSTopicArn = structure(logical(0), 
            shape = "SNSTopicArn", type = "string", pattern = "(^arn:aws:sns:.*:\\w{12}:.+$)"), 
            RoleArn = structure(logical(0), shape = "RoleArn", 
                type = "string", pattern = "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")), 
            shape = "NotificationChannel", type = "structure"), 
        JobTag = structure(logical(0), shape = "JobTag", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9_.\\-:]+")), 
        shape = "StartPersonTrackingRequest", type = "structure")
    return(populate(args, shape))
}

start_person_tracking_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", max = 64L, min = 1L, pattern = "^[a-zA-Z0-9-_]+$")), 
        shape = "StartPersonTrackingResponse", type = "structure")
    return(populate(args, shape))
}

start_stream_processor_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "StreamProcessorName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), 
        shape = "StartStreamProcessorRequest", type = "structure")
    return(populate(args, shape))
}

start_stream_processor_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StartStreamProcessorResponse", 
        type = "structure")
    return(populate(args, shape))
}

stop_stream_processor_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Name = structure(logical(0), shape = "StreamProcessorName", 
        type = "string", max = 128L, min = 1L, pattern = "[a-zA-Z0-9_.\\-]+")), 
        shape = "StopStreamProcessorRequest", type = "structure")
    return(populate(args, shape))
}

stop_stream_processor_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "StopStreamProcessorResponse", 
        type = "structure")
    return(populate(args, shape))
}
