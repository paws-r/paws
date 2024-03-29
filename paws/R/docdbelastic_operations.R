# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include docdbelastic_service.R
NULL

#' Creates a new Elastic DocumentDB cluster and returns its Cluster
#' structure
#'
#' @description
#' Creates a new Elastic DocumentDB cluster and returns its Cluster
#' structure.
#'
#' @usage
#' docdbelastic_create_cluster(adminUserName, adminUserPassword, authType,
#'   clientToken, clusterName, kmsKeyId, preferredMaintenanceWindow,
#'   shardCapacity, shardCount, subnetIds, tags, vpcSecurityGroupIds)
#'
#' @param adminUserName &#91;required&#93; The name of the Elastic DocumentDB cluster administrator.
#' 
#' *Constraints*:
#' 
#' -   Must be from 1 to 63 letters or numbers.
#' 
#' -   The first character must be a letter.
#' 
#' -   Cannot be a reserved word.
#' @param adminUserPassword &#91;required&#93; The password for the Elastic DocumentDB cluster administrator and can
#' contain any printable ASCII characters.
#' 
#' *Constraints*:
#' 
#' -   Must contain from 8 to 100 characters.
#' 
#' -   Cannot contain a forward slash (/), double quote ("), or the "at"
#'     symbol (@@).
#' @param authType &#91;required&#93; The authentication type for the Elastic DocumentDB cluster.
#' @param clientToken The client token for the Elastic DocumentDB cluster.
#' @param clusterName &#91;required&#93; The name of the new Elastic DocumentDB cluster. This parameter is stored
#' as a lowercase string.
#' 
#' *Constraints*:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens.
#' 
#' -   The first character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' *Example*: `my-cluster`
#' @param kmsKeyId The KMS key identifier to use to encrypt the new Elastic DocumentDB
#' cluster.
#' 
#' The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
#' encryption key. If you are creating a cluster using the same Amazon
#' account that owns this KMS encryption key, you can use the KMS key alias
#' instead of the ARN as the KMS encryption key.
#' 
#' If an encryption key is not specified, Elastic DocumentDB uses the
#' default encryption key that KMS creates for your account. Your account
#' has a different default encryption key for each Amazon Region.
#' @param preferredMaintenanceWindow The weekly time range during which system maintenance can occur, in
#' Universal Coordinated Time (UTC).
#' 
#' *Format*: `ddd:hh24:mi-ddd:hh24:mi`
#' 
#' *Default*: a 30-minute window selected at random from an 8-hour block of
#' time for each Amazon Web Services Region, occurring on a random day of
#' the week.
#' 
#' *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
#' 
#' *Constraints*: Minimum 30-minute window.
#' @param shardCapacity &#91;required&#93; The capacity of each shard in the new Elastic DocumentDB cluster.
#' @param shardCount &#91;required&#93; The number of shards to create in the new Elastic DocumentDB cluster.
#' @param subnetIds The Amazon EC2 subnet IDs for the new Elastic DocumentDB cluster.
#' @param tags The tags to be assigned to the new Elastic DocumentDB cluster.
#' @param vpcSecurityGroupIds A list of EC2 VPC security groups to associate with the new Elastic
#' DocumentDB cluster.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   cluster = list(
#'     adminUserName = "string",
#'     authType = "PLAIN_TEXT"|"SECRET_ARN",
#'     clusterArn = "string",
#'     clusterEndpoint = "string",
#'     clusterName = "string",
#'     createTime = "string",
#'     kmsKeyId = "string",
#'     preferredMaintenanceWindow = "string",
#'     shardCapacity = 123,
#'     shardCount = 123,
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_cluster(
#'   adminUserName = "string",
#'   adminUserPassword = "string",
#'   authType = "PLAIN_TEXT"|"SECRET_ARN",
#'   clientToken = "string",
#'   clusterName = "string",
#'   kmsKeyId = "string",
#'   preferredMaintenanceWindow = "string",
#'   shardCapacity = 123,
#'   shardCount = 123,
#'   subnetIds = list(
#'     "string"
#'   ),
#'   tags = list(
#'     "string"
#'   ),
#'   vpcSecurityGroupIds = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_create_cluster
#'
#' @aliases docdbelastic_create_cluster
docdbelastic_create_cluster <- function(adminUserName, adminUserPassword, authType, clientToken = NULL, clusterName, kmsKeyId = NULL, preferredMaintenanceWindow = NULL, shardCapacity, shardCount, subnetIds = NULL, tags = NULL, vpcSecurityGroupIds = NULL) {
  op <- new_operation(
    name = "CreateCluster",
    http_method = "POST",
    http_path = "/cluster",
    paginator = list()
  )
  input <- .docdbelastic$create_cluster_input(adminUserName = adminUserName, adminUserPassword = adminUserPassword, authType = authType, clientToken = clientToken, clusterName = clusterName, kmsKeyId = kmsKeyId, preferredMaintenanceWindow = preferredMaintenanceWindow, shardCapacity = shardCapacity, shardCount = shardCount, subnetIds = subnetIds, tags = tags, vpcSecurityGroupIds = vpcSecurityGroupIds)
  output <- .docdbelastic$create_cluster_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$create_cluster <- docdbelastic_create_cluster

#' Creates a snapshot of a cluster
#'
#' @description
#' Creates a snapshot of a cluster.
#'
#' @usage
#' docdbelastic_create_cluster_snapshot(clusterArn, snapshotName, tags)
#'
#' @param clusterArn &#91;required&#93; The arn of the Elastic DocumentDB cluster that the snapshot will be
#' taken from.
#' @param snapshotName &#91;required&#93; The name of the Elastic DocumentDB snapshot.
#' @param tags The tags to be assigned to the new Elastic DocumentDB snapshot.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   snapshot = list(
#'     adminUserName = "string",
#'     clusterArn = "string",
#'     clusterCreationTime = "string",
#'     kmsKeyId = "string",
#'     snapshotArn = "string",
#'     snapshotCreationTime = "string",
#'     snapshotName = "string",
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_cluster_snapshot(
#'   clusterArn = "string",
#'   snapshotName = "string",
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_create_cluster_snapshot
#'
#' @aliases docdbelastic_create_cluster_snapshot
docdbelastic_create_cluster_snapshot <- function(clusterArn, snapshotName, tags = NULL) {
  op <- new_operation(
    name = "CreateClusterSnapshot",
    http_method = "POST",
    http_path = "/cluster-snapshot",
    paginator = list()
  )
  input <- .docdbelastic$create_cluster_snapshot_input(clusterArn = clusterArn, snapshotName = snapshotName, tags = tags)
  output <- .docdbelastic$create_cluster_snapshot_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$create_cluster_snapshot <- docdbelastic_create_cluster_snapshot

#' Delete a Elastic DocumentDB cluster
#'
#' @description
#' Delete a Elastic DocumentDB cluster.
#'
#' @usage
#' docdbelastic_delete_cluster(clusterArn)
#'
#' @param clusterArn &#91;required&#93; The arn of the Elastic DocumentDB cluster that is to be deleted.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   cluster = list(
#'     adminUserName = "string",
#'     authType = "PLAIN_TEXT"|"SECRET_ARN",
#'     clusterArn = "string",
#'     clusterEndpoint = "string",
#'     clusterName = "string",
#'     createTime = "string",
#'     kmsKeyId = "string",
#'     preferredMaintenanceWindow = "string",
#'     shardCapacity = 123,
#'     shardCount = 123,
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$delete_cluster(
#'   clusterArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_delete_cluster
#'
#' @aliases docdbelastic_delete_cluster
docdbelastic_delete_cluster <- function(clusterArn) {
  op <- new_operation(
    name = "DeleteCluster",
    http_method = "DELETE",
    http_path = "/cluster/{clusterArn}",
    paginator = list()
  )
  input <- .docdbelastic$delete_cluster_input(clusterArn = clusterArn)
  output <- .docdbelastic$delete_cluster_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$delete_cluster <- docdbelastic_delete_cluster

#' Delete a Elastic DocumentDB snapshot
#'
#' @description
#' Delete a Elastic DocumentDB snapshot.
#'
#' @usage
#' docdbelastic_delete_cluster_snapshot(snapshotArn)
#'
#' @param snapshotArn &#91;required&#93; The arn of the Elastic DocumentDB snapshot that is to be deleted.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   snapshot = list(
#'     adminUserName = "string",
#'     clusterArn = "string",
#'     clusterCreationTime = "string",
#'     kmsKeyId = "string",
#'     snapshotArn = "string",
#'     snapshotCreationTime = "string",
#'     snapshotName = "string",
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$delete_cluster_snapshot(
#'   snapshotArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_delete_cluster_snapshot
#'
#' @aliases docdbelastic_delete_cluster_snapshot
docdbelastic_delete_cluster_snapshot <- function(snapshotArn) {
  op <- new_operation(
    name = "DeleteClusterSnapshot",
    http_method = "DELETE",
    http_path = "/cluster-snapshot/{snapshotArn}",
    paginator = list()
  )
  input <- .docdbelastic$delete_cluster_snapshot_input(snapshotArn = snapshotArn)
  output <- .docdbelastic$delete_cluster_snapshot_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$delete_cluster_snapshot <- docdbelastic_delete_cluster_snapshot

#' Returns information about a specific Elastic DocumentDB cluster
#'
#' @description
#' Returns information about a specific Elastic DocumentDB cluster.
#'
#' @usage
#' docdbelastic_get_cluster(clusterArn)
#'
#' @param clusterArn &#91;required&#93; The arn of the Elastic DocumentDB cluster.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   cluster = list(
#'     adminUserName = "string",
#'     authType = "PLAIN_TEXT"|"SECRET_ARN",
#'     clusterArn = "string",
#'     clusterEndpoint = "string",
#'     clusterName = "string",
#'     createTime = "string",
#'     kmsKeyId = "string",
#'     preferredMaintenanceWindow = "string",
#'     shardCapacity = 123,
#'     shardCount = 123,
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_cluster(
#'   clusterArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_get_cluster
#'
#' @aliases docdbelastic_get_cluster
docdbelastic_get_cluster <- function(clusterArn) {
  op <- new_operation(
    name = "GetCluster",
    http_method = "GET",
    http_path = "/cluster/{clusterArn}",
    paginator = list()
  )
  input <- .docdbelastic$get_cluster_input(clusterArn = clusterArn)
  output <- .docdbelastic$get_cluster_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$get_cluster <- docdbelastic_get_cluster

#' Returns information about a specific Elastic DocumentDB snapshot
#'
#' @description
#' Returns information about a specific Elastic DocumentDB snapshot
#'
#' @usage
#' docdbelastic_get_cluster_snapshot(snapshotArn)
#'
#' @param snapshotArn &#91;required&#93; The arn of the Elastic DocumentDB snapshot.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   snapshot = list(
#'     adminUserName = "string",
#'     clusterArn = "string",
#'     clusterCreationTime = "string",
#'     kmsKeyId = "string",
#'     snapshotArn = "string",
#'     snapshotCreationTime = "string",
#'     snapshotName = "string",
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_cluster_snapshot(
#'   snapshotArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_get_cluster_snapshot
#'
#' @aliases docdbelastic_get_cluster_snapshot
docdbelastic_get_cluster_snapshot <- function(snapshotArn) {
  op <- new_operation(
    name = "GetClusterSnapshot",
    http_method = "GET",
    http_path = "/cluster-snapshot/{snapshotArn}",
    paginator = list()
  )
  input <- .docdbelastic$get_cluster_snapshot_input(snapshotArn = snapshotArn)
  output <- .docdbelastic$get_cluster_snapshot_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$get_cluster_snapshot <- docdbelastic_get_cluster_snapshot

#' Returns information about Elastic DocumentDB snapshots for a specified
#' cluster
#'
#' @description
#' Returns information about Elastic DocumentDB snapshots for a specified
#' cluster.
#'
#' @usage
#' docdbelastic_list_cluster_snapshots(clusterArn, maxResults, nextToken)
#'
#' @param clusterArn The arn of the Elastic DocumentDB cluster.
#' @param maxResults The maximum number of entries to recieve in the response.
#' @param nextToken The nextToken which is used the get the next page of data.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   nextToken = "string",
#'   snapshots = list(
#'     list(
#'       clusterArn = "string",
#'       snapshotArn = "string",
#'       snapshotCreationTime = "string",
#'       snapshotName = "string",
#'       status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_cluster_snapshots(
#'   clusterArn = "string",
#'   maxResults = 123,
#'   nextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_list_cluster_snapshots
#'
#' @aliases docdbelastic_list_cluster_snapshots
docdbelastic_list_cluster_snapshots <- function(clusterArn = NULL, maxResults = NULL, nextToken = NULL) {
  op <- new_operation(
    name = "ListClusterSnapshots",
    http_method = "GET",
    http_path = "/cluster-snapshots",
    paginator = list(input_token = "nextToken", output_token = "nextToken", limit_key = "maxResults", result_key = "snapshots")
  )
  input <- .docdbelastic$list_cluster_snapshots_input(clusterArn = clusterArn, maxResults = maxResults, nextToken = nextToken)
  output <- .docdbelastic$list_cluster_snapshots_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$list_cluster_snapshots <- docdbelastic_list_cluster_snapshots

#' Returns information about provisioned Elastic DocumentDB clusters
#'
#' @description
#' Returns information about provisioned Elastic DocumentDB clusters.
#'
#' @usage
#' docdbelastic_list_clusters(maxResults, nextToken)
#'
#' @param maxResults The maximum number of entries to recieve in the response.
#' @param nextToken The nextToken which is used the get the next page of data.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   clusters = list(
#'     list(
#'       clusterArn = "string",
#'       clusterName = "string",
#'       status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS"
#'     )
#'   ),
#'   nextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_clusters(
#'   maxResults = 123,
#'   nextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_list_clusters
#'
#' @aliases docdbelastic_list_clusters
docdbelastic_list_clusters <- function(maxResults = NULL, nextToken = NULL) {
  op <- new_operation(
    name = "ListClusters",
    http_method = "GET",
    http_path = "/clusters",
    paginator = list(input_token = "nextToken", output_token = "nextToken", limit_key = "maxResults", result_key = "clusters")
  )
  input <- .docdbelastic$list_clusters_input(maxResults = maxResults, nextToken = nextToken)
  output <- .docdbelastic$list_clusters_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$list_clusters <- docdbelastic_list_clusters

#' Lists all tags on a Elastic DocumentDB resource
#'
#' @description
#' Lists all tags on a Elastic DocumentDB resource
#'
#' @usage
#' docdbelastic_list_tags_for_resource(resourceArn)
#'
#' @param resourceArn &#91;required&#93; The arn of the Elastic DocumentDB resource.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   resourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_list_tags_for_resource
#'
#' @aliases docdbelastic_list_tags_for_resource
docdbelastic_list_tags_for_resource <- function(resourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .docdbelastic$list_tags_for_resource_input(resourceArn = resourceArn)
  output <- .docdbelastic$list_tags_for_resource_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$list_tags_for_resource <- docdbelastic_list_tags_for_resource

#' Restores a Elastic DocumentDB cluster from a snapshot
#'
#' @description
#' Restores a Elastic DocumentDB cluster from a snapshot.
#'
#' @usage
#' docdbelastic_restore_cluster_from_snapshot(clusterName, kmsKeyId,
#'   snapshotArn, subnetIds, tags, vpcSecurityGroupIds)
#'
#' @param clusterName &#91;required&#93; The name of the Elastic DocumentDB cluster.
#' @param kmsKeyId The KMS key identifier to use to encrypt the new Elastic DocumentDB
#' cluster.
#' 
#' The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
#' encryption key. If you are creating a cluster using the same Amazon
#' account that owns this KMS encryption key, you can use the KMS key alias
#' instead of the ARN as the KMS encryption key.
#' 
#' If an encryption key is not specified here, Elastic DocumentDB uses the
#' default encryption key that KMS creates for your account. Your account
#' has a different default encryption key for each Amazon Region.
#' @param snapshotArn &#91;required&#93; The arn of the Elastic DocumentDB snapshot.
#' @param subnetIds The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
#' @param tags A list of the tag names to be assigned to the restored DB cluster, in
#' the form of an array of key-value pairs in which the key is the tag name
#' and the value is the key value.
#' @param vpcSecurityGroupIds A list of EC2 VPC security groups to associate with the Elastic
#' DocumentDB cluster.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   cluster = list(
#'     adminUserName = "string",
#'     authType = "PLAIN_TEXT"|"SECRET_ARN",
#'     clusterArn = "string",
#'     clusterEndpoint = "string",
#'     clusterName = "string",
#'     createTime = "string",
#'     kmsKeyId = "string",
#'     preferredMaintenanceWindow = "string",
#'     shardCapacity = 123,
#'     shardCount = 123,
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$restore_cluster_from_snapshot(
#'   clusterName = "string",
#'   kmsKeyId = "string",
#'   snapshotArn = "string",
#'   subnetIds = list(
#'     "string"
#'   ),
#'   tags = list(
#'     "string"
#'   ),
#'   vpcSecurityGroupIds = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_restore_cluster_from_snapshot
#'
#' @aliases docdbelastic_restore_cluster_from_snapshot
docdbelastic_restore_cluster_from_snapshot <- function(clusterName, kmsKeyId = NULL, snapshotArn, subnetIds = NULL, tags = NULL, vpcSecurityGroupIds = NULL) {
  op <- new_operation(
    name = "RestoreClusterFromSnapshot",
    http_method = "POST",
    http_path = "/cluster-snapshot/{snapshotArn}/restore",
    paginator = list()
  )
  input <- .docdbelastic$restore_cluster_from_snapshot_input(clusterName = clusterName, kmsKeyId = kmsKeyId, snapshotArn = snapshotArn, subnetIds = subnetIds, tags = tags, vpcSecurityGroupIds = vpcSecurityGroupIds)
  output <- .docdbelastic$restore_cluster_from_snapshot_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$restore_cluster_from_snapshot <- docdbelastic_restore_cluster_from_snapshot

#' Adds metadata tags to a Elastic DocumentDB resource
#'
#' @description
#' Adds metadata tags to a Elastic DocumentDB resource
#'
#' @usage
#' docdbelastic_tag_resource(resourceArn, tags)
#'
#' @param resourceArn &#91;required&#93; The arn of the Elastic DocumentDB resource.
#' @param tags &#91;required&#93; The tags to be assigned to the Elastic DocumentDB resource.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   resourceArn = "string",
#'   tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_tag_resource
#'
#' @aliases docdbelastic_tag_resource
docdbelastic_tag_resource <- function(resourceArn, tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .docdbelastic$tag_resource_input(resourceArn = resourceArn, tags = tags)
  output <- .docdbelastic$tag_resource_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$tag_resource <- docdbelastic_tag_resource

#' Removes metadata tags to a Elastic DocumentDB resource
#'
#' @description
#' Removes metadata tags to a Elastic DocumentDB resource
#'
#' @usage
#' docdbelastic_untag_resource(resourceArn, tagKeys)
#'
#' @param resourceArn &#91;required&#93; The arn of the Elastic DocumentDB resource.
#' @param tagKeys &#91;required&#93; The tag keys to be removed from the Elastic DocumentDB resource.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   resourceArn = "string",
#'   tagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_untag_resource
#'
#' @aliases docdbelastic_untag_resource
docdbelastic_untag_resource <- function(resourceArn, tagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    paginator = list()
  )
  input <- .docdbelastic$untag_resource_input(resourceArn = resourceArn, tagKeys = tagKeys)
  output <- .docdbelastic$untag_resource_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$untag_resource <- docdbelastic_untag_resource

#' Modifies a Elastic DocumentDB cluster
#'
#' @description
#' Modifies a Elastic DocumentDB cluster. This includes updating
#' admin-username/password, upgrading API version setting up a backup
#' window and maintenance window
#'
#' @usage
#' docdbelastic_update_cluster(adminUserPassword, authType, clientToken,
#'   clusterArn, preferredMaintenanceWindow, shardCapacity, shardCount,
#'   subnetIds, vpcSecurityGroupIds)
#'
#' @param adminUserPassword The password for the Elastic DocumentDB cluster administrator. This
#' password can contain any printable ASCII character except forward slash
#' (/), double quote ("), or the "at" symbol (@@).
#' 
#' *Constraints*: Must contain from 8 to 100 characters.
#' @param authType The authentication type for the Elastic DocumentDB cluster.
#' @param clientToken The client token for the Elastic DocumentDB cluster.
#' @param clusterArn &#91;required&#93; The arn of the Elastic DocumentDB cluster.
#' @param preferredMaintenanceWindow The weekly time range during which system maintenance can occur, in
#' Universal Coordinated Time (UTC).
#' 
#' *Format*: `ddd:hh24:mi-ddd:hh24:mi`
#' 
#' *Default*: a 30-minute window selected at random from an 8-hour block of
#' time for each Amazon Web Services Region, occurring on a random day of
#' the week.
#' 
#' *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
#' 
#' *Constraints*: Minimum 30-minute window.
#' @param shardCapacity The capacity of each shard in the Elastic DocumentDB cluster.
#' @param shardCount The number of shards to create in the Elastic DocumentDB cluster.
#' @param subnetIds The number of shards to create in the Elastic DocumentDB cluster.
#' @param vpcSecurityGroupIds A list of EC2 VPC security groups to associate with the new Elastic
#' DocumentDB cluster.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   cluster = list(
#'     adminUserName = "string",
#'     authType = "PLAIN_TEXT"|"SECRET_ARN",
#'     clusterArn = "string",
#'     clusterEndpoint = "string",
#'     clusterName = "string",
#'     createTime = "string",
#'     kmsKeyId = "string",
#'     preferredMaintenanceWindow = "string",
#'     shardCapacity = 123,
#'     shardCount = 123,
#'     status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"VPC_ENDPOINT_LIMIT_EXCEEDED"|"IP_ADDRESS_LIMIT_EXCEEDED"|"INVALID_SECURITY_GROUP_ID"|"INVALID_SUBNET_ID"|"INACCESSIBLE_ENCRYPTION_CREDS",
#'     subnetIds = list(
#'       "string"
#'     ),
#'     vpcSecurityGroupIds = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$update_cluster(
#'   adminUserPassword = "string",
#'   authType = "PLAIN_TEXT"|"SECRET_ARN",
#'   clientToken = "string",
#'   clusterArn = "string",
#'   preferredMaintenanceWindow = "string",
#'   shardCapacity = 123,
#'   shardCount = 123,
#'   subnetIds = list(
#'     "string"
#'   ),
#'   vpcSecurityGroupIds = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname docdbelastic_update_cluster
#'
#' @aliases docdbelastic_update_cluster
docdbelastic_update_cluster <- function(adminUserPassword = NULL, authType = NULL, clientToken = NULL, clusterArn, preferredMaintenanceWindow = NULL, shardCapacity = NULL, shardCount = NULL, subnetIds = NULL, vpcSecurityGroupIds = NULL) {
  op <- new_operation(
    name = "UpdateCluster",
    http_method = "PUT",
    http_path = "/cluster/{clusterArn}",
    paginator = list()
  )
  input <- .docdbelastic$update_cluster_input(adminUserPassword = adminUserPassword, authType = authType, clientToken = clientToken, clusterArn = clusterArn, preferredMaintenanceWindow = preferredMaintenanceWindow, shardCapacity = shardCapacity, shardCount = shardCount, subnetIds = subnetIds, vpcSecurityGroupIds = vpcSecurityGroupIds)
  output <- .docdbelastic$update_cluster_output()
  config <- get_config()
  svc <- .docdbelastic$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.docdbelastic$operations$update_cluster <- docdbelastic_update_cluster
