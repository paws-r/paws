abort_document_version_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "uri", locationName = "VersionId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w+-.@]+")), shape = "AbortDocumentVersionUploadRequest", 
        type = "structure")
    return(populate(args, shape))
}

abort_document_version_upload_output <- function () 
{
    return(list())
}

activate_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "IdType", 
        location = "uri", locationName = "UserId", type = "string", 
        max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE)), shape = "ActivateUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

activate_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "ActivateUserResponse", type = "structure")
    return(populate(args, shape))
}

add_resource_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Principals = structure(list(structure(list(Id = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), Type = structure(logical(0), 
            shape = "PrincipalType", type = "string"), Role = structure(logical(0), 
            shape = "RoleType", type = "string")), shape = "SharePrincipal", 
            type = "structure")), shape = "SharePrincipalList", 
            type = "list"), NotificationOptions = structure(list(SendEmail = structure(logical(0), 
            shape = "BooleanType", type = "boolean"), EmailMessage = structure(logical(0), 
            shape = "MessageType", type = "string", max = 2048L, 
            min = 0L, sensitive = TRUE)), shape = "NotificationOptions", 
            type = "structure")), shape = "AddResourcePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

add_resource_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ShareResults = structure(list(structure(list(PrincipalId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Role = structure(logical(0), 
        shape = "RoleType", type = "string"), Status = structure(logical(0), 
        shape = "ShareStatusType", type = "string"), ShareId = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), StatusMessage = structure(logical(0), 
        shape = "MessageType", type = "string", max = 2048L, 
        min = 0L, sensitive = TRUE)), shape = "ShareResult", 
        type = "structure")), shape = "ShareResultsList", type = "list")), 
        shape = "AddResourcePermissionsResponse", type = "structure")
    return(populate(args, shape))
}

create_comment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "uri", locationName = "VersionId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w+-.@]+"), ParentId = structure(logical(0), 
            shape = "CommentIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), ThreadId = structure(logical(0), 
            shape = "CommentIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Text = structure(logical(0), 
            shape = "CommentTextType", type = "string", max = 2048L, 
            min = 1L, sensitive = TRUE), Visibility = structure(logical(0), 
            shape = "CommentVisibilityType", type = "string"), 
        NotifyCollaborators = structure(logical(0), shape = "BooleanType", 
            type = "boolean")), shape = "CreateCommentRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_comment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comment = structure(list(CommentId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), ParentId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), ThreadId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Text = structure(logical(0), 
        shape = "CommentTextType", type = "string", max = 2048L, 
        min = 1L, sensitive = TRUE), Contributor = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure"), 
        CreatedTimestamp = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), Status = structure(logical(0), 
            shape = "CommentStatusType", type = "string"), Visibility = structure(logical(0), 
            shape = "CommentVisibilityType", type = "string"), 
        RecipientId = structure(logical(0), shape = "IdType", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+")), 
        shape = "Comment", type = "structure")), shape = "CreateCommentResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_custom_metadata_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "querystring", locationName = "versionid", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        CustomMetadata = structure(list(structure(logical(0), 
            shape = "CustomMetadataValueType", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "CustomMetadataMap", type = "map", max = 8L, 
            min = 1L)), shape = "CreateCustomMetadataRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_custom_metadata_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateCustomMetadataResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_folder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ParentFolderId = structure(logical(0), shape = "ResourceIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+")), 
        shape = "CreateFolderRequest", type = "structure")
    return(populate(args, shape))
}

create_folder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        CreatorId = structure(logical(0), shape = "IdType", type = "string", 
            max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ResourceState = structure(logical(0), 
            shape = "ResourceStateType", type = "string"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Labels = structure(list(structure(logical(0), 
            shape = "SharedLabel", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "SharedLabels", type = "list", max = 20L), 
        Size = structure(logical(0), shape = "SizeType", type = "long"), 
        LatestVersionSize = structure(logical(0), shape = "SizeType", 
            type = "long")), shape = "FolderMetadata", type = "structure")), 
        shape = "CreateFolderResponse", type = "structure")
    return(populate(args, shape))
}

create_labels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Labels = structure(list(structure(logical(0), shape = "SharedLabel", 
            type = "string", max = 32L, min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "SharedLabels", type = "list", max = 20L), 
        AuthenticationToken = structure(logical(0), shape = "AuthenticationHeaderType", 
            location = "header", locationName = "Authentication", 
            type = "string", max = 8199L, min = 1L, sensitive = TRUE)), 
        shape = "CreateLabelsRequest", type = "structure")
    return(populate(args, shape))
}

create_labels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "CreateLabelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_notification_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "OrganizationId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        Endpoint = structure(logical(0), shape = "SubscriptionEndPointType", 
            type = "string", max = 256L, min = 1L), Protocol = structure(logical(0), 
            shape = "SubscriptionProtocolType", type = "string"), 
        SubscriptionType = structure(logical(0), shape = "SubscriptionType", 
            type = "string")), shape = "CreateNotificationSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_notification_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscription = structure(list(SubscriptionId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), EndPoint = structure(logical(0), 
        shape = "SubscriptionEndPointType", type = "string", 
        max = 256L, min = 1L), Protocol = structure(logical(0), 
        shape = "SubscriptionProtocolType", type = "string")), 
        shape = "Subscription", type = "structure")), shape = "CreateNotificationSubscriptionResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), Password = structure(logical(0), 
            shape = "PasswordType", type = "string", max = 32L, 
            min = 4L, pattern = "[\\u0020-\\u00FF]+", sensitive = TRUE), 
        TimeZoneId = structure(logical(0), shape = "TimeZoneIdType", 
            type = "string", max = 256L, min = 1L), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure"), AuthenticationToken = structure(logical(0), 
            shape = "AuthenticationHeaderType", location = "header", 
            locationName = "Authentication", type = "string", 
            max = 8199L, min = 1L, sensitive = TRUE)), shape = "CreateUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "CreateUserResponse", type = "structure")
    return(populate(args, shape))
}

deactivate_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserId = structure(logical(0), shape = "IdType", 
        location = "uri", locationName = "UserId", type = "string", 
        max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE)), shape = "DeactivateUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

deactivate_user_output <- function () 
{
    return(list())
}

delete_comment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "uri", locationName = "VersionId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w+-.@]+"), CommentId = structure(logical(0), 
            shape = "CommentIdType", location = "uri", locationName = "CommentId", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+")), 
        shape = "DeleteCommentRequest", type = "structure")
    return(populate(args, shape))
}

delete_comment_output <- function () 
{
    return(list())
}

delete_custom_metadata_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "querystring", locationName = "versionId", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Keys = structure(list(structure(logical(0), shape = "CustomMetadataKeyType", 
            type = "string", max = 56L, min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "CustomMetadataKeyList", location = "querystring", 
            locationName = "keys", type = "list", max = 8L), 
        DeleteAll = structure(logical(0), shape = "BooleanType", 
            location = "querystring", locationName = "deleteAll", 
            type = "boolean")), shape = "DeleteCustomMetadataRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_custom_metadata_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteCustomMetadataResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+")), 
        shape = "DeleteDocumentRequest", type = "structure")
    return(populate(args, shape))
}

delete_document_output <- function () 
{
    return(list())
}

delete_folder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), FolderId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "FolderId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+")), 
        shape = "DeleteFolderRequest", type = "structure")
    return(populate(args, shape))
}

delete_folder_output <- function () 
{
    return(list())
}

delete_folder_contents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), FolderId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "FolderId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+")), 
        shape = "DeleteFolderContentsRequest", type = "structure")
    return(populate(args, shape))
}

delete_folder_contents_output <- function () 
{
    return(list())
}

delete_labels_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        AuthenticationToken = structure(logical(0), shape = "AuthenticationHeaderType", 
            location = "header", locationName = "Authentication", 
            type = "string", max = 8199L, min = 1L, sensitive = TRUE), 
        Labels = structure(list(structure(logical(0), shape = "SharedLabel", 
            type = "string", max = 32L, min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "SharedLabels", location = "querystring", 
            locationName = "labels", type = "list", max = 20L), 
        DeleteAll = structure(logical(0), shape = "BooleanType", 
            location = "querystring", locationName = "deleteAll", 
            type = "boolean")), shape = "DeleteLabelsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_labels_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteLabelsResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_notification_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "SubscriptionId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        OrganizationId = structure(logical(0), shape = "IdType", 
            location = "uri", locationName = "OrganizationId", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+")), 
        shape = "DeleteNotificationSubscriptionRequest", type = "structure")
    return(populate(args, shape))
}

delete_notification_subscription_output <- function () 
{
    return(list())
}

delete_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), UserId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "UserId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+")), 
        shape = "DeleteUserRequest", type = "structure")
    return(populate(args, shape))
}

delete_user_output <- function () 
{
    return(list())
}

describe_activities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), StartTime = structure(logical(0), 
        shape = "TimestampType", location = "querystring", locationName = "startTime", 
        type = "timestamp"), EndTime = structure(logical(0), 
        shape = "TimestampType", location = "querystring", locationName = "endTime", 
        type = "timestamp"), OrganizationId = structure(logical(0), 
        shape = "IdType", location = "querystring", locationName = "organizationId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        UserId = structure(logical(0), shape = "IdType", location = "querystring", 
            locationName = "userId", type = "string", max = 256L, 
            min = 1L, pattern = "[&\\w+-.@]+"), Limit = structure(logical(0), 
            shape = "LimitType", location = "querystring", locationName = "limit", 
            type = "integer", max = 999L, min = 1L), Marker = structure(logical(0), 
            shape = "MarkerType", location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0000-\\u00FF]+")), 
        shape = "DescribeActivitiesRequest", type = "structure")
    return(populate(args, shape))
}

describe_activities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UserActivities = structure(list(structure(list(Type = structure(logical(0), 
        shape = "ActivityType", type = "string"), TimeStamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), OrganizationId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Initiator = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), EmailAddress = structure(logical(0), 
            shape = "EmailAddressType", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "UserMetadata", type = "structure"), Participants = structure(list(Users = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), EmailAddress = structure(logical(0), 
            shape = "EmailAddressType", type = "string", max = 256L, 
            min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
        shape = "UserMetadata", type = "structure")), shape = "UserMetadataList", 
        type = "list"), Groups = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Name = structure(logical(0), 
        shape = "GroupNameType", type = "string")), shape = "GroupMetadata", 
        type = "structure")), shape = "GroupMetadataList", type = "list")), 
        shape = "Participants", type = "structure"), ResourceMetadata = structure(list(Type = structure(logical(0), 
        shape = "ResourceType", type = "string"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        OriginalName = structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        Id = structure(logical(0), shape = "ResourceIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Owner = structure(list(Id = structure(logical(0), shape = "IdType", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
            Username = structure(logical(0), shape = "UsernameType", 
                type = "string", max = 256L, min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
            GivenName = structure(logical(0), shape = "UserAttributeValueType", 
                type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
                shape = "UserAttributeValueType", type = "string", 
                max = 64L, min = 1L), EmailAddress = structure(logical(0), 
                shape = "EmailAddressType", type = "string", 
                max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
            shape = "UserMetadata", type = "structure"), ParentId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+")), shape = "ResourceMetadata", 
        type = "structure"), OriginalParent = structure(list(Type = structure(logical(0), 
        shape = "ResourceType", type = "string"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        OriginalName = structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        Id = structure(logical(0), shape = "ResourceIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Owner = structure(list(Id = structure(logical(0), shape = "IdType", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
            Username = structure(logical(0), shape = "UsernameType", 
                type = "string", max = 256L, min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
            GivenName = structure(logical(0), shape = "UserAttributeValueType", 
                type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
                shape = "UserAttributeValueType", type = "string", 
                max = 64L, min = 1L), EmailAddress = structure(logical(0), 
                shape = "EmailAddressType", type = "string", 
                max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")), 
            shape = "UserMetadata", type = "structure"), ParentId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+")), shape = "ResourceMetadata", 
        type = "structure"), CommentMetadata = structure(list(CommentId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Contributor = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure"), 
        CreatedTimestamp = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), CommentStatus = structure(logical(0), 
            shape = "CommentStatusType", type = "string"), RecipientId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+")), shape = "CommentMetadata", 
        type = "structure")), shape = "Activity", type = "structure")), 
        shape = "UserActivities", type = "list"), Marker = structure(logical(0), 
        shape = "MarkerType", type = "string", max = 2048L, min = 1L, 
        pattern = "[\\u0000-\\u00FF]+")), shape = "DescribeActivitiesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_comments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "uri", locationName = "VersionId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w+-.@]+"), Limit = structure(logical(0), 
            shape = "LimitType", location = "querystring", locationName = "limit", 
            type = "integer", max = 999L, min = 1L), Marker = structure(logical(0), 
            shape = "MarkerType", location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0000-\\u00FF]+")), 
        shape = "DescribeCommentsRequest", type = "structure")
    return(populate(args, shape))
}

describe_comments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Comments = structure(list(structure(list(CommentId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), ParentId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), ThreadId = structure(logical(0), 
        shape = "CommentIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Text = structure(logical(0), 
        shape = "CommentTextType", type = "string", max = 2048L, 
        min = 1L, sensitive = TRUE), Contributor = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure"), 
        CreatedTimestamp = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), Status = structure(logical(0), 
            shape = "CommentStatusType", type = "string"), Visibility = structure(logical(0), 
            shape = "CommentVisibilityType", type = "string"), 
        RecipientId = structure(logical(0), shape = "IdType", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+")), 
        shape = "Comment", type = "structure")), shape = "CommentList", 
        type = "list"), Marker = structure(logical(0), shape = "MarkerType", 
        type = "string", max = 2048L, min = 1L, pattern = "[\\u0000-\\u00FF]+")), 
        shape = "DescribeCommentsResponse", type = "structure")
    return(populate(args, shape))
}

describe_document_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Marker = structure(logical(0), shape = "PageMarkerType", 
            location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
            shape = "LimitType", location = "querystring", locationName = "limit", 
            type = "integer", max = 999L, min = 1L), Include = structure(logical(0), 
            shape = "FieldNamesType", location = "querystring", 
            locationName = "include", type = "string", max = 256L, 
            min = 1L, pattern = "[\\w,]+"), Fields = structure(logical(0), 
            shape = "FieldNamesType", location = "querystring", 
            locationName = "fields", type = "string", max = 256L, 
            min = 1L, pattern = "[\\w,]+")), shape = "DescribeDocumentVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_document_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DocumentVersions = structure(list(structure(list(Id = structure(logical(0), 
        shape = "DocumentVersionIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ContentType = structure(logical(0), shape = "DocumentContentType", 
            type = "string", max = 128L, min = 1L), Size = structure(logical(0), 
            shape = "SizeType", type = "long"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Status = structure(logical(0), 
            shape = "DocumentStatusType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentCreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), CreatorId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), Thumbnail = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentThumbnailUrlMap", 
            type = "map"), Source = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentSourceUrlMap", 
            type = "map")), shape = "DocumentVersionMetadata", 
        type = "structure")), shape = "DocumentVersionMetadataList", 
        type = "list"), Marker = structure(logical(0), shape = "PageMarkerType", 
        type = "string", max = 2048L, min = 1L)), shape = "DescribeDocumentVersionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_folder_contents_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), FolderId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "FolderId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Sort = structure(logical(0), shape = "ResourceSortType", 
            location = "querystring", locationName = "sort", 
            type = "string"), Order = structure(logical(0), shape = "OrderType", 
            location = "querystring", locationName = "order", 
            type = "string"), Limit = structure(logical(0), shape = "LimitType", 
            location = "querystring", locationName = "limit", 
            type = "integer", max = 999L, min = 1L), Marker = structure(logical(0), 
            shape = "PageMarkerType", location = "querystring", 
            locationName = "marker", type = "string", max = 2048L, 
            min = 1L), Type = structure(logical(0), shape = "FolderContentType", 
            location = "querystring", locationName = "type", 
            type = "string"), Include = structure(logical(0), 
            shape = "FieldNamesType", location = "querystring", 
            locationName = "include", type = "string", max = 256L, 
            min = 1L, pattern = "[\\w,]+")), shape = "DescribeFolderContentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_folder_contents_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Folders = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        CreatorId = structure(logical(0), shape = "IdType", type = "string", 
            max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ResourceState = structure(logical(0), 
            shape = "ResourceStateType", type = "string"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Labels = structure(list(structure(logical(0), 
            shape = "SharedLabel", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "SharedLabels", type = "list", max = 20L), 
        Size = structure(logical(0), shape = "SizeType", type = "long"), 
        LatestVersionSize = structure(logical(0), shape = "SizeType", 
            type = "long")), shape = "FolderMetadata", type = "structure")), 
        shape = "FolderMetadataList", type = "list"), Documents = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), CreatorId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), LatestVersionMetadata = structure(list(Id = structure(logical(0), 
        shape = "DocumentVersionIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ContentType = structure(logical(0), shape = "DocumentContentType", 
            type = "string", max = 128L, min = 1L), Size = structure(logical(0), 
            shape = "SizeType", type = "long"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Status = structure(logical(0), 
            shape = "DocumentStatusType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentCreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), CreatorId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), Thumbnail = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentThumbnailUrlMap", 
            type = "map"), Source = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentSourceUrlMap", 
            type = "map")), shape = "DocumentVersionMetadata", 
        type = "structure"), ResourceState = structure(logical(0), 
        shape = "ResourceStateType", type = "string"), Labels = structure(list(structure(logical(0), 
        shape = "SharedLabel", type = "string", max = 32L, min = 1L, 
        pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), shape = "SharedLabels", 
        type = "list", max = 20L)), shape = "DocumentMetadata", 
        type = "structure")), shape = "DocumentMetadataList", 
        type = "list"), Marker = structure(logical(0), shape = "PageMarkerType", 
        type = "string", max = 2048L, min = 1L)), shape = "DescribeFolderContentsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), SearchQuery = structure(logical(0), 
        shape = "SearchQueryType", location = "querystring", 
        locationName = "searchQuery", type = "string", max = 512L, 
        min = 1L, pattern = "[\\u0020-\\uFFFF]+", sensitive = TRUE), 
        OrganizationId = structure(logical(0), shape = "IdType", 
            location = "querystring", locationName = "organizationId", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        Marker = structure(logical(0), shape = "MarkerType", 
            location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0000-\\u00FF]+"), 
        Limit = structure(logical(0), shape = "PositiveIntegerType", 
            location = "querystring", locationName = "limit", 
            type = "integer", min = 1L)), shape = "DescribeGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Name = structure(logical(0), 
        shape = "GroupNameType", type = "string")), shape = "GroupMetadata", 
        type = "structure")), shape = "GroupMetadataList", type = "list"), 
        Marker = structure(logical(0), shape = "MarkerType", 
            type = "string", max = 2048L, min = 1L, pattern = "[\\u0000-\\u00FF]+")), 
        shape = "DescribeGroupsResponse", type = "structure")
    return(populate(args, shape))
}

describe_notification_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrganizationId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "OrganizationId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        Marker = structure(logical(0), shape = "PageMarkerType", 
            location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L), Limit = structure(logical(0), 
            shape = "LimitType", location = "querystring", locationName = "limit", 
            type = "integer", max = 999L, min = 1L)), shape = "DescribeNotificationSubscriptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_notification_subscriptions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subscriptions = structure(list(structure(list(SubscriptionId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), EndPoint = structure(logical(0), 
        shape = "SubscriptionEndPointType", type = "string", 
        max = 256L, min = 1L), Protocol = structure(logical(0), 
        shape = "SubscriptionProtocolType", type = "string")), 
        shape = "Subscription", type = "structure")), shape = "SubscriptionList", 
        type = "list", max = 256L), Marker = structure(logical(0), 
        shape = "PageMarkerType", type = "string", max = 2048L, 
        min = 1L)), shape = "DescribeNotificationSubscriptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_resource_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        PrincipalId = structure(logical(0), shape = "IdType", 
            location = "querystring", locationName = "principalId", 
            type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        Limit = structure(logical(0), shape = "LimitType", location = "querystring", 
            locationName = "limit", type = "integer", max = 999L, 
            min = 1L), Marker = structure(logical(0), shape = "PageMarkerType", 
            location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L)), shape = "DescribeResourcePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_resource_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principals = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Type = structure(logical(0), 
        shape = "PrincipalType", type = "string"), Roles = structure(list(structure(list(Role = structure(logical(0), 
        shape = "RoleType", type = "string"), Type = structure(logical(0), 
        shape = "RolePermissionType", type = "string")), shape = "PermissionInfo", 
        type = "structure")), shape = "PermissionInfoList", type = "list")), 
        shape = "Principal", type = "structure")), shape = "PrincipalList", 
        type = "list"), Marker = structure(logical(0), shape = "PageMarkerType", 
        type = "string", max = 2048L, min = 1L)), shape = "DescribeResourcePermissionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_root_folders_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), Limit = structure(logical(0), 
        shape = "LimitType", location = "querystring", locationName = "limit", 
        type = "integer", max = 999L, min = 1L), Marker = structure(logical(0), 
        shape = "PageMarkerType", location = "querystring", locationName = "marker", 
        type = "string", max = 2048L, min = 1L)), shape = "DescribeRootFoldersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_root_folders_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Folders = structure(list(structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        CreatorId = structure(logical(0), shape = "IdType", type = "string", 
            max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ResourceState = structure(logical(0), 
            shape = "ResourceStateType", type = "string"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Labels = structure(list(structure(logical(0), 
            shape = "SharedLabel", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "SharedLabels", type = "list", max = 20L), 
        Size = structure(logical(0), shape = "SizeType", type = "long"), 
        LatestVersionSize = structure(logical(0), shape = "SizeType", 
            type = "long")), shape = "FolderMetadata", type = "structure")), 
        shape = "FolderMetadataList", type = "list"), Marker = structure(logical(0), 
        shape = "PageMarkerType", type = "string", max = 2048L, 
        min = 1L)), shape = "DescribeRootFoldersResponse", type = "structure")
    return(populate(args, shape))
}

describe_users_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), OrganizationId = structure(logical(0), 
        shape = "IdType", location = "querystring", locationName = "organizationId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        UserIds = structure(logical(0), shape = "UserIdsType", 
            location = "querystring", locationName = "userIds", 
            type = "string", max = 2000L, min = 1L, pattern = "[&\\w+-.@, ]+"), 
        Query = structure(logical(0), shape = "SearchQueryType", 
            location = "querystring", locationName = "query", 
            type = "string", max = 512L, min = 1L, pattern = "[\\u0020-\\uFFFF]+", 
            sensitive = TRUE), Include = structure(logical(0), 
            shape = "UserFilterType", location = "querystring", 
            locationName = "include", type = "string"), Order = structure(logical(0), 
            shape = "OrderType", location = "querystring", locationName = "order", 
            type = "string"), Sort = structure(logical(0), shape = "UserSortType", 
            location = "querystring", locationName = "sort", 
            type = "string"), Marker = structure(logical(0), 
            shape = "PageMarkerType", location = "querystring", 
            locationName = "marker", type = "string", max = 2048L, 
            min = 1L), Limit = structure(logical(0), shape = "LimitType", 
            location = "querystring", locationName = "limit", 
            type = "integer", max = 999L, min = 1L), Fields = structure(logical(0), 
            shape = "FieldNamesType", location = "querystring", 
            locationName = "fields", type = "string", max = 256L, 
            min = 1L, pattern = "[\\w,]+")), shape = "DescribeUsersRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_users_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Users = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "OrganizationUserList", type = "list"), TotalNumberOfUsers = structure(logical(0), 
        shape = "SizeType", deprecated = TRUE, type = "long"), 
        Marker = structure(logical(0), shape = "PageMarkerType", 
            type = "string", max = 2048L, min = 1L)), shape = "DescribeUsersResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_current_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE)), shape = "GetCurrentUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_current_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "GetCurrentUserResponse", type = "structure")
    return(populate(args, shape))
}

get_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        IncludeCustomMetadata = structure(logical(0), shape = "BooleanType", 
            location = "querystring", locationName = "includeCustomMetadata", 
            type = "boolean")), shape = "GetDocumentRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_document_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), CreatorId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), LatestVersionMetadata = structure(list(Id = structure(logical(0), 
        shape = "DocumentVersionIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ContentType = structure(logical(0), shape = "DocumentContentType", 
            type = "string", max = 128L, min = 1L), Size = structure(logical(0), 
            shape = "SizeType", type = "long"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Status = structure(logical(0), 
            shape = "DocumentStatusType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentCreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), CreatorId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), Thumbnail = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentThumbnailUrlMap", 
            type = "map"), Source = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentSourceUrlMap", 
            type = "map")), shape = "DocumentVersionMetadata", 
        type = "structure"), ResourceState = structure(logical(0), 
        shape = "ResourceStateType", type = "string"), Labels = structure(list(structure(logical(0), 
        shape = "SharedLabel", type = "string", max = 32L, min = 1L, 
        pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), shape = "SharedLabels", 
        type = "list", max = 20L)), shape = "DocumentMetadata", 
        type = "structure"), CustomMetadata = structure(list(structure(logical(0), 
        shape = "CustomMetadataValueType", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
        shape = "CustomMetadataMap", type = "map", max = 8L, 
        min = 1L)), shape = "GetDocumentResponse", type = "structure")
    return(populate(args, shape))
}

get_document_path_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        Limit = structure(logical(0), shape = "LimitType", location = "querystring", 
            locationName = "limit", type = "integer", max = 999L, 
            min = 1L), Fields = structure(logical(0), shape = "FieldNamesType", 
            location = "querystring", locationName = "fields", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w,]+"), 
        Marker = structure(logical(0), shape = "PageMarkerType", 
            location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L)), shape = "GetDocumentPathRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_document_path_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(list(Components = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+")), 
        shape = "ResourcePathComponent", type = "structure")), 
        shape = "ResourcePathComponentList", type = "list")), 
        shape = "ResourcePath", type = "structure")), shape = "GetDocumentPathResponse", 
        type = "structure")
    return(populate(args, shape))
}

get_document_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "uri", locationName = "VersionId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w+-.@]+"), Fields = structure(logical(0), 
            shape = "FieldNamesType", location = "querystring", 
            locationName = "fields", type = "string", max = 256L, 
            min = 1L, pattern = "[\\w,]+"), IncludeCustomMetadata = structure(logical(0), 
            shape = "BooleanType", location = "querystring", 
            locationName = "includeCustomMetadata", type = "boolean")), 
        shape = "GetDocumentVersionRequest", type = "structure")
    return(populate(args, shape))
}

get_document_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Id = structure(logical(0), 
        shape = "DocumentVersionIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ContentType = structure(logical(0), shape = "DocumentContentType", 
            type = "string", max = 128L, min = 1L), Size = structure(logical(0), 
            shape = "SizeType", type = "long"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Status = structure(logical(0), 
            shape = "DocumentStatusType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentCreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), CreatorId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), Thumbnail = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentThumbnailUrlMap", 
            type = "map"), Source = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentSourceUrlMap", 
            type = "map")), shape = "DocumentVersionMetadata", 
        type = "structure"), CustomMetadata = structure(list(structure(logical(0), 
        shape = "CustomMetadataValueType", type = "string", max = 256L, 
        min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
        shape = "CustomMetadataMap", type = "map", max = 8L, 
        min = 1L)), shape = "GetDocumentVersionResponse", type = "structure")
    return(populate(args, shape))
}

get_folder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), FolderId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "FolderId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        IncludeCustomMetadata = structure(logical(0), shape = "BooleanType", 
            location = "querystring", locationName = "includeCustomMetadata", 
            type = "boolean")), shape = "GetFolderRequest", type = "structure")
    return(populate(args, shape))
}

get_folder_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        CreatorId = structure(logical(0), shape = "IdType", type = "string", 
            max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ResourceState = structure(logical(0), 
            shape = "ResourceStateType", type = "string"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Labels = structure(list(structure(logical(0), 
            shape = "SharedLabel", type = "string", max = 32L, 
            min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "SharedLabels", type = "list", max = 20L), 
        Size = structure(logical(0), shape = "SizeType", type = "long"), 
        LatestVersionSize = structure(logical(0), shape = "SizeType", 
            type = "long")), shape = "FolderMetadata", type = "structure"), 
        CustomMetadata = structure(list(structure(logical(0), 
            shape = "CustomMetadataValueType", type = "string", 
            max = 256L, min = 1L, pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), 
            shape = "CustomMetadataMap", type = "map", max = 8L, 
            min = 1L)), shape = "GetFolderResponse", type = "structure")
    return(populate(args, shape))
}

get_folder_path_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), FolderId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "FolderId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        Limit = structure(logical(0), shape = "LimitType", location = "querystring", 
            locationName = "limit", type = "integer", max = 999L, 
            min = 1L), Fields = structure(logical(0), shape = "FieldNamesType", 
            location = "querystring", locationName = "fields", 
            type = "string", max = 256L, min = 1L, pattern = "[\\w,]+"), 
        Marker = structure(logical(0), shape = "PageMarkerType", 
            location = "querystring", locationName = "marker", 
            type = "string", max = 2048L, min = 1L)), shape = "GetFolderPathRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_folder_path_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Path = structure(list(Components = structure(list(structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+")), 
        shape = "ResourcePathComponent", type = "structure")), 
        shape = "ResourcePathComponentList", type = "list")), 
        shape = "ResourcePath", type = "structure")), shape = "GetFolderPathResponse", 
        type = "structure")
    return(populate(args, shape))
}

initiate_document_version_upload_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ContentCreatedTimestamp = structure(logical(0), shape = "TimestampType", 
            type = "timestamp"), ContentModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentType = structure(logical(0), 
            shape = "DocumentContentType", type = "string", max = 128L, 
            min = 1L), DocumentSizeInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), ParentFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+")), shape = "InitiateDocumentVersionUploadRequest", 
        type = "structure")
    return(populate(args, shape))
}

initiate_document_version_upload_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Metadata = structure(list(Id = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), CreatorId = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), ParentFolderId = structure(logical(0), 
        shape = "ResourceIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), CreatedTimestamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
        shape = "TimestampType", type = "timestamp"), LatestVersionMetadata = structure(list(Id = structure(logical(0), 
        shape = "DocumentVersionIdType", type = "string", max = 128L, 
        min = 1L, pattern = "[\\w+-.@]+"), Name = structure(logical(0), 
        shape = "ResourceNameType", type = "string", max = 255L, 
        min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ContentType = structure(logical(0), shape = "DocumentContentType", 
            type = "string", max = 128L, min = 1L), Size = structure(logical(0), 
            shape = "SizeType", type = "long"), Signature = structure(logical(0), 
            shape = "HashType", type = "string", max = 128L, 
            min = 0L, pattern = "[&\\w+-.@]+"), Status = structure(logical(0), 
            shape = "DocumentStatusType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentCreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ContentModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), CreatorId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), Thumbnail = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentThumbnailUrlMap", 
            type = "map"), Source = structure(list(structure(logical(0), 
            shape = "UrlType", type = "string", max = 1024L, 
            min = 1L, sensitive = TRUE)), shape = "DocumentSourceUrlMap", 
            type = "map")), shape = "DocumentVersionMetadata", 
        type = "structure"), ResourceState = structure(logical(0), 
        shape = "ResourceStateType", type = "string"), Labels = structure(list(structure(logical(0), 
        shape = "SharedLabel", type = "string", max = 32L, min = 1L, 
        pattern = "[a-zA-Z0-9._+-/=][a-zA-Z0-9 ._+-/=]*")), shape = "SharedLabels", 
        type = "list", max = 20L)), shape = "DocumentMetadata", 
        type = "structure"), UploadMetadata = structure(list(UploadUrl = structure(logical(0), 
        shape = "UrlType", type = "string", max = 1024L, min = 1L, 
        sensitive = TRUE), SignedHeaders = structure(list(structure(logical(0), 
        shape = "HeaderValueType", type = "string", max = 1024L, 
        min = 1L)), shape = "SignedHeaderMap", type = "map")), 
        shape = "UploadMetadata", type = "structure")), shape = "InitiateDocumentVersionUploadResponse", 
        type = "structure")
    return(populate(args, shape))
}

remove_all_resource_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+")), 
        shape = "RemoveAllResourcePermissionsRequest", type = "structure")
    return(populate(args, shape))
}

remove_all_resource_permissions_output <- function () 
{
    return(list())
}

remove_resource_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), ResourceId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "ResourceId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        PrincipalId = structure(logical(0), shape = "IdType", 
            location = "uri", locationName = "PrincipalId", type = "string", 
            max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), PrincipalType = structure(logical(0), 
            shape = "PrincipalType", location = "querystring", 
            locationName = "type", type = "string")), shape = "RemoveResourcePermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

remove_resource_permission_output <- function () 
{
    return(list())
}

update_document_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Name = structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ParentFolderId = structure(logical(0), shape = "ResourceIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        ResourceState = structure(logical(0), shape = "ResourceStateType", 
            type = "string")), shape = "UpdateDocumentRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_document_output <- function () 
{
    return(list())
}

update_document_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), DocumentId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "DocumentId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        VersionId = structure(logical(0), shape = "DocumentVersionIdType", 
            location = "uri", locationName = "VersionId", type = "string", 
            max = 128L, min = 1L, pattern = "[\\w+-.@]+"), VersionStatus = structure(logical(0), 
            shape = "DocumentVersionStatus", type = "string")), 
        shape = "UpdateDocumentVersionRequest", type = "structure")
    return(populate(args, shape))
}

update_document_version_output <- function () 
{
    return(list())
}

update_folder_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), FolderId = structure(logical(0), 
        shape = "ResourceIdType", location = "uri", locationName = "FolderId", 
        type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        Name = structure(logical(0), shape = "ResourceNameType", 
            type = "string", max = 255L, min = 1L, pattern = "[\\u0020-\\u202D\\u202F-\\uFFFF]+"), 
        ParentFolderId = structure(logical(0), shape = "ResourceIdType", 
            type = "string", max = 128L, min = 1L, pattern = "[\\w+-.@]+"), 
        ResourceState = structure(logical(0), shape = "ResourceStateType", 
            type = "string")), shape = "UpdateFolderRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_folder_output <- function () 
{
    return(list())
}

update_user_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthenticationToken = structure(logical(0), 
        shape = "AuthenticationHeaderType", location = "header", 
        locationName = "Authentication", type = "string", max = 8199L, 
        min = 1L, sensitive = TRUE), UserId = structure(logical(0), 
        shape = "IdType", location = "uri", locationName = "UserId", 
        type = "string", max = 256L, min = 1L, pattern = "[&\\w+-.@]+"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), Type = structure(logical(0), 
            shape = "UserType", type = "string"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), GrantPoweruserPrivileges = structure(logical(0), 
            shape = "BooleanEnumType", type = "string")), shape = "UpdateUserRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_user_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(User = structure(list(Id = structure(logical(0), 
        shape = "IdType", type = "string", max = 256L, min = 1L, 
        pattern = "[&\\w+-.@]+"), Username = structure(logical(0), 
        shape = "UsernameType", type = "string", max = 256L, 
        min = 1L, pattern = "[\\w\\-+.]+(@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]+)?"), 
        EmailAddress = structure(logical(0), shape = "EmailAddressType", 
            type = "string", max = 256L, min = 1L, pattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), 
        GivenName = structure(logical(0), shape = "UserAttributeValueType", 
            type = "string", max = 64L, min = 1L), Surname = structure(logical(0), 
            shape = "UserAttributeValueType", type = "string", 
            max = 64L, min = 1L), OrganizationId = structure(logical(0), 
            shape = "IdType", type = "string", max = 256L, min = 1L, 
            pattern = "[&\\w+-.@]+"), RootFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), RecycleBinFolderId = structure(logical(0), 
            shape = "ResourceIdType", type = "string", max = 128L, 
            min = 1L, pattern = "[\\w+-.@]+"), Status = structure(logical(0), 
            shape = "UserStatusType", type = "string"), Type = structure(logical(0), 
            shape = "UserType", type = "string"), CreatedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), ModifiedTimestamp = structure(logical(0), 
            shape = "TimestampType", type = "timestamp"), TimeZoneId = structure(logical(0), 
            shape = "TimeZoneIdType", type = "string", max = 256L, 
            min = 1L), Locale = structure(logical(0), shape = "LocaleType", 
            type = "string"), Storage = structure(list(StorageUtilizedInBytes = structure(logical(0), 
            shape = "SizeType", type = "long"), StorageRule = structure(list(StorageAllocatedInBytes = structure(logical(0), 
            shape = "PositiveSizeType", type = "long", min = 0L), 
            StorageType = structure(logical(0), shape = "StorageType", 
                type = "string")), shape = "StorageRuleType", 
            type = "structure")), shape = "UserStorageMetadata", 
            type = "structure")), shape = "User", type = "structure")), 
        shape = "UpdateUserResponse", type = "structure")
    return(populate(args, shape))
}
