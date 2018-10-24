add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", min = 1L, max = 128L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", min = 0L, max = 256L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        max = 100L), ResourceId = structure(logical(0), shape = "EntityId", 
        type = "string", min = 1L, max = 64L, pattern = "[a-zA-Z0-9_.-]+"), 
        ResourceType = structure(logical(0), shape = "TaggableResourceType", 
            type = "string")), shape = "AddTagsInput", type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), ResourceType = structure(logical(0), 
        shape = "TaggableResourceType", type = "string")), shape = "AddTagsOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_batch_prediction_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), BatchPredictionName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        MLModelId = structure(logical(0), shape = "EntityId", 
            type = "string", min = 1L, max = 64L, pattern = "[a-zA-Z0-9_.-]+"), 
        BatchPredictionDataSourceId = structure(logical(0), shape = "EntityId", 
            type = "string", min = 1L, max = 64L, pattern = "[a-zA-Z0-9_.-]+"), 
        OutputUri = structure(logical(0), shape = "S3Url", type = "string", 
            max = 2048L, pattern = "s3://([^/]+)(/.*)?")), shape = "CreateBatchPredictionInput", 
        type = "structure")
    return(populate(args, shape))
}

create_batch_prediction_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateBatchPredictionOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_data_source_from_rds_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), DataSourceName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        RDSData = structure(list(DatabaseInformation = structure(list(InstanceIdentifier = structure(logical(0), 
            shape = "RDSInstanceIdentifier", type = "string", 
            min = 1L, max = 63L, pattern = "[a-z0-9-]+"), DatabaseName = structure(logical(0), 
            shape = "RDSDatabaseName", type = "string", min = 1L, 
            max = 64L)), shape = "RDSDatabase", type = "structure"), 
            SelectSqlQuery = structure(logical(0), shape = "RDSSelectSqlQuery", 
                type = "string", min = 1L, max = 16777216L), 
            DatabaseCredentials = structure(list(Username = structure(logical(0), 
                shape = "RDSDatabaseUsername", type = "string", 
                min = 1L, max = 128L), Password = structure(logical(0), 
                shape = "RDSDatabasePassword", type = "string", 
                min = 8L, max = 128L)), shape = "RDSDatabaseCredentials", 
                type = "structure"), S3StagingLocation = structure(logical(0), 
                shape = "S3Url", type = "string", max = 2048L, 
                pattern = "s3://([^/]+)(/.*)?"), DataRearrangement = structure(logical(0), 
                shape = "DataRearrangement", type = "string"), 
            DataSchema = structure(logical(0), shape = "DataSchema", 
                type = "string", max = 131071L), DataSchemaUri = structure(logical(0), 
                shape = "S3Url", type = "string", max = 2048L, 
                pattern = "s3://([^/]+)(/.*)?"), ResourceRole = structure(logical(0), 
                shape = "EDPResourceRole", type = "string", min = 1L, 
                max = 64L), ServiceRole = structure(logical(0), 
                shape = "EDPServiceRole", type = "string", min = 1L, 
                max = 64L), SubnetId = structure(logical(0), 
                shape = "EDPSubnetId", type = "string", min = 1L, 
                max = 255L), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "EDPSecurityGroupId", type = "string", 
                min = 1L, max = 255L)), shape = "EDPSecurityGroupIds", 
                type = "list")), shape = "RDSDataSpec", type = "structure"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            min = 1L, max = 110L), ComputeStatistics = structure(logical(0), 
            shape = "ComputeStatistics", type = "boolean")), 
        shape = "CreateDataSourceFromRDSInput", type = "structure")
    return(populate(args, shape))
}

create_data_source_from_rds_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateDataSourceFromRDSOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_data_source_from_redshift_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), DataSourceName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        DataSpec = structure(list(DatabaseInformation = structure(list(DatabaseName = structure(logical(0), 
            shape = "RedshiftDatabaseName", type = "string", 
            min = 1L, max = 64L, pattern = "[a-z0-9]+"), ClusterIdentifier = structure(logical(0), 
            shape = "RedshiftClusterIdentifier", type = "string", 
            min = 1L, max = 63L, pattern = "[a-z0-9-]+")), shape = "RedshiftDatabase", 
            type = "structure"), SelectSqlQuery = structure(logical(0), 
            shape = "RedshiftSelectSqlQuery", type = "string", 
            min = 1L, max = 16777216L), DatabaseCredentials = structure(list(Username = structure(logical(0), 
            shape = "RedshiftDatabaseUsername", type = "string", 
            min = 1L, max = 128L), Password = structure(logical(0), 
            shape = "RedshiftDatabasePassword", type = "string", 
            min = 8L, max = 64L)), shape = "RedshiftDatabaseCredentials", 
            type = "structure"), S3StagingLocation = structure(logical(0), 
            shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
            DataRearrangement = structure(logical(0), shape = "DataRearrangement", 
                type = "string"), DataSchema = structure(logical(0), 
                shape = "DataSchema", type = "string", max = 131071L), 
            DataSchemaUri = structure(logical(0), shape = "S3Url", 
                type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?")), 
            shape = "RedshiftDataSpec", type = "structure"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            min = 1L, max = 110L), ComputeStatistics = structure(logical(0), 
            shape = "ComputeStatistics", type = "boolean")), 
        shape = "CreateDataSourceFromRedshiftInput", type = "structure")
    return(populate(args, shape))
}

create_data_source_from_redshift_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateDataSourceFromRedshiftOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_data_source_from_s3_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), DataSourceName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        DataSpec = structure(list(DataLocationS3 = structure(logical(0), 
            shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
            DataRearrangement = structure(logical(0), shape = "DataRearrangement", 
                type = "string"), DataSchema = structure(logical(0), 
                shape = "DataSchema", type = "string", max = 131071L), 
            DataSchemaLocationS3 = structure(logical(0), shape = "S3Url", 
                type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?")), 
            shape = "S3DataSpec", type = "structure"), ComputeStatistics = structure(logical(0), 
            shape = "ComputeStatistics", type = "boolean")), 
        shape = "CreateDataSourceFromS3Input", type = "structure")
    return(populate(args, shape))
}

create_data_source_from_s3_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateDataSourceFromS3Output", 
        type = "structure")
    return(populate(args, shape))
}

create_evaluation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), EvaluationName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        MLModelId = structure(logical(0), shape = "EntityId", 
            type = "string", min = 1L, max = 64L, pattern = "[a-zA-Z0-9_.-]+"), 
        EvaluationDataSourceId = structure(logical(0), shape = "EntityId", 
            type = "string", min = 1L, max = 64L, pattern = "[a-zA-Z0-9_.-]+")), 
        shape = "CreateEvaluationInput", type = "structure")
    return(populate(args, shape))
}

create_evaluation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateEvaluationOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_ml_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), MLModelName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        MLModelType = structure(logical(0), shape = "MLModelType", 
            type = "string"), Parameters = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "TrainingParameters", 
            type = "map"), TrainingDataSourceId = structure(logical(0), 
            shape = "EntityId", type = "string", min = 1L, max = 64L, 
            pattern = "[a-zA-Z0-9_.-]+"), Recipe = structure(logical(0), 
            shape = "Recipe", type = "string", max = 131071L), 
        RecipeUri = structure(logical(0), shape = "S3Url", type = "string", 
            max = 2048L, pattern = "s3://([^/]+)(/.*)?")), shape = "CreateMLModelInput", 
        type = "structure")
    return(populate(args, shape))
}

create_ml_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateMLModelOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_realtime_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "CreateRealtimeEndpointInput", 
        type = "structure")
    return(populate(args, shape))
}

create_realtime_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), RealtimeEndpointInfo = structure(list(PeakRequestsPerSecond = structure(logical(0), 
        shape = "IntegerType", type = "integer"), CreatedAt = structure(logical(0), 
        shape = "EpochTime", type = "timestamp"), EndpointUrl = structure(logical(0), 
        shape = "VipURL", type = "string", max = 2048L, pattern = "https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?"), 
        EndpointStatus = structure(logical(0), shape = "RealtimeEndpointStatus", 
            type = "string")), shape = "RealtimeEndpointInfo", 
        type = "structure")), shape = "CreateRealtimeEndpointOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_batch_prediction_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteBatchPredictionInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_batch_prediction_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteBatchPredictionOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteDataSourceInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteDataSourceOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_evaluation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteEvaluationInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_evaluation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteEvaluationOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_ml_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteMLModelInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_ml_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteMLModelOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_realtime_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "DeleteRealtimeEndpointInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_realtime_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), RealtimeEndpointInfo = structure(list(PeakRequestsPerSecond = structure(logical(0), 
        shape = "IntegerType", type = "integer"), CreatedAt = structure(logical(0), 
        shape = "EpochTime", type = "timestamp"), EndpointUrl = structure(logical(0), 
        shape = "VipURL", type = "string", max = 2048L, pattern = "https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?"), 
        EndpointStatus = structure(logical(0), shape = "RealtimeEndpointStatus", 
            type = "string")), shape = "RealtimeEndpointInfo", 
        type = "structure")), shape = "DeleteRealtimeEndpointOutput", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TagKeys = structure(list(structure(logical(0), 
        shape = "TagKey", type = "string", min = 1L, max = 128L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "TagKeyList", 
        type = "list", max = 100L), ResourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), ResourceType = structure(logical(0), 
        shape = "TaggableResourceType", type = "string")), shape = "DeleteTagsInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), ResourceType = structure(logical(0), 
        shape = "TaggableResourceType", type = "string")), shape = "DeleteTagsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_batch_predictions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterVariable = structure(logical(0), 
        shape = "BatchPredictionFilterVariable", type = "string"), 
        EQ = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        NE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        Prefix = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        SortOrder = structure(logical(0), shape = "SortOrder", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "StringType", type = "string"), Limit = structure(logical(0), 
            shape = "PageLimit", type = "integer", min = 1L, 
            max = 100L)), shape = "DescribeBatchPredictionsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_batch_predictions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Results = structure(list(structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), BatchPredictionDataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), InputDataLocationS3 = structure(logical(0), 
        shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        CreatedByIamUser = structure(logical(0), shape = "AwsUserArn", 
            type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "EntityName", type = "string", max = 1024L, 
            pattern = ".*\\S.*|^$"), Status = structure(logical(0), 
            shape = "EntityStatus", type = "string"), OutputUri = structure(logical(0), 
            shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 10240L), ComputeTime = structure(logical(0), 
            shape = "LongType", type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), TotalRecordCount = structure(logical(0), 
            shape = "LongType", type = "long"), InvalidRecordCount = structure(logical(0), 
            shape = "LongType", type = "long")), shape = "BatchPrediction", 
        type = "structure")), shape = "BatchPredictions", type = "list"), 
        NextToken = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "DescribeBatchPredictionsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_data_sources_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterVariable = structure(logical(0), 
        shape = "DataSourceFilterVariable", type = "string"), 
        EQ = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        NE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        Prefix = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        SortOrder = structure(logical(0), shape = "SortOrder", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "StringType", type = "string"), Limit = structure(logical(0), 
            shape = "PageLimit", type = "integer", min = 1L, 
            max = 100L)), shape = "DescribeDataSourcesInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_data_sources_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Results = structure(list(structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), DataLocationS3 = structure(logical(0), 
        shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        DataRearrangement = structure(logical(0), shape = "DataRearrangement", 
            type = "string"), CreatedByIamUser = structure(logical(0), 
            shape = "AwsUserArn", type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), DataSizeInBytes = structure(logical(0), 
            shape = "LongType", type = "long"), NumberOfFiles = structure(logical(0), 
            shape = "LongType", type = "long"), Name = structure(logical(0), 
            shape = "EntityName", type = "string", max = 1024L, 
            pattern = ".*\\S.*|^$"), Status = structure(logical(0), 
            shape = "EntityStatus", type = "string"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 10240L), 
        RedshiftMetadata = structure(list(RedshiftDatabase = structure(list(DatabaseName = structure(logical(0), 
            shape = "RedshiftDatabaseName", type = "string", 
            min = 1L, max = 64L, pattern = "[a-z0-9]+"), ClusterIdentifier = structure(logical(0), 
            shape = "RedshiftClusterIdentifier", type = "string", 
            min = 1L, max = 63L, pattern = "[a-z0-9-]+")), shape = "RedshiftDatabase", 
            type = "structure"), DatabaseUserName = structure(logical(0), 
            shape = "RedshiftDatabaseUsername", type = "string", 
            min = 1L, max = 128L), SelectSqlQuery = structure(logical(0), 
            shape = "RedshiftSelectSqlQuery", type = "string", 
            min = 1L, max = 16777216L)), shape = "RedshiftMetadata", 
            type = "structure"), RDSMetadata = structure(list(Database = structure(list(InstanceIdentifier = structure(logical(0), 
            shape = "RDSInstanceIdentifier", type = "string", 
            min = 1L, max = 63L, pattern = "[a-z0-9-]+"), DatabaseName = structure(logical(0), 
            shape = "RDSDatabaseName", type = "string", min = 1L, 
            max = 64L)), shape = "RDSDatabase", type = "structure"), 
            DatabaseUserName = structure(logical(0), shape = "RDSDatabaseUsername", 
                type = "string", min = 1L, max = 128L), SelectSqlQuery = structure(logical(0), 
                shape = "RDSSelectSqlQuery", type = "string", 
                min = 1L, max = 16777216L), ResourceRole = structure(logical(0), 
                shape = "EDPResourceRole", type = "string", min = 1L, 
                max = 64L), ServiceRole = structure(logical(0), 
                shape = "EDPServiceRole", type = "string", min = 1L, 
                max = 64L), DataPipelineId = structure(logical(0), 
                shape = "EDPPipelineId", type = "string", min = 1L, 
                max = 1024L)), shape = "RDSMetadata", type = "structure"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            min = 1L, max = 110L), ComputeStatistics = structure(logical(0), 
            shape = "ComputeStatistics", type = "boolean"), ComputeTime = structure(logical(0), 
            shape = "LongType", type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp")), shape = "DataSource", 
        type = "structure")), shape = "DataSources", type = "list"), 
        NextToken = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "DescribeDataSourcesOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_evaluations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterVariable = structure(logical(0), 
        shape = "EvaluationFilterVariable", type = "string"), 
        EQ = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        NE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        Prefix = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        SortOrder = structure(logical(0), shape = "SortOrder", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "StringType", type = "string"), Limit = structure(logical(0), 
            shape = "PageLimit", type = "integer", min = 1L, 
            max = 100L)), shape = "DescribeEvaluationsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_evaluations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Results = structure(list(structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), EvaluationDataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), InputDataLocationS3 = structure(logical(0), 
        shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        CreatedByIamUser = structure(logical(0), shape = "AwsUserArn", 
            type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "EntityName", type = "string", max = 1024L, 
            pattern = ".*\\S.*|^$"), Status = structure(logical(0), 
            shape = "EntityStatus", type = "string"), PerformanceMetrics = structure(list(Properties = structure(list(structure(logical(0), 
            shape = "PerformanceMetricsPropertyValue", type = "string")), 
            shape = "PerformanceMetricsProperties", type = "map")), 
            shape = "PerformanceMetrics", type = "structure"), 
        Message = structure(logical(0), shape = "Message", type = "string", 
            max = 10240L), ComputeTime = structure(logical(0), 
            shape = "LongType", type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp")), shape = "Evaluation", 
        type = "structure")), shape = "Evaluations", type = "list"), 
        NextToken = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "DescribeEvaluationsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_ml_models_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FilterVariable = structure(logical(0), 
        shape = "MLModelFilterVariable", type = "string"), EQ = structure(logical(0), 
        shape = "ComparatorValue", type = "string", max = 1024L, 
        pattern = ".*\\S.*|^$"), GT = structure(logical(0), shape = "ComparatorValue", 
        type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LT = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        GE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        LE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        NE = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        Prefix = structure(logical(0), shape = "ComparatorValue", 
            type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        SortOrder = structure(logical(0), shape = "SortOrder", 
            type = "string"), NextToken = structure(logical(0), 
            shape = "StringType", type = "string"), Limit = structure(logical(0), 
            shape = "PageLimit", type = "integer", min = 1L, 
            max = 100L)), shape = "DescribeMLModelsInput", type = "structure")
    return(populate(args, shape))
}

describe_ml_models_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Results = structure(list(structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), TrainingDataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), CreatedByIamUser = structure(logical(0), 
        shape = "AwsUserArn", type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "MLModelName", type = "string", max = 1024L), 
        Status = structure(logical(0), shape = "EntityStatus", 
            type = "string"), SizeInBytes = structure(logical(0), 
            shape = "LongType", type = "long"), EndpointInfo = structure(list(PeakRequestsPerSecond = structure(logical(0), 
            shape = "IntegerType", type = "integer"), CreatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), EndpointUrl = structure(logical(0), 
            shape = "VipURL", type = "string", max = 2048L, pattern = "https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?"), 
            EndpointStatus = structure(logical(0), shape = "RealtimeEndpointStatus", 
                type = "string")), shape = "RealtimeEndpointInfo", 
            type = "structure"), TrainingParameters = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "TrainingParameters", 
            type = "map"), InputDataLocationS3 = structure(logical(0), 
            shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        Algorithm = structure(logical(0), shape = "Algorithm", 
            type = "string"), MLModelType = structure(logical(0), 
            shape = "MLModelType", type = "string"), ScoreThreshold = structure(logical(0), 
            shape = "ScoreThreshold", type = "float"), ScoreThresholdLastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 10240L), 
        ComputeTime = structure(logical(0), shape = "LongType", 
            type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp")), shape = "MLModel", 
        type = "structure")), shape = "MLModels", type = "list"), 
        NextToken = structure(logical(0), shape = "StringType", 
            type = "string")), shape = "DescribeMLModelsOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), ResourceType = structure(logical(0), 
        shape = "TaggableResourceType", type = "string")), shape = "DescribeTagsInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), ResourceType = structure(logical(0), 
        shape = "TaggableResourceType", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", min = 1L, max = 128L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), Value = structure(logical(0), 
        shape = "TagValue", type = "string", min = 0L, max = 256L, 
        pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), shape = "Tag", 
        type = "structure")), shape = "TagList", type = "list", 
        max = 100L)), shape = "DescribeTagsOutput", type = "structure")
    return(populate(args, shape))
}

get_batch_prediction_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "GetBatchPredictionInput", 
        type = "structure")
    return(populate(args, shape))
}

get_batch_prediction_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), BatchPredictionDataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), InputDataLocationS3 = structure(logical(0), 
        shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        CreatedByIamUser = structure(logical(0), shape = "AwsUserArn", 
            type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "EntityName", type = "string", max = 1024L, 
            pattern = ".*\\S.*|^$"), Status = structure(logical(0), 
            shape = "EntityStatus", type = "string"), OutputUri = structure(logical(0), 
            shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        LogUri = structure(logical(0), shape = "PresignedS3Url", 
            type = "string"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 10240L), 
        ComputeTime = structure(logical(0), shape = "LongType", 
            type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), TotalRecordCount = structure(logical(0), 
            shape = "LongType", type = "long"), InvalidRecordCount = structure(logical(0), 
            shape = "LongType", type = "long")), shape = "GetBatchPredictionOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), Verbose = structure(logical(0), 
        shape = "Verbose", type = "boolean")), shape = "GetDataSourceInput", 
        type = "structure")
    return(populate(args, shape))
}

get_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), DataLocationS3 = structure(logical(0), 
        shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        DataRearrangement = structure(logical(0), shape = "DataRearrangement", 
            type = "string"), CreatedByIamUser = structure(logical(0), 
            shape = "AwsUserArn", type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), DataSizeInBytes = structure(logical(0), 
            shape = "LongType", type = "long"), NumberOfFiles = structure(logical(0), 
            shape = "LongType", type = "long"), Name = structure(logical(0), 
            shape = "EntityName", type = "string", max = 1024L, 
            pattern = ".*\\S.*|^$"), Status = structure(logical(0), 
            shape = "EntityStatus", type = "string"), LogUri = structure(logical(0), 
            shape = "PresignedS3Url", type = "string"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 10240L), 
        RedshiftMetadata = structure(list(RedshiftDatabase = structure(list(DatabaseName = structure(logical(0), 
            shape = "RedshiftDatabaseName", type = "string", 
            min = 1L, max = 64L, pattern = "[a-z0-9]+"), ClusterIdentifier = structure(logical(0), 
            shape = "RedshiftClusterIdentifier", type = "string", 
            min = 1L, max = 63L, pattern = "[a-z0-9-]+")), shape = "RedshiftDatabase", 
            type = "structure"), DatabaseUserName = structure(logical(0), 
            shape = "RedshiftDatabaseUsername", type = "string", 
            min = 1L, max = 128L), SelectSqlQuery = structure(logical(0), 
            shape = "RedshiftSelectSqlQuery", type = "string", 
            min = 1L, max = 16777216L)), shape = "RedshiftMetadata", 
            type = "structure"), RDSMetadata = structure(list(Database = structure(list(InstanceIdentifier = structure(logical(0), 
            shape = "RDSInstanceIdentifier", type = "string", 
            min = 1L, max = 63L, pattern = "[a-z0-9-]+"), DatabaseName = structure(logical(0), 
            shape = "RDSDatabaseName", type = "string", min = 1L, 
            max = 64L)), shape = "RDSDatabase", type = "structure"), 
            DatabaseUserName = structure(logical(0), shape = "RDSDatabaseUsername", 
                type = "string", min = 1L, max = 128L), SelectSqlQuery = structure(logical(0), 
                shape = "RDSSelectSqlQuery", type = "string", 
                min = 1L, max = 16777216L), ResourceRole = structure(logical(0), 
                shape = "EDPResourceRole", type = "string", min = 1L, 
                max = 64L), ServiceRole = structure(logical(0), 
                shape = "EDPServiceRole", type = "string", min = 1L, 
                max = 64L), DataPipelineId = structure(logical(0), 
                shape = "EDPPipelineId", type = "string", min = 1L, 
                max = 1024L)), shape = "RDSMetadata", type = "structure"), 
        RoleARN = structure(logical(0), shape = "RoleARN", type = "string", 
            min = 1L, max = 110L), ComputeStatistics = structure(logical(0), 
            shape = "ComputeStatistics", type = "boolean"), ComputeTime = structure(logical(0), 
            shape = "LongType", type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), DataSourceSchema = structure(logical(0), 
            shape = "DataSchema", type = "string", max = 131071L)), 
        shape = "GetDataSourceOutput", type = "structure")
    return(populate(args, shape))
}

get_evaluation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "GetEvaluationInput", 
        type = "structure")
    return(populate(args, shape))
}

get_evaluation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), EvaluationDataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), InputDataLocationS3 = structure(logical(0), 
        shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        CreatedByIamUser = structure(logical(0), shape = "AwsUserArn", 
            type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "EntityName", type = "string", max = 1024L, 
            pattern = ".*\\S.*|^$"), Status = structure(logical(0), 
            shape = "EntityStatus", type = "string"), PerformanceMetrics = structure(list(Properties = structure(list(structure(logical(0), 
            shape = "PerformanceMetricsPropertyValue", type = "string")), 
            shape = "PerformanceMetricsProperties", type = "map")), 
            shape = "PerformanceMetrics", type = "structure"), 
        LogUri = structure(logical(0), shape = "PresignedS3Url", 
            type = "string"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 10240L), 
        ComputeTime = structure(logical(0), shape = "LongType", 
            type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp")), shape = "GetEvaluationOutput", 
        type = "structure")
    return(populate(args, shape))
}

get_ml_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), Verbose = structure(logical(0), 
        shape = "Verbose", type = "boolean")), shape = "GetMLModelInput", 
        type = "structure")
    return(populate(args, shape))
}

get_ml_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), TrainingDataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), CreatedByIamUser = structure(logical(0), 
        shape = "AwsUserArn", type = "string", pattern = "arn:aws:iam::[0-9]+:((user/.+)|(root))"), 
        CreatedAt = structure(logical(0), shape = "EpochTime", 
            type = "timestamp"), LastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Name = structure(logical(0), 
            shape = "MLModelName", type = "string", max = 1024L), 
        Status = structure(logical(0), shape = "EntityStatus", 
            type = "string"), SizeInBytes = structure(logical(0), 
            shape = "LongType", type = "long"), EndpointInfo = structure(list(PeakRequestsPerSecond = structure(logical(0), 
            shape = "IntegerType", type = "integer"), CreatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), EndpointUrl = structure(logical(0), 
            shape = "VipURL", type = "string", max = 2048L, pattern = "https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?"), 
            EndpointStatus = structure(logical(0), shape = "RealtimeEndpointStatus", 
                type = "string")), shape = "RealtimeEndpointInfo", 
            type = "structure"), TrainingParameters = structure(list(structure(logical(0), 
            shape = "StringType", type = "string")), shape = "TrainingParameters", 
            type = "map"), InputDataLocationS3 = structure(logical(0), 
            shape = "S3Url", type = "string", max = 2048L, pattern = "s3://([^/]+)(/.*)?"), 
        MLModelType = structure(logical(0), shape = "MLModelType", 
            type = "string"), ScoreThreshold = structure(logical(0), 
            shape = "ScoreThreshold", type = "float"), ScoreThresholdLastUpdatedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), LogUri = structure(logical(0), 
            shape = "PresignedS3Url", type = "string"), Message = structure(logical(0), 
            shape = "Message", type = "string", max = 10240L), 
        ComputeTime = structure(logical(0), shape = "LongType", 
            type = "long"), FinishedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), StartedAt = structure(logical(0), 
            shape = "EpochTime", type = "timestamp"), Recipe = structure(logical(0), 
            shape = "Recipe", type = "string", max = 131071L), 
        Schema = structure(logical(0), shape = "DataSchema", 
            type = "string", max = 131071L)), shape = "GetMLModelOutput", 
        type = "structure")
    return(populate(args, shape))
}

predict_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), Record = structure(list(structure(logical(0), 
        shape = "VariableValue", type = "string")), shape = "Record", 
        type = "map"), PredictEndpoint = structure(logical(0), 
        shape = "VipURL", type = "string", max = 2048L, pattern = "https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?")), 
        shape = "PredictInput", type = "structure")
    return(populate(args, shape))
}

predict_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Prediction = structure(list(PredictedLabel = structure(logical(0), 
        shape = "Label", type = "string", min = 1L, locationName = "predictedLabel"), 
        PredictedValue = structure(logical(0), shape = "floatLabel", 
            type = "float", locationName = "predictedValue"), 
        PredictedScores = structure(list(structure(logical(0), 
            shape = "ScoreValue", type = "float")), shape = "ScoreValuePerLabelMap", 
            type = "map", locationName = "predictedScores"), 
        Details = structure(list(structure(logical(0), shape = "DetailsValue", 
            type = "string", min = 1L)), shape = "DetailsMap", 
            type = "map", locationName = "details")), shape = "Prediction", 
        type = "structure")), shape = "PredictOutput", type = "structure")
    return(populate(args, shape))
}

update_batch_prediction_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), BatchPredictionName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$")), 
        shape = "UpdateBatchPredictionInput", type = "structure")
    return(populate(args, shape))
}

update_batch_prediction_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BatchPredictionId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "UpdateBatchPredictionOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_data_source_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), DataSourceName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$")), 
        shape = "UpdateDataSourceInput", type = "structure")
    return(populate(args, shape))
}

update_data_source_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataSourceId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "UpdateDataSourceOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_evaluation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), EvaluationName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$")), 
        shape = "UpdateEvaluationInput", type = "structure")
    return(populate(args, shape))
}

update_evaluation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EvaluationId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "UpdateEvaluationOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_ml_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+"), MLModelName = structure(logical(0), 
        shape = "EntityName", type = "string", max = 1024L, pattern = ".*\\S.*|^$"), 
        ScoreThreshold = structure(logical(0), shape = "ScoreThreshold", 
            type = "float")), shape = "UpdateMLModelInput", type = "structure")
    return(populate(args, shape))
}

update_ml_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MLModelId = structure(logical(0), 
        shape = "EntityId", type = "string", min = 1L, max = 64L, 
        pattern = "[a-zA-Z0-9_.-]+")), shape = "UpdateMLModelOutput", 
        type = "structure")
    return(populate(args, shape))
}
