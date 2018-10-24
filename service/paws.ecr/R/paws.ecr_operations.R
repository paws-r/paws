#' Check the availability of multiple image layers in a specified registry and repository
#'
#' Check the availability of multiple image layers in a specified registry and repository.
#' 
#' This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.
#'
#' @param repositoryName The name of the repository that is associated with the image layers to check.
#' @param layerDigests The digests of the image layers to check.
#' @param registryId The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
batch_check_layer_availability <- function (repositoryName, layerDigests, 
    registryId = NULL) 
{
    op <- Operation(name = "BatchCheckLayerAvailability", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_check_layer_availability_input(repositoryName = repositoryName, 
        layerDigests = layerDigests, registryId = registryId)
    output <- batch_check_layer_availability_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a list of specified images within a specified repository
#'
#' Deletes a list of specified images within a specified repository. Images are specified with either `imageTag` or `imageDigest`.
#' 
#' You can remove a tag from an image by specifying the image\'s tag in your request. When you remove the last tag from an image, the image is deleted from your repository.
#' 
#' You can completely delete an image (and all of its tags) by specifying the image\'s digest in your request.
#'
#' @param repositoryName The repository that contains the image to delete.
#' @param imageIds A list of image ID references that correspond to images to delete. The format of the `imageIds` reference is `imageTag=tag` or `imageDigest=digest`.
#' @param registryId The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#' # This example deletes images with the tags precise and trusty in a
#' # repository called ubuntu in the default registry for an account.
#' batch_delete_image(
#'   imageIds = list(
#'     list(
#'       imageTag = "precise"
#'     )
#'   ),
#'   repositoryName = "ubuntu"
#' )
#'
#' @export
batch_delete_image <- function (repositoryName, imageIds, registryId = NULL) 
{
    op <- Operation(name = "BatchDeleteImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_delete_image_input(repositoryName = repositoryName, 
        imageIds = imageIds, registryId = registryId)
    output <- batch_delete_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets detailed information for specified images within a specified repository
#'
#' Gets detailed information for specified images within a specified repository. Images are specified with either `imageTag` or `imageDigest`.
#'
#' @param repositoryName The repository that contains the images to describe.
#' @param imageIds A list of image ID references that correspond to images to describe. The format of the `imageIds` reference is `imageTag=tag` or `imageDigest=digest`.
#' @param registryId The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.
#' @param acceptedMediaTypes The accepted media types for the request.
#' 
#' Valid values: `application/vnd.docker.distribution.manifest.v1+json` \| `application/vnd.docker.distribution.manifest.v2+json` \| `application/vnd.oci.image.manifest.v1+json`
#'
#' @examples
#' # This example obtains information for an image with a specified image
#' # digest ID from the repository named ubuntu in the current account.
#' batch_get_image(
#'   imageIds = list(
#'     list(
#'       imageTag = "precise"
#'     )
#'   ),
#'   repositoryName = "ubuntu"
#' )
#'
#' @export
batch_get_image <- function (repositoryName, imageIds, registryId = NULL, 
    acceptedMediaTypes = NULL) 
{
    op <- Operation(name = "BatchGetImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_image_input(repositoryName = repositoryName, 
        imageIds = imageIds, registryId = registryId, acceptedMediaTypes = acceptedMediaTypes)
    output <- batch_get_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID
#'
#' Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a `sha256` digest of the image layer for data validation purposes.
#' 
#' This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.
#'
#' @param repositoryName The name of the repository to associate with the image layer.
#' @param uploadId The upload ID from a previous InitiateLayerUpload operation to associate with the image layer.
#' @param layerDigests The `sha256` digest of the image layer.
#' @param registryId The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
complete_layer_upload <- function (repositoryName, uploadId, 
    layerDigests, registryId = NULL) 
{
    op <- Operation(name = "CompleteLayerUpload", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- complete_layer_upload_input(repositoryName = repositoryName, 
        uploadId = uploadId, layerDigests = layerDigests, registryId = registryId)
    output <- complete_layer_upload_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an image repository
#'
#' Creates an image repository.
#'
#' @param repositoryName The name to use for the repository. The repository name may be specified on its own (such as `nginx-web-app`) or it can be prepended with a namespace to group the repository into a category (such as `project-a/nginx-web-app`).
#'
#' @examples
#' # This example creates a repository called nginx-web-app inside the
#' # project-a namespace in the default registry for an account.
#' create_repository(
#'   repositoryName = "project-a/nginx-web-app"
#' )
#'
#' @export
create_repository <- function (repositoryName) 
{
    op <- Operation(name = "CreateRepository", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_repository_input(repositoryName = repositoryName)
    output <- create_repository_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified lifecycle policy
#'
#' Deletes the specified lifecycle policy.
#'
#' @param repositoryName The name of the repository.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
delete_lifecycle_policy <- function (repositoryName, registryId = NULL) 
{
    op <- Operation(name = "DeleteLifecyclePolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_lifecycle_policy_input(repositoryName = repositoryName, 
        registryId = registryId)
    output <- delete_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing image repository
#'
#' Deletes an existing image repository. If a repository contains images, you must use the `force` option to delete it.
#'
#' @param repositoryName The name of the repository to delete.
#' @param registryId The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.
#' @param force If a repository contains images, forces the deletion.
#'
#' @examples
#' # This example force deletes a repository named ubuntu in the default
#' # registry for an account. The force parameter is required if the
#' # repository contains images.
#' delete_repository(
#'   force = TRUE,
#'   repositoryName = "ubuntu"
#' )
#'
#' @export
delete_repository <- function (repositoryName, registryId = NULL, 
    force = NULL) 
{
    op <- Operation(name = "DeleteRepository", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_repository_input(repositoryName = repositoryName, 
        registryId = registryId, force = force)
    output <- delete_repository_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the repository policy from a specified repository
#'
#' Deletes the repository policy from a specified repository.
#'
#' @param repositoryName The name of the repository that is associated with the repository policy to delete.
#' @param registryId The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#' # This example deletes the policy associated with the repository named
#' # ubuntu in the current account.
#' delete_repository_policy(
#'   repositoryName = "ubuntu"
#' )
#'
#' @export
delete_repository_policy <- function (repositoryName, registryId = NULL) 
{
    op <- Operation(name = "DeleteRepositoryPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_repository_policy_input(repositoryName = repositoryName, 
        registryId = registryId)
    output <- delete_repository_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns metadata about the images in a repository, including image size, image tags, and creation date
#'
#' Returns metadata about the images in a repository, including image size, image tags, and creation date.
#' 
#' Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the `docker images` command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages.
#'
#' @param repositoryName A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.
#' @param registryId The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.
#' @param imageIds The list of image IDs for the requested repository.
#' @param nextToken The `nextToken` value returned from a previous paginated `DescribeImages` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return. This option cannot be used when you specify images with `imageIds`.
#' @param maxResults The maximum number of repository results returned by `DescribeImages` in paginated output. When this parameter is used, `DescribeImages` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeImages` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeImages` returns up to 100 results and a `nextToken` value, if applicable. This option cannot be used when you specify images with `imageIds`.
#' @param filter The filter key and value with which to filter your `DescribeImages` results.
#'
#' @examples
#'
#' @export
describe_images <- function (repositoryName, registryId = NULL, 
    imageIds = NULL, nextToken = NULL, maxResults = NULL, filter = NULL) 
{
    op <- Operation(name = "DescribeImages", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_images_input(repositoryName = repositoryName, 
        registryId = registryId, imageIds = imageIds, nextToken = nextToken, 
        maxResults = maxResults, filter = filter)
    output <- describe_images_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes image repositories in a registry
#'
#' Describes image repositories in a registry.
#'
#' @param registryId The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.
#' @param repositoryNames A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.
#' @param nextToken The `nextToken` value returned from a previous paginated `DescribeRepositories` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return. This option cannot be used when you specify repositories with `repositoryNames`.
#' 
#' This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.
#' @param maxResults The maximum number of repository results returned by `DescribeRepositories` in paginated output. When this parameter is used, `DescribeRepositories` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeRepositories` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `DescribeRepositories` returns up to 100 results and a `nextToken` value, if applicable. This option cannot be used when you specify repositories with `repositoryNames`.
#'
#' @examples
#' # The following example obtains a list and description of all repositories
#' # in the default registry to which the current user has access.
#' describe_repositories()
#'
#' @export
describe_repositories <- function (registryId = NULL, repositoryNames = NULL, 
    nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "DescribeRepositories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_repositories_input(registryId = registryId, 
        repositoryNames = repositoryNames, nextToken = nextToken, 
        maxResults = maxResults)
    output <- describe_repositories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a token that is valid for a specified registry for 12 hours
#'
#' Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the `docker` CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.
#' 
#' The `authorizationToken` returned for each registry specified is a base64 encoded string that can be decoded and used in a `docker login` command to authenticate to a registry. The AWS CLI offers an `aws ecr get-login` command that simplifies the login process.
#'
#' @param registryIds A list of AWS account IDs that are associated with the registries for which to get authorization tokens. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#' # This example gets an authorization token for your default registry.
#' get_authorization_token()
#'
#' @export
get_authorization_token <- function (registryIds = NULL) 
{
    op <- Operation(name = "GetAuthorizationToken", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_authorization_token_input(registryIds = registryIds)
    output <- get_authorization_token_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer
#'
#' Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.
#' 
#' This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.
#'
#' @param repositoryName The name of the repository that is associated with the image layer to download.
#' @param layerDigest The digest of the image layer to download.
#' @param registryId The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
get_download_url_for_layer <- function (repositoryName, layerDigest, 
    registryId = NULL) 
{
    op <- Operation(name = "GetDownloadUrlForLayer", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_download_url_for_layer_input(repositoryName = repositoryName, 
        layerDigest = layerDigest, registryId = registryId)
    output <- get_download_url_for_layer_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the specified lifecycle policy
#'
#' Retrieves the specified lifecycle policy.
#'
#' @param repositoryName The name of the repository.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
get_lifecycle_policy <- function (repositoryName, registryId = NULL) 
{
    op <- Operation(name = "GetLifecyclePolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_lifecycle_policy_input(repositoryName = repositoryName, 
        registryId = registryId)
    output <- get_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the results of the specified lifecycle policy preview request
#'
#' Retrieves the results of the specified lifecycle policy preview request.
#'
#' @param repositoryName The name of the repository.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
#' @param imageIds The list of imageIDs to be included.
#' @param nextToken The `nextToken` value returned from a previous paginatedâ€¨ `GetLifecyclePolicyPreviewRequest` request where `maxResults` was used and theâ€¨ results exceeded the value of that parameter. Pagination continues from the end of theâ€¨ previous results that returned the `nextToken` value. This value isâ€¨ `null` when there are no more results to return. This option cannot be used when you specify images with `imageIds`.
#' @param maxResults The maximum number of repository results returned by `GetLifecyclePolicyPreviewRequest` inâ€¨ paginated output. When this parameter is used, `GetLifecyclePolicyPreviewRequest` only returnsâ€¨ `maxResults` results in a single page along with a `nextToken`â€¨ response element. The remaining results of the initial request can be seen by sendingâ€¨ another `GetLifecyclePolicyPreviewRequest` request with the returned `nextToken`â€¨ value. This value can be between 1 and 100. If thisâ€¨ parameter is not used, then `GetLifecyclePolicyPreviewRequest` returns up toâ€¨ 100 results and a `nextToken` value, ifâ€¨ applicable. This option cannot be used when you specify images with `imageIds`.
#' @param filter An optional parameter that filters results based on image tag status and all tags, if tagged.
#'
#' @examples
#'
#' @export
get_lifecycle_policy_preview <- function (repositoryName, registryId = NULL, 
    imageIds = NULL, nextToken = NULL, maxResults = NULL, filter = NULL) 
{
    op <- Operation(name = "GetLifecyclePolicyPreview", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_lifecycle_policy_preview_input(repositoryName = repositoryName, 
        registryId = registryId, imageIds = imageIds, nextToken = nextToken, 
        maxResults = maxResults, filter = filter)
    output <- get_lifecycle_policy_preview_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the repository policy for a specified repository
#'
#' Retrieves the repository policy for a specified repository.
#'
#' @param repositoryName The name of the repository with the policy to retrieve.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#' # This example obtains the repository policy for the repository named
#' # ubuntu.
#' get_repository_policy(
#'   repositoryName = "ubuntu"
#' )
#'
#' @export
get_repository_policy <- function (repositoryName, registryId = NULL) 
{
    op <- Operation(name = "GetRepositoryPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_repository_policy_input(repositoryName = repositoryName, 
        registryId = registryId)
    output <- get_repository_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Notify Amazon ECR that you intend to upload an image layer
#'
#' Notify Amazon ECR that you intend to upload an image layer.
#' 
#' This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.
#'
#' @param repositoryName The name of the repository to which you intend to upload layers.
#' @param registryId The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
initiate_layer_upload <- function (repositoryName, registryId = NULL) 
{
    op <- Operation(name = "InitiateLayerUpload", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- initiate_layer_upload_input(repositoryName = repositoryName, 
        registryId = registryId)
    output <- initiate_layer_upload_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all the image IDs for a given repository
#'
#' Lists all the image IDs for a given repository.
#' 
#' You can filter images based on whether or not they are tagged by setting the `tagStatus` parameter to `TAGGED` or `UNTAGGED`. For example, you can filter your results to return only `UNTAGGED` images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only `TAGGED` images to list all of the tags in your repository.
#'
#' @param repositoryName The repository with image IDs to be listed.
#' @param registryId The AWS account ID associated with the registry that contains the repository in which to list images. If you do not specify a registry, the default registry is assumed.
#' @param nextToken The `nextToken` value returned from a previous paginated `ListImages` request where `maxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `nextToken` value. This value is `null` when there are no more results to return.
#' 
#' This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.
#' @param maxResults The maximum number of image results returned by `ListImages` in paginated output. When this parameter is used, `ListImages` only returns `maxResults` results in a single page along with a `nextToken` response element. The remaining results of the initial request can be seen by sending another `ListImages` request with the returned `nextToken` value. This value can be between 1 and 100. If this parameter is not used, then `ListImages` returns up to 100 results and a `nextToken` value, if applicable.
#' @param filter The filter key and value with which to filter your `ListImages` results.
#'
#' @examples
#' # This example lists all of the images in the repository named ubuntu in
#' # the default registry in the current account. 
#' list_images(
#'   repositoryName = "ubuntu"
#' )
#'
#' @export
list_images <- function (repositoryName, registryId = NULL, nextToken = NULL, 
    maxResults = NULL, filter = NULL) 
{
    op <- Operation(name = "ListImages", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_images_input(repositoryName = repositoryName, 
        registryId = registryId, nextToken = nextToken, maxResults = maxResults, 
        filter = filter)
    output <- list_images_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates the image manifest and tags associated with an image
#'
#' Creates or updates the image manifest and tags associated with an image.
#' 
#' This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.
#'
#' @param repositoryName The name of the repository in which to put the image.
#' @param imageManifest The image manifest corresponding to the image to be uploaded.
#' @param registryId The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.
#' @param imageTag The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or OCI formats.
#'
#' @examples
#'
#' @export
put_image <- function (repositoryName, imageManifest, registryId = NULL, 
    imageTag = NULL) 
{
    op <- Operation(name = "PutImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_image_input(repositoryName = repositoryName, 
        imageManifest = imageManifest, registryId = registryId, 
        imageTag = imageTag)
    output <- put_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates or updates a lifecycle policy
#'
#' Creates or updates a lifecycle policy. For information about lifecycle policy syntax, see [Lifecycle Policy Template](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
#'
#' @param repositoryName The name of the repository to receive the policy.
#' @param lifecyclePolicyText The JSON repository policy text to apply to the repository.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you doâ€¨ not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
put_lifecycle_policy <- function (repositoryName, lifecyclePolicyText, 
    registryId = NULL) 
{
    op <- Operation(name = "PutLifecyclePolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_lifecycle_policy_input(repositoryName = repositoryName, 
        lifecyclePolicyText = lifecyclePolicyText, registryId = registryId)
    output <- put_lifecycle_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Applies a repository policy on a specified repository to control access permissions
#'
#' Applies a repository policy on a specified repository to control access permissions.
#'
#' @param repositoryName The name of the repository to receive the policy.
#' @param policyText The JSON repository policy text to apply to the repository.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
#' @param force If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the SetRepositoryPolicy operation. This is intended to prevent accidental repository lock outs.
#'
#' @examples
#'
#' @export
set_repository_policy <- function (repositoryName, policyText, 
    registryId = NULL, force = NULL) 
{
    op <- Operation(name = "SetRepositoryPolicy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- set_repository_policy_input(repositoryName = repositoryName, 
        policyText = policyText, registryId = registryId, force = force)
    output <- set_repository_policy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a preview of the specified lifecycle policy
#'
#' Starts a preview of the specified lifecycle policy. This allows you to see the results before creating the lifecycle policy.
#'
#' @param repositoryName The name of the repository to be evaluated.
#' @param registryId The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
#' @param lifecyclePolicyText The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.
#'
#' @examples
#'
#' @export
start_lifecycle_policy_preview <- function (repositoryName, registryId = NULL, 
    lifecyclePolicyText = NULL) 
{
    op <- Operation(name = "StartLifecyclePolicyPreview", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_lifecycle_policy_preview_input(repositoryName = repositoryName, 
        registryId = registryId, lifecyclePolicyText = lifecyclePolicyText)
    output <- start_lifecycle_policy_preview_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Uploads an image layer part to Amazon ECR
#'
#' Uploads an image layer part to Amazon ECR.
#' 
#' This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the `docker` CLI to pull, tag, and push images.
#'
#' @param repositoryName The name of the repository to which you are uploading layer parts.
#' @param uploadId The upload ID from a previous InitiateLayerUpload operation to associate with the layer part upload.
#' @param partFirstByte The integer value of the first byte of the layer part.
#' @param partLastByte The integer value of the last byte of the layer part.
#' @param layerPartBlob The base64-encoded layer part payload.
#' @param registryId The AWS account ID associated with the registry to which you are uploading layer parts. If you do not specify a registry, the default registry is assumed.
#'
#' @examples
#'
#' @export
upload_layer_part <- function (repositoryName, uploadId, partFirstByte, 
    partLastByte, layerPartBlob, registryId = NULL) 
{
    op <- Operation(name = "UploadLayerPart", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- upload_layer_part_input(repositoryName = repositoryName, 
        uploadId = uploadId, partFirstByte = partFirstByte, partLastByte = partLastByte, 
        layerPartBlob = layerPartBlob, registryId = registryId)
    output <- upload_layer_part_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
