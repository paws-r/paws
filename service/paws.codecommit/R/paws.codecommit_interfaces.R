batch_get_repositories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryNames = structure(list(structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+")), shape = "RepositoryNameList", 
        type = "list", locationName = "repositoryNames")), shape = "BatchGetRepositoriesInput", 
        type = "structure")
    return(populate(args, shape))
}

batch_get_repositories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Repositories = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", locationName = "accountId"), 
        RepositoryId = structure(logical(0), shape = "RepositoryId", 
            type = "string", locationName = "repositoryId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), RepositoryDescription = structure(logical(0), 
            shape = "RepositoryDescription", type = "string", 
            max = 1000L, locationName = "repositoryDescription"), 
        DefaultBranch = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "defaultBranch"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        CloneUrlHttp = structure(logical(0), shape = "CloneUrlHttp", 
            type = "string", locationName = "cloneUrlHttp"), 
        CloneUrlSsh = structure(logical(0), shape = "CloneUrlSsh", 
            type = "string", locationName = "cloneUrlSsh"), Arn = structure(logical(0), 
            shape = "Arn", type = "string")), shape = "RepositoryMetadata", 
        type = "structure")), shape = "RepositoryMetadataList", 
        type = "list", locationName = "repositories"), RepositoriesNotFound = structure(list(structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+")), shape = "RepositoryNotFoundList", 
        type = "list", locationName = "repositoriesNotFound")), 
        shape = "BatchGetRepositoriesOutput", type = "structure")
    return(populate(args, shape))
}

create_branch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BranchName = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "branchName"), 
        CommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "commitId")), shape = "CreateBranchInput", 
        type = "structure")
    return(populate(args, shape))
}

create_branch_output <- function () 
{
    return(list())
}

create_pull_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Title = structure(logical(0), shape = "Title", 
        type = "string", max = 150L, locationName = "title"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 10240L, locationName = "description"), 
        Targets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference")), 
            shape = "Target", type = "structure")), shape = "TargetList", 
            type = "list", locationName = "targets"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", locationName = "clientRequestToken")), 
        shape = "CreatePullRequestInput", type = "structure")
    return(populate(args, shape))
}

create_pull_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequest = structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 10240L, 
            locationName = "description"), LastActivityDate = structure(logical(0), 
            shape = "LastModifiedDate", type = "timestamp", locationName = "lastActivityDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestTargets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            DestinationCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommit"), 
            SourceCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommit"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestTarget", 
            type = "structure")), shape = "PullRequestTargetList", 
            type = "list", locationName = "pullRequestTargets"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PullRequest", type = "structure", locationName = "pullRequest")), 
        shape = "CreatePullRequestOutput", type = "structure")
    return(populate(args, shape))
}

create_repository_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        RepositoryDescription = structure(logical(0), shape = "RepositoryDescription", 
            type = "string", max = 1000L, locationName = "repositoryDescription")), 
        shape = "CreateRepositoryInput", type = "structure")
    return(populate(args, shape))
}

create_repository_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryMetadata = structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", locationName = "accountId"), 
        RepositoryId = structure(logical(0), shape = "RepositoryId", 
            type = "string", locationName = "repositoryId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), RepositoryDescription = structure(logical(0), 
            shape = "RepositoryDescription", type = "string", 
            max = 1000L, locationName = "repositoryDescription"), 
        DefaultBranch = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "defaultBranch"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        CloneUrlHttp = structure(logical(0), shape = "CloneUrlHttp", 
            type = "string", locationName = "cloneUrlHttp"), 
        CloneUrlSsh = structure(logical(0), shape = "CloneUrlSsh", 
            type = "string", locationName = "cloneUrlSsh"), Arn = structure(logical(0), 
            shape = "Arn", type = "string")), shape = "RepositoryMetadata", 
        type = "structure", locationName = "repositoryMetadata")), 
        shape = "CreateRepositoryOutput", type = "structure")
    return(populate(args, shape))
}

delete_branch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BranchName = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "branchName")), 
        shape = "DeleteBranchInput", type = "structure")
    return(populate(args, shape))
}

delete_branch_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeletedBranch = structure(list(BranchName = structure(logical(0), 
        shape = "BranchName", type = "string", max = 256L, min = 1L, 
        locationName = "branchName"), CommitId = structure(logical(0), 
        shape = "CommitId", type = "string", locationName = "commitId")), 
        shape = "BranchInfo", type = "structure", locationName = "deletedBranch")), 
        shape = "DeleteBranchOutput", type = "structure")
    return(populate(args, shape))
}

delete_comment_content_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId")), 
        shape = "DeleteCommentContentInput", type = "structure")
    return(populate(args, shape))
}

delete_comment_content_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comment = structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content"), InReplyTo = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "inReplyTo"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), Deleted = structure(logical(0), 
            shape = "IsCommentDeleted", type = "boolean", locationName = "deleted"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "Comment", type = "structure", locationName = "comment")), 
        shape = "DeleteCommentContentOutput", type = "structure")
    return(populate(args, shape))
}

delete_file_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BranchName = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "branchName"), 
        FilePath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "filePath"), ParentCommitId = structure(logical(0), 
            shape = "CommitId", type = "string", locationName = "parentCommitId"), 
        KeepEmptyFolders = structure(logical(0), shape = "KeepEmptyFolders", 
            type = "boolean", locationName = "keepEmptyFolders"), 
        CommitMessage = structure(logical(0), shape = "Message", 
            type = "string", locationName = "commitMessage"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            locationName = "name"), Email = structure(logical(0), 
            shape = "Email", type = "string", locationName = "email")), 
        shape = "DeleteFileInput", type = "structure")
    return(populate(args, shape))
}

delete_file_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommitId = structure(logical(0), 
        shape = "ObjectId", type = "string", locationName = "commitId"), 
        BlobId = structure(logical(0), shape = "ObjectId", type = "string", 
            locationName = "blobId"), TreeId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "treeId"), 
        FilePath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "filePath")), shape = "DeleteFileOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_repository_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName")), 
        shape = "DeleteRepositoryInput", type = "structure")
    return(populate(args, shape))
}

delete_repository_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryId = structure(logical(0), 
        shape = "RepositoryId", type = "string", locationName = "repositoryId")), 
        shape = "DeleteRepositoryOutput", type = "structure")
    return(populate(args, shape))
}

describe_pull_request_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        PullRequestEventType = structure(logical(0), shape = "PullRequestEventType", 
            type = "string", locationName = "pullRequestEventType"), 
        ActorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "actorArn"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "DescribePullRequestEventsInput", type = "structure")
    return(populate(args, shape))
}

describe_pull_request_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestEvents = structure(list(structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        EventDate = structure(logical(0), shape = "EventDate", 
            type = "timestamp", locationName = "eventDate"), 
        PullRequestEventType = structure(logical(0), shape = "PullRequestEventType", 
            type = "string", locationName = "pullRequestEventType"), 
        ActorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "actorArn"), PullRequestCreatedEventMetadata = structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceCommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommitId"), 
            DestinationCommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommitId"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase")), 
            shape = "PullRequestCreatedEventMetadata", type = "structure", 
            locationName = "pullRequestCreatedEventMetadata"), 
        PullRequestStatusChangedEventMetadata = structure(list(PullRequestStatus = structure(logical(0), 
            shape = "PullRequestStatusEnum", type = "string", 
            locationName = "pullRequestStatus")), shape = "PullRequestStatusChangedEventMetadata", 
            type = "structure", locationName = "pullRequestStatusChangedEventMetadata"), 
        PullRequestSourceReferenceUpdatedEventMetadata = structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            BeforeCommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "beforeCommitId"), 
            AfterCommitId = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "afterCommitId"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase")), 
            shape = "PullRequestSourceReferenceUpdatedEventMetadata", 
            type = "structure", locationName = "pullRequestSourceReferenceUpdatedEventMetadata"), 
        PullRequestMergedStateChangedEventMetadata = structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestMergedStateChangedEventMetadata", 
            type = "structure", locationName = "pullRequestMergedStateChangedEventMetadata")), 
        shape = "PullRequestEvent", type = "structure")), shape = "PullRequestEventList", 
        type = "list", locationName = "pullRequestEvents"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "DescribePullRequestEventsOutput", type = "structure")
    return(populate(args, shape))
}

get_blob_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BlobId = structure(logical(0), shape = "ObjectId", type = "string", 
            locationName = "blobId")), shape = "GetBlobInput", 
        type = "structure")
    return(populate(args, shape))
}

get_blob_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Content = structure(logical(0), shape = "blob", 
        type = "blob", locationName = "content")), shape = "GetBlobOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_branch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BranchName = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "branchName")), 
        shape = "GetBranchInput", type = "structure")
    return(populate(args, shape))
}

get_branch_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Branch = structure(list(BranchName = structure(logical(0), 
        shape = "BranchName", type = "string", max = 256L, min = 1L, 
        locationName = "branchName"), CommitId = structure(logical(0), 
        shape = "CommitId", type = "string", locationName = "commitId")), 
        shape = "BranchInfo", type = "structure", locationName = "branch")), 
        shape = "GetBranchOutput", type = "structure")
    return(populate(args, shape))
}

get_comment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId")), 
        shape = "GetCommentInput", type = "structure")
    return(populate(args, shape))
}

get_comment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comment = structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content"), InReplyTo = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "inReplyTo"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), Deleted = structure(logical(0), 
            shape = "IsCommentDeleted", type = "boolean", locationName = "deleted"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "Comment", type = "structure", locationName = "comment")), 
        shape = "GetCommentOutput", type = "structure")
    return(populate(args, shape))
}

get_comments_for_compared_commit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BeforeCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", locationName = "maxResults")), 
        shape = "GetCommentsForComparedCommitInput", type = "structure")
    return(populate(args, shape))
}

get_comments_for_compared_commit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommentsForComparedCommitData = structure(list(structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BeforeCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        BeforeBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "beforeBlobId"), 
        AfterBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "afterBlobId"), Location = structure(list(FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
            FilePosition = structure(logical(0), shape = "Position", 
                type = "long", locationName = "filePosition"), 
            RelativeFileVersion = structure(logical(0), shape = "RelativeFileVersionEnum", 
                type = "string", locationName = "relativeFileVersion")), 
            shape = "Location", type = "structure", locationName = "location"), 
        Comments = structure(list(structure(list(CommentId = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "commentId"), 
            Content = structure(logical(0), shape = "Content", 
                type = "string", locationName = "content"), InReplyTo = structure(logical(0), 
                shape = "CommentId", type = "string", locationName = "inReplyTo"), 
            CreationDate = structure(logical(0), shape = "CreationDate", 
                type = "timestamp", locationName = "creationDate"), 
            LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
                type = "timestamp", locationName = "lastModifiedDate"), 
            AuthorArn = structure(logical(0), shape = "Arn", 
                type = "string", locationName = "authorArn"), 
            Deleted = structure(logical(0), shape = "IsCommentDeleted", 
                type = "boolean", locationName = "deleted"), 
            ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
                type = "string", locationName = "clientRequestToken")), 
            shape = "Comment", type = "structure")), shape = "Comments", 
            type = "list", locationName = "comments")), shape = "CommentsForComparedCommit", 
        type = "structure")), shape = "CommentsForComparedCommitData", 
        type = "list", locationName = "commentsForComparedCommitData"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetCommentsForComparedCommitOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_comments_for_pull_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), BeforeCommitId = structure(logical(0), 
            shape = "CommitId", type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken"), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", locationName = "maxResults")), 
        shape = "GetCommentsForPullRequestInput", type = "structure")
    return(populate(args, shape))
}

get_comments_for_pull_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommentsForPullRequestData = structure(list(structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), BeforeCommitId = structure(logical(0), 
            shape = "CommitId", type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        BeforeBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "beforeBlobId"), 
        AfterBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "afterBlobId"), Location = structure(list(FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
            FilePosition = structure(logical(0), shape = "Position", 
                type = "long", locationName = "filePosition"), 
            RelativeFileVersion = structure(logical(0), shape = "RelativeFileVersionEnum", 
                type = "string", locationName = "relativeFileVersion")), 
            shape = "Location", type = "structure", locationName = "location"), 
        Comments = structure(list(structure(list(CommentId = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "commentId"), 
            Content = structure(logical(0), shape = "Content", 
                type = "string", locationName = "content"), InReplyTo = structure(logical(0), 
                shape = "CommentId", type = "string", locationName = "inReplyTo"), 
            CreationDate = structure(logical(0), shape = "CreationDate", 
                type = "timestamp", locationName = "creationDate"), 
            LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
                type = "timestamp", locationName = "lastModifiedDate"), 
            AuthorArn = structure(logical(0), shape = "Arn", 
                type = "string", locationName = "authorArn"), 
            Deleted = structure(logical(0), shape = "IsCommentDeleted", 
                type = "boolean", locationName = "deleted"), 
            ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
                type = "string", locationName = "clientRequestToken")), 
            shape = "Comment", type = "structure")), shape = "Comments", 
            type = "list", locationName = "comments")), shape = "CommentsForPullRequest", 
        type = "structure")), shape = "CommentsForPullRequestData", 
        type = "list", locationName = "commentsForPullRequestData"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "GetCommentsForPullRequestOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_commit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        CommitId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "commitId")), shape = "GetCommitInput", 
        type = "structure")
    return(populate(args, shape))
}

get_commit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Commit = structure(list(CommitId = structure(logical(0), 
        shape = "ObjectId", type = "string", locationName = "commitId"), 
        TreeId = structure(logical(0), shape = "ObjectId", type = "string", 
            locationName = "treeId"), Parents = structure(list(structure(logical(0), 
            shape = "ObjectId", type = "string")), shape = "ParentList", 
            type = "list", locationName = "parents"), Message = structure(logical(0), 
            shape = "Message", type = "string", locationName = "message"), 
        Author = structure(list(Name = structure(logical(0), 
            shape = "Name", type = "string", locationName = "name"), 
            Email = structure(logical(0), shape = "Email", type = "string", 
                locationName = "email"), Date = structure(logical(0), 
                shape = "Date", type = "string", locationName = "date")), 
            shape = "UserInfo", type = "structure", locationName = "author"), 
        Committer = structure(list(Name = structure(logical(0), 
            shape = "Name", type = "string", locationName = "name"), 
            Email = structure(logical(0), shape = "Email", type = "string", 
                locationName = "email"), Date = structure(logical(0), 
                shape = "Date", type = "string", locationName = "date")), 
            shape = "UserInfo", type = "structure", locationName = "committer"), 
        AdditionalData = structure(logical(0), shape = "AdditionalData", 
            type = "string", locationName = "additionalData")), 
        shape = "Commit", type = "structure", locationName = "commit")), 
        shape = "GetCommitOutput", type = "structure")
    return(populate(args, shape))
}

get_differences_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BeforeCommitSpecifier = structure(logical(0), shape = "CommitName", 
            type = "string", locationName = "beforeCommitSpecifier"), 
        AfterCommitSpecifier = structure(logical(0), shape = "CommitName", 
            type = "string", locationName = "afterCommitSpecifier"), 
        BeforePath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "beforePath"), AfterPath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "afterPath"), 
        MaxResults = structure(logical(0), shape = "Limit", type = "integer", 
            box = TRUE), NextToken = structure(logical(0), shape = "NextToken", 
            type = "string")), shape = "GetDifferencesInput", 
        type = "structure")
    return(populate(args, shape))
}

get_differences_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Differences = structure(list(structure(list(BeforeBlob = structure(list(BlobId = structure(logical(0), 
        shape = "ObjectId", type = "string", locationName = "blobId"), 
        Path = structure(logical(0), shape = "Path", type = "string", 
            locationName = "path"), Mode = structure(logical(0), 
            shape = "Mode", type = "string", locationName = "mode")), 
        shape = "BlobMetadata", type = "structure", locationName = "beforeBlob"), 
        AfterBlob = structure(list(BlobId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "blobId"), 
            Path = structure(logical(0), shape = "Path", type = "string", 
                locationName = "path"), Mode = structure(logical(0), 
                shape = "Mode", type = "string", locationName = "mode")), 
            shape = "BlobMetadata", type = "structure", locationName = "afterBlob"), 
        ChangeType = structure(logical(0), shape = "ChangeTypeEnum", 
            type = "string", locationName = "changeType")), shape = "Difference", 
        type = "structure")), shape = "DifferenceList", type = "list", 
        locationName = "differences"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string")), shape = "GetDifferencesOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_file_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        CommitSpecifier = structure(logical(0), shape = "CommitName", 
            type = "string", locationName = "commitSpecifier"), 
        FilePath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "filePath")), shape = "GetFileInput", 
        type = "structure")
    return(populate(args, shape))
}

get_file_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommitId = structure(logical(0), 
        shape = "ObjectId", type = "string", locationName = "commitId"), 
        BlobId = structure(logical(0), shape = "ObjectId", type = "string", 
            locationName = "blobId"), FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
        FileMode = structure(logical(0), shape = "FileModeTypeEnum", 
            type = "string", locationName = "fileMode"), FileSize = structure(logical(0), 
            shape = "ObjectSize", type = "long", locationName = "fileSize"), 
        FileContent = structure(logical(0), shape = "FileContent", 
            type = "blob", max = 6291456L, locationName = "fileContent")), 
        shape = "GetFileOutput", type = "structure")
    return(populate(args, shape))
}

get_folder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        CommitSpecifier = structure(logical(0), shape = "CommitName", 
            type = "string", locationName = "commitSpecifier"), 
        FolderPath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "folderPath")), shape = "GetFolderInput", 
        type = "structure")
    return(populate(args, shape))
}

get_folder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommitId = structure(logical(0), 
        shape = "ObjectId", type = "string", locationName = "commitId"), 
        FolderPath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "folderPath"), TreeId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "treeId"), 
        SubFolders = structure(list(structure(list(TreeId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "treeId"), 
            AbsolutePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "absolutePath"), 
            RelativePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "relativePath")), 
            shape = "Folder", type = "structure")), shape = "FolderList", 
            type = "list", locationName = "subFolders"), Files = structure(list(structure(list(BlobId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "blobId"), 
            AbsolutePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "absolutePath"), 
            RelativePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "relativePath"), 
            FileMode = structure(logical(0), shape = "FileModeTypeEnum", 
                type = "string", locationName = "fileMode")), 
            shape = "File", type = "structure")), shape = "FileList", 
            type = "list", locationName = "files"), SymbolicLinks = structure(list(structure(list(BlobId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "blobId"), 
            AbsolutePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "absolutePath"), 
            RelativePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "relativePath"), 
            FileMode = structure(logical(0), shape = "FileModeTypeEnum", 
                type = "string", locationName = "fileMode")), 
            shape = "SymbolicLink", type = "structure")), shape = "SymbolicLinkList", 
            type = "list", locationName = "symbolicLinks"), SubModules = structure(list(structure(list(CommitId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "commitId"), 
            AbsolutePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "absolutePath"), 
            RelativePath = structure(logical(0), shape = "Path", 
                type = "string", locationName = "relativePath")), 
            shape = "SubModule", type = "structure")), shape = "SubModuleList", 
            type = "list", locationName = "subModules")), shape = "GetFolderOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_merge_conflicts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        DestinationCommitSpecifier = structure(logical(0), shape = "CommitName", 
            type = "string", locationName = "destinationCommitSpecifier"), 
        SourceCommitSpecifier = structure(logical(0), shape = "CommitName", 
            type = "string", locationName = "sourceCommitSpecifier"), 
        MergeOption = structure(logical(0), shape = "MergeOptionTypeEnum", 
            type = "string", locationName = "mergeOption")), 
        shape = "GetMergeConflictsInput", type = "structure")
    return(populate(args, shape))
}

get_merge_conflicts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Mergeable = structure(logical(0), 
        shape = "IsMergeable", type = "boolean", locationName = "mergeable"), 
        DestinationCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "destinationCommitId"), 
        SourceCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "sourceCommitId")), 
        shape = "GetMergeConflictsOutput", type = "structure")
    return(populate(args, shape))
}

get_pull_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId")), 
        shape = "GetPullRequestInput", type = "structure")
    return(populate(args, shape))
}

get_pull_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequest = structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 10240L, 
            locationName = "description"), LastActivityDate = structure(logical(0), 
            shape = "LastModifiedDate", type = "timestamp", locationName = "lastActivityDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestTargets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            DestinationCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommit"), 
            SourceCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommit"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestTarget", 
            type = "structure")), shape = "PullRequestTargetList", 
            type = "list", locationName = "pullRequestTargets"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PullRequest", type = "structure", locationName = "pullRequest")), 
        shape = "GetPullRequestOutput", type = "structure")
    return(populate(args, shape))
}

get_repository_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName")), 
        shape = "GetRepositoryInput", type = "structure")
    return(populate(args, shape))
}

get_repository_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryMetadata = structure(list(AccountId = structure(logical(0), 
        shape = "AccountId", type = "string", locationName = "accountId"), 
        RepositoryId = structure(logical(0), shape = "RepositoryId", 
            type = "string", locationName = "repositoryId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), RepositoryDescription = structure(logical(0), 
            shape = "RepositoryDescription", type = "string", 
            max = 1000L, locationName = "repositoryDescription"), 
        DefaultBranch = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "defaultBranch"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        CloneUrlHttp = structure(logical(0), shape = "CloneUrlHttp", 
            type = "string", locationName = "cloneUrlHttp"), 
        CloneUrlSsh = structure(logical(0), shape = "CloneUrlSsh", 
            type = "string", locationName = "cloneUrlSsh"), Arn = structure(logical(0), 
            shape = "Arn", type = "string")), shape = "RepositoryMetadata", 
        type = "structure", locationName = "repositoryMetadata")), 
        shape = "GetRepositoryOutput", type = "structure")
    return(populate(args, shape))
}

get_repository_triggers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName")), 
        shape = "GetRepositoryTriggersInput", type = "structure")
    return(populate(args, shape))
}

get_repository_triggers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "RepositoryTriggersConfigurationId", type = "string", 
        locationName = "configurationId"), Triggers = structure(list(structure(list(Name = structure(logical(0), 
        shape = "RepositoryTriggerName", type = "string", locationName = "name"), 
        DestinationArn = structure(logical(0), shape = "Arn", 
            type = "string", locationName = "destinationArn"), 
        CustomData = structure(logical(0), shape = "RepositoryTriggerCustomData", 
            type = "string", locationName = "customData"), Branches = structure(list(structure(logical(0), 
            shape = "BranchName", type = "string", max = 256L, 
            min = 1L)), shape = "BranchNameList", type = "list", 
            locationName = "branches"), Events = structure(list(structure(logical(0), 
            shape = "RepositoryTriggerEventEnum", type = "string")), 
            shape = "RepositoryTriggerEventList", type = "list", 
            locationName = "events")), shape = "RepositoryTrigger", 
        type = "structure")), shape = "RepositoryTriggersList", 
        type = "list", locationName = "triggers")), shape = "GetRepositoryTriggersOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_branches_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListBranchesInput", 
        type = "structure")
    return(populate(args, shape))
}

list_branches_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Branches = structure(list(structure(logical(0), 
        shape = "BranchName", type = "string", max = 256L, min = 1L)), 
        shape = "BranchNameList", type = "list", locationName = "branches"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListBranchesOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_pull_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestStatus = structure(logical(0), 
            shape = "PullRequestStatusEnum", type = "string", 
            locationName = "pullRequestStatus"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", locationName = "maxResults")), 
        shape = "ListPullRequestsInput", type = "structure")
    return(populate(args, shape))
}

list_pull_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestIds = structure(list(structure(logical(0), 
        shape = "PullRequestId", type = "string")), shape = "PullRequestIdList", 
        type = "list", locationName = "pullRequestIds"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken")), 
        shape = "ListPullRequestsOutput", type = "structure")
    return(populate(args, shape))
}

list_repositories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", locationName = "nextToken"), 
        SortBy = structure(logical(0), shape = "SortByEnum", 
            type = "string", locationName = "sortBy"), Order = structure(logical(0), 
            shape = "OrderEnum", type = "string", locationName = "order")), 
        shape = "ListRepositoriesInput", type = "structure")
    return(populate(args, shape))
}

list_repositories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Repositories = structure(list(structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        RepositoryId = structure(logical(0), shape = "RepositoryId", 
            type = "string", locationName = "repositoryId")), 
        shape = "RepositoryNameIdPair", type = "structure")), 
        shape = "RepositoryNameIdPairList", type = "list", locationName = "repositories"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", locationName = "nextToken")), shape = "ListRepositoriesOutput", 
        type = "structure")
    return(populate(args, shape))
}

merge_pull_request_by_fast_forward_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), SourceCommitId = structure(logical(0), 
            shape = "CommitId", type = "string", locationName = "sourceCommitId")), 
        shape = "MergePullRequestByFastForwardInput", type = "structure")
    return(populate(args, shape))
}

merge_pull_request_by_fast_forward_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequest = structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 10240L, 
            locationName = "description"), LastActivityDate = structure(logical(0), 
            shape = "LastModifiedDate", type = "timestamp", locationName = "lastActivityDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestTargets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            DestinationCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommit"), 
            SourceCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommit"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestTarget", 
            type = "structure")), shape = "PullRequestTargetList", 
            type = "list", locationName = "pullRequestTargets"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PullRequest", type = "structure", locationName = "pullRequest")), 
        shape = "MergePullRequestByFastForwardOutput", type = "structure")
    return(populate(args, shape))
}

post_comment_for_compared_commit_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BeforeCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        Location = structure(list(FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
            FilePosition = structure(logical(0), shape = "Position", 
                type = "long", locationName = "filePosition"), 
            RelativeFileVersion = structure(logical(0), shape = "RelativeFileVersionEnum", 
                type = "string", locationName = "relativeFileVersion")), 
            shape = "Location", type = "structure", locationName = "location"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PostCommentForComparedCommitInput", type = "structure")
    return(populate(args, shape))
}

post_comment_for_compared_commit_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BeforeCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        BeforeBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "beforeBlobId"), 
        AfterBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "afterBlobId"), Location = structure(list(FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
            FilePosition = structure(logical(0), shape = "Position", 
                type = "long", locationName = "filePosition"), 
            RelativeFileVersion = structure(logical(0), shape = "RelativeFileVersionEnum", 
                type = "string", locationName = "relativeFileVersion")), 
            shape = "Location", type = "structure", locationName = "location"), 
        Comment = structure(list(CommentId = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "commentId"), 
            Content = structure(logical(0), shape = "Content", 
                type = "string", locationName = "content"), InReplyTo = structure(logical(0), 
                shape = "CommentId", type = "string", locationName = "inReplyTo"), 
            CreationDate = structure(logical(0), shape = "CreationDate", 
                type = "timestamp", locationName = "creationDate"), 
            LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
                type = "timestamp", locationName = "lastModifiedDate"), 
            AuthorArn = structure(logical(0), shape = "Arn", 
                type = "string", locationName = "authorArn"), 
            Deleted = structure(logical(0), shape = "IsCommentDeleted", 
                type = "boolean", locationName = "deleted"), 
            ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
                type = "string", locationName = "clientRequestToken")), 
            shape = "Comment", type = "structure", locationName = "comment")), 
        shape = "PostCommentForComparedCommitOutput", type = "structure")
    return(populate(args, shape))
}

post_comment_for_pull_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        RepositoryName = structure(logical(0), shape = "RepositoryName", 
            type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
            locationName = "repositoryName"), BeforeCommitId = structure(logical(0), 
            shape = "CommitId", type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        Location = structure(list(FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
            FilePosition = structure(logical(0), shape = "Position", 
                type = "long", locationName = "filePosition"), 
            RelativeFileVersion = structure(logical(0), shape = "RelativeFileVersionEnum", 
                type = "string", locationName = "relativeFileVersion")), 
            shape = "Location", type = "structure", locationName = "location"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content"), ClientRequestToken = structure(logical(0), 
            shape = "ClientRequestToken", idempotencyToken = TRUE, 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PostCommentForPullRequestInput", type = "structure")
    return(populate(args, shape))
}

post_comment_for_pull_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        PullRequestId = structure(logical(0), shape = "PullRequestId", 
            type = "string", locationName = "pullRequestId"), 
        BeforeCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "beforeCommitId"), 
        AfterCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "afterCommitId"), 
        BeforeBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "beforeBlobId"), 
        AfterBlobId = structure(logical(0), shape = "ObjectId", 
            type = "string", locationName = "afterBlobId"), Location = structure(list(FilePath = structure(logical(0), 
            shape = "Path", type = "string", locationName = "filePath"), 
            FilePosition = structure(logical(0), shape = "Position", 
                type = "long", locationName = "filePosition"), 
            RelativeFileVersion = structure(logical(0), shape = "RelativeFileVersionEnum", 
                type = "string", locationName = "relativeFileVersion")), 
            shape = "Location", type = "structure", locationName = "location"), 
        Comment = structure(list(CommentId = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "commentId"), 
            Content = structure(logical(0), shape = "Content", 
                type = "string", locationName = "content"), InReplyTo = structure(logical(0), 
                shape = "CommentId", type = "string", locationName = "inReplyTo"), 
            CreationDate = structure(logical(0), shape = "CreationDate", 
                type = "timestamp", locationName = "creationDate"), 
            LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
                type = "timestamp", locationName = "lastModifiedDate"), 
            AuthorArn = structure(logical(0), shape = "Arn", 
                type = "string", locationName = "authorArn"), 
            Deleted = structure(logical(0), shape = "IsCommentDeleted", 
                type = "boolean", locationName = "deleted"), 
            ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
                type = "string", locationName = "clientRequestToken")), 
            shape = "Comment", type = "structure", locationName = "comment")), 
        shape = "PostCommentForPullRequestOutput", type = "structure")
    return(populate(args, shape))
}

post_comment_reply_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InReplyTo = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "inReplyTo"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            idempotencyToken = TRUE, type = "string", locationName = "clientRequestToken"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content")), shape = "PostCommentReplyInput", 
        type = "structure")
    return(populate(args, shape))
}

post_comment_reply_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comment = structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content"), InReplyTo = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "inReplyTo"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), Deleted = structure(logical(0), 
            shape = "IsCommentDeleted", type = "boolean", locationName = "deleted"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "Comment", type = "structure", locationName = "comment")), 
        shape = "PostCommentReplyOutput", type = "structure")
    return(populate(args, shape))
}

put_file_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        BranchName = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "branchName"), 
        FileContent = structure(logical(0), shape = "FileContent", 
            type = "blob", max = 6291456L, locationName = "fileContent"), 
        FilePath = structure(logical(0), shape = "Path", type = "string", 
            locationName = "filePath"), FileMode = structure(logical(0), 
            shape = "FileModeTypeEnum", type = "string", locationName = "fileMode"), 
        ParentCommitId = structure(logical(0), shape = "CommitId", 
            type = "string", locationName = "parentCommitId"), 
        CommitMessage = structure(logical(0), shape = "Message", 
            type = "string", locationName = "commitMessage"), 
        Name = structure(logical(0), shape = "Name", type = "string", 
            locationName = "name"), Email = structure(logical(0), 
            shape = "Email", type = "string", locationName = "email")), 
        shape = "PutFileInput", type = "structure")
    return(populate(args, shape))
}

put_file_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommitId = structure(logical(0), 
        shape = "ObjectId", type = "string", locationName = "commitId"), 
        BlobId = structure(logical(0), shape = "ObjectId", type = "string", 
            locationName = "blobId"), TreeId = structure(logical(0), 
            shape = "ObjectId", type = "string", locationName = "treeId")), 
        shape = "PutFileOutput", type = "structure")
    return(populate(args, shape))
}

put_repository_triggers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        Triggers = structure(list(structure(list(Name = structure(logical(0), 
            shape = "RepositoryTriggerName", type = "string", 
            locationName = "name"), DestinationArn = structure(logical(0), 
            shape = "Arn", type = "string", locationName = "destinationArn"), 
            CustomData = structure(logical(0), shape = "RepositoryTriggerCustomData", 
                type = "string", locationName = "customData"), 
            Branches = structure(list(structure(logical(0), shape = "BranchName", 
                type = "string", max = 256L, min = 1L)), shape = "BranchNameList", 
                type = "list", locationName = "branches"), Events = structure(list(structure(logical(0), 
                shape = "RepositoryTriggerEventEnum", type = "string")), 
                shape = "RepositoryTriggerEventList", type = "list", 
                locationName = "events")), shape = "RepositoryTrigger", 
            type = "structure")), shape = "RepositoryTriggersList", 
            type = "list", locationName = "triggers")), shape = "PutRepositoryTriggersInput", 
        type = "structure")
    return(populate(args, shape))
}

put_repository_triggers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConfigurationId = structure(logical(0), 
        shape = "RepositoryTriggersConfigurationId", type = "string", 
        locationName = "configurationId")), shape = "PutRepositoryTriggersOutput", 
        type = "structure")
    return(populate(args, shape))
}

test_repository_triggers_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        Triggers = structure(list(structure(list(Name = structure(logical(0), 
            shape = "RepositoryTriggerName", type = "string", 
            locationName = "name"), DestinationArn = structure(logical(0), 
            shape = "Arn", type = "string", locationName = "destinationArn"), 
            CustomData = structure(logical(0), shape = "RepositoryTriggerCustomData", 
                type = "string", locationName = "customData"), 
            Branches = structure(list(structure(logical(0), shape = "BranchName", 
                type = "string", max = 256L, min = 1L)), shape = "BranchNameList", 
                type = "list", locationName = "branches"), Events = structure(list(structure(logical(0), 
                shape = "RepositoryTriggerEventEnum", type = "string")), 
                shape = "RepositoryTriggerEventList", type = "list", 
                locationName = "events")), shape = "RepositoryTrigger", 
            type = "structure")), shape = "RepositoryTriggersList", 
            type = "list", locationName = "triggers")), shape = "TestRepositoryTriggersInput", 
        type = "structure")
    return(populate(args, shape))
}

test_repository_triggers_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfulExecutions = structure(list(structure(logical(0), 
        shape = "RepositoryTriggerName", type = "string")), shape = "RepositoryTriggerNameList", 
        type = "list", locationName = "successfulExecutions"), 
        FailedExecutions = structure(list(structure(list(Trigger = structure(logical(0), 
            shape = "RepositoryTriggerName", type = "string", 
            locationName = "trigger"), FailureMessage = structure(logical(0), 
            shape = "RepositoryTriggerExecutionFailureMessage", 
            type = "string", locationName = "failureMessage")), 
            shape = "RepositoryTriggerExecutionFailure", type = "structure")), 
            shape = "RepositoryTriggerExecutionFailureList", 
            type = "list", locationName = "failedExecutions")), 
        shape = "TestRepositoryTriggersOutput", type = "structure")
    return(populate(args, shape))
}

update_comment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content")), shape = "UpdateCommentInput", 
        type = "structure")
    return(populate(args, shape))
}

update_comment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comment = structure(list(CommentId = structure(logical(0), 
        shape = "CommentId", type = "string", locationName = "commentId"), 
        Content = structure(logical(0), shape = "Content", type = "string", 
            locationName = "content"), InReplyTo = structure(logical(0), 
            shape = "CommentId", type = "string", locationName = "inReplyTo"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        LastModifiedDate = structure(logical(0), shape = "LastModifiedDate", 
            type = "timestamp", locationName = "lastModifiedDate"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), Deleted = structure(logical(0), 
            shape = "IsCommentDeleted", type = "boolean", locationName = "deleted"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "Comment", type = "structure", locationName = "comment")), 
        shape = "UpdateCommentOutput", type = "structure")
    return(populate(args, shape))
}

update_default_branch_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        DefaultBranchName = structure(logical(0), shape = "BranchName", 
            type = "string", max = 256L, min = 1L, locationName = "defaultBranchName")), 
        shape = "UpdateDefaultBranchInput", type = "structure")
    return(populate(args, shape))
}

update_default_branch_output <- function () 
{
    return(list())
}

update_pull_request_description_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Description = structure(logical(0), shape = "Description", 
            type = "string", max = 10240L, locationName = "description")), 
        shape = "UpdatePullRequestDescriptionInput", type = "structure")
    return(populate(args, shape))
}

update_pull_request_description_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequest = structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 10240L, 
            locationName = "description"), LastActivityDate = structure(logical(0), 
            shape = "LastModifiedDate", type = "timestamp", locationName = "lastActivityDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestTargets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            DestinationCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommit"), 
            SourceCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommit"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestTarget", 
            type = "structure")), shape = "PullRequestTargetList", 
            type = "list", locationName = "pullRequestTargets"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PullRequest", type = "structure", locationName = "pullRequest")), 
        shape = "UpdatePullRequestDescriptionOutput", type = "structure")
    return(populate(args, shape))
}

update_pull_request_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus")), 
        shape = "UpdatePullRequestStatusInput", type = "structure")
    return(populate(args, shape))
}

update_pull_request_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequest = structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 10240L, 
            locationName = "description"), LastActivityDate = structure(logical(0), 
            shape = "LastModifiedDate", type = "timestamp", locationName = "lastActivityDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestTargets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            DestinationCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommit"), 
            SourceCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommit"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestTarget", 
            type = "structure")), shape = "PullRequestTargetList", 
            type = "list", locationName = "pullRequestTargets"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PullRequest", type = "structure", locationName = "pullRequest")), 
        shape = "UpdatePullRequestStatusOutput", type = "structure")
    return(populate(args, shape))
}

update_pull_request_title_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title")), shape = "UpdatePullRequestTitleInput", 
        type = "structure")
    return(populate(args, shape))
}

update_pull_request_title_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PullRequest = structure(list(PullRequestId = structure(logical(0), 
        shape = "PullRequestId", type = "string", locationName = "pullRequestId"), 
        Title = structure(logical(0), shape = "Title", type = "string", 
            max = 150L, locationName = "title"), Description = structure(logical(0), 
            shape = "Description", type = "string", max = 10240L, 
            locationName = "description"), LastActivityDate = structure(logical(0), 
            shape = "LastModifiedDate", type = "timestamp", locationName = "lastActivityDate"), 
        CreationDate = structure(logical(0), shape = "CreationDate", 
            type = "timestamp", locationName = "creationDate"), 
        PullRequestStatus = structure(logical(0), shape = "PullRequestStatusEnum", 
            type = "string", locationName = "pullRequestStatus"), 
        AuthorArn = structure(logical(0), shape = "Arn", type = "string", 
            locationName = "authorArn"), PullRequestTargets = structure(list(structure(list(RepositoryName = structure(logical(0), 
            shape = "RepositoryName", type = "string", max = 100L, 
            min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
            SourceReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "sourceReference"), 
            DestinationReference = structure(logical(0), shape = "ReferenceName", 
                type = "string", locationName = "destinationReference"), 
            DestinationCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "destinationCommit"), 
            SourceCommit = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "sourceCommit"), 
            MergeBase = structure(logical(0), shape = "CommitId", 
                type = "string", locationName = "mergeBase"), 
            MergeMetadata = structure(list(IsMerged = structure(logical(0), 
                shape = "IsMerged", type = "boolean", locationName = "isMerged"), 
                MergedBy = structure(logical(0), shape = "Arn", 
                  type = "string", locationName = "mergedBy")), 
                shape = "MergeMetadata", type = "structure", 
                locationName = "mergeMetadata")), shape = "PullRequestTarget", 
            type = "structure")), shape = "PullRequestTargetList", 
            type = "list", locationName = "pullRequestTargets"), 
        ClientRequestToken = structure(logical(0), shape = "ClientRequestToken", 
            type = "string", locationName = "clientRequestToken")), 
        shape = "PullRequest", type = "structure", locationName = "pullRequest")), 
        shape = "UpdatePullRequestTitleOutput", type = "structure")
    return(populate(args, shape))
}

update_repository_description_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RepositoryName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "repositoryName"), 
        RepositoryDescription = structure(logical(0), shape = "RepositoryDescription", 
            type = "string", max = 1000L, locationName = "repositoryDescription")), 
        shape = "UpdateRepositoryDescriptionInput", type = "structure")
    return(populate(args, shape))
}

update_repository_description_output <- function () 
{
    return(list())
}

update_repository_name_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OldName = structure(logical(0), shape = "RepositoryName", 
        type = "string", max = 100L, min = 1L, pattern = "[\\w\\.-]+", 
        locationName = "oldName"), NewName = structure(logical(0), 
        shape = "RepositoryName", type = "string", max = 100L, 
        min = 1L, pattern = "[\\w\\.-]+", locationName = "newName")), 
        shape = "UpdateRepositoryNameInput", type = "structure")
    return(populate(args, shape))
}

update_repository_name_output <- function () 
{
    return(list())
}
