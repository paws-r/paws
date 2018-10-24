#' Associates an Identity and Access Management (IAM) role from an Neptune DB cluster
#'
#' Associates an Identity and Access Management (IAM) role from an Neptune DB cluster.
#'
#' @param DBClusterIdentifier The name of the DB cluster to associate the IAM role with.
#' @param RoleArn The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster, for example `arn:aws:iam::123456789012:role/NeptuneAccessRole`.
#'
#' @examples
#'
#' @export
add_role_to_db_cluster <- function (DBClusterIdentifier, RoleArn) 
{
    op <- Operation(name = "AddRoleToDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_role_to_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier, 
        RoleArn = RoleArn)
    output <- add_role_to_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds a source identifier to an existing event notification subscription
#'
#' Adds a source identifier to an existing event notification subscription.
#'
#' @param SubscriptionName The name of the event notification subscription you want to add a source identifier to.
#' @param SourceIdentifier The identifier of the event source to be added.
#' 
#' Constraints:
#' 
#' -   If the source type is a DB instance, then a `DBInstanceIdentifier` must be supplied.
#' 
#' -   If the source type is a DB security group, a `DBSecurityGroupName` must be supplied.
#' 
#' -   If the source type is a DB parameter group, a `DBParameterGroupName` must be supplied.
#' 
#' -   If the source type is a DB snapshot, a `DBSnapshotIdentifier` must be supplied.
#'
#' @examples
#'
#' @export
add_source_identifier_to_subscription <- function (SubscriptionName, 
    SourceIdentifier) 
{
    op <- Operation(name = "AddSourceIdentifierToSubscription", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- add_source_identifier_to_subscription_input(SubscriptionName = SubscriptionName, 
        SourceIdentifier = SourceIdentifier)
    output <- add_source_identifier_to_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds metadata tags to an Amazon Neptune resource
#'
#' Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon Neptune resources, or used in a Condition statement in an IAM policy for Amazon Neptune.
#'
#' @param ResourceName The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).
#' @param Tags The tags to be assigned to the Amazon Neptune resource.
#'
#' @examples
#'
#' @export
add_tags_to_resource <- function (ResourceName, Tags) 
{
    op <- Operation(name = "AddTagsToResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_tags_to_resource_input(ResourceName = ResourceName, 
        Tags = Tags)
    output <- add_tags_to_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Applies a pending maintenance action to a resource (for example, to a DB instance)
#'
#' Applies a pending maintenance action to a resource (for example, to a DB instance).
#'
#' @param ResourceIdentifier The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).
#' @param ApplyAction The pending maintenance action to apply to this resource.
#' 
#' Valid values: `system-update`, `db-upgrade`
#' @param OptInType A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type `immediate` can\'t be undone.
#' 
#' Valid values:
#' 
#' -   `immediate` - Apply the maintenance action immediately.
#' 
#' -   `next-maintenance` - Apply the maintenance action during the next maintenance window for the resource.
#' 
#' -   `undo-opt-in` - Cancel any existing `next-maintenance` opt-in requests.
#'
#' @examples
#'
#' @export
apply_pending_maintenance_action <- function (ResourceIdentifier, 
    ApplyAction, OptInType) 
{
    op <- Operation(name = "ApplyPendingMaintenanceAction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- apply_pending_maintenance_action_input(ResourceIdentifier = ResourceIdentifier, 
        ApplyAction = ApplyAction, OptInType = OptInType)
    output <- apply_pending_maintenance_action_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Copies the specified DB cluster parameter group
#'
#' Copies the specified DB cluster parameter group.
#'
#' @param SourceDBClusterParameterGroupIdentifier The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).
#' 
#' Constraints:
#' 
#' -   Must specify a valid DB cluster parameter group.
#' 
#' -   If the source DB cluster parameter group is in the same AWS Region as the copy, specify a valid DB parameter group identifier, for example `my-db-cluster-param-group`, or a valid ARN.
#' 
#' -   If the source DB parameter group is in a different AWS Region than the copy, specify a valid DB cluster parameter group ARN, for example `arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1`.
#' @param TargetDBClusterParameterGroupIdentifier The identifier for the copied DB cluster parameter group.
#' 
#' Constraints:
#' 
#' -   Cannot be null, empty, or blank
#' 
#' -   Must contain from 1 to 255 letters, numbers, or hyphens
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' 
#' Example: `my-cluster-param-group1`
#' @param TargetDBClusterParameterGroupDescription A description for the copied DB cluster parameter group.
#' @param Tags 
#'
#' @examples
#'
#' @export
copy_db_cluster_parameter_group <- function (SourceDBClusterParameterGroupIdentifier, 
    TargetDBClusterParameterGroupIdentifier, TargetDBClusterParameterGroupDescription, 
    Tags = NULL) 
{
    op <- Operation(name = "CopyDBClusterParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_db_cluster_parameter_group_input(SourceDBClusterParameterGroupIdentifier = SourceDBClusterParameterGroupIdentifier, 
        TargetDBClusterParameterGroupIdentifier = TargetDBClusterParameterGroupIdentifier, 
        TargetDBClusterParameterGroupDescription = TargetDBClusterParameterGroupDescription, 
        Tags = Tags)
    output <- copy_db_cluster_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Copies a snapshot of a DB cluster
#'
#' Copies a snapshot of a DB cluster.
#' 
#' To copy a DB cluster snapshot from a shared manual DB cluster snapshot, `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.
#' 
#' You can copy an encrypted DB cluster snapshot from another AWS Region. In that case, the AWS Region where you call the `CopyDBClusterSnapshot` action is the destination AWS Region for the encrypted DB cluster snapshot to be copied to. To copy an encrypted DB cluster snapshot from another AWS Region, you must provide the following values:
#' 
#' -   `KmsKeyId` - The AWS Key Management System (AWS KMS) key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region.
#' 
#' -   `PreSignedUrl` - A URL that contains a Signature Version 4 signed request for the `CopyDBClusterSnapshot` action to be called in the source AWS Region where the DB cluster snapshot is copied from. The pre-signed URL must be a valid request for the `CopyDBClusterSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied.
#' 
#'     The pre-signed URL request must contain the following parameter values:
#' 
#'     -   `KmsKeyId` - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.
#' 
#'     -   `DestinationRegion` - The name of the AWS Region that the DB cluster snapshot will be created in.
#' 
#'     -   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115`.
#' 
#'     To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' 
#' -   `TargetDBClusterSnapshotIdentifier` - The identifier for the new copy of the DB cluster snapshot in the destination AWS Region.
#' 
#' -   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the ARN format for the source AWS Region and is the same value as the `SourceDBClusterSnapshotIdentifier` in the pre-signed URL.
#' 
#' To cancel the copy operation once it is in progress, delete the target DB cluster snapshot identified by `TargetDBClusterSnapshotIdentifier` while that DB cluster snapshot is in \"copying\" status.
#'
#' @param SourceDBClusterSnapshotIdentifier The identifier of the DB cluster snapshot to copy. This parameter is not case-sensitive.
#' 
#' You can\'t copy an encrypted, shared DB cluster snapshot from one AWS Region to another.
#' 
#' Constraints:
#' 
#' -   Must specify a valid system snapshot in the \"available\" state.
#' 
#' -   If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier.
#' 
#' -   If the source snapshot is in a different AWS Region than the copy, specify a valid DB cluster snapshot ARN.
#' 
#' Example: `my-cluster-snapshot1`
#' @param TargetDBClusterSnapshotIdentifier The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter is not case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' Example: `my-cluster-snapshot2`
#' @param KmsKeyId The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.
#' 
#' If you copy an unencrypted DB cluster snapshot and specify a value for the `KmsKeyId` parameter, Amazon Neptune encrypts the target DB cluster snapshot using the specified KMS encryption key.
#' 
#' If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for `KmsKeyId` to encrypt the copy with a new KMS encryption key. If you don\'t specify a value for `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot.
#' 
#' If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for `KmsKeyId`.
#' 
#' To copy an encrypted DB cluster snapshot to another AWS Region, you must set `KmsKeyId` to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can\'t use encryption keys from one AWS Region in another AWS Region.
#' @param PreSignedUrl The URL that contains a Signature Version 4 signed request for the `CopyDBClusterSnapshot` API action in the AWS Region that contains the source DB cluster snapshot to copy. The `PreSignedUrl` parameter must be used when copying an encrypted DB cluster snapshot from another AWS Region.
#' 
#' The pre-signed URL must be a valid request for the `CopyDBSClusterSnapshot` API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:
#' 
#' -   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the `CopyDBClusterSnapshot` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.
#' 
#' -   `DestinationRegion` - The name of the AWS Region that the DB cluster snapshot will be created in.
#' 
#' -   `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your `SourceDBClusterSnapshotIdentifier` looks like the following example: `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115`.
#' 
#' To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' @param CopyTags True to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot, and otherwise false. The default is false.
#' @param Tags 
#'
#' @examples
#'
#' @export
copy_db_cluster_snapshot <- function (SourceDBClusterSnapshotIdentifier, 
    TargetDBClusterSnapshotIdentifier, KmsKeyId = NULL, PreSignedUrl = NULL, 
    CopyTags = NULL, Tags = NULL) 
{
    op <- Operation(name = "CopyDBClusterSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_db_cluster_snapshot_input(SourceDBClusterSnapshotIdentifier = SourceDBClusterSnapshotIdentifier, 
        TargetDBClusterSnapshotIdentifier = TargetDBClusterSnapshotIdentifier, 
        KmsKeyId = KmsKeyId, PreSignedUrl = PreSignedUrl, CopyTags = CopyTags, 
        Tags = Tags)
    output <- copy_db_cluster_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Copies the specified DB parameter group
#'
#' Copies the specified DB parameter group.
#'
#' @param SourceDBParameterGroupIdentifier The identifier or ARN for the source DB parameter group. For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).
#' 
#' Constraints:
#' 
#' -   Must specify a valid DB parameter group.
#' 
#' -   Must specify a valid DB parameter group identifier, for example `my-db-param-group`, or a valid ARN.
#' @param TargetDBParameterGroupIdentifier The identifier for the copied DB parameter group.
#' 
#' Constraints:
#' 
#' -   Cannot be null, empty, or blank
#' 
#' -   Must contain from 1 to 255 letters, numbers, or hyphens
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' 
#' Example: `my-db-parameter-group`
#' @param TargetDBParameterGroupDescription A description for the copied DB parameter group.
#' @param Tags 
#'
#' @examples
#'
#' @export
copy_db_parameter_group <- function (SourceDBParameterGroupIdentifier, 
    TargetDBParameterGroupIdentifier, TargetDBParameterGroupDescription, 
    Tags = NULL) 
{
    op <- Operation(name = "CopyDBParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_db_parameter_group_input(SourceDBParameterGroupIdentifier = SourceDBParameterGroupIdentifier, 
        TargetDBParameterGroupIdentifier = TargetDBParameterGroupIdentifier, 
        TargetDBParameterGroupDescription = TargetDBParameterGroupDescription, 
        Tags = Tags)
    output <- copy_db_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new Amazon Neptune DB cluster
#'
#' Creates a new Amazon Neptune DB cluster.
#' 
#' You can use the `ReplicationSourceIdentifier` parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance. For cross-region replication where the DB cluster identified by `ReplicationSourceIdentifier` is encrypted, you must also specify the `PreSignedUrl` parameter.
#'
#' @param DBClusterIdentifier The DB cluster identifier. This parameter is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' Example: `my-cluster1`
#' @param Engine The name of the database engine to be used for this DB cluster.
#' 
#' Valid Values: `neptune`
#' @param AvailabilityZones A list of EC2 Availability Zones that instances in the DB cluster can be created in.
#' @param BackupRetentionPeriod The number of days for which automated backups are retained. You must specify a minimum value of 1.
#' 
#' Default: 1
#' 
#' Constraints:
#' 
#' -   Must be a value from 1 to 35
#' @param CharacterSetName A value that indicates that the DB cluster should be associated with the specified CharacterSet.
#' @param DatabaseName The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Neptune will not create a database in the DB cluster you are creating.
#' @param DBClusterParameterGroupName The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default is used.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the name of an existing DBClusterParameterGroup.
#' @param VpcSecurityGroupIds A list of EC2 VPC security groups to associate with this DB cluster.
#' @param DBSubnetGroupName A DB subnet group to associate with this DB cluster.
#' 
#' Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.
#' 
#' Example: `mySubnetgroup`
#' @param EngineVersion The version number of the database engine to use.
#' 
#' Example: `1.0.1`
#' @param Port The port number on which the instances in the DB cluster accept connections.
#' 
#' Default: `8182`
#' @param MasterUsername The name of the master user for the DB cluster.
#' 
#' Constraints:
#' 
#' -   Must be 1 to 16 letters or numbers.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot be a reserved word for the chosen database engine.
#' @param MasterUserPassword The password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".
#' 
#' Constraints: Must contain from 8 to 41 characters.
#' @param OptionGroupName A value that indicates that the DB cluster should be associated with the specified option group.
#' 
#' Permanent options can\'t be removed from an option group. The option group can\'t be removed from a DB cluster once it is associated with a DB cluster.
#' @param PreferredBackupWindow The daily time range during which automated backups are created if automated backups are enabled using the `BackupRetentionPeriod` parameter.
#' 
#' The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon Neptune User Guide.*
#' 
#' Constraints:
#' 
#' -   Must be in the format `hh24:mi-hh24:mi`.
#' 
#' -   Must be in Universal Coordinated Time (UTC).
#' 
#' -   Must not conflict with the preferred maintenance window.
#' 
#' -   Must be at least 30 minutes.
#' @param PreferredMaintenanceWindow The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
#' 
#' Format: `ddd:hh24:mi-ddd:hh24:mi`
#' 
#' The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see [Adjusting the Preferred Maintenance Window](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html) in the *Amazon Neptune User Guide.*
#' 
#' Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
#' 
#' Constraints: Minimum 30-minute window.
#' @param ReplicationSourceIdentifier The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a Read Replica.
#' @param Tags 
#' @param StorageEncrypted Specifies whether the DB cluster is encrypted.
#' @param KmsKeyId The AWS KMS key identifier for an encrypted DB cluster.
#' 
#' The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.
#' 
#' If an encryption key is not specified in `KmsKeyId`:
#' 
#' -   If `ReplicationSourceIdentifier` identifies an encrypted source, then Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon Neptune will use your default encryption key.
#' 
#' -   If the `StorageEncrypted` parameter is true and `ReplicationSourceIdentifier` is not specified, then Amazon Neptune will use your default encryption key.
#' 
#' AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
#' 
#' If you create a Read Replica of an encrypted DB cluster in another AWS Region, you must set `KmsKeyId` to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the Read Replica in that AWS Region.
#' @param PreSignedUrl A URL that contains a Signature Version 4 signed request for the `CreateDBCluster` action to be called in the source AWS Region where the DB cluster is replicated from. You only need to specify `PreSignedUrl` when you are performing cross-region replication from an encrypted DB cluster.
#' 
#' The pre-signed URL must be a valid request for the `CreateDBCluster` API action that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.
#' 
#' The pre-signed URL request must contain the following parameter values:
#' 
#' -   `KmsKeyId` - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination AWS Region. This should refer to the same KMS key for both the `CreateDBCluster` action that is called in the destination AWS Region, and the action contained in the pre-signed URL.
#' 
#' -   `DestinationRegion` - The name of the AWS Region that Read Replica will be created in.
#' 
#' -   `ReplicationSourceIdentifier` - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster from the us-west-2 AWS Region, then your `ReplicationSourceIdentifier` would look like Example: `arn:aws:rds:us-west-2:123456789012:cluster:neptune-cluster1`.
#' 
#' To learn how to generate a Signature Version 4 signed request, see [Authenticating Requests: Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) and [Signature Version 4 Signing Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' @param EnableIAMDatabaseAuthentication True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.
#' 
#' Default: `false`
#'
#' @examples
#'
#' @export
create_db_cluster <- function (DBClusterIdentifier, Engine, AvailabilityZones = NULL, 
    BackupRetentionPeriod = NULL, CharacterSetName = NULL, DatabaseName = NULL, 
    DBClusterParameterGroupName = NULL, VpcSecurityGroupIds = NULL, 
    DBSubnetGroupName = NULL, EngineVersion = NULL, Port = NULL, 
    MasterUsername = NULL, MasterUserPassword = NULL, OptionGroupName = NULL, 
    PreferredBackupWindow = NULL, PreferredMaintenanceWindow = NULL, 
    ReplicationSourceIdentifier = NULL, Tags = NULL, StorageEncrypted = NULL, 
    KmsKeyId = NULL, PreSignedUrl = NULL, EnableIAMDatabaseAuthentication = NULL) 
{
    op <- Operation(name = "CreateDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier, 
        Engine = Engine, AvailabilityZones = AvailabilityZones, 
        BackupRetentionPeriod = BackupRetentionPeriod, CharacterSetName = CharacterSetName, 
        DatabaseName = DatabaseName, DBClusterParameterGroupName = DBClusterParameterGroupName, 
        VpcSecurityGroupIds = VpcSecurityGroupIds, DBSubnetGroupName = DBSubnetGroupName, 
        EngineVersion = EngineVersion, Port = Port, MasterUsername = MasterUsername, 
        MasterUserPassword = MasterUserPassword, OptionGroupName = OptionGroupName, 
        PreferredBackupWindow = PreferredBackupWindow, PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        ReplicationSourceIdentifier = ReplicationSourceIdentifier, 
        Tags = Tags, StorageEncrypted = StorageEncrypted, KmsKeyId = KmsKeyId, 
        PreSignedUrl = PreSignedUrl, EnableIAMDatabaseAuthentication = EnableIAMDatabaseAuthentication)
    output <- create_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new DB cluster parameter group
#'
#' Creates a new DB cluster parameter group.
#' 
#' Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.
#' 
#' A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBClusterParameterGroup. Once you\'ve created a DB cluster parameter group, you need to associate it with your DB cluster using ModifyDBCluster. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect.
#' 
#' After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the [Amazon Neptune console](https://console.aws.amazon.com/rds/) or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified.
#'
#' @param DBClusterParameterGroupName The name of the DB cluster parameter group.
#' 
#' Constraints:
#' 
#' -   Must match the name of an existing DBClusterParameterGroup.
#' 
#' This value is stored as a lowercase string.
#' @param DBParameterGroupFamily The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.
#' @param Description The description for the DB cluster parameter group.
#' @param Tags 
#'
#' @examples
#'
#' @export
create_db_cluster_parameter_group <- function (DBClusterParameterGroupName, 
    DBParameterGroupFamily, Description, Tags = NULL) 
{
    op <- Operation(name = "CreateDBClusterParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_db_cluster_parameter_group_input(DBClusterParameterGroupName = DBClusterParameterGroupName, 
        DBParameterGroupFamily = DBParameterGroupFamily, Description = Description, 
        Tags = Tags)
    output <- create_db_cluster_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a snapshot of a DB cluster
#'
#' Creates a snapshot of a DB cluster.
#'
#' @param DBClusterSnapshotIdentifier The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' Example: `my-cluster1-snapshot1`
#' @param DBClusterIdentifier The identifier of the DB cluster to create a snapshot for. This parameter is not case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBCluster.
#' 
#' Example: `my-cluster1`
#' @param Tags The tags to be assigned to the DB cluster snapshot.
#'
#' @examples
#'
#' @export
create_db_cluster_snapshot <- function (DBClusterSnapshotIdentifier, 
    DBClusterIdentifier, Tags = NULL) 
{
    op <- Operation(name = "CreateDBClusterSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_db_cluster_snapshot_input(DBClusterSnapshotIdentifier = DBClusterSnapshotIdentifier, 
        DBClusterIdentifier = DBClusterIdentifier, Tags = Tags)
    output <- create_db_cluster_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new DB instance
#'
#' Creates a new DB instance.
#'
#' @param DBInstanceIdentifier The DB instance identifier. This parameter is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' Example: `mydbinstance`
#' @param DBInstanceClass The compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions.
#' @param Engine The name of the database engine to be used for this instance.
#' 
#' Valid Values: `neptune`
#' @param DBName The database name.
#' 
#' Type: String
#' @param AllocatedStorage The amount of storage (in gibibytes) to allocate for the DB instance.
#' 
#' Type: Integer
#' 
#' Not applicable. Neptune cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in a Neptune cluster volume.
#' @param MasterUsername The name for the master user. Not used.
#' @param MasterUserPassword The password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".
#' 
#' Not used.
#' @param DBSecurityGroups A list of DB security groups to associate with this DB instance.
#' 
#' Default: The default DB security group for the database engine.
#' @param VpcSecurityGroupIds A list of EC2 VPC security groups to associate with this DB instance.
#' 
#' Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see CreateDBCluster.
#' 
#' Default: The default EC2 VPC security group for the DB subnet group\'s VPC.
#' @param AvailabilityZone The EC2 Availability Zone that the DB instance is created in.
#' 
#' Default: A random, system-chosen Availability Zone in the endpoint\'s AWS Region.
#' 
#' Example: `us-east-1d`
#' 
#' Constraint: The AvailabilityZone parameter can\'t be specified if the MultiAZ parameter is set to `true`. The specified Availability Zone must be in the same AWS Region as the current endpoint.
#' @param DBSubnetGroupName A DB subnet group to associate with this DB instance.
#' 
#' If there is no DB subnet group, then it is a non-VPC DB instance.
#' @param PreferredMaintenanceWindow The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC).
#' 
#' Format: `ddd:hh24:mi-ddd:hh24:mi`
#' 
#' The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
#' 
#' Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
#' 
#' Constraints: Minimum 30-minute window.
#' @param DBParameterGroupName The name of the DB parameter group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine is used.
#' 
#' Constraints:
#' 
#' -   Must be 1 to 255 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' @param BackupRetentionPeriod The number of days for which automated backups are retained.
#' 
#' Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see CreateDBCluster.
#' 
#' Default: 1
#' 
#' Constraints:
#' 
#' -   Must be a value from 0 to 35
#' 
#' -   Cannot be set to 0 if the DB instance is a source to Read Replicas
#' @param PreferredBackupWindow The daily time range during which automated backups are created.
#' 
#' Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see CreateDBCluster.
#' @param Port The port number on which the database accepts connections.
#' 
#' Not applicable. The port is managed by the DB cluster. For more information, see CreateDBCluster.
#' 
#' Default: `8182`
#' 
#' Type: Integer
#' @param MultiAZ Specifies if the DB instance is a Multi-AZ deployment. You can\'t set the AvailabilityZone parameter if the MultiAZ parameter is set to true.
#' @param EngineVersion The version number of the database engine to use.
#' @param AutoMinorVersionUpgrade Indicates that minor engine upgrades are applied automatically to the DB instance during the maintenance window.
#' 
#' Default: `true`
#' @param LicenseModel License model information for this DB instance.
#' 
#' Valid values: `license-included` \| `bring-your-own-license` \| `general-public-license`
#' @param Iops The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.
#' @param OptionGroupName Indicates that the DB instance should be associated with the specified option group.
#' 
#' Permanent options, such as the TDE option for Oracle Advanced Security TDE, can\'t be removed from an option group, and that option group can\'t be removed from a DB instance once it is associated with a DB instance
#' @param CharacterSetName Indicates that the DB instance should be associated with the specified CharacterSet.
#' 
#' Not applicable. The character set is managed by the DB cluster. For more information, see CreateDBCluster.
#' @param PubliclyAccessible This parameter is not supported.
#' @param Tags 
#' @param DBClusterIdentifier The identifier of the DB cluster that the instance will belong to.
#' 
#' For information on creating a DB cluster, see CreateDBCluster.
#' 
#' Type: String
#' @param StorageType Specifies the storage type to be associated with the DB instance.
#' 
#' Not applicable. Storage is managed by the DB Cluster.
#' @param TdeCredentialArn The ARN from the key store with which to associate the instance for TDE encryption.
#' @param TdeCredentialPassword The password for the given ARN from the key store in order to access the device.
#' @param StorageEncrypted Specifies whether the DB instance is encrypted.
#' 
#' Not applicable. The encryption for DB instances is managed by the DB cluster. For more information, see CreateDBCluster.
#' 
#' Default: false
#' @param KmsKeyId The AWS KMS key identifier for an encrypted DB instance.
#' 
#' The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.
#' 
#' Not applicable. The KMS key identifier is managed by the DB cluster. For more information, see CreateDBCluster.
#' 
#' If the `StorageEncrypted` parameter is true, and you do not specify a value for the `KmsKeyId` parameter, then Amazon Neptune will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
#' @param Domain Specify the Active Directory Domain to create the instance in.
#' @param CopyTagsToSnapshot True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.
#' @param MonitoringInterval The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.
#' 
#' If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.
#' 
#' Valid Values: `0, 1, 5, 10, 15, 30, 60`
#' @param MonitoringRoleArn The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`.
#' 
#' If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.
#' @param DomainIAMRoleName Specify the name of the IAM role to be used when making API calls to the Directory Service.
#' @param PromotionTier A value that specifies the order in which an Read Replica is promoted to the primary instance after a failure of the existing primary instance.
#' 
#' Default: 1
#' 
#' Valid Values: 0 - 15
#' @param Timezone The time zone of the DB instance.
#' @param EnableIAMDatabaseAuthentication True to enable AWS Identity and Access Management (IAM) authentication for Neptune.
#' 
#' Default: `false`
#' @param EnablePerformanceInsights True to enable Performance Insights for the DB instance, and otherwise false.
#' @param PerformanceInsightsKMSKeyId The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.
#' @param EnableCloudwatchLogsExports The list of log types that need to be enabled for exporting to CloudWatch Logs.
#'
#' @examples
#'
#' @export
create_db_instance <- function (DBInstanceIdentifier, DBInstanceClass, 
    Engine, DBName = NULL, AllocatedStorage = NULL, MasterUsername = NULL, 
    MasterUserPassword = NULL, DBSecurityGroups = NULL, VpcSecurityGroupIds = NULL, 
    AvailabilityZone = NULL, DBSubnetGroupName = NULL, PreferredMaintenanceWindow = NULL, 
    DBParameterGroupName = NULL, BackupRetentionPeriod = NULL, 
    PreferredBackupWindow = NULL, Port = NULL, MultiAZ = NULL, 
    EngineVersion = NULL, AutoMinorVersionUpgrade = NULL, LicenseModel = NULL, 
    Iops = NULL, OptionGroupName = NULL, CharacterSetName = NULL, 
    PubliclyAccessible = NULL, Tags = NULL, DBClusterIdentifier = NULL, 
    StorageType = NULL, TdeCredentialArn = NULL, TdeCredentialPassword = NULL, 
    StorageEncrypted = NULL, KmsKeyId = NULL, Domain = NULL, 
    CopyTagsToSnapshot = NULL, MonitoringInterval = NULL, MonitoringRoleArn = NULL, 
    DomainIAMRoleName = NULL, PromotionTier = NULL, Timezone = NULL, 
    EnableIAMDatabaseAuthentication = NULL, EnablePerformanceInsights = NULL, 
    PerformanceInsightsKMSKeyId = NULL, EnableCloudwatchLogsExports = NULL) 
{
    op <- Operation(name = "CreateDBInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_db_instance_input(DBInstanceIdentifier = DBInstanceIdentifier, 
        DBInstanceClass = DBInstanceClass, Engine = Engine, DBName = DBName, 
        AllocatedStorage = AllocatedStorage, MasterUsername = MasterUsername, 
        MasterUserPassword = MasterUserPassword, DBSecurityGroups = DBSecurityGroups, 
        VpcSecurityGroupIds = VpcSecurityGroupIds, AvailabilityZone = AvailabilityZone, 
        DBSubnetGroupName = DBSubnetGroupName, PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        DBParameterGroupName = DBParameterGroupName, BackupRetentionPeriod = BackupRetentionPeriod, 
        PreferredBackupWindow = PreferredBackupWindow, Port = Port, 
        MultiAZ = MultiAZ, EngineVersion = EngineVersion, AutoMinorVersionUpgrade = AutoMinorVersionUpgrade, 
        LicenseModel = LicenseModel, Iops = Iops, OptionGroupName = OptionGroupName, 
        CharacterSetName = CharacterSetName, PubliclyAccessible = PubliclyAccessible, 
        Tags = Tags, DBClusterIdentifier = DBClusterIdentifier, 
        StorageType = StorageType, TdeCredentialArn = TdeCredentialArn, 
        TdeCredentialPassword = TdeCredentialPassword, StorageEncrypted = StorageEncrypted, 
        KmsKeyId = KmsKeyId, Domain = Domain, CopyTagsToSnapshot = CopyTagsToSnapshot, 
        MonitoringInterval = MonitoringInterval, MonitoringRoleArn = MonitoringRoleArn, 
        DomainIAMRoleName = DomainIAMRoleName, PromotionTier = PromotionTier, 
        Timezone = Timezone, EnableIAMDatabaseAuthentication = EnableIAMDatabaseAuthentication, 
        EnablePerformanceInsights = EnablePerformanceInsights, 
        PerformanceInsightsKMSKeyId = PerformanceInsightsKMSKeyId, 
        EnableCloudwatchLogsExports = EnableCloudwatchLogsExports)
    output <- create_db_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new DB parameter group
#'
#' Creates a new DB parameter group.
#' 
#' A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using *ModifyDBParameterGroup*. Once you\'ve created a DB parameter group, you need to associate it with your DB instance using *ModifyDBInstance*. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.
#' 
#' After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the Amazon Neptune console or the *DescribeDBParameters* command to verify that your DB parameter group has been created or modified.
#'
#' @param DBParameterGroupName The name of the DB parameter group.
#' 
#' Constraints:
#' 
#' -   Must be 1 to 255 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' 
#' This value is stored as a lowercase string.
#' @param DBParameterGroupFamily The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.
#' @param Description The description for the DB parameter group.
#' @param Tags 
#'
#' @examples
#'
#' @export
create_db_parameter_group <- function (DBParameterGroupName, 
    DBParameterGroupFamily, Description, Tags = NULL) 
{
    op <- Operation(name = "CreateDBParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_db_parameter_group_input(DBParameterGroupName = DBParameterGroupName, 
        DBParameterGroupFamily = DBParameterGroupFamily, Description = Description, 
        Tags = Tags)
    output <- create_db_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new DB subnet group
#'
#' Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
#'
#' @param DBSubnetGroupName The name for the DB subnet group. This value is stored as a lowercase string.
#' 
#' Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default.
#' 
#' Example: `mySubnetgroup`
#' @param DBSubnetGroupDescription The description for the DB subnet group.
#' @param SubnetIds The EC2 Subnet IDs for the DB subnet group.
#' @param Tags 
#'
#' @examples
#'
#' @export
create_db_subnet_group <- function (DBSubnetGroupName, DBSubnetGroupDescription, 
    SubnetIds, Tags = NULL) 
{
    op <- Operation(name = "CreateDBSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_db_subnet_group_input(DBSubnetGroupName = DBSubnetGroupName, 
        DBSubnetGroupDescription = DBSubnetGroupDescription, 
        SubnetIds = SubnetIds, Tags = Tags)
    output <- create_db_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an event notification subscription
#'
#' Creates an event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.
#' 
#' You can specify the type of source (SourceType) you want to be notified of, provide a list of Neptune sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup.
#' 
#' If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your Neptune sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all Neptune sources belonging to your customer account.
#'
#' @param SubscriptionName The name of the subscription.
#' 
#' Constraints: The name must be less than 255 characters.
#' @param SnsTopicArn The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
#' @param SourceType The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.
#' 
#' Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group` \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
#' @param EventCategories A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the **DescribeEventCategories** action.
#' @param SourceIds The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can\'t end with a hyphen or contain two consecutive hyphens.
#' 
#' Constraints:
#' 
#' -   If SourceIds are supplied, SourceType must also be provided.
#' 
#' -   If the source type is a DB instance, then a `DBInstanceIdentifier` must be supplied.
#' 
#' -   If the source type is a DB security group, a `DBSecurityGroupName` must be supplied.
#' 
#' -   If the source type is a DB parameter group, a `DBParameterGroupName` must be supplied.
#' 
#' -   If the source type is a DB snapshot, a `DBSnapshotIdentifier` must be supplied.
#' @param Enabled A Boolean value; set to **true** to activate the subscription, set to **false** to create the subscription but not active it.
#' @param Tags 
#'
#' @examples
#'
#' @export
create_event_subscription <- function (SubscriptionName, SnsTopicArn, 
    SourceType = NULL, EventCategories = NULL, SourceIds = NULL, 
    Enabled = NULL, Tags = NULL) 
{
    op <- Operation(name = "CreateEventSubscription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_event_subscription_input(SubscriptionName = SubscriptionName, 
        SnsTopicArn = SnsTopicArn, SourceType = SourceType, EventCategories = EventCategories, 
        SourceIds = SourceIds, Enabled = Enabled, Tags = Tags)
    output <- create_event_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The DeleteDBCluster action deletes a previously provisioned DB cluster
#'
#' The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can\'t be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.
#'
#' @param DBClusterIdentifier The DB cluster identifier for the DB cluster to be deleted. This parameter isn\'t case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must match an existing DBClusterIdentifier.
#' @param SkipFinalSnapshot Determines whether a final DB cluster snapshot is created before the DB cluster is deleted. If `true` is specified, no DB cluster snapshot is created. If `false` is specified, a DB cluster snapshot is created before the DB cluster is deleted.
#' 
#' You must specify a `FinalDBSnapshotIdentifier` parameter if `SkipFinalSnapshot` is `false`.
#' 
#' Default: `false`
#' @param FinalDBSnapshotIdentifier The DB cluster snapshot identifier of the new DB cluster snapshot created when `SkipFinalSnapshot` is set to `false`.
#' 
#' Specifying this parameter and also setting the `SkipFinalShapshot` parameter to true results in an error.
#' 
#' Constraints:
#' 
#' -   Must be 1 to 255 letters, numbers, or hyphens.
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#'
#' @examples
#'
#' @export
delete_db_cluster <- function (DBClusterIdentifier, SkipFinalSnapshot = NULL, 
    FinalDBSnapshotIdentifier = NULL) 
{
    op <- Operation(name = "DeleteDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier, 
        SkipFinalSnapshot = SkipFinalSnapshot, FinalDBSnapshotIdentifier = FinalDBSnapshotIdentifier)
    output <- delete_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified DB cluster parameter group
#'
#' Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can\'t be associated with any DB clusters.
#'
#' @param DBClusterParameterGroupName The name of the DB cluster parameter group.
#' 
#' Constraints:
#' 
#' -   Must be the name of an existing DB cluster parameter group.
#' 
#' -   You can\'t delete a default DB cluster parameter group.
#' 
#' -   Cannot be associated with any DB clusters.
#'
#' @examples
#'
#' @export
delete_db_cluster_parameter_group <- function (DBClusterParameterGroupName) 
{
    op <- Operation(name = "DeleteDBClusterParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_db_cluster_parameter_group_input(DBClusterParameterGroupName = DBClusterParameterGroupName)
    output <- delete_db_cluster_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a DB cluster snapshot
#'
#' Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.
#' 
#' The DB cluster snapshot must be in the `available` state to be deleted.
#'
#' @param DBClusterSnapshotIdentifier The identifier of the DB cluster snapshot to delete.
#' 
#' Constraints: Must be the name of an existing DB cluster snapshot in the `available` state.
#'
#' @examples
#'
#' @export
delete_db_cluster_snapshot <- function (DBClusterSnapshotIdentifier) 
{
    op <- Operation(name = "DeleteDBClusterSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_db_cluster_snapshot_input(DBClusterSnapshotIdentifier = DBClusterSnapshotIdentifier)
    output <- delete_db_cluster_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' The DeleteDBInstance action deletes a previously provisioned DB instance
#'
#' The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can\'t be recovered. Manual DB snapshots of the DB instance to be deleted by `DeleteDBInstance` are not deleted.
#' 
#' If you request a final DB snapshot the status of the Amazon Neptune DB instance is `deleting` until the DB snapshot is created. The API action `DescribeDBInstance` is used to monitor the status of this operation. The action can\'t be canceled or reverted once submitted.
#' 
#' Note that when a DB instance is in a failure state and has a status of `failed`, `incompatible-restore`, or `incompatible-network`, you can only delete it when the `SkipFinalSnapshot` parameter is set to `true`.
#' 
#' If the specified DB instance is part of a DB cluster, you can\'t delete the DB instance if both of the following conditions are true:
#' 
#' -   The DB cluster is a Read Replica of another DB cluster.
#' 
#' -   The DB instance is the only instance in the DB cluster.
#' 
#' To delete a DB instance in this case, first call the PromoteReadReplicaDBCluster API action to promote the DB cluster so it\'s no longer a Read Replica. After the promotion completes, then call the `DeleteDBInstance` API action to delete the final instance in the DB cluster.
#'
#' @param DBInstanceIdentifier The DB instance identifier for the DB instance to be deleted. This parameter isn\'t case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must match the name of an existing DB instance.
#' @param SkipFinalSnapshot Determines whether a final DB snapshot is created before the DB instance is deleted. If `true` is specified, no DBSnapshot is created. If `false` is specified, a DB snapshot is created before the DB instance is deleted.
#' 
#' Note that when a DB instance is in a failure state and has a status of \'failed\', \'incompatible-restore\', or \'incompatible-network\', it can only be deleted when the SkipFinalSnapshot parameter is set to \"true\".
#' 
#' Specify `true` when deleting a Read Replica.
#' 
#' The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is `false`.
#' 
#' Default: `false`
#' @param FinalDBSnapshotIdentifier The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to `false`.
#' 
#' Specifying this parameter and also setting the SkipFinalShapshot parameter to true results in an error.
#' 
#' Constraints:
#' 
#' -   Must be 1 to 255 letters or numbers.
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' 
#' -   Cannot be specified when deleting a Read Replica.
#'
#' @examples
#'
#' @export
delete_db_instance <- function (DBInstanceIdentifier, SkipFinalSnapshot = NULL, 
    FinalDBSnapshotIdentifier = NULL) 
{
    op <- Operation(name = "DeleteDBInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_db_instance_input(DBInstanceIdentifier = DBInstanceIdentifier, 
        SkipFinalSnapshot = SkipFinalSnapshot, FinalDBSnapshotIdentifier = FinalDBSnapshotIdentifier)
    output <- delete_db_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified DBParameterGroup
#'
#' Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can\'t be associated with any DB instances.
#'
#' @param DBParameterGroupName The name of the DB parameter group.
#' 
#' Constraints:
#' 
#' -   Must be the name of an existing DB parameter group
#' 
#' -   You can\'t delete a default DB parameter group
#' 
#' -   Cannot be associated with any DB instances
#'
#' @examples
#'
#' @export
delete_db_parameter_group <- function (DBParameterGroupName) 
{
    op <- Operation(name = "DeleteDBParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_db_parameter_group_input(DBParameterGroupName = DBParameterGroupName)
    output <- delete_db_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a DB subnet group
#'
#' Deletes a DB subnet group.
#' 
#' The specified database subnet group must not be associated with any DB instances.
#'
#' @param DBSubnetGroupName The name of the database subnet group to delete.
#' 
#' You can\'t delete the default subnet group.
#' 
#' Constraints:
#' 
#' Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.
#' 
#' Example: `mySubnetgroup`
#'
#' @examples
#'
#' @export
delete_db_subnet_group <- function (DBSubnetGroupName) 
{
    op <- Operation(name = "DeleteDBSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_db_subnet_group_input(DBSubnetGroupName = DBSubnetGroupName)
    output <- delete_db_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an event notification subscription
#'
#' Deletes an event notification subscription.
#'
#' @param SubscriptionName The name of the event notification subscription you want to delete.
#'
#' @examples
#'
#' @export
delete_event_subscription <- function (SubscriptionName) 
{
    op <- Operation(name = "DeleteEventSubscription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_event_subscription_input(SubscriptionName = SubscriptionName)
    output <- delete_event_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of `DBClusterParameterGroup` descriptions
#'
#' Returns a list of `DBClusterParameterGroup` descriptions. If a `DBClusterParameterGroupName` parameter is specified, the list will contain only the description of the specified DB cluster parameter group.
#'
#' @param DBClusterParameterGroupName The name of a specific DB cluster parameter group to return details for.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the name of an existing DBClusterParameterGroup.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeDBClusterParameterGroups` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_cluster_parameter_groups <- function (DBClusterParameterGroupName = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBClusterParameterGroups", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_db_cluster_parameter_groups_input(DBClusterParameterGroupName = DBClusterParameterGroupName, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_db_cluster_parameter_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the detailed parameter list for a particular DB cluster parameter group
#'
#' Returns the detailed parameter list for a particular DB cluster parameter group.
#'
#' @param DBClusterParameterGroupName The name of a specific DB cluster parameter group to return parameter details for.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the name of an existing DBClusterParameterGroup.
#' @param Source A value that indicates to return only parameters for a specific source. Parameter sources can be `engine`, `service`, or `customer`.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeDBClusterParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_cluster_parameters <- function (DBClusterParameterGroupName, 
    Source = NULL, Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBClusterParameters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_cluster_parameters_input(DBClusterParameterGroupName = DBClusterParameterGroupName, 
        Source = Source, Filters = Filters, MaxRecords = MaxRecords, 
        Marker = Marker)
    output <- describe_db_cluster_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot
#'
#' Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot.
#' 
#' When sharing snapshots with other AWS accounts, `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If `all` is included in the list of values for the `restore` attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.
#' 
#' To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the ModifyDBClusterSnapshotAttribute API action.
#'
#' @param DBClusterSnapshotIdentifier The identifier for the DB cluster snapshot to describe the attributes for.
#'
#' @examples
#'
#' @export
describe_db_cluster_snapshot_attributes <- function (DBClusterSnapshotIdentifier) 
{
    op <- Operation(name = "DescribeDBClusterSnapshotAttributes", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_db_cluster_snapshot_attributes_input(DBClusterSnapshotIdentifier = DBClusterSnapshotIdentifier)
    output <- describe_db_cluster_snapshot_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about DB cluster snapshots
#'
#' Returns information about DB cluster snapshots. This API action supports pagination.
#'
#' @param DBClusterIdentifier The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can\'t be used in conjunction with the `DBClusterSnapshotIdentifier` parameter. This parameter is not case-sensitive.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the identifier of an existing DBCluster.
#' @param DBClusterSnapshotIdentifier A specific DB cluster snapshot identifier to describe. This parameter can\'t be used in conjunction with the `DBClusterIdentifier` parameter. This value is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the identifier of an existing DBClusterSnapshot.
#' 
#' -   If this identifier is for an automated snapshot, the `SnapshotType` parameter must also be specified.
#' @param SnapshotType The type of DB cluster snapshots to be returned. You can specify one of the following values:
#' 
#' -   `automated` - Return all DB cluster snapshots that have been automatically taken by Amazon Neptune for my AWS account.
#' 
#' -   `manual` - Return all DB cluster snapshots that have been taken by my AWS account.
#' 
#' -   `shared` - Return all manual DB cluster snapshots that have been shared to my AWS account.
#' 
#' -   `public` - Return all DB cluster snapshots that have been marked as public.
#' 
#' If you don\'t specify a `SnapshotType` value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by setting the `IncludeShared` parameter to `true`. You can include public DB cluster snapshots with these results by setting the `IncludePublic` parameter to `true`.
#' 
#' The `IncludeShared` and `IncludePublic` parameters don\'t apply for `SnapshotType` values of `manual` or `automated`. The `IncludePublic` parameter doesn\'t apply when `SnapshotType` is set to `shared`. The `IncludeShared` parameter doesn\'t apply when `SnapshotType` is set to `public`.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeDBClusterSnapshots` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#' @param IncludeShared True to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise false. The default is `false`.
#' 
#' You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the ModifyDBClusterSnapshotAttribute API action.
#' @param IncludePublic True to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account, and otherwise false. The default is `false`. The default is false.
#' 
#' You can share a manual DB cluster snapshot as public by using the ModifyDBClusterSnapshotAttribute API action.
#'
#' @examples
#'
#' @export
describe_db_cluster_snapshots <- function (DBClusterIdentifier = NULL, 
    DBClusterSnapshotIdentifier = NULL, SnapshotType = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL, IncludeShared = NULL, 
    IncludePublic = NULL) 
{
    op <- Operation(name = "DescribeDBClusterSnapshots", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_cluster_snapshots_input(DBClusterIdentifier = DBClusterIdentifier, 
        DBClusterSnapshotIdentifier = DBClusterSnapshotIdentifier, 
        SnapshotType = SnapshotType, Filters = Filters, MaxRecords = MaxRecords, 
        Marker = Marker, IncludeShared = IncludeShared, IncludePublic = IncludePublic)
    output <- describe_db_cluster_snapshots_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about provisioned DB clusters
#'
#' Returns information about provisioned DB clusters. This API supports pagination.
#'
#' @param DBClusterIdentifier The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn\'t case-sensitive.
#' 
#' Constraints:
#' 
#' -   If supplied, must match an existing DBClusterIdentifier.
#' @param Filters A filter that specifies one or more DB clusters to describe.
#' 
#' Supported filters:
#' 
#' -   `db-cluster-id` - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous DescribeDBClusters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_clusters <- function (DBClusterIdentifier = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBClusters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_clusters_input(DBClusterIdentifier = DBClusterIdentifier, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_db_clusters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of the available DB engines
#'
#' Returns a list of the available DB engines.
#'
#' @param Engine The database engine to return.
#' @param EngineVersion The database engine version to return.
#' 
#' Example: `5.1.49`
#' @param DBParameterGroupFamily The name of a specific DB parameter group family to return details for.
#' 
#' Constraints:
#' 
#' -   If supplied, must match an existing DBParameterGroupFamily.
#' @param Filters Not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more than the `MaxRecords` value is available, a pagination token called a marker is included in the response so that the following results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#' @param DefaultOnly Indicates that only the default version of the specified engine or engine and major version combination is returned.
#' @param ListSupportedCharacterSets If this parameter is specified and the requested engine supports the `CharacterSetName` parameter for `CreateDBInstance`, the response includes a list of supported character sets for each engine version.
#' @param ListSupportedTimezones If this parameter is specified and the requested engine supports the `TimeZone` parameter for `CreateDBInstance`, the response includes a list of supported time zones for each engine version.
#'
#' @examples
#'
#' @export
describe_db_engine_versions <- function (Engine = NULL, EngineVersion = NULL, 
    DBParameterGroupFamily = NULL, Filters = NULL, MaxRecords = NULL, 
    Marker = NULL, DefaultOnly = NULL, ListSupportedCharacterSets = NULL, 
    ListSupportedTimezones = NULL) 
{
    op <- Operation(name = "DescribeDBEngineVersions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_engine_versions_input(Engine = Engine, 
        EngineVersion = EngineVersion, DBParameterGroupFamily = DBParameterGroupFamily, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker, 
        DefaultOnly = DefaultOnly, ListSupportedCharacterSets = ListSupportedCharacterSets, 
        ListSupportedTimezones = ListSupportedTimezones)
    output <- describe_db_engine_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about provisioned instances
#'
#' Returns information about provisioned instances. This API supports pagination.
#'
#' @param DBInstanceIdentifier The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn\'t case-sensitive.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the identifier of an existing DBInstance.
#' @param Filters A filter that specifies one or more DB instances to describe.
#' 
#' Supported filters:
#' 
#' -   `db-cluster-id` - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.
#' 
#' -   `db-instance-id` - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeDBInstances` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_instances <- function (DBInstanceIdentifier = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_instances_input(DBInstanceIdentifier = DBInstanceIdentifier, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_db_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of `DBParameterGroup` descriptions
#'
#' Returns a list of `DBParameterGroup` descriptions. If a `DBParameterGroupName` is specified, the list will contain only the description of the specified DB parameter group.
#'
#' @param DBParameterGroupName The name of a specific DB parameter group to return details for.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the name of an existing DBClusterParameterGroup.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeDBParameterGroups` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_parameter_groups <- function (DBParameterGroupName = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBParameterGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_parameter_groups_input(DBParameterGroupName = DBParameterGroupName, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_db_parameter_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the detailed parameter list for a particular DB parameter group
#'
#' Returns the detailed parameter list for a particular DB parameter group.
#'
#' @param DBParameterGroupName The name of a specific DB parameter group to return details for.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the name of an existing DBParameterGroup.
#' @param Source The parameter types to return.
#' 
#' Default: All parameter types returned
#' 
#' Valid Values: `user | system | engine-default`
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeDBParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_parameters <- function (DBParameterGroupName, Source = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBParameters", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_parameters_input(DBParameterGroupName = DBParameterGroupName, 
        Source = Source, Filters = Filters, MaxRecords = MaxRecords, 
        Marker = Marker)
    output <- describe_db_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of DBSubnetGroup descriptions
#'
#' Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
#' 
#' For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
#'
#' @param DBSubnetGroupName The name of the DB subnet group to return details for.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_db_subnet_groups <- function (DBSubnetGroupName = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeDBSubnetGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_db_subnet_groups_input(DBSubnetGroupName = DBSubnetGroupName, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_db_subnet_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the default engine and system parameter information for the cluster database engine
#'
#' Returns the default engine and system parameter information for the cluster database engine.
#'
#' @param DBParameterGroupFamily The name of the DB cluster parameter group family to return engine parameter information for.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeEngineDefaultClusterParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_engine_default_cluster_parameters <- function (DBParameterGroupFamily, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeEngineDefaultClusterParameters", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_engine_default_cluster_parameters_input(DBParameterGroupFamily = DBParameterGroupFamily, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_engine_default_cluster_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the default engine and system parameter information for the specified database engine
#'
#' Returns the default engine and system parameter information for the specified database engine.
#'
#' @param DBParameterGroupFamily The name of the DB parameter group family.
#' @param Filters Not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous `DescribeEngineDefaultParameters` request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_engine_default_parameters <- function (DBParameterGroupFamily, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeEngineDefaultParameters", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_engine_default_parameters_input(DBParameterGroupFamily = DBParameterGroupFamily, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_engine_default_parameters_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Displays a list of categories for all event source types, or, if specified, for a specified source type
#'
#' Displays a list of categories for all event source types, or, if specified, for a specified source type.
#'
#' @param SourceType The type of source that is generating the events.
#' 
#' Valid values: db-instance \| db-parameter-group \| db-security-group \| db-snapshot
#' @param Filters This parameter is not currently supported.
#'
#' @examples
#'
#' @export
describe_event_categories <- function (SourceType = NULL, Filters = NULL) 
{
    op <- Operation(name = "DescribeEventCategories", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_categories_input(SourceType = SourceType, 
        Filters = Filters)
    output <- describe_event_categories_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all the subscription descriptions for a customer account
#'
#' Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.
#' 
#' If you specify a SubscriptionName, lists the description for that subscription.
#'
#' @param SubscriptionName The name of the event notification subscription you want to describe.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords` .
#'
#' @examples
#'
#' @export
describe_event_subscriptions <- function (SubscriptionName = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeEventSubscriptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_event_subscriptions_input(SubscriptionName = SubscriptionName, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_event_subscriptions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days
#'
#' Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
#'
#' @param SourceIdentifier The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.
#' 
#' Constraints:
#' 
#' -   If SourceIdentifier is supplied, SourceType must also be provided.
#' 
#' -   If the source type is `DBInstance`, then a `DBInstanceIdentifier` must be supplied.
#' 
#' -   If the source type is `DBSecurityGroup`, a `DBSecurityGroupName` must be supplied.
#' 
#' -   If the source type is `DBParameterGroup`, a `DBParameterGroupName` must be supplied.
#' 
#' -   If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must be supplied.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' @param SourceType The event source to retrieve events for. If no value is specified, all events are returned.
#' @param StartTime The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)
#' 
#' Example: 2009-07-08T18:00Z
#' @param EndTime The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the [ISO8601 Wikipedia page.](http://en.wikipedia.org/wiki/ISO_8601)
#' 
#' Example: 2009-07-08T18:00Z
#' @param Duration The number of minutes to retrieve events for.
#' 
#' Default: 60
#' @param EventCategories A list of event categories that trigger notifications for a event notification subscription.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_events <- function (SourceIdentifier = NULL, SourceType = NULL, 
    StartTime = NULL, EndTime = NULL, Duration = NULL, EventCategories = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeEvents", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_events_input(SourceIdentifier = SourceIdentifier, 
        SourceType = SourceType, StartTime = StartTime, EndTime = EndTime, 
        Duration = Duration, EventCategories = EventCategories, 
        Filters = Filters, MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_events_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of orderable DB instance options for the specified engine
#'
#' Returns a list of orderable DB instance options for the specified engine.
#'
#' @param Engine The name of the engine to retrieve DB instance options for.
#' @param EngineVersion The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.
#' @param DBInstanceClass The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.
#' @param LicenseModel The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.
#' @param Vpc The VPC filter value. Specify this parameter to show only the available VPC or non-VPC offerings.
#' @param Filters This parameter is not currently supported.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords` .
#'
#' @examples
#'
#' @export
describe_orderable_db_instance_options <- function (Engine, EngineVersion = NULL, 
    DBInstanceClass = NULL, LicenseModel = NULL, Vpc = NULL, 
    Filters = NULL, MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeOrderableDBInstanceOptions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_orderable_db_instance_options_input(Engine = Engine, 
        EngineVersion = EngineVersion, DBInstanceClass = DBInstanceClass, 
        LicenseModel = LicenseModel, Vpc = Vpc, Filters = Filters, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_orderable_db_instance_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of resources (for example, DB instances) that have at least one pending maintenance action
#'
#' Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.
#'
#' @param ResourceIdentifier The ARN of a resource to return pending maintenance actions for.
#' @param Filters A filter that specifies one or more resources to return pending maintenance actions for.
#' 
#' Supported filters:
#' 
#' -   `db-cluster-id` - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.
#' 
#' -   `db-instance-id` - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.
#' @param Marker An optional pagination token provided by a previous `DescribePendingMaintenanceActions` request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by `MaxRecords`.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#'
#' @examples
#'
#' @export
describe_pending_maintenance_actions <- function (ResourceIdentifier = NULL, 
    Filters = NULL, Marker = NULL, MaxRecords = NULL) 
{
    op <- Operation(name = "DescribePendingMaintenanceActions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_pending_maintenance_actions_input(ResourceIdentifier = ResourceIdentifier, 
        Filters = Filters, Marker = Marker, MaxRecords = MaxRecords)
    output <- describe_pending_maintenance_actions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance
#'
#' You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance. You can use this information when you call ModifyDBInstance.
#'
#' @param DBInstanceIdentifier The customer identifier or the ARN of your DB instance.
#'
#' @examples
#'
#' @export
describe_valid_db_instance_modifications <- function (DBInstanceIdentifier) 
{
    op <- Operation(name = "DescribeValidDBInstanceModifications", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_valid_db_instance_modifications_input(DBInstanceIdentifier = DBInstanceIdentifier)
    output <- describe_valid_db_instance_modifications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Forces a failover for a DB cluster
#'
#' Forces a failover for a DB cluster.
#' 
#' A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer).
#' 
#' Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.
#'
#' @param DBClusterIdentifier A DB cluster identifier to force a failover for. This parameter is not case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBCluster.
#' @param TargetDBInstanceIdentifier The name of the instance to promote to the primary instance.
#' 
#' You must specify the instance identifier for an Read Replica in the DB cluster. For example, `mydbcluster-replica1`.
#'
#' @examples
#'
#' @export
failover_db_cluster <- function (DBClusterIdentifier = NULL, 
    TargetDBInstanceIdentifier = NULL) 
{
    op <- Operation(name = "FailoverDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- failover_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier, 
        TargetDBInstanceIdentifier = TargetDBInstanceIdentifier)
    output <- failover_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all tags on an Amazon Neptune resource
#'
#' Lists all tags on an Amazon Neptune resource.
#'
#' @param ResourceName The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).
#' @param Filters This parameter is not currently supported.
#'
#' @examples
#'
#' @export
list_tags_for_resource <- function (ResourceName, Filters = NULL) 
{
    op <- Operation(name = "ListTagsForResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_for_resource_input(ResourceName = ResourceName, 
        Filters = Filters)
    output <- list_tags_for_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modify a setting for a DB cluster
#'
#' Modify a setting for a DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
#'
#' @param DBClusterIdentifier The DB cluster identifier for the cluster being modified. This parameter is not case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBCluster.
#' @param NewDBClusterIdentifier The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens
#' 
#' -   The first character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' 
#' Example: `my-cluster2`
#' @param ApplyImmediately A value that specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the DB cluster. If this parameter is set to `false`, changes to the DB cluster are applied during the next maintenance window.
#' 
#' The `ApplyImmediately` parameter only affects the `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set the `ApplyImmediately` parameter value to false, then changes to the `NewDBClusterIdentifier` and `MasterUserPassword` values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the `ApplyImmediately` parameter.
#' 
#' Default: `false`
#' @param BackupRetentionPeriod The number of days for which automated backups are retained. You must specify a minimum value of 1.
#' 
#' Default: 1
#' 
#' Constraints:
#' 
#' -   Must be a value from 1 to 35
#' @param DBClusterParameterGroupName The name of the DB cluster parameter group to use for the DB cluster.
#' @param VpcSecurityGroupIds A list of VPC security groups that the DB cluster will belong to.
#' @param Port The port number on which the DB cluster accepts connections.
#' 
#' Constraints: Value must be `1150-65535`
#' 
#' Default: The same port as the original DB cluster.
#' @param MasterUserPassword The new password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".
#' 
#' Constraints: Must contain from 8 to 41 characters.
#' @param OptionGroupName A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter doesn\'t result in an outage except in the following case, and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted.
#' 
#' Permanent options can\'t be removed from an option group. The option group can\'t be removed from a DB cluster once it is associated with a DB cluster.
#' @param PreferredBackupWindow The daily time range during which automated backups are created if automated backups are enabled, using the `BackupRetentionPeriod` parameter.
#' 
#' The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region.
#' 
#' Constraints:
#' 
#' -   Must be in the format `hh24:mi-hh24:mi`.
#' 
#' -   Must be in Universal Coordinated Time (UTC).
#' 
#' -   Must not conflict with the preferred maintenance window.
#' 
#' -   Must be at least 30 minutes.
#' @param PreferredMaintenanceWindow The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
#' 
#' Format: `ddd:hh24:mi-ddd:hh24:mi`
#' 
#' The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
#' 
#' Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
#' 
#' Constraints: Minimum 30-minute window.
#' @param EnableIAMDatabaseAuthentication True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.
#' 
#' Default: `false`
#' @param EngineVersion The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless the ApplyImmediately parameter is set to true.
#' 
#' For a list of valid engine versions, see CreateDBInstance, or call DescribeDBEngineVersions.
#'
#' @examples
#'
#' @export
modify_db_cluster <- function (DBClusterIdentifier, NewDBClusterIdentifier = NULL, 
    ApplyImmediately = NULL, BackupRetentionPeriod = NULL, DBClusterParameterGroupName = NULL, 
    VpcSecurityGroupIds = NULL, Port = NULL, MasterUserPassword = NULL, 
    OptionGroupName = NULL, PreferredBackupWindow = NULL, PreferredMaintenanceWindow = NULL, 
    EnableIAMDatabaseAuthentication = NULL, EngineVersion = NULL) 
{
    op <- Operation(name = "ModifyDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier, 
        NewDBClusterIdentifier = NewDBClusterIdentifier, ApplyImmediately = ApplyImmediately, 
        BackupRetentionPeriod = BackupRetentionPeriod, DBClusterParameterGroupName = DBClusterParameterGroupName, 
        VpcSecurityGroupIds = VpcSecurityGroupIds, Port = Port, 
        MasterUserPassword = MasterUserPassword, OptionGroupName = OptionGroupName, 
        PreferredBackupWindow = PreferredBackupWindow, PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        EnableIAMDatabaseAuthentication = EnableIAMDatabaseAuthentication, 
        EngineVersion = EngineVersion)
    output <- modify_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the parameters of a DB cluster parameter group
#'
#' Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.
#' 
#' Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.
#' 
#' After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified.
#'
#' @param DBClusterParameterGroupName The name of the DB cluster parameter group to modify.
#' @param Parameters A list of parameters in the DB cluster parameter group to modify.
#'
#' @examples
#'
#' @export
modify_db_cluster_parameter_group <- function (DBClusterParameterGroupName, 
    Parameters) 
{
    op <- Operation(name = "ModifyDBClusterParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_db_cluster_parameter_group_input(DBClusterParameterGroupName = DBClusterParameterGroupName, 
        Parameters = Parameters)
    output <- modify_db_cluster_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot
#'
#' Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot.
#' 
#' To share a manual DB cluster snapshot with other AWS accounts, specify `restore` as the `AttributeName` and use the `ValuesToAdd` parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value `all` to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the `all` value for any manual DB cluster snapshots that contain private information that you don\'t want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the `ValuesToAdd` parameter. You can\'t use `all` as a value for that parameter in this case.
#' 
#' To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the DescribeDBClusterSnapshotAttributes API action.
#'
#' @param DBClusterSnapshotIdentifier The identifier for the DB cluster snapshot to modify the attributes for.
#' @param AttributeName The name of the DB cluster snapshot attribute to modify.
#' 
#' To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to `restore`.
#' @param ValuesToAdd A list of DB cluster snapshot attributes to add to the attribute specified by `AttributeName`.
#' 
#' To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or `all` to make the manual DB cluster snapshot restorable by any AWS account. Do not add the `all` value for any manual DB cluster snapshots that contain private information that you don\'t want available to all AWS accounts.
#' @param ValuesToRemove A list of DB cluster snapshot attributes to remove from the attribute specified by `AttributeName`.
#' 
#' To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or `all` to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify `all`, an AWS account whose account ID is explicitly added to the `restore` attribute can still copy or restore a manual DB cluster snapshot.
#'
#' @examples
#'
#' @export
modify_db_cluster_snapshot_attribute <- function (DBClusterSnapshotIdentifier, 
    AttributeName, ValuesToAdd = NULL, ValuesToRemove = NULL) 
{
    op <- Operation(name = "ModifyDBClusterSnapshotAttribute", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_db_cluster_snapshot_attribute_input(DBClusterSnapshotIdentifier = DBClusterSnapshotIdentifier, 
        AttributeName = AttributeName, ValuesToAdd = ValuesToAdd, 
        ValuesToRemove = ValuesToRemove)
    output <- modify_db_cluster_snapshot_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies settings for a DB instance
#'
#' Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call DescribeValidDBInstanceModifications before you call ModifyDBInstance.
#'
#' @param DBInstanceIdentifier The DB instance identifier. This value is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBInstance.
#' @param AllocatedStorage The new amount of storage (in gibibytes) to allocate for the DB instance.
#' 
#' Not applicable. Storage is managed by the DB Cluster.
#' @param DBInstanceClass The new compute and memory capacity of the DB instance, for example, `db.m4.large`. Not all DB instance classes are available in all AWS Regions.
#' 
#' If you modify the DB instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless `ApplyImmediately` is specified as `true` for this request.
#' 
#' Default: Uses existing setting
#' @param DBSubnetGroupName The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC.
#' 
#' Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you specify `true` for the `ApplyImmediately` parameter.
#' 
#' Constraints: If supplied, must match the name of an existing DBSubnetGroup.
#' 
#' Example: `mySubnetGroup`
#' @param DBSecurityGroups A list of DB security groups to authorize on this DB instance. Changing this setting doesn\'t result in an outage and the change is asynchronously applied as soon as possible.
#' 
#' Constraints:
#' 
#' -   If supplied, must match existing DBSecurityGroups.
#' @param VpcSecurityGroupIds A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.
#' 
#' Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see ModifyDBCluster.
#' 
#' Constraints:
#' 
#' -   If supplied, must match existing VpcSecurityGroupIds.
#' @param ApplyImmediately Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the `PreferredMaintenanceWindow` setting for the DB instance.
#' 
#' If this parameter is set to `false`, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next call to RebootDBInstance, or the next failure reboot.
#' 
#' Default: `false`
#' @param MasterUserPassword The new password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".
#' 
#' Not applicable.
#' 
#' Default: Uses existing setting
#' @param DBParameterGroupName The name of the DB parameter group to apply to the DB instance. Changing this setting doesn\'t result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. The db instance will NOT be rebooted automatically and the parameter changes will NOT be applied during the next maintenance window.
#' 
#' Default: Uses existing setting
#' 
#' Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.
#' @param BackupRetentionPeriod The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.
#' 
#' Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see ModifyDBCluster.
#' 
#' Default: Uses existing setting
#' @param PreferredBackupWindow The daily time range during which automated backups are created if automated backups are enabled.
#' 
#' Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see ModifyDBCluster.
#' 
#' Constraints:
#' 
#' -   Must be in the format hh24:mi-hh24:mi
#' 
#' -   Must be in Universal Time Coordinated (UTC)
#' 
#' -   Must not conflict with the preferred maintenance window
#' 
#' -   Must be at least 30 minutes
#' @param PreferredMaintenanceWindow The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter doesn\'t result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.
#' 
#' Default: Uses existing setting
#' 
#' Format: ddd:hh24:mi-ddd:hh24:mi
#' 
#' Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
#' 
#' Constraints: Must be at least 30 minutes
#' @param MultiAZ Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn\'t result in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request.
#' @param EngineVersion The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request.
#' 
#' For major version upgrades, if a nondefault DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.
#' @param AllowMajorVersionUpgrade Indicates that major version upgrades are allowed. Changing this parameter doesn\'t result in an outage and the change is asynchronously applied as soon as possible.
#' 
#' Constraints: This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance\'s current version.
#' @param AutoMinorVersionUpgrade Indicates that minor version upgrades are applied automatically to the DB instance during the maintenance window. Changing this parameter doesn\'t result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to `true` during the maintenance window, and a newer minor version is available, and Neptune has enabled auto patching for that engine version.
#' @param LicenseModel The license model for the DB instance.
#' 
#' Valid values: `license-included` \| `bring-your-own-license` \| `general-public-license`
#' @param Iops The new Provisioned IOPS (I/O operations per second) value for the instance.
#' 
#' Changing this setting doesn\'t result in an outage and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request.
#' 
#' Default: Uses existing setting
#' @param OptionGroupName Indicates that the DB instance should be associated with the specified option group. Changing this parameter doesn\'t result in an outage except in the following case and the change is applied during the next maintenance window unless the `ApplyImmediately` parameter is set to `true` for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted.
#' 
#' Permanent options, such as the TDE option for Oracle Advanced Security TDE, can\'t be removed from an option group, and that option group can\'t be removed from a DB instance once it is associated with a DB instance
#' @param NewDBInstanceIdentifier The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot will occur immediately if you set `Apply Immediately` to true, or will occur during the next maintenance window if `Apply Immediately` to false. This value is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens.
#' 
#' -   The first character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' Example: `mydbinstance`
#' @param StorageType Specifies the storage type to be associated with the DB instance.
#' 
#' If you specify Provisioned IOPS (`io1`), you must also include a value for the `Iops` parameter.
#' 
#' If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon Neptune operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a Read Replica for the instance, and creating a DB snapshot of the instance.
#' 
#' Valid values: `standard | gp2 | io1`
#' 
#' Default: `io1` if the `Iops` parameter is specified, otherwise `standard`
#' @param TdeCredentialArn The ARN from the key store with which to associate the instance for TDE encryption.
#' @param TdeCredentialPassword The password for the given ARN from the key store in order to access the device.
#' @param CACertificateIdentifier Indicates the certificate that needs to be associated with the instance.
#' @param Domain Not supported.
#' @param CopyTagsToSnapshot True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise false. The default is false.
#' @param MonitoringInterval The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.
#' 
#' If `MonitoringRoleArn` is specified, then you must also set `MonitoringInterval` to a value other than 0.
#' 
#' Valid Values: `0, 1, 5, 10, 15, 30, 60`
#' @param DBPortNumber The port number on which the database accepts connections.
#' 
#' The value of the `DBPortNumber` parameter must not match any of the port values specified for options in the option group for the DB instance.
#' 
#' Your database will restart when you change the `DBPortNumber` value regardless of the value of the `ApplyImmediately` parameter.
#' 
#' Default: `8182`
#' @param PubliclyAccessible This parameter is not supported.
#' @param MonitoringRoleArn The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, `arn:aws:iam:123456789012:role/emaccess`.
#' 
#' If `MonitoringInterval` is set to a value other than 0, then you must supply a `MonitoringRoleArn` value.
#' @param DomainIAMRoleName Not supported
#' @param PromotionTier A value that specifies the order in which a Read Replica is promoted to the primary instance after a failure of the existing primary instance.
#' 
#' Default: 1
#' 
#' Valid Values: 0 - 15
#' @param EnableIAMDatabaseAuthentication True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.
#' 
#' You can enable IAM database authentication for the following database engines
#' 
#' Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster. For more information, see ModifyDBCluster.
#' 
#' Default: `false`
#' @param EnablePerformanceInsights True to enable Performance Insights for the DB instance, and otherwise false.
#' @param PerformanceInsightsKMSKeyId The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.
#' @param CloudwatchLogsExportConfiguration The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.
#'
#' @examples
#'
#' @export
modify_db_instance <- function (DBInstanceIdentifier, AllocatedStorage = NULL, 
    DBInstanceClass = NULL, DBSubnetGroupName = NULL, DBSecurityGroups = NULL, 
    VpcSecurityGroupIds = NULL, ApplyImmediately = NULL, MasterUserPassword = NULL, 
    DBParameterGroupName = NULL, BackupRetentionPeriod = NULL, 
    PreferredBackupWindow = NULL, PreferredMaintenanceWindow = NULL, 
    MultiAZ = NULL, EngineVersion = NULL, AllowMajorVersionUpgrade = NULL, 
    AutoMinorVersionUpgrade = NULL, LicenseModel = NULL, Iops = NULL, 
    OptionGroupName = NULL, NewDBInstanceIdentifier = NULL, StorageType = NULL, 
    TdeCredentialArn = NULL, TdeCredentialPassword = NULL, CACertificateIdentifier = NULL, 
    Domain = NULL, CopyTagsToSnapshot = NULL, MonitoringInterval = NULL, 
    DBPortNumber = NULL, PubliclyAccessible = NULL, MonitoringRoleArn = NULL, 
    DomainIAMRoleName = NULL, PromotionTier = NULL, EnableIAMDatabaseAuthentication = NULL, 
    EnablePerformanceInsights = NULL, PerformanceInsightsKMSKeyId = NULL, 
    CloudwatchLogsExportConfiguration = NULL) 
{
    op <- Operation(name = "ModifyDBInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_db_instance_input(DBInstanceIdentifier = DBInstanceIdentifier, 
        AllocatedStorage = AllocatedStorage, DBInstanceClass = DBInstanceClass, 
        DBSubnetGroupName = DBSubnetGroupName, DBSecurityGroups = DBSecurityGroups, 
        VpcSecurityGroupIds = VpcSecurityGroupIds, ApplyImmediately = ApplyImmediately, 
        MasterUserPassword = MasterUserPassword, DBParameterGroupName = DBParameterGroupName, 
        BackupRetentionPeriod = BackupRetentionPeriod, PreferredBackupWindow = PreferredBackupWindow, 
        PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        MultiAZ = MultiAZ, EngineVersion = EngineVersion, AllowMajorVersionUpgrade = AllowMajorVersionUpgrade, 
        AutoMinorVersionUpgrade = AutoMinorVersionUpgrade, LicenseModel = LicenseModel, 
        Iops = Iops, OptionGroupName = OptionGroupName, NewDBInstanceIdentifier = NewDBInstanceIdentifier, 
        StorageType = StorageType, TdeCredentialArn = TdeCredentialArn, 
        TdeCredentialPassword = TdeCredentialPassword, CACertificateIdentifier = CACertificateIdentifier, 
        Domain = Domain, CopyTagsToSnapshot = CopyTagsToSnapshot, 
        MonitoringInterval = MonitoringInterval, DBPortNumber = DBPortNumber, 
        PubliclyAccessible = PubliclyAccessible, MonitoringRoleArn = MonitoringRoleArn, 
        DomainIAMRoleName = DomainIAMRoleName, PromotionTier = PromotionTier, 
        EnableIAMDatabaseAuthentication = EnableIAMDatabaseAuthentication, 
        EnablePerformanceInsights = EnablePerformanceInsights, 
        PerformanceInsightsKMSKeyId = PerformanceInsightsKMSKeyId, 
        CloudwatchLogsExportConfiguration = CloudwatchLogsExportConfiguration)
    output <- modify_db_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the parameters of a DB parameter group
#'
#' Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: `ParameterName`, `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.
#' 
#' Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.
#' 
#' After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the `character_set_database` parameter. You can use the *Parameter Groups* option of the Amazon Neptune console or the *DescribeDBParameters* command to verify that your DB parameter group has been created or modified.
#'
#' @param DBParameterGroupName The name of the DB parameter group.
#' 
#' Constraints:
#' 
#' -   If supplied, must match the name of an existing DBParameterGroup.
#' @param Parameters An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; subsequent arguments are optional. A maximum of 20 parameters can be modified in a single request.
#' 
#' Valid Values (for the application method): `immediate | pending-reboot`
#' 
#' You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.
#'
#' @examples
#'
#' @export
modify_db_parameter_group <- function (DBParameterGroupName, 
    Parameters) 
{
    op <- Operation(name = "ModifyDBParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_db_parameter_group_input(DBParameterGroupName = DBParameterGroupName, 
        Parameters = Parameters)
    output <- modify_db_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies an existing DB subnet group
#'
#' Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
#'
#' @param DBSubnetGroupName The name for the DB subnet group. This value is stored as a lowercase string. You can\'t modify the default subnet group.
#' 
#' Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.
#' 
#' Example: `mySubnetgroup`
#' @param SubnetIds The EC2 subnet IDs for the DB subnet group.
#' @param DBSubnetGroupDescription The description for the DB subnet group.
#'
#' @examples
#'
#' @export
modify_db_subnet_group <- function (DBSubnetGroupName, SubnetIds, 
    DBSubnetGroupDescription = NULL) 
{
    op <- Operation(name = "ModifyDBSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_db_subnet_group_input(DBSubnetGroupName = DBSubnetGroupName, 
        SubnetIds = SubnetIds, DBSubnetGroupDescription = DBSubnetGroupDescription)
    output <- modify_db_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies an existing event notification subscription
#'
#' Modifies an existing event notification subscription. Note that you can\'t modify the source identifiers using this call; to change source identifiers for a subscription, use the AddSourceIdentifierToSubscription and RemoveSourceIdentifierFromSubscription calls.
#' 
#' You can see a list of the event categories for a given SourceType by using the **DescribeEventCategories** action.
#'
#' @param SubscriptionName The name of the event notification subscription.
#' @param SnsTopicArn The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
#' @param SourceType The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. if this value is not specified, all events are returned.
#' 
#' Valid values: db-instance \| db-parameter-group \| db-security-group \| db-snapshot
#' @param EventCategories A list of event categories for a SourceType that you want to subscribe to. You can see a list of the categories for a given SourceType by using the **DescribeEventCategories** action.
#' @param Enabled A Boolean value; set to **true** to activate the subscription.
#'
#' @examples
#'
#' @export
modify_event_subscription <- function (SubscriptionName, SnsTopicArn = NULL, 
    SourceType = NULL, EventCategories = NULL, Enabled = NULL) 
{
    op <- Operation(name = "ModifyEventSubscription", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_event_subscription_input(SubscriptionName = SubscriptionName, 
        SnsTopicArn = SnsTopicArn, SourceType = SourceType, EventCategories = EventCategories, 
        Enabled = Enabled)
    output <- modify_event_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Promotes a Read Replica DB cluster to a standalone DB cluster
#'
#' Promotes a Read Replica DB cluster to a standalone DB cluster.
#'
#' @param DBClusterIdentifier The identifier of the DB cluster Read Replica to promote. This parameter is not case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBCluster Read Replica.
#' 
#' Example: `my-cluster-replica1`
#'
#' @examples
#'
#' @export
promote_read_replica_db_cluster <- function (DBClusterIdentifier) 
{
    op <- Operation(name = "PromoteReadReplicaDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- promote_read_replica_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier)
    output <- promote_read_replica_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' You might need to reboot your DB instance, usually for maintenance reasons
#'
#' You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect.
#' 
#' Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.
#'
#' @param DBInstanceIdentifier The DB instance identifier. This parameter is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBInstance.
#' @param ForceFailover When `true`, the reboot is conducted through a MultiAZ failover.
#' 
#' Constraint: You can\'t specify `true` if the instance is not configured for MultiAZ.
#'
#' @examples
#'
#' @export
reboot_db_instance <- function (DBInstanceIdentifier, ForceFailover = NULL) 
{
    op <- Operation(name = "RebootDBInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reboot_db_instance_input(DBInstanceIdentifier = DBInstanceIdentifier, 
        ForceFailover = ForceFailover)
    output <- reboot_db_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates an Identity and Access Management (IAM) role from a DB cluster
#'
#' Disassociates an Identity and Access Management (IAM) role from a DB cluster.
#'
#' @param DBClusterIdentifier The name of the DB cluster to disassociate the IAM role from.
#' @param RoleArn The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for example `arn:aws:iam::123456789012:role/NeptuneAccessRole`.
#'
#' @examples
#'
#' @export
remove_role_from_db_cluster <- function (DBClusterIdentifier, 
    RoleArn) 
{
    op <- Operation(name = "RemoveRoleFromDBCluster", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_role_from_db_cluster_input(DBClusterIdentifier = DBClusterIdentifier, 
        RoleArn = RoleArn)
    output <- remove_role_from_db_cluster_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a source identifier from an existing event notification subscription
#'
#' Removes a source identifier from an existing event notification subscription.
#'
#' @param SubscriptionName The name of the event notification subscription you want to remove a source identifier from.
#' @param SourceIdentifier The source identifier to be removed from the subscription, such as the **DB instance identifier** for a DB instance or the name of a security group.
#'
#' @examples
#'
#' @export
remove_source_identifier_from_subscription <- function (SubscriptionName, 
    SourceIdentifier) 
{
    op <- Operation(name = "RemoveSourceIdentifierFromSubscription", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- remove_source_identifier_from_subscription_input(SubscriptionName = SubscriptionName, 
        SourceIdentifier = SourceIdentifier)
    output <- remove_source_identifier_from_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes metadata tags from an Amazon Neptune resource
#'
#' Removes metadata tags from an Amazon Neptune resource.
#'
#' @param ResourceName The Amazon Neptune resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see [Constructing an Amazon Resource Name (ARN)](http://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing).
#' @param TagKeys The tag key (name) of the tag to be removed.
#'
#' @examples
#'
#' @export
remove_tags_from_resource <- function (ResourceName, TagKeys) 
{
    op <- Operation(name = "RemoveTagsFromResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_tags_from_resource_input(ResourceName = ResourceName, 
        TagKeys = TagKeys)
    output <- remove_tags_from_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the parameters of a DB cluster parameter group to the default value
#'
#' Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: `ParameterName` and `ApplyMethod`. To reset the entire DB cluster parameter group, specify the `DBClusterParameterGroupName` and `ResetAllParameters` parameters.
#' 
#' When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to `pending-reboot` to take effect on the next DB instance restart or RebootDBInstance request. You must call RebootDBInstance for every DB instance in your DB cluster that you want the updated static parameter to apply to.
#'
#' @param DBClusterParameterGroupName The name of the DB cluster parameter group to reset.
#' @param ResetAllParameters A value that is set to `true` to reset all parameters in the DB cluster parameter group to their default values, and `false` otherwise. You can\'t use this parameter if there is a list of parameter names specified for the `Parameters` parameter.
#' @param Parameters A list of parameter names in the DB cluster parameter group to reset to the default values. You can\'t use this parameter if the `ResetAllParameters` parameter is set to `true`.
#'
#' @examples
#'
#' @export
reset_db_cluster_parameter_group <- function (DBClusterParameterGroupName, 
    ResetAllParameters = NULL, Parameters = NULL) 
{
    op <- Operation(name = "ResetDBClusterParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_db_cluster_parameter_group_input(DBClusterParameterGroupName = DBClusterParameterGroupName, 
        ResetAllParameters = ResetAllParameters, Parameters = Parameters)
    output <- reset_db_cluster_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the parameters of a DB parameter group to the engine/system default value
#'
#' Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: `ParameterName` and `ApplyMethod`. To reset the entire DB parameter group, specify the `DBParameterGroup` name and `ResetAllParameters` parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to `pending-reboot` to take effect on the next DB instance restart or `RebootDBInstance` request.
#'
#' @param DBParameterGroupName The name of the DB parameter group.
#' 
#' Constraints:
#' 
#' -   Must match the name of an existing DBParameterGroup.
#' @param ResetAllParameters Specifies whether (`true`) or not (`false`) to reset all parameters in the DB parameter group to default values.
#' 
#' Default: `true`
#' @param Parameters To reset the entire DB parameter group, specify the `DBParameterGroup` name and `ResetAllParameters` parameters. To reset specific parameters, provide a list of the following: `ParameterName` and `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.
#' 
#' Valid Values (for Apply method): `pending-reboot`
#'
#' @examples
#'
#' @export
reset_db_parameter_group <- function (DBParameterGroupName, ResetAllParameters = NULL, 
    Parameters = NULL) 
{
    op <- Operation(name = "ResetDBParameterGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_db_parameter_group_input(DBParameterGroupName = DBParameterGroupName, 
        ResetAllParameters = ResetAllParameters, Parameters = Parameters)
    output <- reset_db_parameter_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new DB cluster from a DB snapshot or DB cluster snapshot
#'
#' Creates a new DB cluster from a DB snapshot or DB cluster snapshot.
#' 
#' If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group.
#' 
#' If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.
#'
#' @param DBClusterIdentifier The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn\'t case-sensitive.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' 
#' Example: `my-snapshot-id`
#' @param SnapshotIdentifier The identifier for the DB snapshot or DB cluster snapshot to restore from.
#' 
#' You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing Snapshot.
#' @param Engine The database engine to use for the new DB cluster.
#' 
#' Default: The same as source
#' 
#' Constraint: Must be compatible with the engine of the source
#' @param AvailabilityZones Provides the list of EC2 Availability Zones that instances in the restored DB cluster can be created in.
#' @param EngineVersion The version of the database engine to use for the new DB cluster.
#' @param Port The port number on which the new DB cluster accepts connections.
#' 
#' Constraints: Value must be `1150-65535`
#' 
#' Default: The same port as the original DB cluster.
#' @param DBSubnetGroupName The name of the DB subnet group to use for the new DB cluster.
#' 
#' Constraints: If supplied, must match the name of an existing DBSubnetGroup.
#' 
#' Example: `mySubnetgroup`
#' @param DatabaseName The database name for the restored DB cluster.
#' @param OptionGroupName The name of the option group to use for the restored DB cluster.
#' @param VpcSecurityGroupIds A list of VPC security groups that the new DB cluster will belong to.
#' @param Tags The tags to be assigned to the restored DB cluster.
#' @param KmsKeyId The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot.
#' 
#' The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.
#' 
#' If you do not specify a value for the `KmsKeyId` parameter, then the following will occur:
#' 
#' -   If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB snapshot or DB cluster snapshot.
#' 
#' -   If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is not encrypted, then the restored DB cluster is not encrypted.
#' @param EnableIAMDatabaseAuthentication True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.
#' 
#' Default: `false`
#'
#' @examples
#'
#' @export
restore_db_cluster_from_snapshot <- function (DBClusterIdentifier, 
    SnapshotIdentifier, Engine, AvailabilityZones = NULL, EngineVersion = NULL, 
    Port = NULL, DBSubnetGroupName = NULL, DatabaseName = NULL, 
    OptionGroupName = NULL, VpcSecurityGroupIds = NULL, Tags = NULL, 
    KmsKeyId = NULL, EnableIAMDatabaseAuthentication = NULL) 
{
    op <- Operation(name = "RestoreDBClusterFromSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- restore_db_cluster_from_snapshot_input(DBClusterIdentifier = DBClusterIdentifier, 
        SnapshotIdentifier = SnapshotIdentifier, Engine = Engine, 
        AvailabilityZones = AvailabilityZones, EngineVersion = EngineVersion, 
        Port = Port, DBSubnetGroupName = DBSubnetGroupName, DatabaseName = DatabaseName, 
        OptionGroupName = OptionGroupName, VpcSecurityGroupIds = VpcSecurityGroupIds, 
        Tags = Tags, KmsKeyId = KmsKeyId, EnableIAMDatabaseAuthentication = EnableIAMDatabaseAuthentication)
    output <- restore_db_cluster_from_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Restores a DB cluster to an arbitrary point in time
#'
#' Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before `LatestRestorableTime` for up to `BackupRetentionPeriod` days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.
#' 
#' This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the CreateDBInstance action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in `DBClusterIdentifier`. You can create DB instances only after the `RestoreDBClusterToPointInTime` action has completed and the DB cluster is available.
#'
#' @param DBClusterIdentifier The name of the new DB cluster to be created.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 letters, numbers, or hyphens
#' 
#' -   First character must be a letter
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens
#' @param SourceDBClusterIdentifier The identifier of the source DB cluster from which to restore.
#' 
#' Constraints:
#' 
#' -   Must match the identifier of an existing DBCluster.
#' @param RestoreType The type of restore to be performed. You can specify one of the following values:
#' 
#' -   `full-copy` - The new DB cluster is restored as a full copy of the source DB cluster.
#' 
#' -   `copy-on-write` - The new DB cluster is restored as a clone of the source DB cluster.
#' 
#' Constraints: You can\'t specify `copy-on-write` if the engine version of the source DB cluster is earlier than 1.11.
#' 
#' If you don\'t specify a `RestoreType` value, then the new DB cluster is restored as a full copy of the source DB cluster.
#' @param RestoreToTime The date and time to restore the DB cluster to.
#' 
#' Valid Values: Value must be a time in Universal Coordinated Time (UTC) format
#' 
#' Constraints:
#' 
#' -   Must be before the latest restorable time for the DB instance
#' 
#' -   Must be specified if `UseLatestRestorableTime` parameter is not provided
#' 
#' -   Cannot be specified if `UseLatestRestorableTime` parameter is true
#' 
#' -   Cannot be specified if `RestoreType` parameter is `copy-on-write`
#' 
#' Example: `2015-03-07T23:45:00Z`
#' @param UseLatestRestorableTime A value that is set to `true` to restore the DB cluster to the latest restorable backup time, and `false` otherwise.
#' 
#' Default: `false`
#' 
#' Constraints: Cannot be specified if `RestoreToTime` parameter is provided.
#' @param Port The port number on which the new DB cluster accepts connections.
#' 
#' Constraints: Value must be `1150-65535`
#' 
#' Default: The same port as the original DB cluster.
#' @param DBSubnetGroupName The DB subnet group name to use for the new DB cluster.
#' 
#' Constraints: If supplied, must match the name of an existing DBSubnetGroup.
#' 
#' Example: `mySubnetgroup`
#' @param OptionGroupName The name of the option group for the new DB cluster.
#' @param VpcSecurityGroupIds A list of VPC security groups that the new DB cluster belongs to.
#' @param Tags 
#' @param KmsKeyId The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.
#' 
#' The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.
#' 
#' You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the KMS key identified by the `KmsKeyId` parameter.
#' 
#' If you do not specify a value for the `KmsKeyId` parameter, then the following will occur:
#' 
#' -   If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.
#' 
#' -   If the DB cluster is not encrypted, then the restored DB cluster is not encrypted.
#' 
#' If `DBClusterIdentifier` refers to a DB cluster that is not encrypted, then the restore request is rejected.
#' @param EnableIAMDatabaseAuthentication True to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts, and otherwise false.
#' 
#' Default: `false`
#'
#' @examples
#'
#' @export
restore_db_cluster_to_point_in_time <- function (DBClusterIdentifier, 
    SourceDBClusterIdentifier, RestoreType = NULL, RestoreToTime = NULL, 
    UseLatestRestorableTime = NULL, Port = NULL, DBSubnetGroupName = NULL, 
    OptionGroupName = NULL, VpcSecurityGroupIds = NULL, Tags = NULL, 
    KmsKeyId = NULL, EnableIAMDatabaseAuthentication = NULL) 
{
    op <- Operation(name = "RestoreDBClusterToPointInTime", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- restore_db_cluster_to_point_in_time_input(DBClusterIdentifier = DBClusterIdentifier, 
        SourceDBClusterIdentifier = SourceDBClusterIdentifier, 
        RestoreType = RestoreType, RestoreToTime = RestoreToTime, 
        UseLatestRestorableTime = UseLatestRestorableTime, Port = Port, 
        DBSubnetGroupName = DBSubnetGroupName, OptionGroupName = OptionGroupName, 
        VpcSecurityGroupIds = VpcSecurityGroupIds, Tags = Tags, 
        KmsKeyId = KmsKeyId, EnableIAMDatabaseAuthentication = EnableIAMDatabaseAuthentication)
    output <- restore_db_cluster_to_point_in_time_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
