#' Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task
#'
#' Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be added to. AWS DMS resources include a replication instance, endpoint, and a replication task.
#' @param Tags The tag to be assigned to the DMS resource.
#'
#' @examples
#' # Adds metadata tags to an AWS DMS resource, including replication
#' # instance, endpoint, security group, and migration task. These tags can
#' # also be used with cost allocation reporting to track cost associated
#' # with AWS DMS resources, or used in a Condition statement in an IAM
#' # policy for AWS DMS.
#' add_tags_to_resource(
#'   ResourceArn = "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
#'   Tags = list(
#'     list(
#'       Key = "Acount",
#'       Value = "1633456"
#'     )
#'   )
#' )
#'
#' @export
add_tags_to_resource <- function (ResourceArn, Tags) 
{
    op <- Operation(name = "AddTagsToResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- add_tags_to_resource_input(ResourceArn = ResourceArn, 
        Tags = Tags)
    output <- add_tags_to_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an endpoint using the provided settings
#'
#' Creates an endpoint using the provided settings.
#'
#' @param EndpointIdentifier The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.
#' @param EndpointType The type of endpoint.
#' @param EngineName The type of engine for the endpoint. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, dynamodb, mongodb, and sqlserver.
#' @param Username The user name to be used to login to the endpoint database.
#' @param Password The password to be used to login to the endpoint database.
#' @param ServerName The name of the server where the endpoint database resides.
#' @param Port The port used by the endpoint database.
#' @param DatabaseName The name of the endpoint database.
#' @param ExtraConnectionAttributes Additional attributes associated with the connection.
#' @param KmsKeyId The KMS key identifier that will be used to encrypt the connection parameters. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
#' @param Tags Tags to be added to the endpoint.
#' @param CertificateArn The Amazon Resource Name (ARN) for the certificate.
#' @param SslMode The SSL mode to use for the SSL connection.
#' 
#' SSL mode can be one of four values: none, require, verify-ca, verify-full.
#' 
#' The default value is none.
#' @param ServiceAccessRoleArn The Amazon Resource Name (ARN) for the service access role you want to use to create the endpoint.
#' @param ExternalTableDefinition The external table definition.
#' @param DynamoDbSettings Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the **Using Object Mapping to Migrate Data to DynamoDB** section at [Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html).
#' @param S3Settings Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see the **Extra Connection Attributes** section at [Using Amazon S3 as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html).
#' @param DmsTransferSettings The settings in JSON format for the DMS Transfer type source endpoint.
#' 
#' Attributes include:
#' 
#' -   serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.
#' 
#' -   bucketName - The name of the S3 bucket to use.
#' 
#' -   compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.
#' 
#' Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string
#' 
#' JSON syntax:
#' 
#' { \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"\|\"gzip\" }
#' @param MongoDbSettings Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the **Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service** section at [Using MongoDB as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html).
#'
#' @examples
#' # Creates an endpoint using the provided settings.
#' create_endpoint(
#'   CertificateArn = "",
#'   DatabaseName = "testdb",
#'   EndpointIdentifier = "test-endpoint-1",
#'   EndpointType = "source",
#'   EngineName = "mysql",
#'   ExtraConnectionAttributes = "",
#'   KmsKeyId = "arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd",
#'   Password = "pasword",
#'   Port = 3306L,
#'   ServerName = "mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com",
#'   SslMode = "require",
#'   Tags = list(
#'     list(
#'       Key = "Acount",
#'       Value = "143327655"
#'     )
#'   ),
#'   Username = "username"
#' )
#'
#' @export
create_endpoint <- function (EndpointIdentifier, EndpointType, 
    EngineName, Username = NULL, Password = NULL, ServerName = NULL, 
    Port = NULL, DatabaseName = NULL, ExtraConnectionAttributes = NULL, 
    KmsKeyId = NULL, Tags = NULL, CertificateArn = NULL, SslMode = NULL, 
    ServiceAccessRoleArn = NULL, ExternalTableDefinition = NULL, 
    DynamoDbSettings = NULL, S3Settings = NULL, DmsTransferSettings = NULL, 
    MongoDbSettings = NULL) 
{
    op <- Operation(name = "CreateEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_endpoint_input(EndpointIdentifier = EndpointIdentifier, 
        EndpointType = EndpointType, EngineName = EngineName, 
        Username = Username, Password = Password, ServerName = ServerName, 
        Port = Port, DatabaseName = DatabaseName, ExtraConnectionAttributes = ExtraConnectionAttributes, 
        KmsKeyId = KmsKeyId, Tags = Tags, CertificateArn = CertificateArn, 
        SslMode = SslMode, ServiceAccessRoleArn = ServiceAccessRoleArn, 
        ExternalTableDefinition = ExternalTableDefinition, DynamoDbSettings = DynamoDbSettings, 
        S3Settings = S3Settings, DmsTransferSettings = DmsTransferSettings, 
        MongoDbSettings = MongoDbSettings)
    output <- create_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an AWS DMS event notification subscription
#'
#' Creates an AWS DMS event notification subscription.
#' 
#' You can specify the type of source (`SourceType`) you want to be notified of, provide a list of AWS DMS source IDs (`SourceIds`) that triggers the events, and provide a list of event categories (`EventCategories`) for events you want to be notified of. If you specify both the `SourceType` and `SourceIds`, such as `SourceType = replication-instance` and `SourceIdentifier = my-replinstance`, you will be notified of all the replication instance events for the specified source. If you specify a `SourceType` but don\'t specify a `SourceIdentifier`, you receive notice of the events for that source type for all your AWS DMS sources. If you don\'t specify either `SourceType` nor `SourceIdentifier`, you will be notified of events generated from all AWS DMS sources belonging to your customer account.
#' 
#' For more information about AWS DMS events, see [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the AWS Database MIgration Service User Guide.
#'
#' @param SubscriptionName The name of the AWS DMS event notification subscription.
#' 
#' Constraints: The name must be less than 255 characters.
#' @param SnsTopicArn The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
#' @param SourceType The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to `replication-instance`. If this value is not specified, all events are returned.
#' 
#' Valid values: replication-instance \| migration-task
#' @param EventCategories A list of event categories for a source type that you want to subscribe to. You can see a list of the categories for a given source type by calling the **DescribeEventCategories** action or in the topic [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the AWS Database Migration Service User Guide.
#' @param SourceIds The list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it cannot end with a hyphen or contain two consecutive hyphens.
#' @param Enabled A Boolean value; set to **true** to activate the subscription, or set to **false** to create the subscription but not activate it.
#' @param Tags A tag to be attached to the event subscription.
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

#' Creates the replication instance using the specified parameters
#'
#' Creates the replication instance using the specified parameters.
#'
#' @param ReplicationInstanceIdentifier The replication instance identifier. This parameter is stored as a lowercase string.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 63 alphanumeric characters or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' 
#' Example: `myrepinstance`
#' @param ReplicationInstanceClass The compute and memory capacity of the replication instance as specified by the replication instance class.
#' 
#' Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge `
#' @param AllocatedStorage The amount of storage (in gigabytes) to be initially allocated for the replication instance.
#' @param VpcSecurityGroupIds Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance.
#' @param AvailabilityZone The EC2 Availability Zone that the replication instance will be created in.
#' 
#' Default: A random, system-chosen Availability Zone in the endpoint\'s region.
#' 
#' Example: `us-east-1d`
#' @param ReplicationSubnetGroupIdentifier A subnet group to associate with the replication instance.
#' @param PreferredMaintenanceWindow The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
#' 
#' Format: `ddd:hh24:mi-ddd:hh24:mi`
#' 
#' Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.
#' 
#' Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
#' 
#' Constraints: Minimum 30-minute window.
#' @param MultiAZ Specifies if the replication instance is a Multi-AZ deployment. You cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter is set to `true`.
#' @param EngineVersion The engine version number of the replication instance.
#' @param AutoMinorVersionUpgrade Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
#' 
#' Default: `true`
#' @param Tags Tags to be associated with the replication instance.
#' @param KmsKeyId The KMS key identifier that will be used to encrypt the content on the replication instance. If you do not specify a value for the KmsKeyId parameter, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
#' @param PubliclyAccessible Specifies the accessibility options for the replication instance. A value of `true` represents an instance with a public IP address. A value of `false` represents an instance with a private IP address. The default value is `true`.
#'
#' @examples
#' # Creates the replication instance using the specified parameters.
#' create_replication_instance(
#'   AllocatedStorage = 123L,
#'   AutoMinorVersionUpgrade = TRUE,
#'   AvailabilityZone = "",
#'   EngineVersion = "",
#'   KmsKeyId = "",
#'   MultiAZ = TRUE,
#'   PreferredMaintenanceWindow = "",
#'   PubliclyAccessible = TRUE,
#'   ReplicationInstanceClass = "",
#'   ReplicationInstanceIdentifier = "",
#'   ReplicationSubnetGroupIdentifier = "",
#'   Tags = list(
#'     list(
#'       Key = "string",
#'       Value = "string"
#'     )
#'   ),
#'   VpcSecurityGroupIds = list()
#' )
#'
#' @export
create_replication_instance <- function (ReplicationInstanceIdentifier, 
    ReplicationInstanceClass, AllocatedStorage = NULL, VpcSecurityGroupIds = NULL, 
    AvailabilityZone = NULL, ReplicationSubnetGroupIdentifier = NULL, 
    PreferredMaintenanceWindow = NULL, MultiAZ = NULL, EngineVersion = NULL, 
    AutoMinorVersionUpgrade = NULL, Tags = NULL, KmsKeyId = NULL, 
    PubliclyAccessible = NULL) 
{
    op <- Operation(name = "CreateReplicationInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_replication_instance_input(ReplicationInstanceIdentifier = ReplicationInstanceIdentifier, 
        ReplicationInstanceClass = ReplicationInstanceClass, 
        AllocatedStorage = AllocatedStorage, VpcSecurityGroupIds = VpcSecurityGroupIds, 
        AvailabilityZone = AvailabilityZone, ReplicationSubnetGroupIdentifier = ReplicationSubnetGroupIdentifier, 
        PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        MultiAZ = MultiAZ, EngineVersion = EngineVersion, AutoMinorVersionUpgrade = AutoMinorVersionUpgrade, 
        Tags = Tags, KmsKeyId = KmsKeyId, PubliclyAccessible = PubliclyAccessible)
    output <- create_replication_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a replication subnet group given a list of the subnet IDs in a VPC
#'
#' Creates a replication subnet group given a list of the subnet IDs in a VPC.
#'
#' @param ReplicationSubnetGroupIdentifier The name for the replication subnet group. This value is stored as a lowercase string.
#' 
#' Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be \"default\".
#' 
#' Example: `mySubnetgroup`
#' @param ReplicationSubnetGroupDescription The description for the subnet group.
#' @param SubnetIds The EC2 subnet IDs for the subnet group.
#' @param Tags The tag to be assigned to the subnet group.
#'
#' @examples
#' # Creates a replication subnet group given a list of the subnet IDs in a
#' # VPC.
#' create_replication_subnet_group(
#'   ReplicationSubnetGroupDescription = "US West subnet group",
#'   ReplicationSubnetGroupIdentifier = "us-west-2ab-vpc-215ds366",
#'   SubnetIds = list(
#'     "subnet-e145356n",
#'     "subnet-58f79200"
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "Acount",
#'       Value = "145235"
#'     )
#'   )
#' )
#'
#' @export
create_replication_subnet_group <- function (ReplicationSubnetGroupIdentifier, 
    ReplicationSubnetGroupDescription, SubnetIds, Tags = NULL) 
{
    op <- Operation(name = "CreateReplicationSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_replication_subnet_group_input(ReplicationSubnetGroupIdentifier = ReplicationSubnetGroupIdentifier, 
        ReplicationSubnetGroupDescription = ReplicationSubnetGroupDescription, 
        SubnetIds = SubnetIds, Tags = Tags)
    output <- create_replication_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a replication task using the specified parameters
#'
#' Creates a replication task using the specified parameters.
#'
#' @param ReplicationTaskIdentifier The replication task identifier.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 255 alphanumeric characters or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' @param SourceEndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#' @param TargetEndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance.
#' @param MigrationType The migration type.
#' @param TableMappings When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with \"file://\". When working with the DMS API, provide the JSON as the parameter value.
#' 
#' For example, \--table-mappings file://mappingfile.json
#' @param ReplicationTaskSettings Settings for the task, such as target metadata settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html).
#' @param CdcStartTime Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.
#' 
#' Timestamp Example: \--cdc-start-time "2018-03-08T12:12:12"
#' @param CdcStartPosition Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.
#' 
#' The value can be in date, checkpoint, or LSN/SCN format.
#' 
#' Date Example: \--cdc-start-position "2018-03-08T12:12:12"
#' 
#' Checkpoint Example: \--cdc-start-position \"checkpoint:V1\#27\#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876\#0\#0\#\*\#0\#93\"
#' 
#' LSN Example: \--cdc-start-position "mysql-bin-changelog.000024:373"
#' @param CdcStopPosition Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.
#' 
#' Server time example: \--cdc-stop-position "server\_time:3018-02-09T12:12:12"
#' 
#' Commit time example: \--cdc-stop-position "commit\_time: 3018-02-09T12:12:12 "
#' @param Tags Tags to be added to the replication instance.
#'
#' @examples
#' # Creates a replication task using the specified parameters.
#' create_replication_task(
#'   CdcStartTime = "2016-12-14T18:25:43Z",
#'   MigrationType = "full-load",
#'   ReplicationInstanceArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
#'   ReplicationTaskIdentifier = "task1",
#'   ReplicationTaskSettings = "",
#'   SourceEndpointArn = "arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE",
#'   TableMappings = "file://mappingfile.json",
#'   Tags = list(
#'     list(
#'       Key = "Acount",
#'       Value = "24352226"
#'     )
#'   ),
#'   TargetEndpointArn = "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
#' )
#'
#' @export
create_replication_task <- function (ReplicationTaskIdentifier, 
    SourceEndpointArn, TargetEndpointArn, ReplicationInstanceArn, 
    MigrationType, TableMappings, ReplicationTaskSettings = NULL, 
    CdcStartTime = NULL, CdcStartPosition = NULL, CdcStopPosition = NULL, 
    Tags = NULL) 
{
    op <- Operation(name = "CreateReplicationTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_replication_task_input(ReplicationTaskIdentifier = ReplicationTaskIdentifier, 
        SourceEndpointArn = SourceEndpointArn, TargetEndpointArn = TargetEndpointArn, 
        ReplicationInstanceArn = ReplicationInstanceArn, MigrationType = MigrationType, 
        TableMappings = TableMappings, ReplicationTaskSettings = ReplicationTaskSettings, 
        CdcStartTime = CdcStartTime, CdcStartPosition = CdcStartPosition, 
        CdcStopPosition = CdcStopPosition, Tags = Tags)
    output <- create_replication_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified certificate
#'
#' Deletes the specified certificate.
#'
#' @param CertificateArn The Amazon Resource Name (ARN) of the deleted certificate.
#'
#' @examples
#' # Deletes the specified certificate.
#' delete_certificate(
#'   CertificateArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUSM457DE6XFJCJQ"
#' )
#'
#' @export
delete_certificate <- function (CertificateArn) 
{
    op <- Operation(name = "DeleteCertificate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_certificate_input(CertificateArn = CertificateArn)
    output <- delete_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified endpoint
#'
#' Deletes the specified endpoint.
#' 
#' All tasks associated with the endpoint must be deleted before you can delete the endpoint.
#'
#' @param EndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#'
#' @examples
#' # Deletes the specified endpoint. All tasks associated with the endpoint
#' # must be deleted before you can delete the endpoint.
#' # 
#' delete_endpoint(
#'   EndpointArn = "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM"
#' )
#'
#' @export
delete_endpoint <- function (EndpointArn) 
{
    op <- Operation(name = "DeleteEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_endpoint_input(EndpointArn = EndpointArn)
    output <- delete_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an AWS DMS event subscription
#'
#' Deletes an AWS DMS event subscription.
#'
#' @param SubscriptionName The name of the DMS event notification subscription to be deleted.
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

#' Deletes the specified replication instance
#'
#' Deletes the specified replication instance.
#' 
#' You must delete any migration tasks that are associated with the replication instance before you can delete it.
#'
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance to be deleted.
#'
#' @examples
#' # Deletes the specified replication instance. You must delete any
#' # migration tasks that are associated with the replication instance before
#' # you can delete it.
#' # 
#' # 
#' delete_replication_instance(
#'   ReplicationInstanceArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
#' )
#'
#' @export
delete_replication_instance <- function (ReplicationInstanceArn) 
{
    op <- Operation(name = "DeleteReplicationInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_replication_instance_input(ReplicationInstanceArn = ReplicationInstanceArn)
    output <- delete_replication_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a subnet group
#'
#' Deletes a subnet group.
#'
#' @param ReplicationSubnetGroupIdentifier The subnet group name of the replication instance.
#'
#' @examples
#' # Deletes a replication subnet group.
#' delete_replication_subnet_group(
#'   ReplicationSubnetGroupIdentifier = "us-west-2ab-vpc-215ds366"
#' )
#'
#' @export
delete_replication_subnet_group <- function (ReplicationSubnetGroupIdentifier) 
{
    op <- Operation(name = "DeleteReplicationSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_replication_subnet_group_input(ReplicationSubnetGroupIdentifier = ReplicationSubnetGroupIdentifier)
    output <- delete_replication_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified replication task
#'
#' Deletes the specified replication task.
#'
#' @param ReplicationTaskArn The Amazon Resource Name (ARN) of the replication task to be deleted.
#'
#' @examples
#' # Deletes the specified replication task.
#' delete_replication_task(
#'   ReplicationTaskArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
#' )
#'
#' @export
delete_replication_task <- function (ReplicationTaskArn) 
{
    op <- Operation(name = "DeleteReplicationTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_replication_task_input(ReplicationTaskArn = ReplicationTaskArn)
    output <- delete_replication_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all of the AWS DMS attributes for a customer account
#'
#' Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such as the number of replication instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota\'s maximum value.
#' 
#' This command does not take any parameters.
#'
#' @examples
#' # Lists all of the AWS DMS attributes for a customer account. The
#' # attributes include AWS DMS quotas for the account, such as the number of
#' # replication instances allowed. The description for a quota includes the
#' # quota name, current usage toward that quota, and the quota's maximum
#' # value. This operation does not take any parameters.
#' describe_account_attributes()
#'
#' @export
describe_account_attributes <- function () 
{
    op <- Operation(name = "DescribeAccountAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_account_attributes_input()
    output <- describe_account_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides a description of the certificate
#'
#' Provides a description of the certificate.
#'
#' @param Filters Filters applied to the certificate described in the form of key-value pairs.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 10
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Provides a description of the certificate.
#' describe_certificates(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_certificates <- function (Filters = NULL, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeCertificates", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_certificates_input(Filters = Filters, MaxRecords = MaxRecords, 
        Marker = Marker)
    output <- describe_certificates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the status of the connections that have been made between the replication instance and an endpoint
#'
#' Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
#'
#' @param Filters The filters applied to the connection.
#' 
#' Valid filter names: endpoint-arn \| replication-instance-arn
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Describes the status of the connections that have been made between the
#' # replication instance and an endpoint. Connections are created when you
#' # test an endpoint.
#' describe_connections(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_connections <- function (Filters = NULL, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeConnections", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_connections_input(Filters = Filters, MaxRecords = MaxRecords, 
        Marker = Marker)
    output <- describe_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the type of endpoints available
#'
#' Returns information about the type of endpoints available.
#'
#' @param Filters Filters applied to the describe action.
#' 
#' Valid filter names: engine-name \| endpoint-type
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns information about the type of endpoints available.
#' describe_endpoint_types(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_endpoint_types <- function (Filters = NULL, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeEndpointTypes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_endpoint_types_input(Filters = Filters, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_endpoint_types_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the endpoints for your account in the current region
#'
#' Returns information about the endpoints for your account in the current region.
#'
#' @param Filters Filters applied to the describe action.
#' 
#' Valid filter names: endpoint-arn \| endpoint-type \| endpoint-id \| engine-name
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns information about the endpoints for your account in the current
#' # region.
#' describe_endpoints(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_endpoints <- function (Filters = NULL, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeEndpoints", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_endpoints_input(Filters = Filters, MaxRecords = MaxRecords, 
        Marker = Marker)
    output <- describe_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists categories for all event source types, or, if specified, for a specified source type
#'
#' Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in the AWS Database Migration Service User Guide.
#'
#' @param SourceType The type of AWS DMS resource that generates events.
#' 
#' Valid values: replication-instance \| migration-task
#' @param Filters Filters applied to the action.
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

#' Lists all the event subscriptions for a customer account
#'
#' Lists all the event subscriptions for a customer account. The description of a subscription includes `SubscriptionName`, `SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`, `CreationTime`, and `Status`.
#' 
#' If you specify `SubscriptionName`, this action lists the description for that subscription.
#'
#' @param SubscriptionName The name of the AWS DMS event subscription to be described.
#' @param Filters Filters applied to the action.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
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

#' Lists events for a given source identifier and source type
#'
#' Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see [Working with Events and Notifications](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html).
#'
#' @param SourceIdentifier The identifier of the event source. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It cannot end with a hyphen or contain two consecutive hyphens.
#' @param SourceType The type of AWS DMS resource that generates events.
#' 
#' Valid values: replication-instance \| migration-task
#' @param StartTime The start time for the events to be listed.
#' @param EndTime The end time for the events to be listed.
#' @param Duration The duration of the events to be listed.
#' @param EventCategories A list of event categories for a source type that you want to subscribe to.
#' @param Filters Filters applied to the action.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
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

#' Returns information about the replication instance types that can be created in the specified region
#'
#' Returns information about the replication instance types that can be created in the specified region.
#'
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns information about the replication instance types that can be
#' # created in the specified region.
#' describe_orderable_replication_instances(
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_orderable_replication_instances <- function (MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeOrderableReplicationInstances", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_orderable_replication_instances_input(MaxRecords = MaxRecords, 
        Marker = Marker)
    output <- describe_orderable_replication_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the status of the RefreshSchemas operation
#'
#' Returns the status of the RefreshSchemas operation.
#'
#' @param EndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#'
#' @examples
#' # Returns the status of the refresh-schemas operation.
#' describe_refresh_schemas_status(
#'   EndpointArn = ""
#' )
#'
#' @export
describe_refresh_schemas_status <- function (EndpointArn) 
{
    op <- Operation(name = "DescribeRefreshSchemasStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_refresh_schemas_status_input(EndpointArn = EndpointArn)
    output <- describe_refresh_schemas_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the task logs for the specified task
#'
#' Returns information about the task logs for the specified task.
#'
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_replication_instance_task_logs <- function (ReplicationInstanceArn, 
    MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeReplicationInstanceTaskLogs", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_replication_instance_task_logs_input(ReplicationInstanceArn = ReplicationInstanceArn, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_replication_instance_task_logs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about replication instances for your account in the current region
#'
#' Returns information about replication instances for your account in the current region.
#'
#' @param Filters Filters applied to the describe action.
#' 
#' Valid filter names: replication-instance-arn \| replication-instance-id \| replication-instance-class \| engine-version
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns the status of the refresh-schemas operation.
#' describe_replication_instances(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_replication_instances <- function (Filters = NULL, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeReplicationInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_replication_instances_input(Filters = Filters, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_replication_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the replication subnet groups
#'
#' Returns information about the replication subnet groups.
#'
#' @param Filters Filters applied to the describe action.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns information about the replication subnet groups.
#' describe_replication_subnet_groups(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_replication_subnet_groups <- function (Filters = NULL, 
    MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeReplicationSubnetGroups", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_replication_subnet_groups_input(Filters = Filters, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_replication_subnet_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the task assessment results from Amazon S3
#'
#' Returns the task assessment results from Amazon S3. This action always returns the latest results.
#'
#' @param ReplicationTaskArn \- The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified the API will return only one result and ignore the values of the max-records and marker parameters.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#'
#' @export
describe_replication_task_assessment_results <- function (ReplicationTaskArn = NULL, 
    MaxRecords = NULL, Marker = NULL) 
{
    op <- Operation(name = "DescribeReplicationTaskAssessmentResults", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_replication_task_assessment_results_input(ReplicationTaskArn = ReplicationTaskArn, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_replication_task_assessment_results_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about replication tasks for your account in the current region
#'
#' Returns information about replication tasks for your account in the current region.
#'
#' @param Filters Filters applied to the describe action.
#' 
#' Valid filter names: replication-task-arn \| replication-task-id \| migration-type \| endpoint-arn \| replication-instance-arn
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns information about replication tasks for your account in the
#' # current region.
#' describe_replication_tasks(
#'   Filters = list(
#'     list(
#'       Name = "string",
#'       Values = list(
#'         "string",
#'         "string"
#'       )
#'     )
#'   ),
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_replication_tasks <- function (Filters = NULL, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeReplicationTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_replication_tasks_input(Filters = Filters, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_replication_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about the schema for the specified endpoint
#'
#' Returns information about the schema for the specified endpoint.
#'
#' @param EndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 100.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#'
#' @examples
#' # Returns information about the schema for the specified endpoint.
#' describe_schemas(
#'   EndpointArn = "",
#'   Marker = "",
#'   MaxRecords = 123L
#' )
#'
#' @export
describe_schemas <- function (EndpointArn, MaxRecords = NULL, 
    Marker = NULL) 
{
    op <- Operation(name = "DescribeSchemas", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_schemas_input(EndpointArn = EndpointArn, 
        MaxRecords = MaxRecords, Marker = Marker)
    output <- describe_schemas_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted
#'
#' Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.
#' 
#' Note that the \"last updated\" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
#'
#' @param ReplicationTaskArn The Amazon Resource Name (ARN) of the replication task.
#' @param MaxRecords The maximum number of records to include in the response. If more records exist than the specified `MaxRecords` value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
#' 
#' Default: 100
#' 
#' Constraints: Minimum 20, maximum 500.
#' @param Marker An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by `MaxRecords`.
#' @param Filters Filters applied to the describe table statistics action.
#' 
#' Valid filter names: schema-name \| table-name \| table-state
#' 
#' A combination of filters creates an AND condition where each record matches all specified filters.
#'
#' @examples
#' # Returns table statistics on the database migration task, including table
#' # name, rows inserted, rows updated, and rows deleted.
#' describe_table_statistics(
#'   Marker = "",
#'   MaxRecords = 123L,
#'   ReplicationTaskArn = ""
#' )
#'
#' @export
describe_table_statistics <- function (ReplicationTaskArn, MaxRecords = NULL, 
    Marker = NULL, Filters = NULL) 
{
    op <- Operation(name = "DescribeTableStatistics", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_table_statistics_input(ReplicationTaskArn = ReplicationTaskArn, 
        MaxRecords = MaxRecords, Marker = Marker, Filters = Filters)
    output <- describe_table_statistics_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Uploads the specified certificate
#'
#' Uploads the specified certificate.
#'
#' @param CertificateIdentifier The customer-assigned name of the certificate. Valid characters are A-z and 0-9.
#' @param CertificatePem The contents of the .pem X.509 certificate file for the certificate.
#' @param CertificateWallet The location of the imported Oracle Wallet certificate for use with SSL.
#' @param Tags The tags associated with the certificate.
#'
#' @examples
#' # Uploads the specified certificate.
#' import_certificate(
#'   CertificateIdentifier = "",
#'   CertificatePem = ""
#' )
#'
#' @export
import_certificate <- function (CertificateIdentifier, CertificatePem = NULL, 
    CertificateWallet = NULL, Tags = NULL) 
{
    op <- Operation(name = "ImportCertificate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_certificate_input(CertificateIdentifier = CertificateIdentifier, 
        CertificatePem = CertificatePem, CertificateWallet = CertificateWallet, 
        Tags = Tags)
    output <- import_certificate_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all tags for an AWS DMS resource
#'
#' Lists all tags for an AWS DMS resource.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource.
#'
#' @examples
#' # Lists all tags for an AWS DMS resource.
#' list_tags_for_resource(
#'   ResourceArn = ""
#' )
#'
#' @export
list_tags_for_resource <- function (ResourceArn) 
{
    op <- Operation(name = "ListTagsForResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_for_resource_input(ResourceArn = ResourceArn)
    output <- list_tags_for_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified endpoint
#'
#' Modifies the specified endpoint.
#'
#' @param EndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#' @param EndpointIdentifier The database endpoint identifier. Identifiers must begin with a letter; must contain only ASCII letters, digits, and hyphens; and must not end with a hyphen or contain two consecutive hyphens.
#' @param EndpointType The type of endpoint.
#' @param EngineName The type of engine for the endpoint. Valid values, depending on the EndPointType, include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and sqlserver.
#' @param Username The user name to be used to login to the endpoint database.
#' @param Password The password to be used to login to the endpoint database.
#' @param ServerName The name of the server where the endpoint database resides.
#' @param Port The port used by the endpoint database.
#' @param DatabaseName The name of the endpoint database.
#' @param ExtraConnectionAttributes Additional attributes associated with the connection. To reset this parameter, pass the empty string (\"\") as an argument.
#' @param CertificateArn The Amazon Resource Name (ARN) of the certificate used for SSL connection.
#' @param SslMode The SSL mode to be used.
#' 
#' SSL mode can be one of four values: none, require, verify-ca, verify-full.
#' 
#' The default value is none.
#' @param ServiceAccessRoleArn The Amazon Resource Name (ARN) for the service access role you want to use to modify the endpoint.
#' @param ExternalTableDefinition The external table definition.
#' @param DynamoDbSettings Settings in JSON format for the target Amazon DynamoDB endpoint. For more information about the available settings, see the **Using Object Mapping to Migrate Data to DynamoDB** section at [Using an Amazon DynamoDB Database as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html).
#' @param S3Settings Settings in JSON format for the target S3 endpoint. For more information about the available settings, see the **Extra Connection Attributes** section at [Using Amazon S3 as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html).
#' @param DmsTransferSettings The settings in JSON format for the DMS Transfer type source endpoint.
#' 
#' Attributes include:
#' 
#' -   serviceAccessRoleArn - The IAM role that has permission to access the Amazon S3 bucket.
#' 
#' -   BucketName - The name of the S3 bucket to use.
#' 
#' -   compressionType - An optional parameter to use GZIP to compress the target files. Set to NONE (the default) or do not use to leave the files uncompressed.
#' 
#' Shorthand syntax: ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string
#' 
#' JSON syntax:
#' 
#' { \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"\|\"gzip\" }
#' @param MongoDbSettings Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the **Configuration Properties When Using MongoDB as a Source for AWS Database Migration Service** section at [Using Amazon S3 as a Target for AWS Database Migration Service](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html).
#'
#' @examples
#' # Modifies the specified endpoint.
#' modify_endpoint(
#'   CertificateArn = "",
#'   DatabaseName = "",
#'   EndpointArn = "",
#'   EndpointIdentifier = "",
#'   EndpointType = "source",
#'   EngineName = "",
#'   ExtraConnectionAttributes = "",
#'   Password = "",
#'   Port = 123L,
#'   ServerName = "",
#'   SslMode = "require",
#'   Username = ""
#' )
#'
#' @export
modify_endpoint <- function (EndpointArn, EndpointIdentifier = NULL, 
    EndpointType = NULL, EngineName = NULL, Username = NULL, 
    Password = NULL, ServerName = NULL, Port = NULL, DatabaseName = NULL, 
    ExtraConnectionAttributes = NULL, CertificateArn = NULL, 
    SslMode = NULL, ServiceAccessRoleArn = NULL, ExternalTableDefinition = NULL, 
    DynamoDbSettings = NULL, S3Settings = NULL, DmsTransferSettings = NULL, 
    MongoDbSettings = NULL) 
{
    op <- Operation(name = "ModifyEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_endpoint_input(EndpointArn = EndpointArn, 
        EndpointIdentifier = EndpointIdentifier, EndpointType = EndpointType, 
        EngineName = EngineName, Username = Username, Password = Password, 
        ServerName = ServerName, Port = Port, DatabaseName = DatabaseName, 
        ExtraConnectionAttributes = ExtraConnectionAttributes, 
        CertificateArn = CertificateArn, SslMode = SslMode, ServiceAccessRoleArn = ServiceAccessRoleArn, 
        ExternalTableDefinition = ExternalTableDefinition, DynamoDbSettings = DynamoDbSettings, 
        S3Settings = S3Settings, DmsTransferSettings = DmsTransferSettings, 
        MongoDbSettings = MongoDbSettings)
    output <- modify_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies an existing AWS DMS event notification subscription
#'
#' Modifies an existing AWS DMS event notification subscription.
#'
#' @param SubscriptionName The name of the AWS DMS event notification subscription to be modified.
#' @param SnsTopicArn The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
#' @param SourceType The type of AWS DMS resource that generates the events you want to subscribe to.
#' 
#' Valid values: replication-instance \| migration-task
#' @param EventCategories A list of event categories for a source type that you want to subscribe to. Use the `DescribeEventCategories` action to see a list of event categories.
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

#' Modifies the replication instance to apply new settings
#'
#' Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request.
#' 
#' Some settings are applied during the maintenance window.
#'
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance.
#' @param AllocatedStorage The amount of storage (in gigabytes) to be allocated for the replication instance.
#' @param ApplyImmediately Indicates whether the changes should be applied immediately or during the next maintenance window.
#' @param ReplicationInstanceClass The compute and memory capacity of the replication instance.
#' 
#' Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium | dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge | dms.c4.4xlarge `
#' @param VpcSecurityGroupIds Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance.
#' @param PreferredMaintenanceWindow The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.
#' 
#' Default: Uses existing setting
#' 
#' Format: ddd:hh24:mi-ddd:hh24:mi
#' 
#' Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
#' 
#' Constraints: Must be at least 30 minutes
#' @param MultiAZ Specifies if the replication instance is a Multi-AZ deployment. You cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter is set to `true`.
#' @param EngineVersion The engine version number of the replication instance.
#' @param AllowMajorVersionUpgrade Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible.
#' 
#' Constraints: This parameter must be set to true when specifying a value for the `EngineVersion` parameter that is a different major version than the replication instance\'s current version.
#' @param AutoMinorVersionUpgrade Indicates that minor version upgrades will be applied automatically to the replication instance during the maintenance window. Changing this parameter does not result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage will result if this parameter is set to `true` during the maintenance window, and a newer minor version is available, and AWS DMS has enabled auto patching for that engine version.
#' @param ReplicationInstanceIdentifier The replication instance identifier. This parameter is stored as a lowercase string.
#'
#' @examples
#' # Modifies the replication instance to apply new settings. You can change
#' # one or more parameters by specifying these parameters and the new values
#' # in the request. Some settings are applied during the maintenance window.
#' modify_replication_instance(
#'   AllocatedStorage = 123L,
#'   AllowMajorVersionUpgrade = TRUE,
#'   ApplyImmediately = TRUE,
#'   AutoMinorVersionUpgrade = TRUE,
#'   EngineVersion = "1.5.0",
#'   MultiAZ = TRUE,
#'   PreferredMaintenanceWindow = "sun:06:00-sun:14:00",
#'   ReplicationInstanceArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
#'   ReplicationInstanceClass = "dms.t2.micro",
#'   ReplicationInstanceIdentifier = "test-rep-1",
#'   VpcSecurityGroupIds = list()
#' )
#'
#' @export
modify_replication_instance <- function (ReplicationInstanceArn, 
    AllocatedStorage = NULL, ApplyImmediately = NULL, ReplicationInstanceClass = NULL, 
    VpcSecurityGroupIds = NULL, PreferredMaintenanceWindow = NULL, 
    MultiAZ = NULL, EngineVersion = NULL, AllowMajorVersionUpgrade = NULL, 
    AutoMinorVersionUpgrade = NULL, ReplicationInstanceIdentifier = NULL) 
{
    op <- Operation(name = "ModifyReplicationInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_replication_instance_input(ReplicationInstanceArn = ReplicationInstanceArn, 
        AllocatedStorage = AllocatedStorage, ApplyImmediately = ApplyImmediately, 
        ReplicationInstanceClass = ReplicationInstanceClass, 
        VpcSecurityGroupIds = VpcSecurityGroupIds, PreferredMaintenanceWindow = PreferredMaintenanceWindow, 
        MultiAZ = MultiAZ, EngineVersion = EngineVersion, AllowMajorVersionUpgrade = AllowMajorVersionUpgrade, 
        AutoMinorVersionUpgrade = AutoMinorVersionUpgrade, ReplicationInstanceIdentifier = ReplicationInstanceIdentifier)
    output <- modify_replication_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the settings for the specified replication subnet group
#'
#' Modifies the settings for the specified replication subnet group.
#'
#' @param ReplicationSubnetGroupIdentifier The name of the replication instance subnet group.
#' @param SubnetIds A list of subnet IDs.
#' @param ReplicationSubnetGroupDescription The description of the replication instance subnet group.
#'
#' @examples
#' # Modifies the settings for the specified replication subnet group.
#' modify_replication_subnet_group(
#'   ReplicationSubnetGroupDescription = "",
#'   ReplicationSubnetGroupIdentifier = "",
#'   SubnetIds = list()
#' )
#'
#' @export
modify_replication_subnet_group <- function (ReplicationSubnetGroupIdentifier, 
    SubnetIds, ReplicationSubnetGroupDescription = NULL) 
{
    op <- Operation(name = "ModifyReplicationSubnetGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_replication_subnet_group_input(ReplicationSubnetGroupIdentifier = ReplicationSubnetGroupIdentifier, 
        SubnetIds = SubnetIds, ReplicationSubnetGroupDescription = ReplicationSubnetGroupDescription)
    output <- modify_replication_subnet_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified replication task
#'
#' Modifies the specified replication task.
#' 
#' You can\'t modify the task endpoints. The task must be stopped before you can modify it.
#' 
#' For more information about AWS DMS tasks, see the AWS DMS user guide at [Working with Migration Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)
#'
#' @param ReplicationTaskArn The Amazon Resource Name (ARN) of the replication task.
#' @param ReplicationTaskIdentifier The replication task identifier.
#' 
#' Constraints:
#' 
#' -   Must contain from 1 to 255 alphanumeric characters or hyphens.
#' 
#' -   First character must be a letter.
#' 
#' -   Cannot end with a hyphen or contain two consecutive hyphens.
#' @param MigrationType The migration type.
#' 
#' Valid values: full-load \| cdc \| full-load-and-cdc
#' @param TableMappings When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with \"file://\". When working with the DMS API, provide the JSON as the parameter value.
#' 
#' For example, \--table-mappings file://mappingfile.json
#' @param ReplicationTaskSettings JSON file that contains settings for the task, such as target metadata settings.
#' @param CdcStartTime Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.
#' 
#' Timestamp Example: \--cdc-start-time "2018-03-08T12:12:12"
#' @param CdcStartPosition Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.
#' 
#' The value can be in date, checkpoint, or LSN/SCN format.
#' 
#' Date Example: \--cdc-start-position "2018-03-08T12:12:12"
#' 
#' Checkpoint Example: \--cdc-start-position \"checkpoint:V1\#27\#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876\#0\#0\#\*\#0\#93\"
#' 
#' LSN Example: \--cdc-start-position "mysql-bin-changelog.000024:373"
#' @param CdcStopPosition Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.
#' 
#' Server time example: \--cdc-stop-position "server\_time:3018-02-09T12:12:12"
#' 
#' Commit time example: \--cdc-stop-position "commit\_time: 3018-02-09T12:12:12 "
#'
#' @examples
#'
#' @export
modify_replication_task <- function (ReplicationTaskArn, ReplicationTaskIdentifier = NULL, 
    MigrationType = NULL, TableMappings = NULL, ReplicationTaskSettings = NULL, 
    CdcStartTime = NULL, CdcStartPosition = NULL, CdcStopPosition = NULL) 
{
    op <- Operation(name = "ModifyReplicationTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_replication_task_input(ReplicationTaskArn = ReplicationTaskArn, 
        ReplicationTaskIdentifier = ReplicationTaskIdentifier, 
        MigrationType = MigrationType, TableMappings = TableMappings, 
        ReplicationTaskSettings = ReplicationTaskSettings, CdcStartTime = CdcStartTime, 
        CdcStartPosition = CdcStartPosition, CdcStopPosition = CdcStopPosition)
    output <- modify_replication_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reboots a replication instance
#'
#' Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.
#'
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance.
#' @param ForceFailover If this parameter is `true`, the reboot is conducted through a Multi-AZ failover. (If the instance isn\'t configured for Multi-AZ, then you can\'t specify `true`.)
#'
#' @examples
#'
#' @export
reboot_replication_instance <- function (ReplicationInstanceArn, 
    ForceFailover = NULL) 
{
    op <- Operation(name = "RebootReplicationInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reboot_replication_instance_input(ReplicationInstanceArn = ReplicationInstanceArn, 
        ForceFailover = ForceFailover)
    output <- reboot_replication_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Populates the schema for the specified endpoint
#'
#' Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.
#'
#' @param EndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance.
#'
#' @examples
#' # Populates the schema for the specified endpoint. This is an asynchronous
#' # operation and can take several minutes. You can check the status of this
#' # operation by calling the describe-refresh-schemas-status operation.
#' refresh_schemas(
#'   EndpointArn = "",
#'   ReplicationInstanceArn = ""
#' )
#'
#' @export
refresh_schemas <- function (EndpointArn, ReplicationInstanceArn) 
{
    op <- Operation(name = "RefreshSchemas", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- refresh_schemas_input(EndpointArn = EndpointArn, 
        ReplicationInstanceArn = ReplicationInstanceArn)
    output <- refresh_schemas_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reloads the target database table with the source data
#'
#' Reloads the target database table with the source data.
#'
#' @param ReplicationTaskArn The Amazon Resource Name (ARN) of the replication task.
#' @param TablesToReload The name and schema of the table to be reloaded.
#' @param ReloadOption Options for reload. Specify `data-reload` to reload the data and re-validate it if validation is enabled. Specify `validate-only` to re-validate the table. This option applies only when validation is enabled for the task.
#' 
#' Valid values: data-reload, validate-only
#' 
#' Default value is data-reload.
#'
#' @examples
#'
#' @export
reload_tables <- function (ReplicationTaskArn, TablesToReload, 
    ReloadOption = NULL) 
{
    op <- Operation(name = "ReloadTables", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reload_tables_input(ReplicationTaskArn = ReplicationTaskArn, 
        TablesToReload = TablesToReload, ReloadOption = ReloadOption)
    output <- reload_tables_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes metadata tags from a DMS resource
#'
#' Removes metadata tags from a DMS resource.
#'
#' @param ResourceArn \>The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to be removed from.
#' @param TagKeys The tag key (name) of the tag to be removed.
#'
#' @examples
#' # Removes metadata tags from an AWS DMS resource.
#' remove_tags_from_resource(
#'   ResourceArn = "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E",
#'   TagKeys = list()
#' )
#'
#' @export
remove_tags_from_resource <- function (ResourceArn, TagKeys) 
{
    op <- Operation(name = "RemoveTagsFromResource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- remove_tags_from_resource_input(ResourceArn = ResourceArn, 
        TagKeys = TagKeys)
    output <- remove_tags_from_resource_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts the replication task
#'
#' Starts the replication task.
#' 
#' For more information about AWS DMS tasks, see the AWS DMS user guide at [Working with Migration Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)
#'
#' @param ReplicationTaskArn The Amazon Resource Name (ARN) of the replication task to be started.
#' @param StartReplicationTaskType The type of replication task.
#' @param CdcStartTime Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.
#' 
#' Timestamp Example: \--cdc-start-time "2018-03-08T12:12:12"
#' @param CdcStartPosition Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.
#' 
#' The value can be in date, checkpoint, or LSN/SCN format.
#' 
#' Date Example: \--cdc-start-position "2018-03-08T12:12:12"
#' 
#' Checkpoint Example: \--cdc-start-position \"checkpoint:V1\#27\#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876\#0\#0\#\*\#0\#93\"
#' 
#' LSN Example: \--cdc-start-position "mysql-bin-changelog.000024:373"
#' @param CdcStopPosition Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.
#' 
#' Server time example: \--cdc-stop-position "server\_time:3018-02-09T12:12:12"
#' 
#' Commit time example: \--cdc-stop-position "commit\_time: 3018-02-09T12:12:12 "
#'
#' @examples
#' # Starts the replication task.
#' start_replication_task(
#'   CdcStartTime = "2016-12-14T13:33:20Z",
#'   ReplicationTaskArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ",
#'   StartReplicationTaskType = "start-replication"
#' )
#'
#' @export
start_replication_task <- function (ReplicationTaskArn, StartReplicationTaskType, 
    CdcStartTime = NULL, CdcStartPosition = NULL, CdcStopPosition = NULL) 
{
    op <- Operation(name = "StartReplicationTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_replication_task_input(ReplicationTaskArn = ReplicationTaskArn, 
        StartReplicationTaskType = StartReplicationTaskType, 
        CdcStartTime = CdcStartTime, CdcStartPosition = CdcStartPosition, 
        CdcStopPosition = CdcStopPosition)
    output <- start_replication_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts the replication task assessment for unsupported data types in the source database
#'
#' Starts the replication task assessment for unsupported data types in the source database.
#'
#' @param ReplicationTaskArn The Amazon Resource Name (ARN) of the replication task.
#'
#' @examples
#'
#' @export
start_replication_task_assessment <- function (ReplicationTaskArn) 
{
    op <- Operation(name = "StartReplicationTaskAssessment", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- start_replication_task_assessment_input(ReplicationTaskArn = ReplicationTaskArn)
    output <- start_replication_task_assessment_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops the replication task
#'
#' Stops the replication task.
#'
#' @param ReplicationTaskArn The Amazon Resource Name(ARN) of the replication task to be stopped.
#'
#' @examples
#' # Stops the replication task.
#' stop_replication_task(
#'   ReplicationTaskArn = "arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E"
#' )
#'
#' @export
stop_replication_task <- function (ReplicationTaskArn) 
{
    op <- Operation(name = "StopReplicationTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_replication_task_input(ReplicationTaskArn = ReplicationTaskArn)
    output <- stop_replication_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Tests the connection between the replication instance and the endpoint
#'
#' Tests the connection between the replication instance and the endpoint.
#'
#' @param ReplicationInstanceArn The Amazon Resource Name (ARN) of the replication instance.
#' @param EndpointArn The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
#'
#' @examples
#' # Tests the connection between the replication instance and the endpoint.
#' test_connection(
#'   EndpointArn = "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
#'   ReplicationInstanceArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
#' )
#'
#' @export
test_connection <- function (ReplicationInstanceArn, EndpointArn) 
{
    op <- Operation(name = "TestConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- test_connection_input(ReplicationInstanceArn = ReplicationInstanceArn, 
        EndpointArn = EndpointArn)
    output <- test_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
