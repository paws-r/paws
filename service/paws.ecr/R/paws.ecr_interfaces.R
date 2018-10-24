batch_check_layer_availability_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LayerDigests = structure(list(structure(logical(0), 
        shape = "BatchedOperationLayerDigest", type = "string", 
        max = 1000L, min = 0L)), shape = "BatchedOperationLayerDigestList", 
        type = "list", max = 100L, min = 1L, locationName = "layerDigests")), 
        shape = "BatchCheckLayerAvailabilityRequest", type = "structure")
    return(populate(args, shape))
}

batch_check_layer_availability_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Layers = structure(list(structure(list(LayerDigest = structure(logical(0), 
        shape = "LayerDigest", type = "string", pattern = "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+", 
        locationName = "layerDigest"), LayerAvailability = structure(logical(0), 
        shape = "LayerAvailability", type = "string", locationName = "layerAvailability"), 
        LayerSize = structure(logical(0), shape = "LayerSizeInBytes", 
            type = "long", locationName = "layerSize"), MediaType = structure(logical(0), 
            shape = "MediaType", type = "string", locationName = "mediaType")), 
        shape = "Layer", type = "structure")), shape = "LayerList", 
        type = "list", locationName = "layers"), Failures = structure(list(structure(list(LayerDigest = structure(logical(0), 
        shape = "BatchedOperationLayerDigest", type = "string", 
        max = 1000L, min = 0L, locationName = "layerDigest"), 
        FailureCode = structure(logical(0), shape = "LayerFailureCode", 
            type = "string", locationName = "failureCode"), FailureReason = structure(logical(0), 
            shape = "LayerFailureReason", type = "string", locationName = "failureReason")), 
        shape = "LayerFailure", type = "structure")), shape = "LayerFailureList", 
        type = "list", locationName = "failures")), shape = "BatchCheckLayerAvailabilityResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_delete_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageIds = structure(list(structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure")), shape = "ImageIdentifierList", 
        type = "list", max = 100L, min = 1L, locationName = "imageIds")), 
        shape = "BatchDeleteImageRequest", type = "structure")
    return(populate(args, shape))
}

batch_delete_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageIds = structure(list(structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure")), shape = "ImageIdentifierList", 
        type = "list", max = 100L, min = 1L, locationName = "imageIds"), 
        Failures = structure(list(structure(list(ImageId = structure(list(ImageDigest = structure(logical(0), 
            shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
            ImageTag = structure(logical(0), shape = "ImageTag", 
                type = "string", locationName = "imageTag")), 
            shape = "ImageIdentifier", type = "structure", locationName = "imageId"), 
            FailureCode = structure(logical(0), shape = "ImageFailureCode", 
                type = "string", locationName = "failureCode"), 
            FailureReason = structure(logical(0), shape = "ImageFailureReason", 
                type = "string", locationName = "failureReason")), 
            shape = "ImageFailure", type = "structure")), shape = "ImageFailureList", 
            type = "list", locationName = "failures")), shape = "BatchDeleteImageResponse", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageIds = structure(list(structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure")), shape = "ImageIdentifierList", 
        type = "list", max = 100L, min = 1L, locationName = "imageIds"), 
        AcceptedMediaTypes = structure(list(structure(logical(0), 
            shape = "MediaType", type = "string")), shape = "MediaTypeList", 
            type = "list", max = 100L, min = 1L, locationName = "acceptedMediaTypes")), 
        shape = "BatchGetImageRequest", type = "structure")
    return(populate(args, shape))
}

batch_get_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Images = structure(list(structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageId = structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure", locationName = "imageId"), ImageManifest = structure(logical(0), 
        shape = "ImageManifest", type = "string", locationName = "imageManifest")), 
        shape = "Image", type = "structure")), shape = "ImageList", 
        type = "list", locationName = "images"), Failures = structure(list(structure(list(ImageId = structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure", locationName = "imageId"), FailureCode = structure(logical(0), 
        shape = "ImageFailureCode", type = "string", locationName = "failureCode"), 
        FailureReason = structure(logical(0), shape = "ImageFailureReason", 
            type = "string", locationName = "failureReason")), 
        shape = "ImageFailure", type = "structure")), shape = "ImageFailureList", 
        type = "list", locationName = "failures")), shape = "BatchGetImageResponse", 
        type = "structure")
    return(populate(args, shape))
}

complete_layer_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), UploadId = structure(logical(0), 
        shape = "UploadId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", 
        locationName = "uploadId"), LayerDigests = structure(list(structure(logical(0), 
        shape = "LayerDigest", type = "string", pattern = "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+")), 
        shape = "LayerDigestList", type = "list", max = 100L, 
        min = 1L, locationName = "layerDigests")), shape = "CompleteLayerUploadRequest", 
        type = "structure")
    return(populate(args, shape))
}

complete_layer_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), UploadId = structure(logical(0), 
        shape = "UploadId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", 
        locationName = "uploadId"), LayerDigest = structure(logical(0), 
        shape = "LayerDigest", type = "string", pattern = "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+", 
        locationName = "layerDigest")), shape = "CompleteLayerUploadResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_repository_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName")), shape = "CreateRepositoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_repository_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Repository = structure(list(RepositoryArn = structure(logical(0), 
        shape = "Arn", type = "string", locationName = "repositoryArn"), 
        RegistryId = structure(logical(0), shape = "RegistryId", 
            type = "string", pattern = "[0-9]{12}", locationName = "registryId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 256L, min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
            locationName = "repositoryName"), RepositoryUri = structure(logical(0), 
            shape = "Url", type = "string", locationName = "repositoryUri"), 
        CreatedAt = structure(logical(0), shape = "CreationTimestamp", 
            type = "timestamp", locationName = "createdAt")), 
        shape = "Repository", type = "structure", locationName = "repository")), 
        shape = "CreateRepositoryResponse", type = "structure")
    return(populate(args, shape))
}

delete_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName")), shape = "DeleteLifecyclePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText"), LastEvaluatedAt = structure(logical(0), 
        shape = "EvaluationTimestamp", type = "timestamp", locationName = "lastEvaluatedAt")), 
        shape = "DeleteLifecyclePolicyResponse", type = "structure")
    return(populate(args, shape))
}

delete_repository_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), Force = structure(logical(0), 
        shape = "ForceFlag", type = "boolean", locationName = "force")), 
        shape = "DeleteRepositoryRequest", type = "structure")
    return(populate(args, shape))
}

delete_repository_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Repository = structure(list(RepositoryArn = structure(logical(0), 
        shape = "Arn", type = "string", locationName = "repositoryArn"), 
        RegistryId = structure(logical(0), shape = "RegistryId", 
            type = "string", pattern = "[0-9]{12}", locationName = "registryId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 256L, min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
            locationName = "repositoryName"), RepositoryUri = structure(logical(0), 
            shape = "Url", type = "string", locationName = "repositoryUri"), 
        CreatedAt = structure(logical(0), shape = "CreationTimestamp", 
            type = "timestamp", locationName = "createdAt")), 
        shape = "Repository", type = "structure", locationName = "repository")), 
        shape = "DeleteRepositoryResponse", type = "structure")
    return(populate(args, shape))
}

delete_repository_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName")), shape = "DeleteRepositoryPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_repository_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), PolicyText = structure(logical(0), 
        shape = "RepositoryPolicyText", type = "string", max = 10240L, 
        min = 0L, locationName = "policyText")), shape = "DeleteRepositoryPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_images_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageIds = structure(list(structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure")), shape = "ImageIdentifierList", 
        type = "list", max = 100L, min = 1L, locationName = "imageIds"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", max = 100L, 
            min = 1L, locationName = "maxResults"), Filter = structure(list(TagStatus = structure(logical(0), 
            shape = "TagStatus", type = "string", locationName = "tagStatus")), 
            shape = "DescribeImagesFilter", type = "structure", 
            locationName = "filter")), shape = "DescribeImagesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_images_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageDetails = structure(list(structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTags = structure(list(structure(logical(0), shape = "ImageTag", 
            type = "string")), shape = "ImageTagList", type = "list", 
            locationName = "imageTags"), ImageSizeInBytes = structure(logical(0), 
            shape = "ImageSizeInBytes", type = "long", locationName = "imageSizeInBytes"), 
        ImagePushedAt = structure(logical(0), shape = "PushTimestamp", 
            type = "timestamp", locationName = "imagePushedAt")), 
        shape = "ImageDetail", type = "structure")), shape = "ImageDetailList", 
        type = "list", locationName = "imageDetails"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeImagesResponse", type = "structure")
    return(populate(args, shape))
}

describe_repositories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryNames = structure(list(structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*")), 
        shape = "RepositoryNameList", type = "list", max = 100L, 
        min = 1L, locationName = "repositoryNames"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L, locationName = "maxResults")), 
        shape = "DescribeRepositoriesRequest", type = "structure")
    return(populate(args, shape))
}

describe_repositories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Repositories = structure(list(structure(list(RepositoryArn = structure(logical(0), 
        shape = "Arn", type = "string", locationName = "repositoryArn"), 
        RegistryId = structure(logical(0), shape = "RegistryId", 
            type = "string", pattern = "[0-9]{12}", locationName = "registryId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 256L, min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
            locationName = "repositoryName"), RepositoryUri = structure(logical(0), 
            shape = "Url", type = "string", locationName = "repositoryUri"), 
        CreatedAt = structure(logical(0), shape = "CreationTimestamp", 
            type = "timestamp", locationName = "createdAt")), 
        shape = "Repository", type = "structure")), shape = "RepositoryList", 
        type = "list", locationName = "repositories"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeRepositoriesResponse", type = "structure")
    return(populate(args, shape))
}

get_authorization_token_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryIds = structure(list(structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}")), 
        shape = "GetAuthorizationTokenRegistryIdList", type = "list", 
        max = 10L, min = 1L, locationName = "registryIds")), 
        shape = "GetAuthorizationTokenRequest", type = "structure")
    return(populate(args, shape))
}

get_authorization_token_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizationData = structure(list(structure(list(AuthorizationToken = structure(logical(0), 
        shape = "Base64", type = "string", pattern = "^\\S+$", 
        locationName = "authorizationToken"), ExpiresAt = structure(logical(0), 
        shape = "ExpirationTimestamp", type = "timestamp", locationName = "expiresAt"), 
        ProxyEndpoint = structure(logical(0), shape = "ProxyEndpoint", 
            type = "string", locationName = "proxyEndpoint")), 
        shape = "AuthorizationData", type = "structure")), shape = "AuthorizationDataList", 
        type = "list", locationName = "authorizationData")), 
        shape = "GetAuthorizationTokenResponse", type = "structure")
    return(populate(args, shape))
}

get_download_url_for_layer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LayerDigest = structure(logical(0), 
        shape = "LayerDigest", type = "string", pattern = "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+", 
        locationName = "layerDigest")), shape = "GetDownloadUrlForLayerRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_download_url_for_layer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DownloadUrl = structure(logical(0), 
        shape = "Url", type = "string", locationName = "downloadUrl"), 
        LayerDigest = structure(logical(0), shape = "LayerDigest", 
            type = "string", pattern = "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+", 
            locationName = "layerDigest")), shape = "GetDownloadUrlForLayerResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName")), shape = "GetLifecyclePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText"), LastEvaluatedAt = structure(logical(0), 
        shape = "EvaluationTimestamp", type = "timestamp", locationName = "lastEvaluatedAt")), 
        shape = "GetLifecyclePolicyResponse", type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policy_preview_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageIds = structure(list(structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure")), shape = "ImageIdentifierList", 
        type = "list", max = 100L, min = 1L, locationName = "imageIds"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", max = 100L, 
            min = 1L, locationName = "maxResults"), Filter = structure(list(TagStatus = structure(logical(0), 
            shape = "TagStatus", type = "string", locationName = "tagStatus")), 
            shape = "LifecyclePolicyPreviewFilter", type = "structure", 
            locationName = "filter")), shape = "GetLifecyclePolicyPreviewRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_lifecycle_policy_preview_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText"), Status = structure(logical(0), 
        shape = "LifecyclePolicyPreviewStatus", type = "string", 
        locationName = "status"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        PreviewResults = structure(list(structure(list(ImageTags = structure(list(structure(logical(0), 
            shape = "ImageTag", type = "string")), shape = "ImageTagList", 
            type = "list", locationName = "imageTags"), ImageDigest = structure(logical(0), 
            shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
            ImagePushedAt = structure(logical(0), shape = "PushTimestamp", 
                type = "timestamp", locationName = "imagePushedAt"), 
            Action = structure(list(Type = structure(logical(0), 
                shape = "ImageActionType", type = "string", locationName = "type")), 
                shape = "LifecyclePolicyRuleAction", type = "structure", 
                locationName = "action"), AppliedRulePriority = structure(logical(0), 
                shape = "LifecyclePolicyRulePriority", type = "integer", 
                min = 1L, locationName = "appliedRulePriority")), 
            shape = "LifecyclePolicyPreviewResult", type = "structure")), 
            shape = "LifecyclePolicyPreviewResultList", type = "list", 
            locationName = "previewResults"), Summary = structure(list(ExpiringImageTotalCount = structure(logical(0), 
            shape = "ImageCount", type = "integer", min = 0L, 
            locationName = "expiringImageTotalCount")), shape = "LifecyclePolicyPreviewSummary", 
            type = "structure", locationName = "summary")), shape = "GetLifecyclePolicyPreviewResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_repository_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName")), shape = "GetRepositoryPolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_repository_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), PolicyText = structure(logical(0), 
        shape = "RepositoryPolicyText", type = "string", max = 10240L, 
        min = 0L, locationName = "policyText")), shape = "GetRepositoryPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

initiate_layer_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName")), shape = "InitiateLayerUploadRequest", 
        type = "structure")
    return(populate(args, shape))
}

initiate_layer_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UploadId = structure(logical(0), 
        shape = "UploadId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", 
        locationName = "uploadId"), PartSize = structure(logical(0), 
        shape = "PartSize", type = "long", min = 0L, locationName = "partSize")), 
        shape = "InitiateLayerUploadResponse", type = "structure")
    return(populate(args, shape))
}

list_images_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 100L, min = 1L, locationName = "maxResults"), 
        Filter = structure(list(TagStatus = structure(logical(0), 
            shape = "TagStatus", type = "string", locationName = "tagStatus")), 
            shape = "ListImagesFilter", type = "structure", locationName = "filter")), 
        shape = "ListImagesRequest", type = "structure")
    return(populate(args, shape))
}

list_images_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageIds = structure(list(structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure")), shape = "ImageIdentifierList", 
        type = "list", max = 100L, min = 1L, locationName = "imageIds"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListImagesResponse", 
        type = "structure")
    return(populate(args, shape))
}

put_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageManifest = structure(logical(0), 
        shape = "ImageManifest", type = "string", locationName = "imageManifest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "PutImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Image = structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), ImageId = structure(list(ImageDigest = structure(logical(0), 
        shape = "ImageDigest", type = "string", locationName = "imageDigest"), 
        ImageTag = structure(logical(0), shape = "ImageTag", 
            type = "string", locationName = "imageTag")), shape = "ImageIdentifier", 
        type = "structure", locationName = "imageId"), ImageManifest = structure(logical(0), 
        shape = "ImageManifest", type = "string", locationName = "imageManifest")), 
        shape = "Image", type = "structure", locationName = "image")), 
        shape = "PutImageResponse", type = "structure")
    return(populate(args, shape))
}

put_lifecycle_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText")), shape = "PutLifecyclePolicyRequest", 
        type = "structure")
    return(populate(args, shape))
}

put_lifecycle_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText")), shape = "PutLifecyclePolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

set_repository_policy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), PolicyText = structure(logical(0), 
        shape = "RepositoryPolicyText", type = "string", max = 10240L, 
        min = 0L, locationName = "policyText"), Force = structure(logical(0), 
        shape = "ForceFlag", type = "boolean", locationName = "force")), 
        shape = "SetRepositoryPolicyRequest", type = "structure")
    return(populate(args, shape))
}

set_repository_policy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), PolicyText = structure(logical(0), 
        shape = "RepositoryPolicyText", type = "string", max = 10240L, 
        min = 0L, locationName = "policyText")), shape = "SetRepositoryPolicyResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_lifecycle_policy_preview_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText")), shape = "StartLifecyclePolicyPreviewRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_lifecycle_policy_preview_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), LifecyclePolicyText = structure(logical(0), 
        shape = "LifecyclePolicyText", type = "string", max = 10240L, 
        min = 100L, locationName = "lifecyclePolicyText"), Status = structure(logical(0), 
        shape = "LifecyclePolicyPreviewStatus", type = "string", 
        locationName = "status")), shape = "StartLifecyclePolicyPreviewResponse", 
        type = "structure")
    return(populate(args, shape))
}

upload_layer_part_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), UploadId = structure(logical(0), 
        shape = "UploadId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", 
        locationName = "uploadId"), PartFirstByte = structure(logical(0), 
        shape = "PartSize", type = "long", min = 0L, locationName = "partFirstByte"), 
        PartLastByte = structure(logical(0), shape = "PartSize", 
            type = "long", min = 0L, locationName = "partLastByte"), 
        LayerPartBlob = structure(logical(0), shape = "LayerPartBlob", 
            type = "blob", locationName = "layerPartBlob")), 
        shape = "UploadLayerPartRequest", type = "structure")
    return(populate(args, shape))
}

upload_layer_part_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RegistryId = structure(logical(0), 
        shape = "RegistryId", type = "string", pattern = "[0-9]{12}", 
        locationName = "registryId"), RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 256L, 
        min = 2L, pattern = "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", 
        locationName = "repositoryName"), UploadId = structure(logical(0), 
        shape = "UploadId", type = "string", pattern = "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", 
        locationName = "uploadId"), LastByteReceived = structure(logical(0), 
        shape = "PartSize", type = "long", min = 0L, locationName = "lastByteReceived")), 
        shape = "UploadLayerPartResponse", type = "structure")
    return(populate(args, shape))
}
