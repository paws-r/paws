#' Returns information about one or more repositories
#'
#' Returns information about one or more repositories.
#' 
#' The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.
#'
#' @param repositoryNames The names of the repositories to get information about.
#'
#' @examples
#'
#' @export
batch_get_repositories <- function (repositoryNames) 
{
    op <- Operation(name = "BatchGetRepositories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_repositories_input(repositoryNames = repositoryNames)
    output <- batch_get_repositories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new branch in a repository and points the branch to a commit
#'
#' Creates a new branch in a repository and points the branch to a commit.
#' 
#' Calling the create branch operation does not set a repository\'s default branch. To do this, call the update default branch operation.
#'
#' @param repositoryName The name of the repository in which you want to create the new branch.
#' @param branchName The name of the new branch to create.
#' @param commitId The ID of the commit to point the new branch to.
#'
#' @examples
#'
#' @export
create_branch <- function (repositoryName, branchName, commitId) 
{
    op <- Operation(name = "CreateBranch", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_branch_input(repositoryName = repositoryName, 
        branchName = branchName, commitId = commitId)
    output <- create_branch_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a pull request in the specified repository
#'
#' Creates a pull request in the specified repository.
#'
#' @param title The title of the pull request. This title will be used to identify the pull request to other users in the repository.
#' @param targets The targets for the pull request, including the source of the code to be reviewed (the source branch), and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).
#' @param description A description of the pull request.
#' @param clientRequestToken A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.
#' 
#' The AWS SDKs prepopulate client request tokens. If using an AWS SDK, you do not have to generate an idempotency token, as this will be done for you.
#'
#' @examples
#'
#' @export
create_pull_request <- function (title, targets, description = NULL, 
    clientRequestToken = NULL) 
{
    op <- Operation(name = "CreatePullRequest", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_pull_request_input(title = title, targets = targets, 
        description = description, clientRequestToken = clientRequestToken)
    output <- create_pull_request_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new, empty repository
#'
#' Creates a new, empty repository.
#'
#' @param repositoryName The name of the new repository to be created.
#' 
#' The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. For a full description of the limits on repository names, see [Limits](http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in the AWS CodeCommit User Guide. The suffix \".git\" is prohibited.
#' @param repositoryDescription A comment or description about the new repository.
#' 
#' The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.
#'
#' @examples
#'
#' @export
create_repository <- function (repositoryName, repositoryDescription = NULL) 
{
    op <- Operation(name = "CreateRepository", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_repository_input(repositoryName = repositoryName, 
        repositoryDescription = repositoryDescription)
    output <- create_repository_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a branch from a repository, unless that branch is the default branch for the repository
#'
#' Deletes a branch from a repository, unless that branch is the default branch for the repository.
#'
#' @param repositoryName The name of the repository that contains the branch to be deleted.
#' @param branchName The name of the branch to delete.
#'
#' @examples
#'
#' @export
delete_branch <- function (repositoryName, branchName) 
{
    op <- Operation(name = "DeleteBranch", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_branch_input(repositoryName = repositoryName, 
        branchName = branchName)
    output <- delete_branch_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the content of a comment made on a change, file, or commit in a repository
#'
#' Deletes the content of a comment made on a change, file, or commit in a repository.
#'
#' @param commentId The unique, system-generated ID of the comment. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.
#'
#' @examples
#'
#' @export
delete_comment_content <- function (commentId) 
{
    op <- Operation(name = "DeleteCommentContent", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_comment_content_input(commentId = commentId)
    output <- delete_comment_content_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified file from a specified branch
#'
#' Deletes a specified file from a specified branch. A commit is created on the branch that contains the revision. The file will still exist in the commits prior to the commit that contains the deletion.
#'
#' @param repositoryName The name of the repository that contains the file to delete.
#' @param branchName The name of the branch where the commit will be made deleting the file.
#' @param filePath The fully-qualified path to the file that will be deleted, including the full name and extension of that file. For example, /examples/file.md is a fully qualified path to a file named file.md in a folder named examples.
#' @param parentCommitId The ID of the commit that is the tip of the branch where you want to create the commit that will delete the file. This must be the HEAD commit for the branch. The commit that deletes the file will be created from this commit ID.
#' @param keepEmptyFolders Specifies whether to delete the folder or directory that contains the file you want to delete if that file is the only object in the folder or directory. By default, empty folders will be deleted. This includes empty folders that are part of the directory structure. For example, if the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the last file in dir4 will also delete the empty folders dir4, dir3, and dir2.
#' @param commitMessage The commit message you want to include as part of deleting the file. Commit messages are limited to 256 KB. If no message is specified, a default message will be used.
#' @param name The name of the author of the commit that deletes the file. If no name is specified, the user\'s ARN will be used as the author name and committer name.
#' @param email The email address for the commit that deletes the file. If no email address is specified, the email address will be left blank.
#'
#' @examples
#'
#' @export
delete_file <- function (repositoryName, branchName, filePath, 
    parentCommitId, keepEmptyFolders = NULL, commitMessage = NULL, 
    name = NULL, email = NULL) 
{
    op <- Operation(name = "DeleteFile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_file_input(repositoryName = repositoryName, 
        branchName = branchName, filePath = filePath, parentCommitId = parentCommitId, 
        keepEmptyFolders = keepEmptyFolders, commitMessage = commitMessage, 
        name = name, email = email)
    output <- delete_file_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a repository
#'
#' Deletes a repository. If a specified repository was already deleted, a null repository ID will be returned.
#' 
#' Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository will fail.
#'
#' @param repositoryName The name of the repository to delete.
#'
#' @examples
#'
#' @export
delete_repository <- function (repositoryName) 
{
    op <- Operation(name = "DeleteRepository", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_repository_input(repositoryName = repositoryName)
    output <- delete_repository_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about one or more pull request events
#'
#' Returns information about one or more pull request events.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param pullRequestEventType Optional. The pull request event type about which you want to return information.
#' @param actorArn The Amazon Resource Name (ARN) of the user whose actions resulted in the event. Examples include updating the pull request with additional commits or changing the status of a pull request.
#' @param nextToken An enumeration token that when provided in a request, returns the next batch of the results.
#' @param maxResults A non-negative integer used to limit the number of returned results. The default is 100 events, which is also the maximum number of events that can be returned in a result.
#'
#' @examples
#'
#' @export
describe_pull_request_events <- function (pullRequestId, pullRequestEventType = NULL, 
    actorArn = NULL, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "DescribePullRequestEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_pull_request_events_input(pullRequestId = pullRequestId, 
        pullRequestEventType = pullRequestEventType, actorArn = actorArn, 
        nextToken = nextToken, maxResults = maxResults)
    output <- describe_pull_request_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the base-64 encoded content of an individual blob within a repository
#'
#' Returns the base-64 encoded content of an individual blob within a repository.
#'
#' @param repositoryName The name of the repository that contains the blob.
#' @param blobId The ID of the blob, which is its SHA-1 pointer.
#'
#' @examples
#'
#' @export
get_blob <- function (repositoryName, blobId) 
{
    op <- Operation(name = "GetBlob", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_blob_input(repositoryName = repositoryName, 
        blobId = blobId)
    output <- get_blob_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a repository branch, including its name and the last commit ID
#'
#' Returns information about a repository branch, including its name and the last commit ID.
#'
#' @param repositoryName The name of the repository that contains the branch for which you want to retrieve information.
#' @param branchName The name of the branch for which you want to retrieve information.
#'
#' @examples
#'
#' @export
get_branch <- function (repositoryName = NULL, branchName = NULL) 
{
    op <- Operation(name = "GetBranch", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_branch_input(repositoryName = repositoryName, 
        branchName = branchName)
    output <- get_branch_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the content of a comment made on a change, file, or commit in a repository
#'
#' Returns the content of a comment made on a change, file, or commit in a repository.
#'
#' @param commentId The unique, system-generated ID of the comment. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.
#'
#' @examples
#'
#' @export
get_comment <- function (commentId) 
{
    op <- Operation(name = "GetComment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_comment_input(commentId = commentId)
    output <- get_comment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about comments made on the comparison between two commits
#'
#' Returns information about comments made on the comparison between two commits.
#'
#' @param repositoryName The name of the repository where you want to compare commits.
#' @param afterCommitId To establish the directionality of the comparison, the full commit ID of the \'after\' commit.
#' @param beforeCommitId To establish the directionality of the comparison, the full commit ID of the \'before\' commit.
#' @param nextToken An enumeration token that when provided in a request, returns the next batch of the results.
#' @param maxResults A non-negative integer used to limit the number of returned results. The default is 100 comments, and is configurable up to 500.
#'
#' @examples
#'
#' @export
get_comments_for_compared_commit <- function (repositoryName, 
    afterCommitId, beforeCommitId = NULL, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "GetCommentsForComparedCommit", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_comments_for_compared_commit_input(repositoryName = repositoryName, 
        afterCommitId = afterCommitId, beforeCommitId = beforeCommitId, 
        nextToken = nextToken, maxResults = maxResults)
    output <- get_comments_for_compared_commit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns comments made on a pull request
#'
#' Returns comments made on a pull request.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param repositoryName The name of the repository that contains the pull request.
#' @param beforeCommitId The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.
#' @param afterCommitId The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.
#' @param nextToken An enumeration token that when provided in a request, returns the next batch of the results.
#' @param maxResults A non-negative integer used to limit the number of returned results. The default is 100 comments. You can return up to 500 comments with a single request.
#'
#' @examples
#'
#' @export
get_comments_for_pull_request <- function (pullRequestId, repositoryName = NULL, 
    beforeCommitId = NULL, afterCommitId = NULL, nextToken = NULL, 
    maxResults = NULL) 
{
    op <- Operation(name = "GetCommentsForPullRequest", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_comments_for_pull_request_input(pullRequestId = pullRequestId, 
        repositoryName = repositoryName, beforeCommitId = beforeCommitId, 
        afterCommitId = afterCommitId, nextToken = nextToken, 
        maxResults = maxResults)
    output <- get_comments_for_pull_request_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a commit, including commit message and committer information
#'
#' Returns information about a commit, including commit message and committer information.
#'
#' @param repositoryName The name of the repository to which the commit was made.
#' @param commitId The commit ID. Commit IDs are the full SHA of the commit.
#'
#' @examples
#'
#' @export
get_commit <- function (repositoryName, commitId) 
{
    op <- Operation(name = "GetCommit", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_commit_input(repositoryName = repositoryName, 
        commitId = commitId)
    output <- get_commit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference)
#'
#' Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference). Results can be limited to a specified path.
#'
#' @param repositoryName The name of the repository where you want to get differences.
#' @param afterCommitSpecifier The branch, tag, HEAD, or other fully qualified reference used to identify a commit.
#' @param beforeCommitSpecifier The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, the full commit ID. Optional. If not specified, all changes prior to the `afterCommitSpecifier` value will be shown. If you do not use `beforeCommitSpecifier` in your request, consider limiting the results with `maxResults`.
#' @param beforePath The file path in which to check for differences. Limits the results to this path. Can also be used to specify the previous name of a directory or folder. If `beforePath` and `afterPath` are not specified, differences will be shown for all paths.
#' @param afterPath The file path in which to check differences. Limits the results to this path. Can also be used to specify the changed name of a directory or folder, if it has changed. If not specified, differences will be shown for all paths.
#' @param MaxResults A non-negative integer used to limit the number of returned results.
#' @param NextToken An enumeration token that when provided in a request, returns the next batch of the results.
#'
#' @examples
#'
#' @export
get_differences <- function (repositoryName, afterCommitSpecifier, 
    beforeCommitSpecifier = NULL, beforePath = NULL, afterPath = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetDifferences", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_differences_input(repositoryName = repositoryName, 
        afterCommitSpecifier = afterCommitSpecifier, beforeCommitSpecifier = beforeCommitSpecifier, 
        beforePath = beforePath, afterPath = afterPath, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- get_differences_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the base-64 encoded contents of a specified file and its metadata
#'
#' Returns the base-64 encoded contents of a specified file and its metadata.
#'
#' @param repositoryName The name of the repository that contains the file.
#' @param filePath The fully-qualified path to the file, including the full name and extension of the file. For example, /examples/file.md is the fully-qualified path to a file named file.md in a folder named examples.
#' @param commitSpecifier The fully-quaified reference that identifies the commit that contains the file. For example, you could specify a full commit ID, a tag, a branch name, or a reference such as refs/heads/master. If none is provided, then the head commit will be used.
#'
#' @examples
#'
#' @export
get_file <- function (repositoryName, filePath, commitSpecifier = NULL) 
{
    op <- Operation(name = "GetFile", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_file_input(repositoryName = repositoryName, 
        filePath = filePath, commitSpecifier = commitSpecifier)
    output <- get_file_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the contents of a specified folder in a repository
#'
#' Returns the contents of a specified folder in a repository.
#'
#' @param repositoryName The name of the repository.
#' @param folderPath The fully-qualified path to the folder whose contents will be returned, including the folder name. For example, /examples is a fully-qualified path to a folder named examples that was created off of the root directory (/) of a repository.
#' @param commitSpecifier A fully-qualified reference used to identify a commit that contains the version of the folder\'s content to return. A fully-qualified reference can be a commit ID, branch name, tag, or reference such as HEAD. If no specifier is provided, the folder content will be returned as it exists in the HEAD commit.
#'
#' @examples
#'
#' @export
get_folder <- function (repositoryName, folderPath, commitSpecifier = NULL) 
{
    op <- Operation(name = "GetFolder", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_folder_input(repositoryName = repositoryName, 
        folderPath = folderPath, commitSpecifier = commitSpecifier)
    output <- get_folder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository
#'
#' Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
#'
#' @param repositoryName The name of the repository where the pull request was created.
#' @param destinationCommitSpecifier The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.
#' @param sourceCommitSpecifier The branch, tag, HEAD, or other fully qualified reference used to identify a commit. For example, a branch name or a full commit ID.
#' @param mergeOption The merge option or strategy you want to use to merge the code. The only valid value is FAST\_FORWARD\_MERGE.
#'
#' @examples
#'
#' @export
get_merge_conflicts <- function (repositoryName, destinationCommitSpecifier, 
    sourceCommitSpecifier, mergeOption) 
{
    op <- Operation(name = "GetMergeConflicts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_merge_conflicts_input(repositoryName = repositoryName, 
        destinationCommitSpecifier = destinationCommitSpecifier, 
        sourceCommitSpecifier = sourceCommitSpecifier, mergeOption = mergeOption)
    output <- get_merge_conflicts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about a pull request in a specified repository
#'
#' Gets information about a pull request in a specified repository.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#'
#' @examples
#'
#' @export
get_pull_request <- function (pullRequestId) 
{
    op <- Operation(name = "GetPullRequest", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_pull_request_input(pullRequestId = pullRequestId)
    output <- get_pull_request_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a repository
#'
#' Returns information about a repository.
#' 
#' The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.
#'
#' @param repositoryName The name of the repository to get information about.
#'
#' @examples
#'
#' @export
get_repository <- function (repositoryName) 
{
    op <- Operation(name = "GetRepository", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_repository_input(repositoryName = repositoryName)
    output <- get_repository_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about triggers configured for a repository
#'
#' Gets information about triggers configured for a repository.
#'
#' @param repositoryName The name of the repository for which the trigger is configured.
#'
#' @examples
#'
#' @export
get_repository_triggers <- function (repositoryName) 
{
    op <- Operation(name = "GetRepositoryTriggers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_repository_triggers_input(repositoryName = repositoryName)
    output <- get_repository_triggers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more branches in a repository
#'
#' Gets information about one or more branches in a repository.
#'
#' @param repositoryName The name of the repository that contains the branches.
#' @param nextToken An enumeration token that allows the operation to batch the results.
#'
#' @examples
#'
#' @export
list_branches <- function (repositoryName, nextToken = NULL) 
{
    op <- Operation(name = "ListBranches", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_branches_input(repositoryName = repositoryName, 
        nextToken = nextToken)
    output <- list_branches_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of pull requests for a specified repository
#'
#' Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.
#'
#' @param repositoryName The name of the repository for which you want to list pull requests.
#' @param authorArn Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.
#' @param pullRequestStatus Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.
#' @param nextToken An enumeration token that when provided in a request, returns the next batch of the results.
#' @param maxResults A non-negative integer used to limit the number of returned results.
#'
#' @examples
#'
#' @export
list_pull_requests <- function (repositoryName, authorArn = NULL, 
    pullRequestStatus = NULL, nextToken = NULL, maxResults = NULL) 
{
    op <- Operation(name = "ListPullRequests", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_pull_requests_input(repositoryName = repositoryName, 
        authorArn = authorArn, pullRequestStatus = pullRequestStatus, 
        nextToken = nextToken, maxResults = maxResults)
    output <- list_pull_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets information about one or more repositories
#'
#' Gets information about one or more repositories.
#'
#' @param nextToken An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.
#' @param sortBy The criteria used to sort the results of a list repositories operation.
#' @param order The order in which to sort the results of a list repositories operation.
#'
#' @examples
#'
#' @export
list_repositories <- function (nextToken = NULL, sortBy = NULL, 
    order = NULL) 
{
    op <- Operation(name = "ListRepositories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_repositories_input(nextToken = nextToken, sortBy = sortBy, 
        order = order)
    output <- list_repositories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Closes a pull request and attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge option
#'
#' Closes a pull request and attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge option.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param repositoryName The name of the repository where the pull request was created.
#' @param sourceCommitId The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.
#'
#' @examples
#'
#' @export
merge_pull_request_by_fast_forward <- function (pullRequestId, 
    repositoryName, sourceCommitId = NULL) 
{
    op <- Operation(name = "MergePullRequestByFastForward", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- merge_pull_request_by_fast_forward_input(pullRequestId = pullRequestId, 
        repositoryName = repositoryName, sourceCommitId = sourceCommitId)
    output <- merge_pull_request_by_fast_forward_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Posts a comment on the comparison between two commits
#'
#' Posts a comment on the comparison between two commits.
#'
#' @param repositoryName The name of the repository where you want to post a comment on the comparison between commits.
#' @param afterCommitId To establish the directionality of the comparison, the full commit ID of the \'after\' commit.
#' @param content The content of the comment you want to make.
#' @param beforeCommitId To establish the directionality of the comparison, the full commit ID of the \'before\' commit.
#' @param location The location of the comparison where you want to comment.
#' @param clientRequestToken A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.
#'
#' @examples
#'
#' @export
post_comment_for_compared_commit <- function (repositoryName, 
    afterCommitId, content, beforeCommitId = NULL, location = NULL, 
    clientRequestToken = NULL) 
{
    op <- Operation(name = "PostCommentForComparedCommit", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- post_comment_for_compared_commit_input(repositoryName = repositoryName, 
        afterCommitId = afterCommitId, content = content, beforeCommitId = beforeCommitId, 
        location = location, clientRequestToken = clientRequestToken)
    output <- post_comment_for_compared_commit_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Posts a comment on a pull request
#'
#' Posts a comment on a pull request.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param repositoryName The name of the repository where you want to post a comment on a pull request.
#' @param beforeCommitId The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.
#' @param afterCommitId The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.
#' @param content The content of your comment on the change.
#' @param location The location of the change where you want to post your comment. If no location is provided, the comment will be posted as a general comment on the pull request difference between the before commit ID and the after commit ID.
#' @param clientRequestToken A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.
#'
#' @examples
#'
#' @export
post_comment_for_pull_request <- function (pullRequestId, repositoryName, 
    beforeCommitId, afterCommitId, content, location = NULL, 
    clientRequestToken = NULL) 
{
    op <- Operation(name = "PostCommentForPullRequest", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- post_comment_for_pull_request_input(pullRequestId = pullRequestId, 
        repositoryName = repositoryName, beforeCommitId = beforeCommitId, 
        afterCommitId = afterCommitId, content = content, location = location, 
        clientRequestToken = clientRequestToken)
    output <- post_comment_for_pull_request_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Posts a comment in reply to an existing comment on a comparison between commits or a pull request
#'
#' Posts a comment in reply to an existing comment on a comparison between commits or a pull request.
#'
#' @param inReplyTo The system-generated ID of the comment to which you want to reply. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.
#' @param content The contents of your reply to a comment.
#' @param clientRequestToken A unique, client-generated idempotency token that when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request will return information about the initial request that used that token.
#'
#' @examples
#'
#' @export
post_comment_reply <- function (inReplyTo, content, clientRequestToken = NULL) 
{
    op <- Operation(name = "PostCommentReply", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- post_comment_reply_input(inReplyTo = inReplyTo, 
        content = content, clientRequestToken = clientRequestToken)
    output <- post_comment_reply_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch
#'
#' Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.
#'
#' @param repositoryName The name of the repository where you want to add or update the file.
#' @param branchName The name of the branch where you want to add or update the file. If this is an empty repository, this branch will be created.
#' @param fileContent The content of the file, in binary object format.
#' @param filePath The name of the file you want to add or update, including the relative path to the file in the repository.
#' 
#' If the path does not currently exist in the repository, the path will be created as part of adding the file.
#' @param fileMode The file mode permissions of the blob. Valid file mode permissions are listed below.
#' @param parentCommitId The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, no commit ID is required. If this is not an empty repository, a commit ID is required.
#' 
#' The commit ID must match the ID of the head commit at the time of the operation, or an error will occur, and the file will not be added or updated.
#' @param commitMessage A message about why this file was added or updated. While optional, adding a message is strongly encouraged in order to provide a more useful commit history for your repository.
#' @param name The name of the person adding or updating the file. While optional, adding a name is strongly encouraged in order to provide a more useful commit history for your repository.
#' @param email An email address for the person adding or updating the file.
#'
#' @examples
#'
#' @export
put_file <- function (repositoryName, branchName, fileContent, 
    filePath, fileMode = NULL, parentCommitId = NULL, commitMessage = NULL, 
    name = NULL, email = NULL) 
{
    op <- Operation(name = "PutFile", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- put_file_input(repositoryName = repositoryName, 
        branchName = branchName, fileContent = fileContent, filePath = filePath, 
        fileMode = fileMode, parentCommitId = parentCommitId, 
        commitMessage = commitMessage, name = name, email = email)
    output <- put_file_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces all triggers for a repository
#'
#' Replaces all triggers for a repository. This can be used to create or delete triggers.
#'
#' @param repositoryName The name of the repository where you want to create or update the trigger.
#' @param triggers The JSON block of configuration information for each trigger.
#'
#' @examples
#'
#' @export
put_repository_triggers <- function (repositoryName, triggers) 
{
    op <- Operation(name = "PutRepositoryTriggers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- put_repository_triggers_input(repositoryName = repositoryName, 
        triggers = triggers)
    output <- put_repository_triggers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tests the functionality of repository triggers by sending information to the trigger target
#'
#' Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test will send data from the last commit. If no data is available, sample data will be generated.
#'
#' @param repositoryName The name of the repository in which to test the triggers.
#' @param triggers The list of triggers to test.
#'
#' @examples
#'
#' @export
test_repository_triggers <- function (repositoryName, triggers) 
{
    op <- Operation(name = "TestRepositoryTriggers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- test_repository_triggers_input(repositoryName = repositoryName, 
        triggers = triggers)
    output <- test_repository_triggers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the contents of a comment
#'
#' Replaces the contents of a comment.
#'
#' @param commentId The system-generated ID of the comment you want to update. To get this ID, use GetCommentsForComparedCommit or GetCommentsForPullRequest.
#' @param content The updated content with which you want to replace the existing content of the comment.
#'
#' @examples
#'
#' @export
update_comment <- function (commentId, content) 
{
    op <- Operation(name = "UpdateComment", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_comment_input(commentId = commentId, content = content)
    output <- update_comment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets or changes the default branch name for the specified repository
#'
#' Sets or changes the default branch name for the specified repository.
#' 
#' If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.
#'
#' @param repositoryName The name of the repository to set or change the default branch for.
#' @param defaultBranchName The name of the branch to set as the default.
#'
#' @examples
#'
#' @export
update_default_branch <- function (repositoryName, defaultBranchName) 
{
    op <- Operation(name = "UpdateDefaultBranch", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_default_branch_input(repositoryName = repositoryName, 
        defaultBranchName = defaultBranchName)
    output <- update_default_branch_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the contents of the description of a pull request
#'
#' Replaces the contents of the description of a pull request.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param description The updated content of the description for the pull request. This content will replace the existing description.
#'
#' @examples
#'
#' @export
update_pull_request_description <- function (pullRequestId, description) 
{
    op <- Operation(name = "UpdatePullRequestDescription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_pull_request_description_input(pullRequestId = pullRequestId, 
        description = description)
    output <- update_pull_request_description_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the status of a pull request
#'
#' Updates the status of a pull request.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param pullRequestStatus The status of the pull request. The only valid operations are to update the status from `OPEN` to `OPEN`, `OPEN` to `CLOSED` or from from `CLOSED` to `CLOSED`.
#'
#' @examples
#'
#' @export
update_pull_request_status <- function (pullRequestId, pullRequestStatus) 
{
    op <- Operation(name = "UpdatePullRequestStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_pull_request_status_input(pullRequestId = pullRequestId, 
        pullRequestStatus = pullRequestStatus)
    output <- update_pull_request_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces the title of a pull request
#'
#' Replaces the title of a pull request.
#'
#' @param pullRequestId The system-generated ID of the pull request. To get this ID, use ListPullRequests.
#' @param title The updated title of the pull request. This will replace the existing title.
#'
#' @examples
#'
#' @export
update_pull_request_title <- function (pullRequestId, title) 
{
    op <- Operation(name = "UpdatePullRequestTitle", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_pull_request_title_input(pullRequestId = pullRequestId, 
        title = title)
    output <- update_pull_request_title_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets or changes the comment or description for a repository
#'
#' Sets or changes the comment or description for a repository.
#' 
#' The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.
#'
#' @param repositoryName The name of the repository to set or change the comment or description for.
#' @param repositoryDescription The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.
#'
#' @examples
#'
#' @export
update_repository_description <- function (repositoryName, repositoryDescription = NULL) 
{
    op <- Operation(name = "UpdateRepositoryDescription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_repository_description_input(repositoryName = repositoryName, 
        repositoryDescription = repositoryDescription)
    output <- update_repository_description_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Renames a repository
#'
#' Renames a repository. The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix \".git\" is prohibited. For a full description of the limits on repository names, see [Limits](http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in the AWS CodeCommit User Guide.
#'
#' @param oldName The existing name of the repository.
#' @param newName The new name for the repository.
#'
#' @examples
#'
#' @export
update_repository_name <- function (oldName, newName) 
{
    op <- Operation(name = "UpdateRepositoryName", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_repository_name_input(oldName = oldName, 
        newName = newName)
    output <- update_repository_name_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
