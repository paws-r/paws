associate_member_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "memberAccountId")), shape = "AssociateMemberAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_member_account_output <- function () 
{
    return(list())
}

associate_s3_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "memberAccountId"), S3Resources = structure(list(structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix"), ClassificationType = structure(list(OneTime = structure(logical(0), 
            shape = "S3OneTimeClassificationType", type = "string", 
            locationName = "oneTime"), Continuous = structure(logical(0), 
            shape = "S3ContinuousClassificationType", type = "string", 
            locationName = "continuous")), shape = "ClassificationType", 
            type = "structure", locationName = "classificationType")), 
        shape = "S3ResourceClassification", type = "structure")), 
        shape = "S3ResourcesClassification", type = "list", locationName = "s3Resources")), 
        shape = "AssociateS3ResourcesRequest", type = "structure")
    return(populate(args, shape))
}

associate_s3_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedS3Resources = structure(list(structure(list(FailedItem = structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix")), shape = "S3Resource", 
        type = "structure", locationName = "failedItem"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string", max = 10L, locationName = "errorCode"), 
        ErrorMessage = structure(logical(0), shape = "ExceptionMessage", 
            type = "string", max = 10000L, locationName = "errorMessage")), 
        shape = "FailedS3Resource", type = "structure")), shape = "FailedS3Resources", 
        type = "list", locationName = "failedS3Resources")), 
        shape = "AssociateS3ResourcesResult", type = "structure")
    return(populate(args, shape))
}

disassociate_member_account_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "memberAccountId")), shape = "DisassociateMemberAccountRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_member_account_output <- function () 
{
    return(list())
}

disassociate_s3_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "memberAccountId"), AssociatedS3Resources = structure(list(structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix")), shape = "S3Resource", 
        type = "structure")), shape = "S3Resources", type = "list", 
        locationName = "associatedS3Resources")), shape = "DisassociateS3ResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_s3_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedS3Resources = structure(list(structure(list(FailedItem = structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix")), shape = "S3Resource", 
        type = "structure", locationName = "failedItem"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string", max = 10L, locationName = "errorCode"), 
        ErrorMessage = structure(logical(0), shape = "ExceptionMessage", 
            type = "string", max = 10000L, locationName = "errorMessage")), 
        shape = "FailedS3Resource", type = "structure")), shape = "FailedS3Resources", 
        type = "list", locationName = "failedS3Resources")), 
        shape = "DisassociateS3ResourcesResult", type = "structure")
    return(populate(args, shape))
}

list_member_accounts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 500L, locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 250L, locationName = "maxResults")), 
        shape = "ListMemberAccountsRequest", type = "structure")
    return(populate(args, shape))
}

list_member_accounts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccounts = structure(list(structure(list(AccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "accountId")), shape = "MemberAccount", 
        type = "structure")), shape = "MemberAccounts", type = "list", 
        locationName = "memberAccounts"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 500L, locationName = "nextToken")), 
        shape = "ListMemberAccountsResult", type = "structure")
    return(populate(args, shape))
}

list_s3_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "memberAccountId"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 500L, locationName = "nextToken"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", box = TRUE, max = 250L, locationName = "maxResults")), 
        shape = "ListS3ResourcesRequest", type = "structure")
    return(populate(args, shape))
}

list_s3_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(S3Resources = structure(list(structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix"), ClassificationType = structure(list(OneTime = structure(logical(0), 
            shape = "S3OneTimeClassificationType", type = "string", 
            locationName = "oneTime"), Continuous = structure(logical(0), 
            shape = "S3ContinuousClassificationType", type = "string", 
            locationName = "continuous")), shape = "ClassificationType", 
            type = "structure", locationName = "classificationType")), 
        shape = "S3ResourceClassification", type = "structure")), 
        shape = "S3ResourcesClassification", type = "list", locationName = "s3Resources"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 500L, locationName = "nextToken")), 
        shape = "ListS3ResourcesResult", type = "structure")
    return(populate(args, shape))
}

update_s3_resources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MemberAccountId = structure(logical(0), 
        shape = "AWSAccountId", type = "string", pattern = "[0-9]{12}", 
        locationName = "memberAccountId"), S3ResourcesUpdate = structure(list(structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix"), ClassificationTypeUpdate = structure(list(OneTime = structure(logical(0), 
            shape = "S3OneTimeClassificationType", type = "string", 
            locationName = "oneTime"), Continuous = structure(logical(0), 
            shape = "S3ContinuousClassificationType", type = "string", 
            locationName = "continuous")), shape = "ClassificationTypeUpdate", 
            type = "structure", locationName = "classificationTypeUpdate")), 
        shape = "S3ResourceClassificationUpdate", type = "structure")), 
        shape = "S3ResourcesClassificationUpdate", type = "list", 
        locationName = "s3ResourcesUpdate")), shape = "UpdateS3ResourcesRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_s3_resources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FailedS3Resources = structure(list(structure(list(FailedItem = structure(list(BucketName = structure(logical(0), 
        shape = "BucketName", type = "string", max = 500L, locationName = "bucketName"), 
        Prefix = structure(logical(0), shape = "Prefix", type = "string", 
            max = 10000L, locationName = "prefix")), shape = "S3Resource", 
        type = "structure", locationName = "failedItem"), ErrorCode = structure(logical(0), 
        shape = "ErrorCode", type = "string", max = 10L, locationName = "errorCode"), 
        ErrorMessage = structure(logical(0), shape = "ExceptionMessage", 
            type = "string", max = 10000L, locationName = "errorMessage")), 
        shape = "FailedS3Resource", type = "structure")), shape = "FailedS3Resources", 
        type = "list", locationName = "failedS3Resources")), 
        shape = "UpdateS3ResourcesResult", type = "structure")
    return(populate(args, shape))
}
