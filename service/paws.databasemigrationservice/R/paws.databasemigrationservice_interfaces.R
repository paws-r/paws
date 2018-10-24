add_tags_to_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "AddTagsToResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_to_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "AddTagsToResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineName = structure(logical(0), shape = "String", 
            type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
        ServerName = structure(logical(0), shape = "String", 
            type = "string"), Port = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), ExtraConnectionAttributes = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", type = "string"), Value = structure(logical(0), 
            shape = "String", type = "string")), shape = "Tag", 
            type = "structure")), shape = "TagList", type = "list"), 
        CertificateArn = structure(logical(0), shape = "String", 
            type = "string"), SslMode = structure(logical(0), 
            shape = "DmsSslModeValue", type = "string"), ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), DynamoDbSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DynamoDbSettings", 
            type = "structure"), S3Settings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), CsvRowDelimiter = structure(logical(0), 
            shape = "String", type = "string"), CsvDelimiter = structure(logical(0), 
            shape = "String", type = "string"), BucketFolder = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string"), CompressionType = structure(logical(0), 
            shape = "CompressionTypeValue", type = "string")), 
            shape = "S3Settings", type = "structure"), DmsTransferSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DmsTransferSettings", 
            type = "structure"), MongoDbSettings = structure(list(Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
            ServerName = structure(logical(0), shape = "String", 
                type = "string"), Port = structure(logical(0), 
                shape = "IntegerOptional", type = "integer"), 
            DatabaseName = structure(logical(0), shape = "String", 
                type = "string"), AuthType = structure(logical(0), 
                shape = "AuthTypeValue", type = "string"), AuthMechanism = structure(logical(0), 
                shape = "AuthMechanismValue", type = "string"), 
            NestingLevel = structure(logical(0), shape = "NestingLevelValue", 
                type = "string"), ExtractDocId = structure(logical(0), 
                shape = "String", type = "string"), DocsToInvestigate = structure(logical(0), 
                shape = "String", type = "string"), AuthSource = structure(logical(0), 
                shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "String", type = "string")), shape = "MongoDbSettings", 
            type = "structure")), shape = "CreateEndpointMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Endpoint = structure(list(EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineName = structure(logical(0), shape = "String", 
            type = "string"), EngineDisplayName = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), ServerName = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), ExtraConnectionAttributes = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EndpointArn = structure(logical(0), 
            shape = "String", type = "string"), CertificateArn = structure(logical(0), 
            shape = "String", type = "string"), SslMode = structure(logical(0), 
            shape = "DmsSslModeValue", type = "string"), ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), ExternalId = structure(logical(0), 
            shape = "String", type = "string"), DynamoDbSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DynamoDbSettings", 
            type = "structure"), S3Settings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), CsvRowDelimiter = structure(logical(0), 
            shape = "String", type = "string"), CsvDelimiter = structure(logical(0), 
            shape = "String", type = "string"), BucketFolder = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string"), CompressionType = structure(logical(0), 
            shape = "CompressionTypeValue", type = "string")), 
            shape = "S3Settings", type = "structure"), DmsTransferSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DmsTransferSettings", 
            type = "structure"), MongoDbSettings = structure(list(Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
            ServerName = structure(logical(0), shape = "String", 
                type = "string"), Port = structure(logical(0), 
                shape = "IntegerOptional", type = "integer"), 
            DatabaseName = structure(logical(0), shape = "String", 
                type = "string"), AuthType = structure(logical(0), 
                shape = "AuthTypeValue", type = "string"), AuthMechanism = structure(logical(0), 
                shape = "AuthMechanismValue", type = "string"), 
            NestingLevel = structure(logical(0), shape = "NestingLevelValue", 
                type = "string"), ExtractDocId = structure(logical(0), 
                shape = "String", type = "string"), DocsToInvestigate = structure(logical(0), 
                shape = "String", type = "string"), AuthSource = structure(logical(0), 
                shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "String", type = "string")), shape = "MongoDbSettings", 
            type = "structure")), shape = "Endpoint", type = "structure")), 
        shape = "CreateEndpointResponse", type = "structure")
    return(populate(args, shape))
}

create_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), SourceIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SourceIdsList", 
        type = "list"), Enabled = structure(logical(0), shape = "BooleanOptional", 
        type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "CreateEventSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_event_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SourceIdsList", 
        type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Enabled = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "EventSubscription", type = "structure")), 
        shape = "CreateEventSubscriptionResponse", type = "structure")
    return(populate(args, shape))
}

create_replication_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list"), KmsKeyId = structure(logical(0), 
        shape = "String", type = "string"), PubliclyAccessible = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "CreateReplicationInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_replication_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstance = structure(list(ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
        type = "structure")), shape = "VpcSecurityGroupMembershipList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "String", 
            type = "string"), PendingModifiedValues = structure(list(ReplicationInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationPendingModifiedValues", 
            type = "structure"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstancePublicIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePrivateIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePublicIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePublicIpAddressList", 
            type = "list"), ReplicationInstancePrivateIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePrivateIpAddressList", 
            type = "list"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), FreeUntil = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "ReplicationInstance", 
        type = "structure")), shape = "CreateReplicationInstanceResponse", 
        type = "structure")
    return(populate(args, shape))
}

create_replication_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SubnetIdentifierList", 
        type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "CreateReplicationSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_replication_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure")), 
        shape = "CreateReplicationSubnetGroupResponse", type = "structure")
    return(populate(args, shape))
}

create_replication_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), CdcStartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "CreateReplicationTaskMessage", 
        type = "structure")
    return(populate(args, shape))
}

create_replication_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTask = structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "CreateReplicationTaskResponse", type = "structure")
    return(populate(args, shape))
}

delete_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteCertificateMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(list(CertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), CertificateCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CertificatePem = structure(logical(0), 
        shape = "String", type = "string"), CertificateWallet = structure(logical(0), 
        shape = "CertificateWallet", type = "blob"), CertificateArn = structure(logical(0), 
        shape = "String", type = "string"), CertificateOwner = structure(logical(0), 
        shape = "String", type = "string"), ValidFromDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ValidToDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), SigningAlgorithm = structure(logical(0), 
        shape = "String", type = "string"), KeyLength = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "Certificate", 
        type = "structure")), shape = "DeleteCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteEndpointMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Endpoint = structure(list(EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineName = structure(logical(0), shape = "String", 
            type = "string"), EngineDisplayName = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), ServerName = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), ExtraConnectionAttributes = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EndpointArn = structure(logical(0), 
            shape = "String", type = "string"), CertificateArn = structure(logical(0), 
            shape = "String", type = "string"), SslMode = structure(logical(0), 
            shape = "DmsSslModeValue", type = "string"), ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), ExternalId = structure(logical(0), 
            shape = "String", type = "string"), DynamoDbSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DynamoDbSettings", 
            type = "structure"), S3Settings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), CsvRowDelimiter = structure(logical(0), 
            shape = "String", type = "string"), CsvDelimiter = structure(logical(0), 
            shape = "String", type = "string"), BucketFolder = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string"), CompressionType = structure(logical(0), 
            shape = "CompressionTypeValue", type = "string")), 
            shape = "S3Settings", type = "structure"), DmsTransferSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DmsTransferSettings", 
            type = "structure"), MongoDbSettings = structure(list(Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
            ServerName = structure(logical(0), shape = "String", 
                type = "string"), Port = structure(logical(0), 
                shape = "IntegerOptional", type = "integer"), 
            DatabaseName = structure(logical(0), shape = "String", 
                type = "string"), AuthType = structure(logical(0), 
                shape = "AuthTypeValue", type = "string"), AuthMechanism = structure(logical(0), 
                shape = "AuthMechanismValue", type = "string"), 
            NestingLevel = structure(logical(0), shape = "NestingLevelValue", 
                type = "string"), ExtractDocId = structure(logical(0), 
                shape = "String", type = "string"), DocsToInvestigate = structure(logical(0), 
                shape = "String", type = "string"), AuthSource = structure(logical(0), 
                shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "String", type = "string")), shape = "MongoDbSettings", 
            type = "structure")), shape = "Endpoint", type = "structure")), 
        shape = "DeleteEndpointResponse", type = "structure")
    return(populate(args, shape))
}

delete_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteEventSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_event_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SourceIdsList", 
        type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Enabled = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "EventSubscription", type = "structure")), 
        shape = "DeleteEventSubscriptionResponse", type = "structure")
    return(populate(args, shape))
}

delete_replication_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteReplicationInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_replication_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstance = structure(list(ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
        type = "structure")), shape = "VpcSecurityGroupMembershipList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "String", 
            type = "string"), PendingModifiedValues = structure(list(ReplicationInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationPendingModifiedValues", 
            type = "structure"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstancePublicIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePrivateIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePublicIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePublicIpAddressList", 
            type = "list"), ReplicationInstancePrivateIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePrivateIpAddressList", 
            type = "list"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), FreeUntil = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "ReplicationInstance", 
        type = "structure")), shape = "DeleteReplicationInstanceResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_replication_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteReplicationSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_replication_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteReplicationSubnetGroupResponse", 
        type = "structure")
    return(populate(args, shape))
}

delete_replication_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteReplicationTaskMessage", 
        type = "structure")
    return(populate(args, shape))
}

delete_replication_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTask = structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "DeleteReplicationTaskResponse", type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DescribeAccountAttributesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountQuotas = structure(list(structure(list(AccountQuotaName = structure(logical(0), 
        shape = "String", type = "string"), Used = structure(logical(0), 
        shape = "Long", type = "long"), Max = structure(logical(0), 
        shape = "Long", type = "long")), shape = "AccountQuota", 
        type = "structure")), shape = "AccountQuotaList", type = "list")), 
        shape = "DescribeAccountAttributesResponse", type = "structure")
    return(populate(args, shape))
}

describe_certificates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeCertificatesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_certificates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Certificates = structure(list(structure(list(CertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), CertificateCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CertificatePem = structure(logical(0), 
        shape = "String", type = "string"), CertificateWallet = structure(logical(0), 
        shape = "CertificateWallet", type = "blob"), CertificateArn = structure(logical(0), 
        shape = "String", type = "string"), CertificateOwner = structure(logical(0), 
        shape = "String", type = "string"), ValidFromDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ValidToDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), SigningAlgorithm = structure(logical(0), 
        shape = "String", type = "string"), KeyLength = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "Certificate", 
        type = "structure")), shape = "CertificateList", type = "list")), 
        shape = "DescribeCertificatesResponse", type = "structure")
    return(populate(args, shape))
}

describe_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeConnectionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Connections = structure(list(structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "Connection", 
        type = "structure")), shape = "ConnectionList", type = "list")), 
        shape = "DescribeConnectionsResponse", type = "structure")
    return(populate(args, shape))
}

describe_endpoint_types_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEndpointTypesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoint_types_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), SupportedEndpointTypes = structure(list(structure(list(EngineName = structure(logical(0), 
        shape = "String", type = "string"), SupportsCDC = structure(logical(0), 
        shape = "Boolean", type = "boolean"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineDisplayName = structure(logical(0), shape = "String", 
            type = "string")), shape = "SupportedEndpointType", 
        type = "structure")), shape = "SupportedEndpointTypeList", 
        type = "list")), shape = "DescribeEndpointTypesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoints_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEndpointsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoints_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Endpoints = structure(list(structure(list(EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineName = structure(logical(0), shape = "String", 
            type = "string"), EngineDisplayName = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), ServerName = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), ExtraConnectionAttributes = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EndpointArn = structure(logical(0), 
            shape = "String", type = "string"), CertificateArn = structure(logical(0), 
            shape = "String", type = "string"), SslMode = structure(logical(0), 
            shape = "DmsSslModeValue", type = "string"), ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), ExternalId = structure(logical(0), 
            shape = "String", type = "string"), DynamoDbSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DynamoDbSettings", 
            type = "structure"), S3Settings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), CsvRowDelimiter = structure(logical(0), 
            shape = "String", type = "string"), CsvDelimiter = structure(logical(0), 
            shape = "String", type = "string"), BucketFolder = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string"), CompressionType = structure(logical(0), 
            shape = "CompressionTypeValue", type = "string")), 
            shape = "S3Settings", type = "structure"), DmsTransferSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DmsTransferSettings", 
            type = "structure"), MongoDbSettings = structure(list(Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
            ServerName = structure(logical(0), shape = "String", 
                type = "string"), Port = structure(logical(0), 
                shape = "IntegerOptional", type = "integer"), 
            DatabaseName = structure(logical(0), shape = "String", 
                type = "string"), AuthType = structure(logical(0), 
                shape = "AuthTypeValue", type = "string"), AuthMechanism = structure(logical(0), 
                shape = "AuthMechanismValue", type = "string"), 
            NestingLevel = structure(logical(0), shape = "NestingLevelValue", 
                type = "string"), ExtractDocId = structure(logical(0), 
                shape = "String", type = "string"), DocsToInvestigate = structure(logical(0), 
                shape = "String", type = "string"), AuthSource = structure(logical(0), 
                shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "String", type = "string")), shape = "MongoDbSettings", 
            type = "structure")), shape = "Endpoint", type = "structure")), 
        shape = "EndpointList", type = "list")), shape = "DescribeEndpointsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_categories_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceType = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list")), shape = "DescribeEventCategoriesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_categories_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventCategoryGroupList = structure(list(structure(list(SourceType = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list")), shape = "EventCategoryGroup", type = "structure")), 
        shape = "EventCategoryGroupList", type = "list")), shape = "DescribeEventCategoriesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_subscriptions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEventSubscriptionsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_event_subscriptions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), EventSubscriptionsList = structure(list(structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SourceIdsList", 
        type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Enabled = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "EventSubscription", type = "structure")), 
        shape = "EventSubscriptionsList", type = "list")), shape = "DescribeEventSubscriptionsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_events_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), StartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), EndTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), Duration = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeEventsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_events_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Events = structure(list(structure(list(SourceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "SourceType", type = "string"), Message = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Date = structure(logical(0), shape = "TStamp", 
        type = "timestamp")), shape = "Event", type = "structure")), 
        shape = "EventList", type = "list")), shape = "DescribeEventsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_orderable_replication_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeOrderableReplicationInstancesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_orderable_replication_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OrderableReplicationInstances = structure(list(structure(list(EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), StorageType = structure(logical(0), 
        shape = "String", type = "string"), MinAllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), MaxAllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), DefaultAllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), IncludedAllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "OrderableReplicationInstance", 
        type = "structure")), shape = "OrderableReplicationInstanceList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeOrderableReplicationInstancesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_refresh_schemas_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeRefreshSchemasStatusMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_refresh_schemas_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RefreshSchemasStatus = structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "RefreshSchemasStatusTypeValue", type = "string"), 
        LastRefreshDate = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), LastFailureMessage = structure(logical(0), 
            shape = "String", type = "string")), shape = "RefreshSchemasStatus", 
        type = "structure")), shape = "DescribeRefreshSchemasStatusResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_instance_task_logs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReplicationInstanceTaskLogsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_instance_task_logs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceTaskLogs = structure(list(structure(list(ReplicationTaskName = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceTaskLogSize = structure(logical(0), 
        shape = "Long", type = "long")), shape = "ReplicationInstanceTaskLog", 
        type = "structure")), shape = "ReplicationInstanceTaskLogsList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeReplicationInstanceTaskLogsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReplicationInstancesMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReplicationInstances = structure(list(structure(list(ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
        type = "structure")), shape = "VpcSecurityGroupMembershipList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "String", 
            type = "string"), PendingModifiedValues = structure(list(ReplicationInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationPendingModifiedValues", 
            type = "structure"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstancePublicIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePrivateIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePublicIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePublicIpAddressList", 
            type = "list"), ReplicationInstancePrivateIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePrivateIpAddressList", 
            type = "list"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), FreeUntil = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "ReplicationInstance", 
        type = "structure")), shape = "ReplicationInstanceList", 
        type = "list")), shape = "DescribeReplicationInstancesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_subnet_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReplicationSubnetGroupsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_subnet_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReplicationSubnetGroups = structure(list(structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure")), 
        shape = "ReplicationSubnetGroups", type = "list")), shape = "DescribeReplicationSubnetGroupsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_task_assessment_results_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReplicationTaskAssessmentResultsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_task_assessment_results_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), BucketName = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskAssessmentResults = structure(list(structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskLastAssessmentDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), AssessmentStatus = structure(logical(0), 
        shape = "String", type = "string"), AssessmentResultsFile = structure(logical(0), 
        shape = "String", type = "string"), AssessmentResults = structure(logical(0), 
        shape = "String", type = "string"), S3ObjectUrl = structure(logical(0), 
        shape = "String", type = "string")), shape = "ReplicationTaskAssessmentResult", 
        type = "structure")), shape = "ReplicationTaskAssessmentResultList", 
        type = "list")), shape = "DescribeReplicationTaskAssessmentResultsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeReplicationTasksMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_replication_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), ReplicationTasks = structure(list(structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "ReplicationTaskList", type = "list")), shape = "DescribeReplicationTasksResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_schemas_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeSchemasMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_schemas_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Marker = structure(logical(0), shape = "String", 
        type = "string"), Schemas = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SchemaList", 
        type = "list")), shape = "DescribeSchemasResponse", type = "structure")
    return(populate(args, shape))
}

describe_table_statistics_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), MaxRecords = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), Marker = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "FilterValueList", 
        type = "list")), shape = "Filter", type = "structure")), 
        shape = "FilterList", type = "list")), shape = "DescribeTableStatisticsMessage", 
        type = "structure")
    return(populate(args, shape))
}

describe_table_statistics_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), TableStatistics = structure(list(structure(list(SchemaName = structure(logical(0), 
        shape = "String", type = "string"), TableName = structure(logical(0), 
        shape = "String", type = "string"), Inserts = structure(logical(0), 
        shape = "Long", type = "long"), Deletes = structure(logical(0), 
        shape = "Long", type = "long"), Updates = structure(logical(0), 
        shape = "Long", type = "long"), Ddls = structure(logical(0), 
        shape = "Long", type = "long"), FullLoadRows = structure(logical(0), 
        shape = "Long", type = "long"), FullLoadCondtnlChkFailedRows = structure(logical(0), 
        shape = "Long", type = "long"), FullLoadErrorRows = structure(logical(0), 
        shape = "Long", type = "long"), LastUpdateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), TableState = structure(logical(0), 
        shape = "String", type = "string"), ValidationPendingRecords = structure(logical(0), 
        shape = "Long", type = "long"), ValidationFailedRecords = structure(logical(0), 
        shape = "Long", type = "long"), ValidationSuspendedRecords = structure(logical(0), 
        shape = "Long", type = "long"), ValidationState = structure(logical(0), 
        shape = "String", type = "string"), ValidationStateDetails = structure(logical(0), 
        shape = "String", type = "string")), shape = "TableStatistics", 
        type = "structure")), shape = "TableStatisticsList", 
        type = "list"), Marker = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeTableStatisticsResponse", 
        type = "structure")
    return(populate(args, shape))
}

import_certificate_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), CertificatePem = structure(logical(0), 
        shape = "String", type = "string"), CertificateWallet = structure(logical(0), 
        shape = "CertificateWallet", type = "blob"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "ImportCertificateMessage", 
        type = "structure")
    return(populate(args, shape))
}

import_certificate_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Certificate = structure(list(CertificateIdentifier = structure(logical(0), 
        shape = "String", type = "string"), CertificateCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CertificatePem = structure(logical(0), 
        shape = "String", type = "string"), CertificateWallet = structure(logical(0), 
        shape = "CertificateWallet", type = "blob"), CertificateArn = structure(logical(0), 
        shape = "String", type = "string"), CertificateOwner = structure(logical(0), 
        shape = "String", type = "string"), ValidFromDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ValidToDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), SigningAlgorithm = structure(logical(0), 
        shape = "String", type = "string"), KeyLength = structure(logical(0), 
        shape = "IntegerOptional", type = "integer")), shape = "Certificate", 
        type = "structure")), shape = "ImportCertificateResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "ListTagsForResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

list_tags_for_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagList = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", type = "string"), Value = structure(logical(0), 
        shape = "String", type = "string")), shape = "Tag", type = "structure")), 
        shape = "TagList", type = "list")), shape = "ListTagsForResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

modify_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineName = structure(logical(0), shape = "String", 
            type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
        ServerName = structure(logical(0), shape = "String", 
            type = "string"), Port = structure(logical(0), shape = "IntegerOptional", 
            type = "integer"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), ExtraConnectionAttributes = structure(logical(0), 
            shape = "String", type = "string"), CertificateArn = structure(logical(0), 
            shape = "String", type = "string"), SslMode = structure(logical(0), 
            shape = "DmsSslModeValue", type = "string"), ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), DynamoDbSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DynamoDbSettings", 
            type = "structure"), S3Settings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), CsvRowDelimiter = structure(logical(0), 
            shape = "String", type = "string"), CsvDelimiter = structure(logical(0), 
            shape = "String", type = "string"), BucketFolder = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string"), CompressionType = structure(logical(0), 
            shape = "CompressionTypeValue", type = "string")), 
            shape = "S3Settings", type = "structure"), DmsTransferSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DmsTransferSettings", 
            type = "structure"), MongoDbSettings = structure(list(Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
            ServerName = structure(logical(0), shape = "String", 
                type = "string"), Port = structure(logical(0), 
                shape = "IntegerOptional", type = "integer"), 
            DatabaseName = structure(logical(0), shape = "String", 
                type = "string"), AuthType = structure(logical(0), 
                shape = "AuthTypeValue", type = "string"), AuthMechanism = structure(logical(0), 
                shape = "AuthMechanismValue", type = "string"), 
            NestingLevel = structure(logical(0), shape = "NestingLevelValue", 
                type = "string"), ExtractDocId = structure(logical(0), 
                shape = "String", type = "string"), DocsToInvestigate = structure(logical(0), 
                shape = "String", type = "string"), AuthSource = structure(logical(0), 
                shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "String", type = "string")), shape = "MongoDbSettings", 
            type = "structure")), shape = "ModifyEndpointMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Endpoint = structure(list(EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), EndpointType = structure(logical(0), 
        shape = "ReplicationEndpointTypeValue", type = "string"), 
        EngineName = structure(logical(0), shape = "String", 
            type = "string"), EngineDisplayName = structure(logical(0), 
            shape = "String", type = "string"), Username = structure(logical(0), 
            shape = "String", type = "string"), ServerName = structure(logical(0), 
            shape = "String", type = "string"), Port = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), DatabaseName = structure(logical(0), 
            shape = "String", type = "string"), ExtraConnectionAttributes = structure(logical(0), 
            shape = "String", type = "string"), Status = structure(logical(0), 
            shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), EndpointArn = structure(logical(0), 
            shape = "String", type = "string"), CertificateArn = structure(logical(0), 
            shape = "String", type = "string"), SslMode = structure(logical(0), 
            shape = "DmsSslModeValue", type = "string"), ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), ExternalId = structure(logical(0), 
            shape = "String", type = "string"), DynamoDbSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string")), shape = "DynamoDbSettings", 
            type = "structure"), S3Settings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), ExternalTableDefinition = structure(logical(0), 
            shape = "String", type = "string"), CsvRowDelimiter = structure(logical(0), 
            shape = "String", type = "string"), CsvDelimiter = structure(logical(0), 
            shape = "String", type = "string"), BucketFolder = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string"), CompressionType = structure(logical(0), 
            shape = "CompressionTypeValue", type = "string")), 
            shape = "S3Settings", type = "structure"), DmsTransferSettings = structure(list(ServiceAccessRoleArn = structure(logical(0), 
            shape = "String", type = "string"), BucketName = structure(logical(0), 
            shape = "String", type = "string")), shape = "DmsTransferSettings", 
            type = "structure"), MongoDbSettings = structure(list(Username = structure(logical(0), 
            shape = "String", type = "string"), Password = structure(logical(0), 
            shape = "SecretString", type = "string", sensitive = TRUE), 
            ServerName = structure(logical(0), shape = "String", 
                type = "string"), Port = structure(logical(0), 
                shape = "IntegerOptional", type = "integer"), 
            DatabaseName = structure(logical(0), shape = "String", 
                type = "string"), AuthType = structure(logical(0), 
                shape = "AuthTypeValue", type = "string"), AuthMechanism = structure(logical(0), 
                shape = "AuthMechanismValue", type = "string"), 
            NestingLevel = structure(logical(0), shape = "NestingLevelValue", 
                type = "string"), ExtractDocId = structure(logical(0), 
                shape = "String", type = "string"), DocsToInvestigate = structure(logical(0), 
                shape = "String", type = "string"), AuthSource = structure(logical(0), 
                shape = "String", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "String", type = "string")), shape = "MongoDbSettings", 
            type = "structure")), shape = "Endpoint", type = "structure")), 
        shape = "ModifyEndpointResponse", type = "structure")
    return(populate(args, shape))
}

modify_event_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubscriptionName = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), EventCategories = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Enabled = structure(logical(0), shape = "BooleanOptional", 
        type = "boolean")), shape = "ModifyEventSubscriptionMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_event_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EventSubscription = structure(list(CustomerAwsId = structure(logical(0), 
        shape = "String", type = "string"), CustSubscriptionId = structure(logical(0), 
        shape = "String", type = "string"), SnsTopicArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), SubscriptionCreationTime = structure(logical(0), 
        shape = "String", type = "string"), SourceType = structure(logical(0), 
        shape = "String", type = "string"), SourceIdsList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SourceIdsList", 
        type = "list"), EventCategoriesList = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "EventCategoriesList", 
        type = "list"), Enabled = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "EventSubscription", type = "structure")), 
        shape = "ModifyEventSubscriptionResponse", type = "structure")
    return(populate(args, shape))
}

modify_replication_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "IntegerOptional", type = "integer"), ApplyImmediately = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), VpcSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupIdList", 
        type = "list"), PreferredMaintenanceWindow = structure(logical(0), 
        shape = "String", type = "string"), MultiAZ = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
        shape = "String", type = "string"), AllowMajorVersionUpgrade = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AutoMinorVersionUpgrade = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean"), ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyReplicationInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstance = structure(list(ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
        type = "structure")), shape = "VpcSecurityGroupMembershipList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "String", 
            type = "string"), PendingModifiedValues = structure(list(ReplicationInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationPendingModifiedValues", 
            type = "structure"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstancePublicIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePrivateIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePublicIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePublicIpAddressList", 
            type = "list"), ReplicationInstancePrivateIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePrivateIpAddressList", 
            type = "list"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), FreeUntil = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "ReplicationInstance", 
        type = "structure")), shape = "ModifyReplicationInstanceResponse", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_subnet_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "SubnetIdentifierList", 
        type = "list")), shape = "ModifyReplicationSubnetGroupMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_subnet_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure")), 
        shape = "ModifyReplicationSubnetGroupResponse", type = "structure")
    return(populate(args, shape))
}

modify_replication_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), CdcStartTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyReplicationTaskMessage", 
        type = "structure")
    return(populate(args, shape))
}

modify_replication_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTask = structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "ModifyReplicationTaskResponse", type = "structure")
    return(populate(args, shape))
}

reboot_replication_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), ForceFailover = structure(logical(0), 
        shape = "BooleanOptional", type = "boolean")), shape = "RebootReplicationInstanceMessage", 
        type = "structure")
    return(populate(args, shape))
}

reboot_replication_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstance = structure(list(ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceClass = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceStatus = structure(logical(0), 
        shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
        shape = "Integer", type = "integer"), InstanceCreateTime = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), VpcSecurityGroups = structure(list(structure(list(VpcSecurityGroupId = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string")), shape = "VpcSecurityGroupMembership", 
        type = "structure")), shape = "VpcSecurityGroupMembershipList", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroup = structure(list(ReplicationSubnetGroupIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationSubnetGroupDescription = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), SubnetGroupStatus = structure(logical(0), 
        shape = "String", type = "string"), Subnets = structure(list(structure(list(SubnetIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SubnetAvailabilityZone = structure(list(Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "AvailabilityZone", 
        type = "structure"), SubnetStatus = structure(logical(0), 
        shape = "String", type = "string")), shape = "Subnet", 
        type = "structure")), shape = "SubnetList", type = "list")), 
        shape = "ReplicationSubnetGroup", type = "structure"), 
        PreferredMaintenanceWindow = structure(logical(0), shape = "String", 
            type = "string"), PendingModifiedValues = structure(list(ReplicationInstanceClass = structure(logical(0), 
            shape = "String", type = "string"), AllocatedStorage = structure(logical(0), 
            shape = "IntegerOptional", type = "integer"), MultiAZ = structure(logical(0), 
            shape = "BooleanOptional", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationPendingModifiedValues", 
            type = "structure"), MultiAZ = structure(logical(0), 
            shape = "Boolean", type = "boolean"), EngineVersion = structure(logical(0), 
            shape = "String", type = "string"), AutoMinorVersionUpgrade = structure(logical(0), 
            shape = "Boolean", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
            shape = "String", type = "string"), ReplicationInstancePublicIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePrivateIpAddress = structure(logical(0), 
            shape = "String", deprecated = TRUE, type = "string"), 
        ReplicationInstancePublicIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePublicIpAddressList", 
            type = "list"), ReplicationInstancePrivateIpAddresses = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReplicationInstancePrivateIpAddressList", 
            type = "list"), PubliclyAccessible = structure(logical(0), 
            shape = "Boolean", type = "boolean"), SecondaryAvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), FreeUntil = structure(logical(0), 
            shape = "TStamp", type = "timestamp")), shape = "ReplicationInstance", 
        type = "structure")), shape = "RebootReplicationInstanceResponse", 
        type = "structure")
    return(populate(args, shape))
}

refresh_schemas_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "RefreshSchemasMessage", 
        type = "structure")
    return(populate(args, shape))
}

refresh_schemas_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RefreshSchemasStatus = structure(list(EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "RefreshSchemasStatusTypeValue", type = "string"), 
        LastRefreshDate = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), LastFailureMessage = structure(logical(0), 
            shape = "String", type = "string")), shape = "RefreshSchemasStatus", 
        type = "structure")), shape = "RefreshSchemasResponse", 
        type = "structure")
    return(populate(args, shape))
}

reload_tables_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), TablesToReload = structure(list(structure(list(SchemaName = structure(logical(0), 
        shape = "String", type = "string"), TableName = structure(logical(0), 
        shape = "String", type = "string")), shape = "TableToReload", 
        type = "structure")), shape = "TableListToReload", type = "list"), 
        ReloadOption = structure(logical(0), shape = "ReloadOptionValue", 
            type = "string")), shape = "ReloadTablesMessage", 
        type = "structure")
    return(populate(args, shape))
}

reload_tables_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "ReloadTablesResponse", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "String", type = "string"), TagKeys = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "KeyList", 
        type = "list")), shape = "RemoveTagsFromResourceMessage", 
        type = "structure")
    return(populate(args, shape))
}

remove_tags_from_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "RemoveTagsFromResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

start_replication_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), StartReplicationTaskType = structure(logical(0), 
        shape = "StartReplicationTaskTypeValue", type = "string"), 
        CdcStartTime = structure(logical(0), shape = "TStamp", 
            type = "timestamp"), CdcStartPosition = structure(logical(0), 
            shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
            shape = "String", type = "string")), shape = "StartReplicationTaskMessage", 
        type = "structure")
    return(populate(args, shape))
}

start_replication_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTask = structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "StartReplicationTaskResponse", type = "structure")
    return(populate(args, shape))
}

start_replication_task_assessment_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "StartReplicationTaskAssessmentMessage", 
        type = "structure")
    return(populate(args, shape))
}

start_replication_task_assessment_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTask = structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "StartReplicationTaskAssessmentResponse", type = "structure")
    return(populate(args, shape))
}

stop_replication_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "StopReplicationTaskMessage", 
        type = "structure")
    return(populate(args, shape))
}

stop_replication_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationTask = structure(list(ReplicationTaskIdentifier = structure(logical(0), 
        shape = "String", type = "string"), SourceEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), TargetEndpointArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), MigrationType = structure(logical(0), 
        shape = "MigrationTypeValue", type = "string"), TableMappings = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskSettings = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), StopReason = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskCreationDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), ReplicationTaskStartDate = structure(logical(0), 
        shape = "TStamp", type = "timestamp"), CdcStartPosition = structure(logical(0), 
        shape = "String", type = "string"), CdcStopPosition = structure(logical(0), 
        shape = "String", type = "string"), RecoveryCheckpoint = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskArn = structure(logical(0), 
        shape = "String", type = "string"), ReplicationTaskStats = structure(list(FullLoadProgressPercent = structure(logical(0), 
        shape = "Integer", type = "integer"), ElapsedTimeMillis = structure(logical(0), 
        shape = "Long", type = "long"), TablesLoaded = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesLoading = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesQueued = structure(logical(0), 
        shape = "Integer", type = "integer"), TablesErrored = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ReplicationTaskStats", 
        type = "structure")), shape = "ReplicationTask", type = "structure")), 
        shape = "StopReplicationTaskResponse", type = "structure")
    return(populate(args, shape))
}

test_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), EndpointArn = structure(logical(0), 
        shape = "String", type = "string")), shape = "TestConnectionMessage", 
        type = "structure")
    return(populate(args, shape))
}

test_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Connection = structure(list(ReplicationInstanceArn = structure(logical(0), 
        shape = "String", type = "string"), EndpointArn = structure(logical(0), 
        shape = "String", type = "string"), Status = structure(logical(0), 
        shape = "String", type = "string"), LastFailureMessage = structure(logical(0), 
        shape = "String", type = "string"), EndpointIdentifier = structure(logical(0), 
        shape = "String", type = "string"), ReplicationInstanceIdentifier = structure(logical(0), 
        shape = "String", type = "string")), shape = "Connection", 
        type = "structure")), shape = "TestConnectionResponse", 
        type = "structure")
    return(populate(args, shape))
}
