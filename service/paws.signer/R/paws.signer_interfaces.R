cancel_signing_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileName = structure(logical(0), 
        shape = "ProfileName", location = "uri", locationName = "profileName", 
        type = "string", max = 20L, min = 2L, pattern = "^[a-zA-Z0-9_]{2,}")), 
        shape = "CancelSigningProfileRequest", type = "structure")
    return(populate(args, shape))
}

cancel_signing_profile_output <- function () 
{
    return(list())
}

describe_signing_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        location = "uri", locationName = "jobId", type = "string")), 
        shape = "DescribeSigningJobRequest", type = "structure")
    return(populate(args, shape))
}

describe_signing_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", locationName = "jobId"), Source = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", locationName = "bucketName"), 
        Key = structure(logical(0), shape = "Key", type = "string", 
            locationName = "key"), Version = structure(logical(0), 
            shape = "Version", type = "string", locationName = "version")), 
        shape = "S3Source", type = "structure", locationName = "s3")), 
        shape = "Source", type = "structure", locationName = "source"), 
        SigningMaterial = structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string", locationName = "certificateArn")), 
            shape = "SigningMaterial", type = "structure", locationName = "signingMaterial"), 
        PlatformId = structure(logical(0), shape = "PlatformId", 
            type = "string", locationName = "platformId"), ProfileName = structure(logical(0), 
            shape = "ProfileName", type = "string", max = 20L, 
            min = 2L, pattern = "^[a-zA-Z0-9_]{2,}", locationName = "profileName"), 
        Overrides = structure(list(SigningConfiguration = structure(list(EncryptionAlgorithm = structure(logical(0), 
            shape = "EncryptionAlgorithm", type = "string", locationName = "encryptionAlgorithm"), 
            HashAlgorithm = structure(logical(0), shape = "HashAlgorithm", 
                type = "string", locationName = "hashAlgorithm")), 
            shape = "SigningConfigurationOverrides", type = "structure", 
            locationName = "signingConfiguration")), shape = "SigningPlatformOverrides", 
            type = "structure", locationName = "overrides"), 
        SigningParameters = structure(list(structure(logical(0), 
            shape = "SigningParameterValue", type = "string")), 
            shape = "SigningParameters", type = "map", locationName = "signingParameters"), 
        CreatedAt = structure(logical(0), shape = "CreatedAt", 
            type = "timestamp", locationName = "createdAt"), 
        CompletedAt = structure(logical(0), shape = "CompletedAt", 
            type = "timestamp", locationName = "completedAt"), 
        RequestedBy = structure(logical(0), shape = "RequestedBy", 
            type = "string", locationName = "requestedBy"), Status = structure(logical(0), 
            shape = "SigningStatus", type = "string", locationName = "status"), 
        StatusReason = structure(logical(0), shape = "StatusReason", 
            type = "string", locationName = "statusReason"), 
        SignedObject = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "BucketName", type = "string", locationName = "bucketName"), 
            Key = structure(logical(0), shape = "key", type = "string", 
                locationName = "key")), shape = "S3SignedObject", 
            type = "structure", locationName = "s3")), shape = "SignedObject", 
            type = "structure", locationName = "signedObject")), 
        shape = "DescribeSigningJobResponse", type = "structure")
    return(populate(args, shape))
}

get_signing_platform_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformId = structure(logical(0), 
        shape = "PlatformId", location = "uri", locationName = "platformId", 
        type = "string")), shape = "GetSigningPlatformRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_signing_platform_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlatformId = structure(logical(0), 
        shape = "PlatformId", type = "string", locationName = "platformId"), 
        DisplayName = structure(logical(0), shape = "DisplayName", 
            type = "string", locationName = "displayName"), Partner = structure(logical(0), 
            shape = "String", type = "string", locationName = "partner"), 
        Target = structure(logical(0), shape = "String", type = "string", 
            locationName = "target"), Category = structure(logical(0), 
            shape = "Category", type = "string", locationName = "category"), 
        SigningConfiguration = structure(list(EncryptionAlgorithmOptions = structure(list(AllowedValues = structure(list(structure(logical(0), 
            shape = "EncryptionAlgorithm", type = "string")), 
            shape = "EncryptionAlgorithms", type = "list", locationName = "allowedValues"), 
            DefaultValue = structure(logical(0), shape = "EncryptionAlgorithm", 
                type = "string", locationName = "defaultValue")), 
            shape = "EncryptionAlgorithmOptions", type = "structure", 
            locationName = "encryptionAlgorithmOptions"), HashAlgorithmOptions = structure(list(AllowedValues = structure(list(structure(logical(0), 
            shape = "HashAlgorithm", type = "string")), shape = "HashAlgorithms", 
            type = "list", locationName = "allowedValues"), DefaultValue = structure(logical(0), 
            shape = "HashAlgorithm", type = "string", locationName = "defaultValue")), 
            shape = "HashAlgorithmOptions", type = "structure", 
            locationName = "hashAlgorithmOptions")), shape = "SigningConfiguration", 
            type = "structure", locationName = "signingConfiguration"), 
        SigningImageFormat = structure(list(SupportedFormats = structure(list(structure(logical(0), 
            shape = "ImageFormat", type = "string")), shape = "ImageFormats", 
            type = "list", locationName = "supportedFormats"), 
            DefaultFormat = structure(logical(0), shape = "ImageFormat", 
                type = "string", locationName = "defaultFormat")), 
            shape = "SigningImageFormat", type = "structure", 
            locationName = "signingImageFormat"), MaxSizeInMB = structure(logical(0), 
            shape = "MaxSizeInMB", type = "integer", locationName = "maxSizeInMB")), 
        shape = "GetSigningPlatformResponse", type = "structure")
    return(populate(args, shape))
}

get_signing_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileName = structure(logical(0), 
        shape = "ProfileName", location = "uri", locationName = "profileName", 
        type = "string", max = 20L, min = 2L, pattern = "^[a-zA-Z0-9_]{2,}")), 
        shape = "GetSigningProfileRequest", type = "structure")
    return(populate(args, shape))
}

get_signing_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileName = structure(logical(0), 
        shape = "ProfileName", type = "string", max = 20L, min = 2L, 
        pattern = "^[a-zA-Z0-9_]{2,}", locationName = "profileName"), 
        SigningMaterial = structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string", locationName = "certificateArn")), 
            shape = "SigningMaterial", type = "structure", locationName = "signingMaterial"), 
        PlatformId = structure(logical(0), shape = "PlatformId", 
            type = "string", locationName = "platformId"), Overrides = structure(list(SigningConfiguration = structure(list(EncryptionAlgorithm = structure(logical(0), 
            shape = "EncryptionAlgorithm", type = "string", locationName = "encryptionAlgorithm"), 
            HashAlgorithm = structure(logical(0), shape = "HashAlgorithm", 
                type = "string", locationName = "hashAlgorithm")), 
            shape = "SigningConfigurationOverrides", type = "structure", 
            locationName = "signingConfiguration")), shape = "SigningPlatformOverrides", 
            type = "structure", locationName = "overrides"), 
        SigningParameters = structure(list(structure(logical(0), 
            shape = "SigningParameterValue", type = "string")), 
            shape = "SigningParameters", type = "map", locationName = "signingParameters"), 
        Status = structure(logical(0), shape = "SigningProfileStatus", 
            type = "string", locationName = "status")), shape = "GetSigningProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_signing_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Status = structure(logical(0), shape = "SigningStatus", 
        location = "querystring", locationName = "status", type = "string"), 
        PlatformId = structure(logical(0), shape = "PlatformId", 
            location = "querystring", locationName = "platformId", 
            type = "string"), RequestedBy = structure(logical(0), 
            shape = "RequestedBy", location = "querystring", 
            locationName = "requestedBy", type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", box = TRUE, max = 25L, min = 1L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            location = "querystring", locationName = "nextToken", 
            type = "string")), shape = "ListSigningJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_signing_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Jobs = structure(list(structure(list(JobId = structure(logical(0), 
        shape = "JobId", type = "string", locationName = "jobId"), 
        Source = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "BucketName", type = "string", locationName = "bucketName"), 
            Key = structure(logical(0), shape = "Key", type = "string", 
                locationName = "key"), Version = structure(logical(0), 
                shape = "Version", type = "string", locationName = "version")), 
            shape = "S3Source", type = "structure", locationName = "s3")), 
            shape = "Source", type = "structure", locationName = "source"), 
        SignedObject = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "BucketName", type = "string", locationName = "bucketName"), 
            Key = structure(logical(0), shape = "key", type = "string", 
                locationName = "key")), shape = "S3SignedObject", 
            type = "structure", locationName = "s3")), shape = "SignedObject", 
            type = "structure", locationName = "signedObject"), 
        SigningMaterial = structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string", locationName = "certificateArn")), 
            shape = "SigningMaterial", type = "structure", locationName = "signingMaterial"), 
        CreatedAt = structure(logical(0), shape = "CreatedAt", 
            type = "timestamp", locationName = "createdAt"), 
        Status = structure(logical(0), shape = "SigningStatus", 
            type = "string", locationName = "status")), shape = "SigningJob", 
        type = "structure")), shape = "SigningJobs", type = "list", 
        locationName = "jobs"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListSigningJobsResponse", type = "structure")
    return(populate(args, shape))
}

list_signing_platforms_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Category = structure(logical(0), 
        shape = "String", location = "querystring", locationName = "category", 
        type = "string"), Partner = structure(logical(0), shape = "String", 
        location = "querystring", locationName = "partner", type = "string"), 
        Target = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "target", type = "string"), MaxResults = structure(logical(0), 
            shape = "MaxResults", location = "querystring", locationName = "maxResults", 
            type = "integer", box = TRUE, max = 25L, min = 1L), 
        NextToken = structure(logical(0), shape = "String", location = "querystring", 
            locationName = "nextToken", type = "string")), shape = "ListSigningPlatformsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_signing_platforms_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Platforms = structure(list(structure(list(PlatformId = structure(logical(0), 
        shape = "String", type = "string", locationName = "platformId"), 
        DisplayName = structure(logical(0), shape = "String", 
            type = "string", locationName = "displayName"), Partner = structure(logical(0), 
            shape = "String", type = "string", locationName = "partner"), 
        Target = structure(logical(0), shape = "String", type = "string", 
            locationName = "target"), Category = structure(logical(0), 
            shape = "Category", type = "string", locationName = "category"), 
        SigningConfiguration = structure(list(EncryptionAlgorithmOptions = structure(list(AllowedValues = structure(list(structure(logical(0), 
            shape = "EncryptionAlgorithm", type = "string")), 
            shape = "EncryptionAlgorithms", type = "list", locationName = "allowedValues"), 
            DefaultValue = structure(logical(0), shape = "EncryptionAlgorithm", 
                type = "string", locationName = "defaultValue")), 
            shape = "EncryptionAlgorithmOptions", type = "structure", 
            locationName = "encryptionAlgorithmOptions"), HashAlgorithmOptions = structure(list(AllowedValues = structure(list(structure(logical(0), 
            shape = "HashAlgorithm", type = "string")), shape = "HashAlgorithms", 
            type = "list", locationName = "allowedValues"), DefaultValue = structure(logical(0), 
            shape = "HashAlgorithm", type = "string", locationName = "defaultValue")), 
            shape = "HashAlgorithmOptions", type = "structure", 
            locationName = "hashAlgorithmOptions")), shape = "SigningConfiguration", 
            type = "structure", locationName = "signingConfiguration"), 
        SigningImageFormat = structure(list(SupportedFormats = structure(list(structure(logical(0), 
            shape = "ImageFormat", type = "string")), shape = "ImageFormats", 
            type = "list", locationName = "supportedFormats"), 
            DefaultFormat = structure(logical(0), shape = "ImageFormat", 
                type = "string", locationName = "defaultFormat")), 
            shape = "SigningImageFormat", type = "structure", 
            locationName = "signingImageFormat"), MaxSizeInMB = structure(logical(0), 
            shape = "MaxSizeInMB", type = "integer", locationName = "maxSizeInMB")), 
        shape = "SigningPlatform", type = "structure")), shape = "SigningPlatforms", 
        type = "list", locationName = "platforms"), NextToken = structure(logical(0), 
        shape = "String", type = "string", locationName = "nextToken")), 
        shape = "ListSigningPlatformsResponse", type = "structure")
    return(populate(args, shape))
}

list_signing_profiles_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IncludeCanceled = structure(logical(0), 
        shape = "bool", location = "querystring", locationName = "includeCanceled", 
        type = "boolean"), MaxResults = structure(logical(0), 
        shape = "MaxResults", location = "querystring", locationName = "maxResults", 
        type = "integer", box = TRUE, max = 25L, min = 1L), NextToken = structure(logical(0), 
        shape = "NextToken", location = "querystring", locationName = "nextToken", 
        type = "string")), shape = "ListSigningProfilesRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_signing_profiles_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Profiles = structure(list(structure(list(ProfileName = structure(logical(0), 
        shape = "ProfileName", type = "string", max = 20L, min = 2L, 
        pattern = "^[a-zA-Z0-9_]{2,}", locationName = "profileName"), 
        SigningMaterial = structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string", locationName = "certificateArn")), 
            shape = "SigningMaterial", type = "structure", locationName = "signingMaterial"), 
        PlatformId = structure(logical(0), shape = "PlatformId", 
            type = "string", locationName = "platformId"), SigningParameters = structure(list(structure(logical(0), 
            shape = "SigningParameterValue", type = "string")), 
            shape = "SigningParameters", type = "map", locationName = "signingParameters"), 
        Status = structure(logical(0), shape = "SigningProfileStatus", 
            type = "string", locationName = "status")), shape = "SigningProfile", 
        type = "structure")), shape = "SigningProfiles", type = "list", 
        locationName = "profiles"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListSigningProfilesResponse", type = "structure")
    return(populate(args, shape))
}

put_signing_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ProfileName = structure(logical(0), 
        shape = "ProfileName", location = "uri", locationName = "profileName", 
        type = "string", max = 20L, min = 2L, pattern = "^[a-zA-Z0-9_]{2,}"), 
        SigningMaterial = structure(list(CertificateArn = structure(logical(0), 
            shape = "CertificateArn", type = "string", locationName = "certificateArn")), 
            shape = "SigningMaterial", type = "structure", locationName = "signingMaterial"), 
        PlatformId = structure(logical(0), shape = "PlatformId", 
            type = "string", locationName = "platformId"), Overrides = structure(list(SigningConfiguration = structure(list(EncryptionAlgorithm = structure(logical(0), 
            shape = "EncryptionAlgorithm", type = "string", locationName = "encryptionAlgorithm"), 
            HashAlgorithm = structure(logical(0), shape = "HashAlgorithm", 
                type = "string", locationName = "hashAlgorithm")), 
            shape = "SigningConfigurationOverrides", type = "structure", 
            locationName = "signingConfiguration")), shape = "SigningPlatformOverrides", 
            type = "structure", locationName = "overrides"), 
        SigningParameters = structure(list(structure(logical(0), 
            shape = "SigningParameterValue", type = "string")), 
            shape = "SigningParameters", type = "map", locationName = "signingParameters")), 
        shape = "PutSigningProfileRequest", type = "structure")
    return(populate(args, shape))
}

put_signing_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Arn = structure(logical(0), shape = "string", 
        type = "string", locationName = "arn")), shape = "PutSigningProfileResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_signing_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Source = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", locationName = "bucketName"), 
        Key = structure(logical(0), shape = "Key", type = "string", 
            locationName = "key"), Version = structure(logical(0), 
            shape = "Version", type = "string", locationName = "version")), 
        shape = "S3Source", type = "structure", locationName = "s3")), 
        shape = "Source", type = "structure", locationName = "source"), 
        Destination = structure(list(S3 = structure(list(BucketName = structure(logical(0), 
            shape = "BucketName", type = "string", locationName = "bucketName"), 
            Prefix = structure(logical(0), shape = "Prefix", 
                type = "string", locationName = "prefix")), shape = "S3Destination", 
            type = "structure", locationName = "s3")), shape = "Destination", 
            type = "structure", locationName = "destination"), 
        ProfileName = structure(logical(0), shape = "ProfileName", 
            type = "string", max = 20L, min = 2L, pattern = "^[a-zA-Z0-9_]{2,}", 
            locationName = "profileName"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", locationName = "clientRequestToken")), 
        shape = "StartSigningJobRequest", type = "structure")
    return(populate(args, shape))
}

start_signing_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(JobId = structure(logical(0), shape = "JobId", 
        type = "string", locationName = "jobId")), shape = "StartSigningJobResponse", 
        type = "structure")
    return(populate(args, shape))
}
