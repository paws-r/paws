#' Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream
#'
#' Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#'
#' @examples
#'
#' @export
bulk_publish <- function (IdentityPoolId) 
{
    op <- Operation(name = "BulkPublish", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/bulkpublish", 
        paginator = list())
    input <- bulk_publish_input(IdentityPoolId = IdentityPoolId)
    output <- bulk_publish_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specific dataset
#'
#' Deletes the specific dataset. The dataset will be deleted permanently, and the action can\'t be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException.
#' 
#' This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param IdentityId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param DatasetName A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
#'
#' @examples
#'
#' @export
delete_dataset <- function (IdentityPoolId, IdentityId, DatasetName) 
{
    op <- Operation(name = "DeleteDataset", http_method = "DELETE", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", 
        paginator = list())
    input <- delete_dataset_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DatasetName = DatasetName)
    output <- delete_dataset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets meta data about a dataset by identity and dataset name
#'
#' Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.
#' 
#' This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param IdentityId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param DatasetName A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
#'
#' @examples
#'
#' @export
describe_dataset <- function (IdentityPoolId, IdentityId, DatasetName) 
{
    op <- Operation(name = "DescribeDataset", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", 
        paginator = list())
    input <- describe_dataset_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DatasetName = DatasetName)
    output <- describe_dataset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets usage details (for example, data storage) about a particular identity pool
#'
#' Gets usage details (for example, data storage) about a particular identity pool.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#'
#' @examples
#'
#' @export
describe_identity_pool_usage <- function (IdentityPoolId) 
{
    op <- Operation(name = "DescribeIdentityPoolUsage", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}", paginator = list())
    input <- describe_identity_pool_usage_input(IdentityPoolId = IdentityPoolId)
    output <- describe_identity_pool_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets usage information for an identity, including number of datasets and data usage
#'
#' Gets usage information for an identity, including number of datasets and data usage.
#' 
#' This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param IdentityId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#'
#' @examples
#'
#' @export
describe_identity_usage <- function (IdentityPoolId, IdentityId) 
{
    op <- Operation(name = "DescribeIdentityUsage", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}", 
        paginator = list())
    input <- describe_identity_usage_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId)
    output <- describe_identity_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Get the status of the last BulkPublish operation for an identity pool
#'
#' Get the status of the last BulkPublish operation for an identity pool.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#'
#' @examples
#'
#' @export
get_bulk_publish_details <- function (IdentityPoolId) 
{
    op <- Operation(name = "GetBulkPublishDetails", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/getBulkPublishDetails", 
        paginator = list())
    input <- get_bulk_publish_details_input(IdentityPoolId = IdentityPoolId)
    output <- get_bulk_publish_details_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the events and the corresponding Lambda functions associated with an identity pool
#'
#' Gets the events and the corresponding Lambda functions associated with an identity pool.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId The Cognito Identity Pool ID for the request
#'
#' @examples
#'
#' @export
get_cognito_events <- function (IdentityPoolId) 
{
    op <- Operation(name = "GetCognitoEvents", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}/events", 
        paginator = list())
    input <- get_cognito_events_input(IdentityPoolId = IdentityPoolId)
    output <- get_cognito_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the configuration settings of an identity pool
#'
#' Gets the configuration settings of an identity pool.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.
#'
#' @examples
#'
#' @export
get_identity_pool_configuration <- function (IdentityPoolId) 
{
    op <- Operation(name = "GetIdentityPoolConfiguration", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}/configuration", 
        paginator = list())
    input <- get_identity_pool_configuration_input(IdentityPoolId = IdentityPoolId)
    output <- get_identity_pool_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists datasets for an identity
#'
#' Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.
#' 
#' ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.
#'
#' @param IdentityId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param NextToken A pagination token for obtaining the next page of results.
#' @param MaxResults The maximum number of results to be returned.
#'
#' @examples
#'
#' @export
list_datasets <- function (IdentityId, IdentityPoolId, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "ListDatasets", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets", 
        paginator = list())
    input <- list_datasets_input(IdentityId = IdentityId, IdentityPoolId = IdentityPoolId, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_datasets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of identity pools registered with Cognito
#'
#' Gets a list of identity pools registered with Cognito.
#' 
#' ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
#'
#' @param NextToken A pagination token for obtaining the next page of results.
#' @param MaxResults The maximum number of results to be returned.
#'
#' @examples
#'
#' @export
list_identity_pool_usage <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListIdentityPoolUsage", http_method = "GET", 
        http_path = "/identitypools", paginator = list())
    input <- list_identity_pool_usage_input(NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_identity_pool_usage_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets paginated records, optionally changed after a particular sync count for a dataset and identity
#'
#' Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.
#' 
#' ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param IdentityId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param DatasetName A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
#' @param LastSyncCount The last server sync count for this record.
#' @param NextToken A pagination token for obtaining the next page of results.
#' @param MaxResults The maximum number of results to be returned.
#' @param SyncSessionToken A token containing a session ID, identity ID, and expiration.
#'
#' @examples
#'
#' @export
list_records <- function (IdentityPoolId, IdentityId, DatasetName, 
    LastSyncCount = NULL, NextToken = NULL, MaxResults = NULL, 
    SyncSessionToken = NULL) 
{
    op <- Operation(name = "ListRecords", http_method = "GET", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records", 
        paginator = list())
    input <- list_records_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DatasetName = DatasetName, LastSyncCount = LastSyncCount, 
        NextToken = NextToken, MaxResults = MaxResults, SyncSessionToken = SyncSessionToken)
    output <- list_records_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers a device to receive push sync notifications
#'
#' Registers a device to receive push sync notifications.
#' 
#' This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.
#' @param IdentityId The unique ID for this identity.
#' @param Platform The SNS platform type (e.g. GCM, SDM, APNS, APNS\_SANDBOX).
#' @param Token The push token.
#'
#' @examples
#'
#' @export
register_device <- function (IdentityPoolId, IdentityId, Platform, 
    Token) 
{
    op <- Operation(name = "RegisterDevice", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device", 
        paginator = list())
    input <- register_device_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, Platform = Platform, Token = Token)
    output <- register_device_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the AWS Lambda function for a given event type for an identity pool
#'
#' Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId The Cognito Identity Pool to use when configuring Cognito Events
#' @param Events The events to configure
#'
#' @examples
#'
#' @export
set_cognito_events <- function (IdentityPoolId, Events) 
{
    op <- Operation(name = "SetCognitoEvents", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/events", 
        paginator = list())
    input <- set_cognito_events_input(IdentityPoolId = IdentityPoolId, 
        Events = Events)
    output <- set_cognito_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the necessary configuration for push sync
#'
#' Sets the necessary configuration for push sync.
#' 
#' This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.
#' @param PushSync Options to apply to this identity pool for push synchronization.
#' @param CognitoStreams Options to apply to this identity pool for Amazon Cognito streams.
#'
#' @examples
#'
#' @export
set_identity_pool_configuration <- function (IdentityPoolId, 
    PushSync = NULL, CognitoStreams = NULL) 
{
    op <- Operation(name = "SetIdentityPoolConfiguration", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/configuration", 
        paginator = list())
    input <- set_identity_pool_configuration_input(IdentityPoolId = IdentityPoolId, 
        PushSync = PushSync, CognitoStreams = CognitoStreams)
    output <- set_identity_pool_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Subscribes to receive notifications when a dataset is modified by another device
#'
#' Subscribes to receive notifications when a dataset is modified by another device.
#' 
#' This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.
#' @param IdentityId Unique ID for this identity.
#' @param DatasetName The name of the dataset to subcribe to.
#' @param DeviceId The unique ID generated for this device by Cognito.
#'
#' @examples
#'
#' @export
subscribe_to_dataset <- function (IdentityPoolId, IdentityId, 
    DatasetName, DeviceId) 
{
    op <- Operation(name = "SubscribeToDataset", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", 
        paginator = list())
    input <- subscribe_to_dataset_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DatasetName = DatasetName, DeviceId = DeviceId)
    output <- subscribe_to_dataset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unsubscribes from receiving notifications when a dataset is modified by another device
#'
#' Unsubscribes from receiving notifications when a dataset is modified by another device.
#' 
#' This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.
#' @param IdentityId Unique ID for this identity.
#' @param DatasetName The name of the dataset from which to unsubcribe.
#' @param DeviceId The unique ID generated for this device by Cognito.
#'
#' @examples
#'
#' @export
unsubscribe_from_dataset <- function (IdentityPoolId, IdentityId, 
    DatasetName, DeviceId) 
{
    op <- Operation(name = "UnsubscribeFromDataset", http_method = "DELETE", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}", 
        paginator = list())
    input <- unsubscribe_from_dataset_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DatasetName = DatasetName, DeviceId = DeviceId)
    output <- unsubscribe_from_dataset_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Posts updates to records and adds and deletes records for a dataset and user
#'
#' Posts updates to records and adds and deletes records for a dataset and user.
#' 
#' The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.
#' 
#' For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.
#' 
#' This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
#'
#' @param IdentityPoolId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param IdentityId A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
#' @param DatasetName A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
#' @param SyncSessionToken The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity.
#' @param DeviceId The unique ID generated for this device by Cognito.
#' @param RecordPatches A list of patch operations.
#' @param ClientContext Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.
#'
#' @examples
#'
#' @export
update_records <- function (IdentityPoolId, IdentityId, DatasetName, 
    SyncSessionToken, DeviceId = NULL, RecordPatches = NULL, 
    ClientContext = NULL) 
{
    op <- Operation(name = "UpdateRecords", http_method = "POST", 
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}", 
        paginator = list())
    input <- update_records_input(IdentityPoolId = IdentityPoolId, 
        IdentityId = IdentityId, DatasetName = DatasetName, SyncSessionToken = SyncSessionToken, 
        DeviceId = DeviceId, RecordPatches = RecordPatches, ClientContext = ClientContext)
    output <- update_records_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
