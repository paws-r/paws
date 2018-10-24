#' Deletes one or more builds
#'
#' Deletes one or more builds.
#'
#' @param ids The IDs of the builds to delete.
#'
#' @examples
#'
#' @export
batch_delete_builds <- function (ids) 
{
    op <- Operation(name = "BatchDeleteBuilds", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_delete_builds_input(ids = ids)
    output <- batch_delete_builds_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about builds
#'
#' Gets information about builds.
#'
#' @param ids The IDs of the builds.
#'
#' @examples
#' # The following example gets information about builds with the specified
#' # build IDs.
#' batch_get_builds(
#'   ids = list(
#'     "codebuild-demo-project:9b0ac37f-d19e-4254-9079-f47e9a389eEX",
#'     "codebuild-demo-project:b79a46f7-1473-4636-a23f-da9c45c208EX"
#'   )
#' )
#'
#' @export
batch_get_builds <- function (ids) 
{
    op <- Operation(name = "BatchGetBuilds", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_builds_input(ids = ids)
    output <- batch_get_builds_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about build projects
#'
#' Gets information about build projects.
#'
#' @param names The names of the build projects.
#'
#' @examples
#'
#' @export
batch_get_projects <- function (names) 
{
    op <- Operation(name = "BatchGetProjects", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_projects_input(names = names)
    output <- batch_get_projects_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a build project
#'
#' Creates a build project.
#'
#' @param name The name of the build project.
#' @param source Information about the build input source code for the build project.
#' @param artifacts Information about the build output artifacts for the build project.
#' @param environment Information about the build environment for the build project.
#' @param serviceRole The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
#' @param description A description that makes the build project easy to identify.
#' @param secondarySources An array of `ProjectSource` objects.
#' @param secondaryArtifacts An array of `ProjectArtifacts` objects.
#' @param cache Stores recently used information so that it can be quickly accessed at a later time.
#' @param timeoutInMinutes How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any build that has not been marked as completed. The default is 60 minutes.
#' @param encryptionKey The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.
#' 
#' You can specify either the CMK\'s Amazon Resource Name (ARN) or, if available, the CMK\'s alias (using the format `alias/alias-name alias-name `).
#' @param tags A set of tags for this build project.
#' 
#' These tags are available for use by AWS services that support AWS CodeBuild build project tags.
#' @param vpcConfig VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
#' @param badgeEnabled Set this to true to generate a publicly-accessible URL for your project\'s build badge.
#' @param logsConfig Information about logs for the build project. Logs can be Amazon CloudWatch Logs, uploaded to a specified S3 bucket, or both.
#'
#' @examples
#'
#' @export
create_project <- function (name, source, artifacts, environment, 
    serviceRole, description = NULL, secondarySources = NULL, 
    secondaryArtifacts = NULL, cache = NULL, timeoutInMinutes = NULL, 
    encryptionKey = NULL, tags = NULL, vpcConfig = NULL, badgeEnabled = NULL, 
    logsConfig = NULL) 
{
    op <- Operation(name = "CreateProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_project_input(name = name, source = source, 
        artifacts = artifacts, environment = environment, serviceRole = serviceRole, 
        description = description, secondarySources = secondarySources, 
        secondaryArtifacts = secondaryArtifacts, cache = cache, 
        timeoutInMinutes = timeoutInMinutes, encryptionKey = encryptionKey, 
        tags = tags, vpcConfig = vpcConfig, badgeEnabled = badgeEnabled, 
        logsConfig = logsConfig)
    output <- create_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' For an existing AWS CodeBuild build project that has its source code stored in a GitHub repository, enables AWS CodeBuild to begin automatically rebuilding the source code every time a code change is pushed to the repository
#'
#' For an existing AWS CodeBuild build project that has its source code stored in a GitHub repository, enables AWS CodeBuild to begin automatically rebuilding the source code every time a code change is pushed to the repository.
#' 
#' If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds will be created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you will be billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in [Change a Build Project\'s Settings](http://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).
#'
#' @param projectName The name of the AWS CodeBuild project.
#' @param branchFilter A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn\'t match, then it is not. If branchFilter is empty, then all branches are built.
#'
#' @examples
#'
#' @export
create_webhook <- function (projectName, branchFilter = NULL) 
{
    op <- Operation(name = "CreateWebhook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_webhook_input(projectName = projectName, 
        branchFilter = branchFilter)
    output <- create_webhook_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a build project
#'
#' Deletes a build project.
#'
#' @param name The name of the build project.
#'
#' @examples
#'
#' @export
delete_project <- function (name) 
{
    op <- Operation(name = "DeleteProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_project_input(name = name)
    output <- delete_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' For an existing AWS CodeBuild build project that has its source code stored in a GitHub repository, stops AWS CodeBuild from automatically rebuilding the source code every time a code change is pushed to the repository
#'
#' For an existing AWS CodeBuild build project that has its source code stored in a GitHub repository, stops AWS CodeBuild from automatically rebuilding the source code every time a code change is pushed to the repository.
#'
#' @param projectName The name of the AWS CodeBuild project.
#'
#' @examples
#'
#' @export
delete_webhook <- function (projectName) 
{
    op <- Operation(name = "DeleteWebhook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_webhook_input(projectName = projectName)
    output <- delete_webhook_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets the cache for a project
#'
#' Resets the cache for a project.
#'
#' @param projectName The name of the AWS CodeBuild build project that the cache will be reset for.
#'
#' @examples
#'
#' @export
invalidate_project_cache <- function (projectName) 
{
    op <- Operation(name = "InvalidateProjectCache", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- invalidate_project_cache_input(projectName = projectName)
    output <- invalidate_project_cache_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of build IDs, with each build ID representing a single build
#'
#' Gets a list of build IDs, with each build ID representing a single build.
#'
#' @param sortOrder The order to list build IDs. Valid values include:
#' 
#' -   `ASCENDING`: List the build IDs in ascending order by build ID.
#' 
#' -   `DESCENDING`: List the build IDs in descending order by build ID.
#' @param nextToken During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
#'
#' @examples
#'
#' @export
list_builds <- function (sortOrder = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListBuilds", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_builds_input(sortOrder = sortOrder, nextToken = nextToken)
    output <- list_builds_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of build IDs for the specified build project, with each build ID representing a single build
#'
#' Gets a list of build IDs for the specified build project, with each build ID representing a single build.
#'
#' @param projectName The name of the AWS CodeBuild project.
#' @param sortOrder The order to list build IDs. Valid values include:
#' 
#' -   `ASCENDING`: List the build IDs in ascending order by build ID.
#' 
#' -   `DESCENDING`: List the build IDs in descending order by build ID.
#' @param nextToken During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
#'
#' @examples
#'
#' @export
list_builds_for_project <- function (projectName, sortOrder = NULL, 
    nextToken = NULL) 
{
    op <- Operation(name = "ListBuildsForProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_builds_for_project_input(projectName = projectName, 
        sortOrder = sortOrder, nextToken = nextToken)
    output <- list_builds_for_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about Docker images that are managed by AWS CodeBuild
#'
#' Gets information about Docker images that are managed by AWS CodeBuild.
#'
#' @examples
#'
#' @export
list_curated_environment_images <- function () 
{
    op <- Operation(name = "ListCuratedEnvironmentImages", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_curated_environment_images_input()
    output <- list_curated_environment_images_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of build project names, with each build project name representing a single build project
#'
#' Gets a list of build project names, with each build project name representing a single build project.
#'
#' @param sortBy The criterion to be used to list build project names. Valid values include:
#' 
#' -   `CREATED_TIME`: List the build project names based on when each build project was created.
#' 
#' -   `LAST_MODIFIED_TIME`: List the build project names based on when information about each build project was last changed.
#' 
#' -   `NAME`: List the build project names based on each build project\'s name.
#' 
#' Use `sortOrder` to specify in what order to list the build project names based on the preceding criteria.
#' @param sortOrder The order in which to list build projects. Valid values include:
#' 
#' -   `ASCENDING`: List the build project names in ascending order.
#' 
#' -   `DESCENDING`: List the build project names in descending order.
#' 
#' Use `sortBy` to specify the criterion to be used to list build project names.
#' @param nextToken During a previous call, if there are more than 100 items in the list, only the first 100 items are returned, along with a unique string called a *next token*. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
#'
#' @examples
#'
#' @export
list_projects <- function (sortBy = NULL, sortOrder = NULL, nextToken = NULL) 
{
    op <- Operation(name = "ListProjects", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_projects_input(sortBy = sortBy, sortOrder = sortOrder, 
        nextToken = nextToken)
    output <- list_projects_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts running a build
#'
#' Starts running a build.
#'
#' @param projectName The name of the AWS CodeBuild build project to start running a build.
#' @param secondarySourcesOverride An array of `ProjectSource` objects.
#' @param secondarySourcesVersionOverride An array of `ProjectSourceVersion` objects that specify one or more versions of the project\'s secondary sources to be used for this build only.
#' @param sourceVersion A version of the build input to be built, for this build only. If not specified, the latest version will be used. If specified, must be one of:
#' 
#' -   For AWS CodeCommit: the commit ID to use.
#' 
#' -   For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format `pr/pull-request-ID` (for example `pr/25`). If a branch name is specified, the branch\'s HEAD commit ID will be used. If not specified, the default branch\'s HEAD commit ID will be used.
#' 
#' -   For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch\'s HEAD commit ID will be used. If not specified, the default branch\'s HEAD commit ID will be used.
#' 
#' -   For Amazon Simple Storage Service (Amazon S3): the version ID of the object representing the build input ZIP file to use.
#' @param artifactsOverride Build output artifact settings that override, for this build only, the latest ones already defined in the build project.
#' @param secondaryArtifactsOverride An array of `ProjectArtifacts` objects.
#' @param environmentVariablesOverride A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.
#' @param sourceTypeOverride A source input type for this build that overrides the source input defined in the build project.
#' @param sourceLocationOverride A location that overrides for this build the source location for the one defined in the build project.
#' @param sourceAuthOverride An authorization type for this build that overrides the one defined in the build project. This override applies only if the build project\'s source is BitBucket or GitHub.
#' @param gitCloneDepthOverride The user-defined depth of history, with a minimum value of 0, that overrides, for this build only, any previous depth of history defined in the build project.
#' @param buildspecOverride A build spec declaration that overrides, for this build only, the latest one already defined in the build project.
#' @param insecureSslOverride Enable this flag to override the insecure SSL setting that is specified in the build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build\'s source is GitHub Enterprise.
#' @param reportBuildStatusOverride Set to true to report to your source provider the status of a build\'s start and completion. If you use this option with a source provider other than GitHub, an invalidInputException is thrown.
#' @param environmentTypeOverride A container type for this build that overrides the one specified in the build project.
#' @param imageOverride The name of an image for this build that overrides the one specified in the build project.
#' @param computeTypeOverride The name of a compute type for this build that overrides the one specified in the build project.
#' @param certificateOverride The name of a certificate for this build that overrides the one specified in the build project.
#' @param cacheOverride A ProjectCache object specified for this build that overrides the one defined in the build project.
#' @param serviceRoleOverride The name of a service role for this build that overrides the one specified in the build project.
#' @param privilegedModeOverride Enable this flag to override privileged mode in the build project.
#' @param timeoutInMinutesOverride The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.
#' @param idempotencyToken A unique, case sensitive identifier you provide to ensure the idempotency of the StartBuild request. The token is included in the StartBuild request and is valid for 12 hours. If you repeat the StartBuild request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
#' @param logsConfigOverride Log settings for this build that override the log settings defined in the build project.
#'
#' @examples
#'
#' @export
start_build <- function (projectName, secondarySourcesOverride = NULL, 
    secondarySourcesVersionOverride = NULL, sourceVersion = NULL, 
    artifactsOverride = NULL, secondaryArtifactsOverride = NULL, 
    environmentVariablesOverride = NULL, sourceTypeOverride = NULL, 
    sourceLocationOverride = NULL, sourceAuthOverride = NULL, 
    gitCloneDepthOverride = NULL, buildspecOverride = NULL, insecureSslOverride = NULL, 
    reportBuildStatusOverride = NULL, environmentTypeOverride = NULL, 
    imageOverride = NULL, computeTypeOverride = NULL, certificateOverride = NULL, 
    cacheOverride = NULL, serviceRoleOverride = NULL, privilegedModeOverride = NULL, 
    timeoutInMinutesOverride = NULL, idempotencyToken = NULL, 
    logsConfigOverride = NULL) 
{
    op <- Operation(name = "StartBuild", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_build_input(projectName = projectName, secondarySourcesOverride = secondarySourcesOverride, 
        secondarySourcesVersionOverride = secondarySourcesVersionOverride, 
        sourceVersion = sourceVersion, artifactsOverride = artifactsOverride, 
        secondaryArtifactsOverride = secondaryArtifactsOverride, 
        environmentVariablesOverride = environmentVariablesOverride, 
        sourceTypeOverride = sourceTypeOverride, sourceLocationOverride = sourceLocationOverride, 
        sourceAuthOverride = sourceAuthOverride, gitCloneDepthOverride = gitCloneDepthOverride, 
        buildspecOverride = buildspecOverride, insecureSslOverride = insecureSslOverride, 
        reportBuildStatusOverride = reportBuildStatusOverride, 
        environmentTypeOverride = environmentTypeOverride, imageOverride = imageOverride, 
        computeTypeOverride = computeTypeOverride, certificateOverride = certificateOverride, 
        cacheOverride = cacheOverride, serviceRoleOverride = serviceRoleOverride, 
        privilegedModeOverride = privilegedModeOverride, timeoutInMinutesOverride = timeoutInMinutesOverride, 
        idempotencyToken = idempotencyToken, logsConfigOverride = logsConfigOverride)
    output <- start_build_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attempts to stop running a build
#'
#' Attempts to stop running a build.
#'
#' @param id The ID of the build.
#'
#' @examples
#'
#' @export
stop_build <- function (id) 
{
    op <- Operation(name = "StopBuild", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_build_input(id = id)
    output <- stop_build_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the settings of a build project
#'
#' Changes the settings of a build project.
#'
#' @param name The name of the build project.
#' 
#' You cannot change a build project\'s name.
#' @param description A new or replacement description of the build project.
#' @param source Information to be changed about the build input source code for the build project.
#' @param secondarySources An array of `ProjectSource` objects.
#' @param artifacts Information to be changed about the build output artifacts for the build project.
#' @param secondaryArtifacts An array of `ProjectSource` objects.
#' @param cache Stores recently used information so that it can be quickly accessed at a later time.
#' @param environment Information to be changed about the build environment for the build project.
#' @param serviceRole The replacement ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
#' @param timeoutInMinutes The replacement value in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed.
#' @param encryptionKey The replacement AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.
#' 
#' You can specify either the CMK\'s Amazon Resource Name (ARN) or, if available, the CMK\'s alias (using the format `alias/alias-name alias-name `).
#' @param tags The replacement set of tags for this build project.
#' 
#' These tags are available for use by AWS services that support AWS CodeBuild build project tags.
#' @param vpcConfig VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
#' @param badgeEnabled Set this to true to generate a publicly-accessible URL for your project\'s build badge.
#' @param logsConfig Information about logs for the build project. A project can create Amazon CloudWatch Logs, logs in an S3 bucket, or both.
#'
#' @examples
#'
#' @export
update_project <- function (name, description = NULL, source = NULL, 
    secondarySources = NULL, artifacts = NULL, secondaryArtifacts = NULL, 
    cache = NULL, environment = NULL, serviceRole = NULL, timeoutInMinutes = NULL, 
    encryptionKey = NULL, tags = NULL, vpcConfig = NULL, badgeEnabled = NULL, 
    logsConfig = NULL) 
{
    op <- Operation(name = "UpdateProject", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_project_input(name = name, description = description, 
        source = source, secondarySources = secondarySources, 
        artifacts = artifacts, secondaryArtifacts = secondaryArtifacts, 
        cache = cache, environment = environment, serviceRole = serviceRole, 
        timeoutInMinutes = timeoutInMinutes, encryptionKey = encryptionKey, 
        tags = tags, vpcConfig = vpcConfig, badgeEnabled = badgeEnabled, 
        logsConfig = logsConfig)
    output <- update_project_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the webhook associated with an AWS CodeBuild build project
#'
#' Updates the webhook associated with an AWS CodeBuild build project.
#'
#' @param projectName The name of the AWS CodeBuild project.
#' @param branchFilter A regular expression used to determine which branches in a repository are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If it doesn\'t match, then it is not. If branchFilter is empty, then all branches are built.
#' @param rotateSecret A boolean value that specifies whether the associated repository\'s secret token should be updated.
#'
#' @examples
#'
#' @export
update_webhook <- function (projectName, branchFilter = NULL, 
    rotateSecret = NULL) 
{
    op <- Operation(name = "UpdateWebhook", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_webhook_input(projectName = projectName, 
        branchFilter = branchFilter, rotateSecret = rotateSecret)
    output <- update_webhook_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
