#' Creates one or more partitions in a batch operation
#'
#' Creates one or more partitions in a batch operation.
#'
#' @param DatabaseName The name of the metadata database in which the partition is to be created.
#' @param TableName The name of the metadata table in which the partition is to be created.
#' @param PartitionInputList A list of `PartitionInput` structures that define the partitions to be created.
#' @param CatalogId The ID of the catalog in which the partion is to be created. Currently, this should be the AWS account ID.
#'
#' @examples
#'
#' @export
batch_create_partition <- function (DatabaseName, TableName, 
    PartitionInputList, CatalogId = NULL) 
{
    op <- Operation(name = "BatchCreatePartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_create_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionInputList = PartitionInputList, 
        CatalogId = CatalogId)
    output <- batch_create_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a list of connection definitions from the Data Catalog
#'
#' Deletes a list of connection definitions from the Data Catalog.
#'
#' @param ConnectionNameList A list of names of the connections to delete.
#' @param CatalogId The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
batch_delete_connection <- function (ConnectionNameList, CatalogId = NULL) 
{
    op <- Operation(name = "BatchDeleteConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_delete_connection_input(ConnectionNameList = ConnectionNameList, 
        CatalogId = CatalogId)
    output <- batch_delete_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes one or more partitions in a batch operation
#'
#' Deletes one or more partitions in a batch operation.
#'
#' @param DatabaseName The name of the catalog database in which the table in question resides.
#' @param TableName The name of the table where the partitions to be deleted is located.
#' @param PartitionsToDelete A list of `PartitionInput` structures that define the partitions to be deleted.
#' @param CatalogId The ID of the Data Catalog where the partition to be deleted resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
batch_delete_partition <- function (DatabaseName, TableName, 
    PartitionsToDelete, CatalogId = NULL) 
{
    op <- Operation(name = "BatchDeletePartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_delete_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionsToDelete = PartitionsToDelete, 
        CatalogId = CatalogId)
    output <- batch_delete_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes multiple tables at once
#'
#' Deletes multiple tables at once.
#' 
#' After completing this operation, you will no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these \"orphaned\" resources asynchronously in a timely manner, at the discretion of the service.
#' 
#' To ensure immediate deletion of all related resources, before calling `BatchDeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`, and `DeletePartition` or `BatchDeletePartition`, to delete any resources that belong to the table.
#'
#' @param DatabaseName The name of the catalog database where the tables to delete reside. For Hive compatibility, this name is entirely lowercase.
#' @param TablesToDelete A list of the table to delete.
#' @param CatalogId The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
batch_delete_table <- function (DatabaseName, TablesToDelete, 
    CatalogId = NULL) 
{
    op <- Operation(name = "BatchDeleteTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_delete_table_input(DatabaseName = DatabaseName, 
        TablesToDelete = TablesToDelete, CatalogId = CatalogId)
    output <- batch_delete_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified batch of versions of a table
#'
#' Deletes a specified batch of versions of a table.
#'
#' @param DatabaseName The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param TableName The name of the table. For Hive compatibility, this name is entirely lowercase.
#' @param VersionIds A list of the IDs of versions to be deleted.
#' @param CatalogId The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
batch_delete_table_version <- function (DatabaseName, TableName, 
    VersionIds, CatalogId = NULL) 
{
    op <- Operation(name = "BatchDeleteTableVersion", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_delete_table_version_input(DatabaseName = DatabaseName, 
        TableName = TableName, VersionIds = VersionIds, CatalogId = CatalogId)
    output <- batch_delete_table_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves partitions in a batch request
#'
#' Retrieves partitions in a batch request.
#'
#' @param DatabaseName The name of the catalog database where the partitions reside.
#' @param TableName The name of the partitions\' table.
#' @param PartitionsToGet A list of partition values identifying the partitions to retrieve.
#' @param CatalogId The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
batch_get_partition <- function (DatabaseName, TableName, PartitionsToGet, 
    CatalogId = NULL) 
{
    op <- Operation(name = "BatchGetPartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_get_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionsToGet = PartitionsToGet, 
        CatalogId = CatalogId)
    output <- batch_get_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops one or more job runs for a specified job definition
#'
#' Stops one or more job runs for a specified job definition.
#'
#' @param JobName The name of the job definition for which to stop job runs.
#' @param JobRunIds A list of the JobRunIds that should be stopped for that job definition.
#'
#' @examples
#'
#' @export
batch_stop_job_run <- function (JobName, JobRunIds) 
{
    op <- Operation(name = "BatchStopJobRun", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- batch_stop_job_run_input(JobName = JobName, JobRunIds = JobRunIds)
    output <- batch_stop_job_run_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a classifier in the user\'s account
#'
#' Creates a classifier in the user\'s account. This may be a `GrokClassifier`, an `XMLClassifier`, or abbrev `JsonClassifier`, depending on which field of the request is present.
#'
#' @param GrokClassifier A `GrokClassifier` object specifying the classifier to create.
#' @param XMLClassifier An `XMLClassifier` object specifying the classifier to create.
#' @param JsonClassifier A `JsonClassifier` object specifying the classifier to create.
#'
#' @examples
#'
#' @export
create_classifier <- function (GrokClassifier = NULL, XMLClassifier = NULL, 
    JsonClassifier = NULL) 
{
    op <- Operation(name = "CreateClassifier", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_classifier_input(GrokClassifier = GrokClassifier, 
        XMLClassifier = XMLClassifier, JsonClassifier = JsonClassifier)
    output <- create_classifier_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a connection definition in the Data Catalog
#'
#' Creates a connection definition in the Data Catalog.
#'
#' @param ConnectionInput A `ConnectionInput` object defining the connection to create.
#' @param CatalogId The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
create_connection <- function (ConnectionInput, CatalogId = NULL) 
{
    op <- Operation(name = "CreateConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_connection_input(ConnectionInput = ConnectionInput, 
        CatalogId = CatalogId)
    output <- create_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new crawler with specified targets, role, configuration, and optional schedule
#'
#' Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the *s3Targets* field, the *jdbcTargets* field, or the *DynamoDBTargets* field.
#'
#' @param Name Name of the new crawler.
#' @param Role The IAM role (or ARN of an IAM role) used by the new crawler to access customer resources.
#' @param DatabaseName The AWS Glue database where results are written, such as: `arn:aws:daylight:us-east-1::database/sometable/*`.
#' @param Targets A list of collection of targets to crawl.
#' @param Description A description of the new crawler.
#' @param Schedule A `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
#' @param Classifiers A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
#' @param TablePrefix The table prefix used for catalog tables that are created.
#' @param SchemaChangePolicy Policy for the crawler\'s update and deletion behavior.
#' @param Configuration Crawler configuration information. This versioned JSON string allows users to specify aspects of a Crawler\'s behavior.
#' 
#' You can use this field to force partitions to inherit metadata such as classification, input format, output format, serde information, and schema from their parent table, rather than detect this information separately for each partition. Use the following JSON string to specify that behavior:
#' 
#' Example: `'{ "Version": 1.0, "CrawlerOutput": { "Partitions": { "AddOrUpdateBehavior": "InheritFromTable" } } }'`
#' @param CrawlerSecurityConfiguration The name of the SecurityConfiguration structure to be used by this Crawler.
#'
#' @examples
#'
#' @export
create_crawler <- function (Name, Role, DatabaseName, Targets, 
    Description = NULL, Schedule = NULL, Classifiers = NULL, 
    TablePrefix = NULL, SchemaChangePolicy = NULL, Configuration = NULL, 
    CrawlerSecurityConfiguration = NULL) 
{
    op <- Operation(name = "CreateCrawler", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_crawler_input(Name = Name, Role = Role, DatabaseName = DatabaseName, 
        Targets = Targets, Description = Description, Schedule = Schedule, 
        Classifiers = Classifiers, TablePrefix = TablePrefix, 
        SchemaChangePolicy = SchemaChangePolicy, Configuration = Configuration, 
        CrawlerSecurityConfiguration = CrawlerSecurityConfiguration)
    output <- create_crawler_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new database in a Data Catalog
#'
#' Creates a new database in a Data Catalog.
#'
#' @param DatabaseInput A `DatabaseInput` object defining the metadata database to create in the catalog.
#' @param CatalogId The ID of the Data Catalog in which to create the database. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
create_database <- function (DatabaseInput, CatalogId = NULL) 
{
    op <- Operation(name = "CreateDatabase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_database_input(DatabaseInput = DatabaseInput, 
        CatalogId = CatalogId)
    output <- create_database_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new DevEndpoint
#'
#' Creates a new DevEndpoint.
#'
#' @param EndpointName The name to be assigned to the new DevEndpoint.
#' @param RoleArn The IAM role for the DevEndpoint.
#' @param SecurityGroupIds Security group IDs for the security groups to be used by the new DevEndpoint.
#' @param SubnetId The subnet ID for the new DevEndpoint to use.
#' @param PublicKey The public key to be used by this DevEndpoint for authentication. This attribute is provided for backward compatibility, as the recommended attribute to use is public keys.
#' @param PublicKeys A list of public keys to be used by the DevEndpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.
#' 
#' If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys: call the `UpdateDevEndpoint` API with the public key content in the `deletePublicKeys` attribute, and the list of new keys in the `addPublicKeys` attribute.
#' @param NumberOfNodes The number of AWS Glue Data Processing Units (DPUs) to allocate to this DevEndpoint.
#' @param ExtraPythonLibsS3Path Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma.
#' 
#' Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the [pandas](http://pandas.pydata.org/) Python data analysis library, are not yet supported.
#' @param ExtraJarsS3Path Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint.
#' @param SecurityConfiguration The name of the SecurityConfiguration structure to be used with this DevEndpoint.
#'
#' @examples
#'
#' @export
create_dev_endpoint <- function (EndpointName, RoleArn, SecurityGroupIds = NULL, 
    SubnetId = NULL, PublicKey = NULL, PublicKeys = NULL, NumberOfNodes = NULL, 
    ExtraPythonLibsS3Path = NULL, ExtraJarsS3Path = NULL, SecurityConfiguration = NULL) 
{
    op <- Operation(name = "CreateDevEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_dev_endpoint_input(EndpointName = EndpointName, 
        RoleArn = RoleArn, SecurityGroupIds = SecurityGroupIds, 
        SubnetId = SubnetId, PublicKey = PublicKey, PublicKeys = PublicKeys, 
        NumberOfNodes = NumberOfNodes, ExtraPythonLibsS3Path = ExtraPythonLibsS3Path, 
        ExtraJarsS3Path = ExtraJarsS3Path, SecurityConfiguration = SecurityConfiguration)
    output <- create_dev_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new job definition
#'
#' Creates a new job definition.
#'
#' @param Name The name you assign to this job definition. It must be unique in your account.
#' @param Role The name or ARN of the IAM role associated with this job.
#' @param Command The JobCommand that executes this job.
#' @param Description Description of the job being defined.
#' @param LogUri This field is reserved for future use.
#' @param ExecutionProperty An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.
#' @param DefaultArguments The default arguments for this job.
#' 
#' You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
#' 
#' For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide.
#' 
#' For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html) topic in the developer guide.
#' @param Connections The connections used for this job.
#' @param MaxRetries The maximum number of times to retry this job if it fails.
#' @param AllocatedCapacity The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the [AWS Glue pricing page](https://aws.amazon.com/glue/pricing/).
#' @param Timeout The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters `TIMEOUT` status. The default is 2,880 minutes (48 hours).
#' @param NotificationProperty Specifies configuration properties of a job notification.
#' @param SecurityConfiguration The name of the SecurityConfiguration structure to be used with this job.
#'
#' @examples
#'
#' @export
create_job <- function (Name, Role, Command, Description = NULL, 
    LogUri = NULL, ExecutionProperty = NULL, DefaultArguments = NULL, 
    Connections = NULL, MaxRetries = NULL, AllocatedCapacity = NULL, 
    Timeout = NULL, NotificationProperty = NULL, SecurityConfiguration = NULL) 
{
    op <- Operation(name = "CreateJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_job_input(Name = Name, Role = Role, Command = Command, 
        Description = Description, LogUri = LogUri, ExecutionProperty = ExecutionProperty, 
        DefaultArguments = DefaultArguments, Connections = Connections, 
        MaxRetries = MaxRetries, AllocatedCapacity = AllocatedCapacity, 
        Timeout = Timeout, NotificationProperty = NotificationProperty, 
        SecurityConfiguration = SecurityConfiguration)
    output <- create_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new partition
#'
#' Creates a new partition.
#'
#' @param DatabaseName The name of the metadata database in which the partition is to be created.
#' @param TableName The name of the metadata table in which the partition is to be created.
#' @param PartitionInput A `PartitionInput` structure defining the partition to be created.
#' @param CatalogId The ID of the catalog in which the partion is to be created. Currently, this should be the AWS account ID.
#'
#' @examples
#'
#' @export
create_partition <- function (DatabaseName, TableName, PartitionInput, 
    CatalogId = NULL) 
{
    op <- Operation(name = "CreatePartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionInput = PartitionInput, 
        CatalogId = CatalogId)
    output <- create_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Transforms a directed acyclic graph (DAG) into code
#'
#' Transforms a directed acyclic graph (DAG) into code.
#'
#' @param DagNodes A list of the nodes in the DAG.
#' @param DagEdges A list of the edges in the DAG.
#' @param Language The programming language of the resulting code from the DAG.
#'
#' @examples
#'
#' @export
create_script <- function (DagNodes = NULL, DagEdges = NULL, 
    Language = NULL) 
{
    op <- Operation(name = "CreateScript", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_script_input(DagNodes = DagNodes, DagEdges = DagEdges, 
        Language = Language)
    output <- create_script_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new security configuration
#'
#' Creates a new security configuration.
#'
#' @param Name The name for the new security configuration.
#' @param EncryptionConfiguration The encryption configuration for the new security configuration.
#'
#' @examples
#'
#' @export
create_security_configuration <- function (Name, EncryptionConfiguration) 
{
    op <- Operation(name = "CreateSecurityConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_security_configuration_input(Name = Name, 
        EncryptionConfiguration = EncryptionConfiguration)
    output <- create_security_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new table definition in the Data Catalog
#'
#' Creates a new table definition in the Data Catalog.
#'
#' @param DatabaseName The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.
#' @param TableInput The `TableInput` object that defines the metadata table to create in the catalog.
#' @param CatalogId The ID of the Data Catalog in which to create the `Table`. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
create_table <- function (DatabaseName, TableInput, CatalogId = NULL) 
{
    op <- Operation(name = "CreateTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_table_input(DatabaseName = DatabaseName, 
        TableInput = TableInput, CatalogId = CatalogId)
    output <- create_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new trigger
#'
#' Creates a new trigger.
#'
#' @param Name The name of the trigger.
#' @param Type The type of the new trigger.
#' @param Actions The actions initiated by this trigger when it fires.
#' @param Schedule A `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
#' 
#' This field is required when the trigger type is SCHEDULED.
#' @param Predicate A predicate to specify when the new trigger should fire.
#' 
#' This field is required when the trigger type is CONDITIONAL.
#' @param Description A description of the new trigger.
#' @param StartOnCreation Set to true to start SCHEDULED and CONDITIONAL triggers when created. True not supported for ON\_DEMAND triggers.
#'
#' @examples
#'
#' @export
create_trigger <- function (Name, Type, Actions, Schedule = NULL, 
    Predicate = NULL, Description = NULL, StartOnCreation = NULL) 
{
    op <- Operation(name = "CreateTrigger", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_trigger_input(Name = Name, Type = Type, Actions = Actions, 
        Schedule = Schedule, Predicate = Predicate, Description = Description, 
        StartOnCreation = StartOnCreation)
    output <- create_trigger_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new function definition in the Data Catalog
#'
#' Creates a new function definition in the Data Catalog.
#'
#' @param DatabaseName The name of the catalog database in which to create the function.
#' @param FunctionInput A `FunctionInput` object that defines the function to create in the Data Catalog.
#' @param CatalogId The ID of the Data Catalog in which to create the function. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
create_user_defined_function <- function (DatabaseName, FunctionInput, 
    CatalogId = NULL) 
{
    op <- Operation(name = "CreateUserDefinedFunction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_user_defined_function_input(DatabaseName = DatabaseName, 
        FunctionInput = FunctionInput, CatalogId = CatalogId)
    output <- create_user_defined_function_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a classifier from the Data Catalog
#'
#' Removes a classifier from the Data Catalog.
#'
#' @param Name Name of the classifier to remove.
#'
#' @examples
#'
#' @export
delete_classifier <- function (Name) 
{
    op <- Operation(name = "DeleteClassifier", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_classifier_input(Name = Name)
    output <- delete_classifier_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a connection from the Data Catalog
#'
#' Deletes a connection from the Data Catalog.
#'
#' @param ConnectionName The name of the connection to delete.
#' @param CatalogId The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
delete_connection <- function (ConnectionName, CatalogId = NULL) 
{
    op <- Operation(name = "DeleteConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_connection_input(ConnectionName = ConnectionName, 
        CatalogId = CatalogId)
    output <- delete_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a specified crawler from the Data Catalog, unless the crawler state is `RUNNING`
#'
#' Removes a specified crawler from the Data Catalog, unless the crawler state is `RUNNING`.
#'
#' @param Name Name of the crawler to remove.
#'
#' @examples
#'
#' @export
delete_crawler <- function (Name) 
{
    op <- Operation(name = "DeleteCrawler", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_crawler_input(Name = Name)
    output <- delete_crawler_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a specified Database from a Data Catalog
#'
#' Removes a specified Database from a Data Catalog.
#' 
#' After completing this operation, you will no longer have access to the tables (and all table versions and partitions that might belong to the tables) and the user-defined functions in the deleted database. AWS Glue deletes these \"orphaned\" resources asynchronously in a timely manner, at the discretion of the service.
#' 
#' To ensure immediate deletion of all related resources, before calling `DeleteDatabase`, use `DeleteTableVersion` or `BatchDeleteTableVersion`, `DeletePartition` or `BatchDeletePartition`, `DeleteUserDefinedFunction`, and `DeleteTable` or `BatchDeleteTable`, to delete any resources that belong to the database.
#'
#' @param Name The name of the Database to delete. For Hive compatibility, this must be all lowercase.
#' @param CatalogId The ID of the Data Catalog in which the database resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
delete_database <- function (Name, CatalogId = NULL) 
{
    op <- Operation(name = "DeleteDatabase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_database_input(Name = Name, CatalogId = CatalogId)
    output <- delete_database_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified DevEndpoint
#'
#' Deletes a specified DevEndpoint.
#'
#' @param EndpointName The name of the DevEndpoint.
#'
#' @examples
#'
#' @export
delete_dev_endpoint <- function (EndpointName) 
{
    op <- Operation(name = "DeleteDevEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_dev_endpoint_input(EndpointName = EndpointName)
    output <- delete_dev_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified job definition
#'
#' Deletes a specified job definition. If the job definition is not found, no exception is thrown.
#'
#' @param JobName The name of the job definition to delete.
#'
#' @examples
#'
#' @export
delete_job <- function (JobName) 
{
    op <- Operation(name = "DeleteJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_job_input(JobName = JobName)
    output <- delete_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified partition
#'
#' Deletes a specified partition.
#'
#' @param DatabaseName The name of the catalog database in which the table in question resides.
#' @param TableName The name of the table where the partition to be deleted is located.
#' @param PartitionValues The values that define the partition.
#' @param CatalogId The ID of the Data Catalog where the partition to be deleted resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
delete_partition <- function (DatabaseName, TableName, PartitionValues, 
    CatalogId = NULL) 
{
    op <- Operation(name = "DeletePartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionValues = PartitionValues, 
        CatalogId = CatalogId)
    output <- delete_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified security configuration
#'
#' Deletes a specified security configuration.
#'
#' @param Name The name of the security configuration to delete.
#'
#' @examples
#'
#' @export
delete_security_configuration <- function (Name) 
{
    op <- Operation(name = "DeleteSecurityConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_security_configuration_input(Name = Name)
    output <- delete_security_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes a table definition from the Data Catalog
#'
#' Removes a table definition from the Data Catalog.
#' 
#' After completing this operation, you will no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these \"orphaned\" resources asynchronously in a timely manner, at the discretion of the service.
#' 
#' To ensure immediate deletion of all related resources, before calling `DeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`, and `DeletePartition` or `BatchDeletePartition`, to delete any resources that belong to the table.
#'
#' @param DatabaseName The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param Name The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase.
#' @param CatalogId The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
delete_table <- function (DatabaseName, Name, CatalogId = NULL) 
{
    op <- Operation(name = "DeleteTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_table_input(DatabaseName = DatabaseName, 
        Name = Name, CatalogId = CatalogId)
    output <- delete_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified version of a table
#'
#' Deletes a specified version of a table.
#'
#' @param DatabaseName The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param TableName The name of the table. For Hive compatibility, this name is entirely lowercase.
#' @param VersionId The ID of the table version to be deleted.
#' @param CatalogId The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
delete_table_version <- function (DatabaseName, TableName, VersionId, 
    CatalogId = NULL) 
{
    op <- Operation(name = "DeleteTableVersion", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_table_version_input(DatabaseName = DatabaseName, 
        TableName = TableName, VersionId = VersionId, CatalogId = CatalogId)
    output <- delete_table_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a specified trigger
#'
#' Deletes a specified trigger. If the trigger is not found, no exception is thrown.
#'
#' @param Name The name of the trigger to delete.
#'
#' @examples
#'
#' @export
delete_trigger <- function (Name) 
{
    op <- Operation(name = "DeleteTrigger", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_trigger_input(Name = Name)
    output <- delete_trigger_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an existing function definition from the Data Catalog
#'
#' Deletes an existing function definition from the Data Catalog.
#'
#' @param DatabaseName The name of the catalog database where the function is located.
#' @param FunctionName The name of the function definition to be deleted.
#' @param CatalogId The ID of the Data Catalog where the function to be deleted is located. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
delete_user_defined_function <- function (DatabaseName, FunctionName, 
    CatalogId = NULL) 
{
    op <- Operation(name = "DeleteUserDefinedFunction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_user_defined_function_input(DatabaseName = DatabaseName, 
        FunctionName = FunctionName, CatalogId = CatalogId)
    output <- delete_user_defined_function_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the status of a migration operation
#'
#' Retrieves the status of a migration operation.
#'
#' @param CatalogId The ID of the catalog to migrate. Currently, this should be the AWS account ID.
#'
#' @examples
#'
#' @export
get_catalog_import_status <- function (CatalogId = NULL) 
{
    op <- Operation(name = "GetCatalogImportStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_catalog_import_status_input(CatalogId = CatalogId)
    output <- get_catalog_import_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve a classifier by name
#'
#' Retrieve a classifier by name.
#'
#' @param Name Name of the classifier to retrieve.
#'
#' @examples
#'
#' @export
get_classifier <- function (Name) 
{
    op <- Operation(name = "GetClassifier", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_classifier_input(Name = Name)
    output <- get_classifier_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists all classifier objects in the Data Catalog
#'
#' Lists all classifier objects in the Data Catalog.
#'
#' @param MaxResults Size of the list to return (optional).
#' @param NextToken An optional continuation token.
#'
#' @examples
#'
#' @export
get_classifiers <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetClassifiers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_classifiers_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- get_classifiers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a connection definition from the Data Catalog
#'
#' Retrieves a connection definition from the Data Catalog.
#'
#' @param Name The name of the connection definition to retrieve.
#' @param CatalogId The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
get_connection <- function (Name, CatalogId = NULL) 
{
    op <- Operation(name = "GetConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_connection_input(Name = Name, CatalogId = CatalogId)
    output <- get_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of connection definitions from the Data Catalog
#'
#' Retrieves a list of connection definitions from the Data Catalog.
#'
#' @param CatalogId The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.
#' @param Filter A filter that controls which connections will be returned.
#' @param NextToken A continuation token, if this is a continuation call.
#' @param MaxResults The maximum number of connections to return in one response.
#'
#' @examples
#'
#' @export
get_connections <- function (CatalogId = NULL, Filter = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetConnections", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_connections_input(CatalogId = CatalogId, Filter = Filter, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- get_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves metadata for a specified crawler
#'
#' Retrieves metadata for a specified crawler.
#'
#' @param Name Name of the crawler to retrieve metadata for.
#'
#' @examples
#'
#' @export
get_crawler <- function (Name) 
{
    op <- Operation(name = "GetCrawler", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_crawler_input(Name = Name)
    output <- get_crawler_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves metrics about specified crawlers
#'
#' Retrieves metrics about specified crawlers.
#'
#' @param CrawlerNameList A list of the names of crawlers about which to retrieve metrics.
#' @param MaxResults The maximum size of a list to return.
#' @param NextToken A continuation token, if this is a continuation call.
#'
#' @examples
#'
#' @export
get_crawler_metrics <- function (CrawlerNameList = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "GetCrawlerMetrics", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_crawler_metrics_input(CrawlerNameList = CrawlerNameList, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- get_crawler_metrics_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves metadata for all crawlers defined in the customer account
#'
#' Retrieves metadata for all crawlers defined in the customer account.
#'
#' @param MaxResults The number of crawlers to return on each call.
#' @param NextToken A continuation token, if this is a continuation request.
#'
#' @examples
#'
#' @export
get_crawlers <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetCrawlers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_crawlers_input(MaxResults = MaxResults, NextToken = NextToken)
    output <- get_crawlers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the security configuration for a specified catalog
#'
#' Retrieves the security configuration for a specified catalog.
#'
#' @param CatalogId The ID of the Data Catalog for which to retrieve the security configuration. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
get_data_catalog_encryption_settings <- function (CatalogId = NULL) 
{
    op <- Operation(name = "GetDataCatalogEncryptionSettings", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_data_catalog_encryption_settings_input(CatalogId = CatalogId)
    output <- get_data_catalog_encryption_settings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the definition of a specified database
#'
#' Retrieves the definition of a specified database.
#'
#' @param Name The name of the database to retrieve. For Hive compatibility, this should be all lowercase.
#' @param CatalogId The ID of the Data Catalog in which the database resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
get_database <- function (Name, CatalogId = NULL) 
{
    op <- Operation(name = "GetDatabase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_database_input(Name = Name, CatalogId = CatalogId)
    output <- get_database_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves all Databases defined in a given Data Catalog
#'
#' Retrieves all Databases defined in a given Data Catalog.
#'
#' @param CatalogId The ID of the Data Catalog from which to retrieve `Databases`. If none is supplied, the AWS account ID is used by default.
#' @param NextToken A continuation token, if this is a continuation call.
#' @param MaxResults The maximum number of databases to return in one response.
#'
#' @examples
#'
#' @export
get_databases <- function (CatalogId = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "GetDatabases", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_databases_input(CatalogId = CatalogId, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- get_databases_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Transforms a Python script into a directed acyclic graph (DAG)
#'
#' Transforms a Python script into a directed acyclic graph (DAG).
#'
#' @param PythonScript The Python script to transform.
#'
#' @examples
#'
#' @export
get_dataflow_graph <- function (PythonScript = NULL) 
{
    op <- Operation(name = "GetDataflowGraph", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_dataflow_graph_input(PythonScript = PythonScript)
    output <- get_dataflow_graph_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a specified DevEndpoint
#'
#' Retrieves information about a specified DevEndpoint.
#'
#' @param EndpointName Name of the DevEndpoint for which to retrieve information.
#'
#' @examples
#'
#' @export
get_dev_endpoint <- function (EndpointName) 
{
    op <- Operation(name = "GetDevEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_dev_endpoint_input(EndpointName = EndpointName)
    output <- get_dev_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves all the DevEndpoints in this AWS account
#'
#' Retrieves all the DevEndpoints in this AWS account.
#'
#' @param MaxResults The maximum size of information to return.
#' @param NextToken A continuation token, if this is a continuation call.
#'
#' @examples
#'
#' @export
get_dev_endpoints <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetDevEndpoints", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_dev_endpoints_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- get_dev_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves an existing job definition
#'
#' Retrieves an existing job definition.
#'
#' @param JobName The name of the job definition to retrieve.
#'
#' @examples
#'
#' @export
get_job <- function (JobName) 
{
    op <- Operation(name = "GetJob", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_job_input(JobName = JobName)
    output <- get_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the metadata for a given job run
#'
#' Retrieves the metadata for a given job run.
#'
#' @param JobName Name of the job definition being run.
#' @param RunId The ID of the job run.
#' @param PredecessorsIncluded True if a list of predecessor runs should be returned.
#'
#' @examples
#'
#' @export
get_job_run <- function (JobName, RunId, PredecessorsIncluded = NULL) 
{
    op <- Operation(name = "GetJobRun", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_job_run_input(JobName = JobName, RunId = RunId, 
        PredecessorsIncluded = PredecessorsIncluded)
    output <- get_job_run_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves metadata for all runs of a given job definition
#'
#' Retrieves metadata for all runs of a given job definition.
#'
#' @param JobName The name of the job definition for which to retrieve all job runs.
#' @param NextToken A continuation token, if this is a continuation call.
#' @param MaxResults The maximum size of the response.
#'
#' @examples
#'
#' @export
get_job_runs <- function (JobName, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetJobRuns", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_job_runs_input(JobName = JobName, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- get_job_runs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves all current job definitions
#'
#' Retrieves all current job definitions.
#'
#' @param NextToken A continuation token, if this is a continuation call.
#' @param MaxResults The maximum size of the response.
#'
#' @examples
#'
#' @export
get_jobs <- function (NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetJobs", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_jobs_input(NextToken = NextToken, MaxResults = MaxResults)
    output <- get_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates mappings
#'
#' Creates mappings.
#'
#' @param Source Specifies the source table.
#' @param Sinks A list of target tables.
#' @param Location Parameters for the mapping.
#'
#' @examples
#'
#' @export
get_mapping <- function (Source, Sinks = NULL, Location = NULL) 
{
    op <- Operation(name = "GetMapping", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_mapping_input(Source = Source, Sinks = Sinks, 
        Location = Location)
    output <- get_mapping_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about a specified partition
#'
#' Retrieves information about a specified partition.
#'
#' @param DatabaseName The name of the catalog database where the partition resides.
#' @param TableName The name of the partition\'s table.
#' @param PartitionValues The values that define the partition.
#' @param CatalogId The ID of the Data Catalog where the partition in question resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
get_partition <- function (DatabaseName, TableName, PartitionValues, 
    CatalogId = NULL) 
{
    op <- Operation(name = "GetPartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionValues = PartitionValues, 
        CatalogId = CatalogId)
    output <- get_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves information about the partitions in a table
#'
#' Retrieves information about the partitions in a table.
#'
#' @param DatabaseName The name of the catalog database where the partitions reside.
#' @param TableName The name of the partitions\' table.
#' @param CatalogId The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.
#' @param Expression An expression filtering the partitions to be returned.
#' @param NextToken A continuation token, if this is not the first call to retrieve these partitions.
#' @param Segment The segment of the table\'s partitions to scan in this request.
#' @param MaxResults The maximum number of partitions to return in a single response.
#'
#' @examples
#'
#' @export
get_partitions <- function (DatabaseName, TableName, CatalogId = NULL, 
    Expression = NULL, NextToken = NULL, Segment = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetPartitions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_partitions_input(DatabaseName = DatabaseName, 
        TableName = TableName, CatalogId = CatalogId, Expression = Expression, 
        NextToken = NextToken, Segment = Segment, MaxResults = MaxResults)
    output <- get_partitions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets code to perform a specified mapping
#'
#' Gets code to perform a specified mapping.
#'
#' @param Mapping The list of mappings from a source table to target tables.
#' @param Source The source table.
#' @param Sinks The target tables.
#' @param Location Parameters for the mapping.
#' @param Language The programming language of the code to perform the mapping.
#'
#' @examples
#'
#' @export
get_plan <- function (Mapping, Source, Sinks = NULL, Location = NULL, 
    Language = NULL) 
{
    op <- Operation(name = "GetPlan", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- get_plan_input(Mapping = Mapping, Source = Source, 
        Sinks = Sinks, Location = Location, Language = Language)
    output <- get_plan_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a specified security configuration
#'
#' Retrieves a specified security configuration.
#'
#' @param Name The name of the security configuration to retrieve.
#'
#' @examples
#'
#' @export
get_security_configuration <- function (Name) 
{
    op <- Operation(name = "GetSecurityConfiguration", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_security_configuration_input(Name = Name)
    output <- get_security_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of all security configurations
#'
#' Retrieves a list of all security configurations.
#'
#' @param MaxResults The maximum number of results to return.
#' @param NextToken A continuation token, if this is a continuation call.
#'
#' @examples
#'
#' @export
get_security_configurations <- function (MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "GetSecurityConfigurations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_security_configurations_input(MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- get_security_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the `Table` definition in a Data Catalog for a specified table
#'
#' Retrieves the `Table` definition in a Data Catalog for a specified table.
#'
#' @param DatabaseName The name of the database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param Name The name of the table for which to retrieve the definition. For Hive compatibility, this name is entirely lowercase.
#' @param CatalogId The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
get_table <- function (DatabaseName, Name, CatalogId = NULL) 
{
    op <- Operation(name = "GetTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_table_input(DatabaseName = DatabaseName, Name = Name, 
        CatalogId = CatalogId)
    output <- get_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a specified version of a table
#'
#' Retrieves a specified version of a table.
#'
#' @param DatabaseName The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param TableName The name of the table. For Hive compatibility, this name is entirely lowercase.
#' @param CatalogId The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.
#' @param VersionId The ID value of the table version to be retrieved.
#'
#' @examples
#'
#' @export
get_table_version <- function (DatabaseName, TableName, CatalogId = NULL, 
    VersionId = NULL) 
{
    op <- Operation(name = "GetTableVersion", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_table_version_input(DatabaseName = DatabaseName, 
        TableName = TableName, CatalogId = CatalogId, VersionId = VersionId)
    output <- get_table_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a list of strings that identify available versions of a specified table
#'
#' Retrieves a list of strings that identify available versions of a specified table.
#'
#' @param DatabaseName The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param TableName The name of the table. For Hive compatibility, this name is entirely lowercase.
#' @param CatalogId The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.
#' @param NextToken A continuation token, if this is not the first call.
#' @param MaxResults The maximum number of table versions to return in one response.
#'
#' @examples
#'
#' @export
get_table_versions <- function (DatabaseName, TableName, CatalogId = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetTableVersions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_table_versions_input(DatabaseName = DatabaseName, 
        TableName = TableName, CatalogId = CatalogId, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- get_table_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the definitions of some or all of the tables in a given `Database`
#'
#' Retrieves the definitions of some or all of the tables in a given `Database`.
#'
#' @param DatabaseName The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase.
#' @param CatalogId The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.
#' @param Expression A regular expression pattern. If present, only those tables whose names match the pattern are returned.
#' @param NextToken A continuation token, included if this is a continuation call.
#' @param MaxResults The maximum number of tables to return in a single response.
#'
#' @examples
#'
#' @export
get_tables <- function (DatabaseName, CatalogId = NULL, Expression = NULL, 
    NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetTables", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_tables_input(DatabaseName = DatabaseName, CatalogId = CatalogId, 
        Expression = Expression, NextToken = NextToken, MaxResults = MaxResults)
    output <- get_tables_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the definition of a trigger
#'
#' Retrieves the definition of a trigger.
#'
#' @param Name The name of the trigger to retrieve.
#'
#' @examples
#'
#' @export
get_trigger <- function (Name) 
{
    op <- Operation(name = "GetTrigger", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_trigger_input(Name = Name)
    output <- get_trigger_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets all the triggers associated with a job
#'
#' Gets all the triggers associated with a job.
#'
#' @param NextToken A continuation token, if this is a continuation call.
#' @param DependentJobName The name of the job for which to retrieve triggers. The trigger that can start this job will be returned, and if there is no such trigger, all triggers will be returned.
#' @param MaxResults The maximum size of the response.
#'
#' @examples
#'
#' @export
get_triggers <- function (NextToken = NULL, DependentJobName = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "GetTriggers", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_triggers_input(NextToken = NextToken, DependentJobName = DependentJobName, 
        MaxResults = MaxResults)
    output <- get_triggers_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a specified function definition from the Data Catalog
#'
#' Retrieves a specified function definition from the Data Catalog.
#'
#' @param DatabaseName The name of the catalog database where the function is located.
#' @param FunctionName The name of the function.
#' @param CatalogId The ID of the Data Catalog where the function to be retrieved is located. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
get_user_defined_function <- function (DatabaseName, FunctionName, 
    CatalogId = NULL) 
{
    op <- Operation(name = "GetUserDefinedFunction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_user_defined_function_input(DatabaseName = DatabaseName, 
        FunctionName = FunctionName, CatalogId = CatalogId)
    output <- get_user_defined_function_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves a multiple function definitions from the Data Catalog
#'
#' Retrieves a multiple function definitions from the Data Catalog.
#'
#' @param DatabaseName The name of the catalog database where the functions are located.
#' @param Pattern An optional function-name pattern string that filters the function definitions returned.
#' @param CatalogId The ID of the Data Catalog where the functions to be retrieved are located. If none is supplied, the AWS account ID is used by default.
#' @param NextToken A continuation token, if this is a continuation call.
#' @param MaxResults The maximum number of functions to return in one response.
#'
#' @examples
#'
#' @export
get_user_defined_functions <- function (DatabaseName, Pattern, 
    CatalogId = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "GetUserDefinedFunctions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_user_defined_functions_input(DatabaseName = DatabaseName, 
        Pattern = Pattern, CatalogId = CatalogId, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- get_user_defined_functions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Imports an existing Athena Data Catalog to AWS Glue
#'
#' Imports an existing Athena Data Catalog to AWS Glue
#'
#' @param CatalogId The ID of the catalog to import. Currently, this should be the AWS account ID.
#'
#' @examples
#'
#' @export
import_catalog_to_glue <- function (CatalogId = NULL) 
{
    op <- Operation(name = "ImportCatalogToGlue", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_catalog_to_glue_input(CatalogId = CatalogId)
    output <- import_catalog_to_glue_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the security configuration for a specified catalog
#'
#' Sets the security configuration for a specified catalog. Once the configuration has been set, the specified encryption is applied to every catalog write thereafter.
#'
#' @param DataCatalogEncryptionSettings The security configuration to set.
#' @param CatalogId The ID of the Data Catalog for which to set the security configuration. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
put_data_catalog_encryption_settings <- function (DataCatalogEncryptionSettings, 
    CatalogId = NULL) 
{
    op <- Operation(name = "PutDataCatalogEncryptionSettings", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- put_data_catalog_encryption_settings_input(DataCatalogEncryptionSettings = DataCatalogEncryptionSettings, 
        CatalogId = CatalogId)
    output <- put_data_catalog_encryption_settings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets a bookmark entry
#'
#' Resets a bookmark entry.
#'
#' @param JobName The name of the job in question.
#'
#' @examples
#'
#' @export
reset_job_bookmark <- function (JobName) 
{
    op <- Operation(name = "ResetJobBookmark", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_job_bookmark_input(JobName = JobName)
    output <- reset_job_bookmark_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a crawl using the specified crawler, regardless of what is scheduled
#'
#' Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a [CrawlerRunningException](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).
#'
#' @param Name Name of the crawler to start.
#'
#' @examples
#'
#' @export
start_crawler <- function (Name) 
{
    op <- Operation(name = "StartCrawler", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_crawler_input(Name = Name)
    output <- start_crawler_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the schedule state of the specified crawler to `SCHEDULED`, unless the crawler is already running or the schedule state is already `SCHEDULED`
#'
#' Changes the schedule state of the specified crawler to `SCHEDULED`, unless the crawler is already running or the schedule state is already `SCHEDULED`.
#'
#' @param CrawlerName Name of the crawler to schedule.
#'
#' @examples
#'
#' @export
start_crawler_schedule <- function (CrawlerName) 
{
    op <- Operation(name = "StartCrawlerSchedule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_crawler_schedule_input(CrawlerName = CrawlerName)
    output <- start_crawler_schedule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a job run using a job definition
#'
#' Starts a job run using a job definition.
#'
#' @param JobName The name of the job definition to use.
#' @param JobRunId The ID of a previous JobRun to retry.
#' @param Arguments The job arguments specifically for this run. They override the equivalent default arguments set for in the job definition itself.
#' 
#' You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
#' 
#' For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide.
#' 
#' For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html) topic in the developer guide.
#' @param AllocatedCapacity The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the [AWS Glue pricing page](https://aws.amazon.com/glue/pricing/).
#' @param Timeout The JobRun timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters `TIMEOUT` status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.
#' @param NotificationProperty Specifies configuration properties of a job run notification.
#' @param SecurityConfiguration The name of the SecurityConfiguration structure to be used with this job run.
#'
#' @examples
#'
#' @export
start_job_run <- function (JobName, JobRunId = NULL, Arguments = NULL, 
    AllocatedCapacity = NULL, Timeout = NULL, NotificationProperty = NULL, 
    SecurityConfiguration = NULL) 
{
    op <- Operation(name = "StartJobRun", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_job_run_input(JobName = JobName, JobRunId = JobRunId, 
        Arguments = Arguments, AllocatedCapacity = AllocatedCapacity, 
        Timeout = Timeout, NotificationProperty = NotificationProperty, 
        SecurityConfiguration = SecurityConfiguration)
    output <- start_job_run_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an existing trigger
#'
#' Starts an existing trigger. See [Triggering Jobs](http://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for information about how different types of trigger are started.
#'
#' @param Name The name of the trigger to start.
#'
#' @examples
#'
#' @export
start_trigger <- function (Name) 
{
    op <- Operation(name = "StartTrigger", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_trigger_input(Name = Name)
    output <- start_trigger_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' If the specified crawler is running, stops the crawl
#'
#' If the specified crawler is running, stops the crawl.
#'
#' @param Name Name of the crawler to stop.
#'
#' @examples
#'
#' @export
stop_crawler <- function (Name) 
{
    op <- Operation(name = "StopCrawler", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_crawler_input(Name = Name)
    output <- stop_crawler_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but does not stop the crawler if it is already running
#'
#' Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but does not stop the crawler if it is already running.
#'
#' @param CrawlerName Name of the crawler whose schedule state to set.
#'
#' @examples
#'
#' @export
stop_crawler_schedule <- function (CrawlerName) 
{
    op <- Operation(name = "StopCrawlerSchedule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_crawler_schedule_input(CrawlerName = CrawlerName)
    output <- stop_crawler_schedule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a specified trigger
#'
#' Stops a specified trigger.
#'
#' @param Name The name of the trigger to stop.
#'
#' @examples
#'
#' @export
stop_trigger <- function (Name) 
{
    op <- Operation(name = "StopTrigger", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_trigger_input(Name = Name)
    output <- stop_trigger_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies an existing classifier (a `GrokClassifier`, `XMLClassifier`, or `JsonClassifier`, depending on which field is present)
#'
#' Modifies an existing classifier (a `GrokClassifier`, `XMLClassifier`, or `JsonClassifier`, depending on which field is present).
#'
#' @param GrokClassifier A `GrokClassifier` object with updated fields.
#' @param XMLClassifier An `XMLClassifier` object with updated fields.
#' @param JsonClassifier A `JsonClassifier` object with updated fields.
#'
#' @examples
#'
#' @export
update_classifier <- function (GrokClassifier = NULL, XMLClassifier = NULL, 
    JsonClassifier = NULL) 
{
    op <- Operation(name = "UpdateClassifier", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_classifier_input(GrokClassifier = GrokClassifier, 
        XMLClassifier = XMLClassifier, JsonClassifier = JsonClassifier)
    output <- update_classifier_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a connection definition in the Data Catalog
#'
#' Updates a connection definition in the Data Catalog.
#'
#' @param Name The name of the connection definition to update.
#' @param ConnectionInput A `ConnectionInput` object that redefines the connection in question.
#' @param CatalogId The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
update_connection <- function (Name, ConnectionInput, CatalogId = NULL) 
{
    op <- Operation(name = "UpdateConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_connection_input(Name = Name, ConnectionInput = ConnectionInput, 
        CatalogId = CatalogId)
    output <- update_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a crawler
#'
#' Updates a crawler. If a crawler is running, you must stop it using `StopCrawler` before updating it.
#'
#' @param Name Name of the new crawler.
#' @param Role The IAM role (or ARN of an IAM role) used by the new crawler to access customer resources.
#' @param DatabaseName The AWS Glue database where results are stored, such as: `arn:aws:daylight:us-east-1::database/sometable/*`.
#' @param Description A description of the new crawler.
#' @param Targets A list of targets to crawl.
#' @param Schedule A `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
#' @param Classifiers A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
#' @param TablePrefix The table prefix used for catalog tables that are created.
#' @param SchemaChangePolicy Policy for the crawler\'s update and deletion behavior.
#' @param Configuration Crawler configuration information. This versioned JSON string allows users to specify aspects of a Crawler\'s behavior.
#' 
#' You can use this field to force partitions to inherit metadata such as classification, input format, output format, serde information, and schema from their parent table, rather than detect this information separately for each partition. Use the following JSON string to specify that behavior:
#' 
#' Example: `'{ "Version": 1.0, "CrawlerOutput": { "Partitions": { "AddOrUpdateBehavior": "InheritFromTable" } } }'`
#' @param CrawlerSecurityConfiguration The name of the SecurityConfiguration structure to be used by this Crawler.
#'
#' @examples
#'
#' @export
update_crawler <- function (Name, Role = NULL, DatabaseName = NULL, 
    Description = NULL, Targets = NULL, Schedule = NULL, Classifiers = NULL, 
    TablePrefix = NULL, SchemaChangePolicy = NULL, Configuration = NULL, 
    CrawlerSecurityConfiguration = NULL) 
{
    op <- Operation(name = "UpdateCrawler", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_crawler_input(Name = Name, Role = Role, DatabaseName = DatabaseName, 
        Description = Description, Targets = Targets, Schedule = Schedule, 
        Classifiers = Classifiers, TablePrefix = TablePrefix, 
        SchemaChangePolicy = SchemaChangePolicy, Configuration = Configuration, 
        CrawlerSecurityConfiguration = CrawlerSecurityConfiguration)
    output <- update_crawler_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the schedule of a crawler using a `cron` expression
#'
#' Updates the schedule of a crawler using a `cron` expression.
#'
#' @param CrawlerName Name of the crawler whose schedule to update.
#' @param Schedule The updated `cron` expression used to specify the schedule (see [Time-Based Schedules for Jobs and Crawlers](http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
#'
#' @examples
#'
#' @export
update_crawler_schedule <- function (CrawlerName, Schedule = NULL) 
{
    op <- Operation(name = "UpdateCrawlerSchedule", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_crawler_schedule_input(CrawlerName = CrawlerName, 
        Schedule = Schedule)
    output <- update_crawler_schedule_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing database definition in a Data Catalog
#'
#' Updates an existing database definition in a Data Catalog.
#'
#' @param Name The name of the database to update in the catalog. For Hive compatibility, this is folded to lowercase.
#' @param DatabaseInput A `DatabaseInput` object specifying the new definition of the metadata database in the catalog.
#' @param CatalogId The ID of the Data Catalog in which the metadata database resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
update_database <- function (Name, DatabaseInput, CatalogId = NULL) 
{
    op <- Operation(name = "UpdateDatabase", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_database_input(Name = Name, DatabaseInput = DatabaseInput, 
        CatalogId = CatalogId)
    output <- update_database_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a specified DevEndpoint
#'
#' Updates a specified DevEndpoint.
#'
#' @param EndpointName The name of the DevEndpoint to be updated.
#' @param PublicKey The public key for the DevEndpoint to use.
#' @param AddPublicKeys The list of public keys for the DevEndpoint to use.
#' @param DeletePublicKeys The list of public keys to be deleted from the DevEndpoint.
#' @param CustomLibraries Custom Python or Java libraries to be loaded in the DevEndpoint.
#' @param UpdateEtlLibraries True if the list of custom libraries to be loaded in the development endpoint needs to be updated, or False otherwise.
#'
#' @examples
#'
#' @export
update_dev_endpoint <- function (EndpointName, PublicKey = NULL, 
    AddPublicKeys = NULL, DeletePublicKeys = NULL, CustomLibraries = NULL, 
    UpdateEtlLibraries = NULL) 
{
    op <- Operation(name = "UpdateDevEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_dev_endpoint_input(EndpointName = EndpointName, 
        PublicKey = PublicKey, AddPublicKeys = AddPublicKeys, 
        DeletePublicKeys = DeletePublicKeys, CustomLibraries = CustomLibraries, 
        UpdateEtlLibraries = UpdateEtlLibraries)
    output <- update_dev_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing job definition
#'
#' Updates an existing job definition.
#'
#' @param JobName Name of the job definition to update.
#' @param JobUpdate Specifies the values with which to update the job definition.
#'
#' @examples
#'
#' @export
update_job <- function (JobName, JobUpdate) 
{
    op <- Operation(name = "UpdateJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_job_input(JobName = JobName, JobUpdate = JobUpdate)
    output <- update_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a partition
#'
#' Updates a partition.
#'
#' @param DatabaseName The name of the catalog database in which the table in question resides.
#' @param TableName The name of the table where the partition to be updated is located.
#' @param PartitionValueList A list of the values defining the partition.
#' @param PartitionInput The new partition object to which to update the partition.
#' @param CatalogId The ID of the Data Catalog where the partition to be updated resides. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
update_partition <- function (DatabaseName, TableName, PartitionValueList, 
    PartitionInput, CatalogId = NULL) 
{
    op <- Operation(name = "UpdatePartition", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_partition_input(DatabaseName = DatabaseName, 
        TableName = TableName, PartitionValueList = PartitionValueList, 
        PartitionInput = PartitionInput, CatalogId = CatalogId)
    output <- update_partition_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a metadata table in the Data Catalog
#'
#' Updates a metadata table in the Data Catalog.
#'
#' @param DatabaseName The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.
#' @param TableInput An updated `TableInput` object to define the metadata table in the catalog.
#' @param CatalogId The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.
#' @param SkipArchive By default, `UpdateTable` always creates an archived version of the table before updating it. If `skipArchive` is set to true, however, `UpdateTable` does not create the archived version.
#'
#' @examples
#'
#' @export
update_table <- function (DatabaseName, TableInput, CatalogId = NULL, 
    SkipArchive = NULL) 
{
    op <- Operation(name = "UpdateTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_table_input(DatabaseName = DatabaseName, 
        TableInput = TableInput, CatalogId = CatalogId, SkipArchive = SkipArchive)
    output <- update_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a trigger definition
#'
#' Updates a trigger definition.
#'
#' @param Name The name of the trigger to update.
#' @param TriggerUpdate The new values with which to update the trigger.
#'
#' @examples
#'
#' @export
update_trigger <- function (Name, TriggerUpdate) 
{
    op <- Operation(name = "UpdateTrigger", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_trigger_input(Name = Name, TriggerUpdate = TriggerUpdate)
    output <- update_trigger_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates an existing function definition in the Data Catalog
#'
#' Updates an existing function definition in the Data Catalog.
#'
#' @param DatabaseName The name of the catalog database where the function to be updated is located.
#' @param FunctionName The name of the function.
#' @param FunctionInput A `FunctionInput` object that re-defines the function in the Data Catalog.
#' @param CatalogId The ID of the Data Catalog where the function to be updated is located. If none is supplied, the AWS account ID is used by default.
#'
#' @examples
#'
#' @export
update_user_defined_function <- function (DatabaseName, FunctionName, 
    FunctionInput, CatalogId = NULL) 
{
    op <- Operation(name = "UpdateUserDefinedFunction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_user_defined_function_input(DatabaseName = DatabaseName, 
        FunctionName = FunctionName, FunctionInput = FunctionInput, 
        CatalogId = CatalogId)
    output <- update_user_defined_function_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
