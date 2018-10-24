#' Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload
#'
#' Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
#'
#' @param DocumentId The ID of the document.
#' @param VersionId The ID of the version.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
abort_document_version_upload <- function (DocumentId, VersionId, 
    AuthenticationToken = NULL) 
{
    op <- Operation(name = "AbortDocumentVersionUpload", http_method = "DELETE", 
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}", 
        paginator = list())
    input <- abort_document_version_upload_input(DocumentId = DocumentId, 
        VersionId = VersionId, AuthenticationToken = AuthenticationToken)
    output <- abort_document_version_upload_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Activates the specified user
#'
#' Activates the specified user. Only active users can access Amazon WorkDocs.
#'
#' @param UserId The ID of the user.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
activate_user <- function (UserId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "ActivateUser", http_method = "POST", 
        http_path = "/api/v1/users/{UserId}/activation", paginator = list())
    input <- activate_user_input(UserId = UserId, AuthenticationToken = AuthenticationToken)
    output <- activate_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a set of permissions for the specified folder or document
#'
#' Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
#'
#' @param ResourceId The ID of the resource.
#' @param Principals The users, groups, or organization being granted permission.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param NotificationOptions The notification options.
#'
#' @examples
#'
#' @export
add_resource_permissions <- function (ResourceId, Principals, 
    AuthenticationToken = NULL, NotificationOptions = NULL) 
{
    op <- Operation(name = "AddResourcePermissions", http_method = "POST", 
        http_path = "/api/v1/resources/{ResourceId}/permissions", 
        paginator = list())
    input <- add_resource_permissions_input(ResourceId = ResourceId, 
        Principals = Principals, AuthenticationToken = AuthenticationToken, 
        NotificationOptions = NotificationOptions)
    output <- add_resource_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a new comment to the specified document version
#'
#' Adds a new comment to the specified document version.
#'
#' @param DocumentId The ID of the document.
#' @param VersionId The ID of the document version.
#' @param Text The text of the comment.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param ParentId The ID of the parent comment.
#' @param ThreadId The ID of the root comment in the thread.
#' @param Visibility The visibility of the comment. Options are either PRIVATE, where the comment is visible only to the comment author and document owner and co-owners, or PUBLIC, where the comment is visible to document owners, co-owners, and contributors.
#' @param NotifyCollaborators Set this parameter to TRUE to send an email out to the document collaborators after the comment is created.
#'
#' @examples
#'
#' @export
create_comment <- function (DocumentId, VersionId, Text, AuthenticationToken = NULL, 
    ParentId = NULL, ThreadId = NULL, Visibility = NULL, NotifyCollaborators = NULL) 
{
    op <- Operation(name = "CreateComment", http_method = "POST", 
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", 
        paginator = list())
    input <- create_comment_input(DocumentId = DocumentId, VersionId = VersionId, 
        Text = Text, AuthenticationToken = AuthenticationToken, 
        ParentId = ParentId, ThreadId = ThreadId, Visibility = Visibility, 
        NotifyCollaborators = NotifyCollaborators)
    output <- create_comment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds one or more custom properties to the specified resource (a folder, document, or version)
#'
#' Adds one or more custom properties to the specified resource (a folder, document, or version).
#'
#' @param ResourceId The ID of the resource.
#' @param CustomMetadata Custom metadata in the form of name-value pairs.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param VersionId The ID of the version, if the custom metadata is being added to a document version.
#'
#' @examples
#'
#' @export
create_custom_metadata <- function (ResourceId, CustomMetadata, 
    AuthenticationToken = NULL, VersionId = NULL) 
{
    op <- Operation(name = "CreateCustomMetadata", http_method = "PUT", 
        http_path = "/api/v1/resources/{ResourceId}/customMetadata", 
        paginator = list())
    input <- create_custom_metadata_input(ResourceId = ResourceId, 
        CustomMetadata = CustomMetadata, AuthenticationToken = AuthenticationToken, 
        VersionId = VersionId)
    output <- create_custom_metadata_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a folder with the specified name and parent folder
#'
#' Creates a folder with the specified name and parent folder.
#'
#' @param ParentFolderId The ID of the parent folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Name The name of the new folder.
#'
#' @examples
#'
#' @export
create_folder <- function (ParentFolderId, AuthenticationToken = NULL, 
    Name = NULL) 
{
    op <- Operation(name = "CreateFolder", http_method = "POST", 
        http_path = "/api/v1/folders", paginator = list())
    input <- create_folder_input(ParentFolderId = ParentFolderId, 
        AuthenticationToken = AuthenticationToken, Name = Name)
    output <- create_folder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds the specified list of labels to the given resource (a document or folder)
#'
#' Adds the specified list of labels to the given resource (a document or folder)
#'
#' @param ResourceId The ID of the resource.
#' @param Labels List of labels to add to the resource.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
create_labels <- function (ResourceId, Labels, AuthenticationToken = NULL) 
{
    op <- Operation(name = "CreateLabels", http_method = "PUT", 
        http_path = "/api/v1/resources/{ResourceId}/labels", 
        paginator = list())
    input <- create_labels_input(ResourceId = ResourceId, Labels = Labels, 
        AuthenticationToken = AuthenticationToken)
    output <- create_labels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Configure WorkDocs to use Amazon SNS notifications
#'
#' Configure WorkDocs to use Amazon SNS notifications.
#' 
#' The endpoint receives a confirmation message, and must confirm the subscription. For more information, see [Confirm the Subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.confirm) in the *Amazon Simple Notification Service Developer Guide*.
#'
#' @param OrganizationId The ID of the organization.
#' @param Endpoint The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint is a URL that begins with \"https://\".
#' @param Protocol The protocol to use. The supported value is https, which delivers JSON-encoded messages using HTTPS POST.
#' @param SubscriptionType The notification type.
#'
#' @examples
#'
#' @export
create_notification_subscription <- function (OrganizationId, 
    Endpoint, Protocol, SubscriptionType) 
{
    op <- Operation(name = "CreateNotificationSubscription", 
        http_method = "POST", http_path = "/api/v1/organizations/{OrganizationId}/subscriptions", 
        paginator = list())
    input <- create_notification_subscription_input(OrganizationId = OrganizationId, 
        Endpoint = Endpoint, Protocol = Protocol, SubscriptionType = SubscriptionType)
    output <- create_notification_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a user in a Simple AD or Microsoft AD directory
#'
#' Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is \"ACTIVE\". New users can access Amazon WorkDocs.
#'
#' @param Username The login name of the user.
#' @param GivenName The given name of the user.
#' @param Surname The surname of the user.
#' @param Password The password of the user.
#' @param OrganizationId The ID of the organization.
#' @param EmailAddress The email address of the user.
#' @param TimeZoneId The time zone ID of the user.
#' @param StorageRule The amount of storage for the user.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
create_user <- function (Username, GivenName, Surname, Password, 
    OrganizationId = NULL, EmailAddress = NULL, TimeZoneId = NULL, 
    StorageRule = NULL, AuthenticationToken = NULL) 
{
    op <- Operation(name = "CreateUser", http_method = "POST", 
        http_path = "/api/v1/users", paginator = list())
    input <- create_user_input(Username = Username, GivenName = GivenName, 
        Surname = Surname, Password = Password, OrganizationId = OrganizationId, 
        EmailAddress = EmailAddress, TimeZoneId = TimeZoneId, 
        StorageRule = StorageRule, AuthenticationToken = AuthenticationToken)
    output <- create_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deactivates the specified user, which revokes the user\'s access to Amazon WorkDocs
#'
#' Deactivates the specified user, which revokes the user\'s access to Amazon WorkDocs.
#'
#' @param UserId The ID of the user.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
deactivate_user <- function (UserId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "DeactivateUser", http_method = "DELETE", 
        http_path = "/api/v1/users/{UserId}/activation", paginator = list())
    input <- deactivate_user_input(UserId = UserId, AuthenticationToken = AuthenticationToken)
    output <- deactivate_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified comment from the document version
#'
#' Deletes the specified comment from the document version.
#'
#' @param DocumentId The ID of the document.
#' @param VersionId The ID of the document version.
#' @param CommentId The ID of the comment.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
delete_comment <- function (DocumentId, VersionId, CommentId, 
    AuthenticationToken = NULL) 
{
    op <- Operation(name = "DeleteComment", http_method = "DELETE", 
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", 
        paginator = list())
    input <- delete_comment_input(DocumentId = DocumentId, VersionId = VersionId, 
        CommentId = CommentId, AuthenticationToken = AuthenticationToken)
    output <- delete_comment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes custom metadata from the specified resource
#'
#' Deletes custom metadata from the specified resource.
#'
#' @param ResourceId The ID of the resource, either a document or folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param VersionId The ID of the version, if the custom metadata is being deleted from a document version.
#' @param Keys List of properties to remove.
#' @param DeleteAll Flag to indicate removal of all custom metadata properties from the specified resource.
#'
#' @examples
#'
#' @export
delete_custom_metadata <- function (ResourceId, AuthenticationToken = NULL, 
    VersionId = NULL, Keys = NULL, DeleteAll = NULL) 
{
    op <- Operation(name = "DeleteCustomMetadata", http_method = "DELETE", 
        http_path = "/api/v1/resources/{ResourceId}/customMetadata", 
        paginator = list())
    input <- delete_custom_metadata_input(ResourceId = ResourceId, 
        AuthenticationToken = AuthenticationToken, VersionId = VersionId, 
        Keys = Keys, DeleteAll = DeleteAll)
    output <- delete_custom_metadata_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes the specified document and its associated metadata
#'
#' Permanently deletes the specified document and its associated metadata.
#'
#' @param DocumentId The ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
delete_document <- function (DocumentId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "DeleteDocument", http_method = "DELETE", 
        http_path = "/api/v1/documents/{DocumentId}", paginator = list())
    input <- delete_document_input(DocumentId = DocumentId, AuthenticationToken = AuthenticationToken)
    output <- delete_document_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Permanently deletes the specified folder and its contents
#'
#' Permanently deletes the specified folder and its contents.
#'
#' @param FolderId The ID of the folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
delete_folder <- function (FolderId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "DeleteFolder", http_method = "DELETE", 
        http_path = "/api/v1/folders/{FolderId}", paginator = list())
    input <- delete_folder_input(FolderId = FolderId, AuthenticationToken = AuthenticationToken)
    output <- delete_folder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the contents of the specified folder
#'
#' Deletes the contents of the specified folder.
#'
#' @param FolderId The ID of the folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
delete_folder_contents <- function (FolderId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "DeleteFolderContents", http_method = "DELETE", 
        http_path = "/api/v1/folders/{FolderId}/contents", paginator = list())
    input <- delete_folder_contents_input(FolderId = FolderId, 
        AuthenticationToken = AuthenticationToken)
    output <- delete_folder_contents_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified list of labels from a resource
#'
#' Deletes the specified list of labels from a resource.
#'
#' @param ResourceId The ID of the resource.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Labels List of labels to delete from the resource.
#' @param DeleteAll Flag to request removal of all labels from the specified resource.
#'
#' @examples
#'
#' @export
delete_labels <- function (ResourceId, AuthenticationToken = NULL, 
    Labels = NULL, DeleteAll = NULL) 
{
    op <- Operation(name = "DeleteLabels", http_method = "DELETE", 
        http_path = "/api/v1/resources/{ResourceId}/labels", 
        paginator = list())
    input <- delete_labels_input(ResourceId = ResourceId, AuthenticationToken = AuthenticationToken, 
        Labels = Labels, DeleteAll = DeleteAll)
    output <- delete_labels_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified subscription from the specified organization
#'
#' Deletes the specified subscription from the specified organization.
#'
#' @param SubscriptionId The ID of the subscription.
#' @param OrganizationId The ID of the organization.
#'
#' @examples
#'
#' @export
delete_notification_subscription <- function (SubscriptionId, 
    OrganizationId) 
{
    op <- Operation(name = "DeleteNotificationSubscription", 
        http_method = "DELETE", http_path = "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", 
        paginator = list())
    input <- delete_notification_subscription_input(SubscriptionId = SubscriptionId, 
        OrganizationId = OrganizationId)
    output <- delete_notification_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified user from a Simple AD or Microsoft AD directory
#'
#' Deletes the specified user from a Simple AD or Microsoft AD directory.
#'
#' @param UserId The ID of the user.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
delete_user <- function (UserId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "DeleteUser", http_method = "DELETE", 
        http_path = "/api/v1/users/{UserId}", paginator = list())
    input <- delete_user_input(UserId = UserId, AuthenticationToken = AuthenticationToken)
    output <- delete_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the user activities in a specified time period
#'
#' Describes the user activities in a specified time period.
#'
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param StartTime The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp.
#' @param EndTime The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp.
#' @param OrganizationId The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.
#' @param UserId The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.
#' @param Limit The maximum number of items to return.
#' @param Marker The marker for the next set of results.
#'
#' @examples
#'
#' @export
describe_activities <- function (AuthenticationToken = NULL, 
    StartTime = NULL, EndTime = NULL, OrganizationId = NULL, 
    UserId = NULL, Limit = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeActivities", http_method = "GET", 
        http_path = "/api/v1/activities", paginator = list())
    input <- describe_activities_input(AuthenticationToken = AuthenticationToken, 
        StartTime = StartTime, EndTime = EndTime, OrganizationId = OrganizationId, 
        UserId = UserId, Limit = Limit, Marker = Marker)
    output <- describe_activities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' List all the comments for the specified document version
#'
#' List all the comments for the specified document version.
#'
#' @param DocumentId The ID of the document.
#' @param VersionId The ID of the document version.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Limit The maximum number of items to return.
#' @param Marker The marker for the next set of results. This marker was received from a previous call.
#'
#' @examples
#'
#' @export
describe_comments <- function (DocumentId, VersionId, AuthenticationToken = NULL, 
    Limit = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeComments", http_method = "GET", 
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", 
        paginator = list())
    input <- describe_comments_input(DocumentId = DocumentId, 
        VersionId = VersionId, AuthenticationToken = AuthenticationToken, 
        Limit = Limit, Marker = Marker)
    output <- describe_comments_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the document versions for the specified document
#'
#' Retrieves the document versions for the specified document.
#' 
#' By default, only active versions are returned.
#'
#' @param DocumentId The ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#' @param Limit The maximum number of versions to return with this call.
#' @param Include A comma-separated list of values. Specify \"INITIALIZED\" to include incomplete versions.
#' @param Fields Specify \"SOURCE\" to include initialized versions and a URL for the source document.
#'
#' @examples
#'
#' @export
describe_document_versions <- function (DocumentId, AuthenticationToken = NULL, 
    Marker = NULL, Limit = NULL, Include = NULL, Fields = NULL) 
{
    op <- Operation(name = "DescribeDocumentVersions", http_method = "GET", 
        http_path = "/api/v1/documents/{DocumentId}/versions", 
        paginator = list())
    input <- describe_document_versions_input(DocumentId = DocumentId, 
        AuthenticationToken = AuthenticationToken, Marker = Marker, 
        Limit = Limit, Include = Include, Fields = Fields)
    output <- describe_document_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the contents of the specified folder, including its documents and subfolders
#'
#' Describes the contents of the specified folder, including its documents and subfolders.
#' 
#' By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
#'
#' @param FolderId The ID of the folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Sort The sorting criteria.
#' @param Order The order for the contents of the folder.
#' @param Limit The maximum number of items to return with this call.
#' @param Marker The marker for the next set of results. This marker was received from a previous call.
#' @param Type The type of items.
#' @param Include The contents to include. Specify \"INITIALIZED\" to include initialized documents.
#'
#' @examples
#'
#' @export
describe_folder_contents <- function (FolderId, AuthenticationToken = NULL, 
    Sort = NULL, Order = NULL, Limit = NULL, Marker = NULL, Type = NULL, 
    Include = NULL) 
{
    op <- Operation(name = "DescribeFolderContents", http_method = "GET", 
        http_path = "/api/v1/folders/{FolderId}/contents", paginator = list())
    input <- describe_folder_contents_input(FolderId = FolderId, 
        AuthenticationToken = AuthenticationToken, Sort = Sort, 
        Order = Order, Limit = Limit, Marker = Marker, Type = Type, 
        Include = Include)
    output <- describe_folder_contents_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the groups specified by query
#'
#' Describes the groups specified by query.
#'
#' @param SearchQuery A query to describe groups by group name.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param OrganizationId The ID of the organization.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#' @param Limit The maximum number of items to return with this call.
#'
#' @examples
#'
#' @export
describe_groups <- function (SearchQuery, AuthenticationToken = NULL, 
    OrganizationId = NULL, Marker = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeGroups", http_method = "GET", 
        http_path = "/api/v1/groups", paginator = list())
    input <- describe_groups_input(SearchQuery = SearchQuery, 
        AuthenticationToken = AuthenticationToken, OrganizationId = OrganizationId, 
        Marker = Marker, Limit = Limit)
    output <- describe_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists the specified notification subscriptions
#'
#' Lists the specified notification subscriptions.
#'
#' @param OrganizationId The ID of the organization.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#' @param Limit The maximum number of items to return with this call.
#'
#' @examples
#'
#' @export
describe_notification_subscriptions <- function (OrganizationId, 
    Marker = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeNotificationSubscriptions", 
        http_method = "GET", http_path = "/api/v1/organizations/{OrganizationId}/subscriptions", 
        paginator = list())
    input <- describe_notification_subscriptions_input(OrganizationId = OrganizationId, 
        Marker = Marker, Limit = Limit)
    output <- describe_notification_subscriptions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the permissions of a specified resource
#'
#' Describes the permissions of a specified resource.
#'
#' @param ResourceId The ID of the resource.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param PrincipalId The ID of the principal to filter permissions by.
#' @param Limit The maximum number of items to return with this call.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call)
#'
#' @examples
#'
#' @export
describe_resource_permissions <- function (ResourceId, AuthenticationToken = NULL, 
    PrincipalId = NULL, Limit = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeResourcePermissions", http_method = "GET", 
        http_path = "/api/v1/resources/{ResourceId}/permissions", 
        paginator = list())
    input <- describe_resource_permissions_input(ResourceId = ResourceId, 
        AuthenticationToken = AuthenticationToken, PrincipalId = PrincipalId, 
        Limit = Limit, Marker = Marker)
    output <- describe_resource_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the current user\'s special folders; the `RootFolder` and the `RecycleBin`
#'
#' Describes the current user\'s special folders; the `RootFolder` and the `RecycleBin`. `RootFolder` is the root of user\'s files and folders and `RecycleBin` is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients.
#'
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Limit The maximum number of items to return.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#'
#' @examples
#'
#' @export
describe_root_folders <- function (AuthenticationToken, Limit = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeRootFolders", http_method = "GET", 
        http_path = "/api/v1/me/root", paginator = list())
    input <- describe_root_folders_input(AuthenticationToken = AuthenticationToken, 
        Limit = Limit, Marker = Marker)
    output <- describe_root_folders_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified users
#'
#' Describes the specified users. You can describe all users or filter the results (for example, by status or organization).
#' 
#' By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
#'
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param OrganizationId The ID of the organization.
#' @param UserIds The IDs of the users.
#' @param Query A query to filter users by user name.
#' @param Include The state of the users. Specify \"ALL\" to include inactive users.
#' @param Order The order for the results.
#' @param Sort The sorting criteria.
#' @param Marker The marker for the next set of results. (You received this marker from a previous call.)
#' @param Limit The maximum number of items to return.
#' @param Fields A comma-separated list of values. Specify \"STORAGE\_METADATA\" to include the user storage quota and utilization information.
#'
#' @examples
#'
#' @export
describe_users <- function (AuthenticationToken = NULL, OrganizationId = NULL, 
    UserIds = NULL, Query = NULL, Include = NULL, Order = NULL, 
    Sort = NULL, Marker = NULL, Limit = NULL, Fields = NULL) 
{
    op <- Operation(name = "DescribeUsers", http_method = "GET", 
        http_path = "/api/v1/users", paginator = list())
    input <- describe_users_input(AuthenticationToken = AuthenticationToken, 
        OrganizationId = OrganizationId, UserIds = UserIds, Query = Query, 
        Include = Include, Order = Order, Sort = Sort, Marker = Marker, 
        Limit = Limit, Fields = Fields)
    output <- describe_users_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves details of the current user for whom the authentication token was generated
#'
#' Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients.
#'
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
get_current_user <- function (AuthenticationToken) 
{
    op <- Operation(name = "GetCurrentUser", http_method = "GET", 
        http_path = "/api/v1/me", paginator = list())
    input <- get_current_user_input(AuthenticationToken = AuthenticationToken)
    output <- get_current_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves details of a document
#'
#' Retrieves details of a document.
#'
#' @param DocumentId The ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param IncludeCustomMetadata Set this to `TRUE` to include custom metadata in the response.
#'
#' @examples
#'
#' @export
get_document <- function (DocumentId, AuthenticationToken = NULL, 
    IncludeCustomMetadata = NULL) 
{
    op <- Operation(name = "GetDocument", http_method = "GET", 
        http_path = "/api/v1/documents/{DocumentId}", paginator = list())
    input <- get_document_input(DocumentId = DocumentId, AuthenticationToken = AuthenticationToken, 
        IncludeCustomMetadata = IncludeCustomMetadata)
    output <- get_document_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the path information (the hierarchy from the root folder) for the requested document
#'
#' Retrieves the path information (the hierarchy from the root folder) for the requested document.
#' 
#' By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
#'
#' @param DocumentId The ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Limit The maximum number of levels in the hierarchy to return.
#' @param Fields A comma-separated list of values. Specify `NAME` to include the names of the parent folders.
#' @param Marker This value is not supported.
#'
#' @examples
#'
#' @export
get_document_path <- function (DocumentId, AuthenticationToken = NULL, 
    Limit = NULL, Fields = NULL, Marker = NULL) 
{
    op <- Operation(name = "GetDocumentPath", http_method = "GET", 
        http_path = "/api/v1/documents/{DocumentId}/path", paginator = list())
    input <- get_document_path_input(DocumentId = DocumentId, 
        AuthenticationToken = AuthenticationToken, Limit = Limit, 
        Fields = Fields, Marker = Marker)
    output <- get_document_path_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves version metadata for the specified document
#'
#' Retrieves version metadata for the specified document.
#'
#' @param DocumentId The ID of the document.
#' @param VersionId The version ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Fields A comma-separated list of values. Specify \"SOURCE\" to include a URL for the source document.
#' @param IncludeCustomMetadata Set this to TRUE to include custom metadata in the response.
#'
#' @examples
#'
#' @export
get_document_version <- function (DocumentId, VersionId, AuthenticationToken = NULL, 
    Fields = NULL, IncludeCustomMetadata = NULL) 
{
    op <- Operation(name = "GetDocumentVersion", http_method = "GET", 
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}", 
        paginator = list())
    input <- get_document_version_input(DocumentId = DocumentId, 
        VersionId = VersionId, AuthenticationToken = AuthenticationToken, 
        Fields = Fields, IncludeCustomMetadata = IncludeCustomMetadata)
    output <- get_document_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the metadata of the specified folder
#'
#' Retrieves the metadata of the specified folder.
#'
#' @param FolderId The ID of the folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param IncludeCustomMetadata Set to TRUE to include custom metadata in the response.
#'
#' @examples
#'
#' @export
get_folder <- function (FolderId, AuthenticationToken = NULL, 
    IncludeCustomMetadata = NULL) 
{
    op <- Operation(name = "GetFolder", http_method = "GET", 
        http_path = "/api/v1/folders/{FolderId}", paginator = list())
    input <- get_folder_input(FolderId = FolderId, AuthenticationToken = AuthenticationToken, 
        IncludeCustomMetadata = IncludeCustomMetadata)
    output <- get_folder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the path information (the hierarchy from the root folder) for the specified folder
#'
#' Retrieves the path information (the hierarchy from the root folder) for the specified folder.
#' 
#' By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
#'
#' @param FolderId The ID of the folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Limit The maximum number of levels in the hierarchy to return.
#' @param Fields A comma-separated list of values. Specify \"NAME\" to include the names of the parent folders.
#' @param Marker This value is not supported.
#'
#' @examples
#'
#' @export
get_folder_path <- function (FolderId, AuthenticationToken = NULL, 
    Limit = NULL, Fields = NULL, Marker = NULL) 
{
    op <- Operation(name = "GetFolderPath", http_method = "GET", 
        http_path = "/api/v1/folders/{FolderId}/path", paginator = list())
    input <- get_folder_path_input(FolderId = FolderId, AuthenticationToken = AuthenticationToken, 
        Limit = Limit, Fields = Fields, Marker = Marker)
    output <- get_folder_path_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new document object and version object
#'
#' Creates a new document object and version object.
#' 
#' The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion.
#' 
#' To cancel the document upload, call AbortDocumentVersionUpload.
#'
#' @param ParentFolderId The ID of the parent folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Id The ID of the document.
#' @param Name The name of the document.
#' @param ContentCreatedTimestamp The timestamp when the content of the document was originally created.
#' @param ContentModifiedTimestamp The timestamp when the content of the document was modified.
#' @param ContentType The content type of the document.
#' @param DocumentSizeInBytes The size of the document, in bytes.
#'
#' @examples
#'
#' @export
initiate_document_version_upload <- function (ParentFolderId, 
    AuthenticationToken = NULL, Id = NULL, Name = NULL, ContentCreatedTimestamp = NULL, 
    ContentModifiedTimestamp = NULL, ContentType = NULL, DocumentSizeInBytes = NULL) 
{
    op <- Operation(name = "InitiateDocumentVersionUpload", http_method = "POST", 
        http_path = "/api/v1/documents", paginator = list())
    input <- initiate_document_version_upload_input(ParentFolderId = ParentFolderId, 
        AuthenticationToken = AuthenticationToken, Id = Id, Name = Name, 
        ContentCreatedTimestamp = ContentCreatedTimestamp, ContentModifiedTimestamp = ContentModifiedTimestamp, 
        ContentType = ContentType, DocumentSizeInBytes = DocumentSizeInBytes)
    output <- initiate_document_version_upload_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes all the permissions from the specified resource
#'
#' Removes all the permissions from the specified resource.
#'
#' @param ResourceId The ID of the resource.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#'
#' @examples
#'
#' @export
remove_all_resource_permissions <- function (ResourceId, AuthenticationToken = NULL) 
{
    op <- Operation(name = "RemoveAllResourcePermissions", http_method = "DELETE", 
        http_path = "/api/v1/resources/{ResourceId}/permissions", 
        paginator = list())
    input <- remove_all_resource_permissions_input(ResourceId = ResourceId, 
        AuthenticationToken = AuthenticationToken)
    output <- remove_all_resource_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes the permission for the specified principal from the specified resource
#'
#' Removes the permission for the specified principal from the specified resource.
#'
#' @param ResourceId The ID of the resource.
#' @param PrincipalId The principal ID of the resource.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param PrincipalType The principal type of the resource.
#'
#' @examples
#'
#' @export
remove_resource_permission <- function (ResourceId, PrincipalId, 
    AuthenticationToken = NULL, PrincipalType = NULL) 
{
    op <- Operation(name = "RemoveResourcePermission", http_method = "DELETE", 
        http_path = "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", 
        paginator = list())
    input <- remove_resource_permission_input(ResourceId = ResourceId, 
        PrincipalId = PrincipalId, AuthenticationToken = AuthenticationToken, 
        PrincipalType = PrincipalType)
    output <- remove_resource_permission_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified attributes of a document
#'
#' Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
#'
#' @param DocumentId The ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Name The name of the document.
#' @param ParentFolderId The ID of the parent folder.
#' @param ResourceState The resource state of the document. Only ACTIVE and RECYCLED are supported.
#'
#' @examples
#'
#' @export
update_document <- function (DocumentId, AuthenticationToken = NULL, 
    Name = NULL, ParentFolderId = NULL, ResourceState = NULL) 
{
    op <- Operation(name = "UpdateDocument", http_method = "PATCH", 
        http_path = "/api/v1/documents/{DocumentId}", paginator = list())
    input <- update_document_input(DocumentId = DocumentId, AuthenticationToken = AuthenticationToken, 
        Name = Name, ParentFolderId = ParentFolderId, ResourceState = ResourceState)
    output <- update_document_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the status of the document version to ACTIVE
#'
#' Changes the status of the document version to ACTIVE.
#' 
#' Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload.
#'
#' @param DocumentId The ID of the document.
#' @param VersionId The version ID of the document.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param VersionStatus The status of the version.
#'
#' @examples
#'
#' @export
update_document_version <- function (DocumentId, VersionId, AuthenticationToken = NULL, 
    VersionStatus = NULL) 
{
    op <- Operation(name = "UpdateDocumentVersion", http_method = "PATCH", 
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}", 
        paginator = list())
    input <- update_document_version_input(DocumentId = DocumentId, 
        VersionId = VersionId, AuthenticationToken = AuthenticationToken, 
        VersionStatus = VersionStatus)
    output <- update_document_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified attributes of the specified folder
#'
#' Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
#'
#' @param FolderId The ID of the folder.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param Name The name of the folder.
#' @param ParentFolderId The ID of the parent folder.
#' @param ResourceState The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from the API.
#'
#' @examples
#'
#' @export
update_folder <- function (FolderId, AuthenticationToken = NULL, 
    Name = NULL, ParentFolderId = NULL, ResourceState = NULL) 
{
    op <- Operation(name = "UpdateFolder", http_method = "PATCH", 
        http_path = "/api/v1/folders/{FolderId}", paginator = list())
    input <- update_folder_input(FolderId = FolderId, AuthenticationToken = AuthenticationToken, 
        Name = Name, ParentFolderId = ParentFolderId, ResourceState = ResourceState)
    output <- update_folder_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site
#'
#' Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
#'
#' @param UserId The ID of the user.
#' @param AuthenticationToken Amazon WorkDocs authentication token. Do not set this field when using administrative API actions, as in accessing the API using AWS credentials.
#' @param GivenName The given name of the user.
#' @param Surname The surname of the user.
#' @param Type The type of the user.
#' @param StorageRule The amount of storage for the user.
#' @param TimeZoneId The time zone ID of the user.
#' @param Locale The locale of the user.
#' @param GrantPoweruserPrivileges Boolean value to determine whether the user is granted Poweruser privileges.
#'
#' @examples
#'
#' @export
update_user <- function (UserId, AuthenticationToken = NULL, 
    GivenName = NULL, Surname = NULL, Type = NULL, StorageRule = NULL, 
    TimeZoneId = NULL, Locale = NULL, GrantPoweruserPrivileges = NULL) 
{
    op <- Operation(name = "UpdateUser", http_method = "PATCH", 
        http_path = "/api/v1/users/{UserId}", paginator = list())
    input <- update_user_input(UserId = UserId, AuthenticationToken = AuthenticationToken, 
        GivenName = GivenName, Surname = Surname, Type = Type, 
        StorageRule = StorageRule, TimeZoneId = TimeZoneId, Locale = Locale, 
        GrantPoweruserPrivileges = GrantPoweruserPrivileges)
    output <- update_user_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
