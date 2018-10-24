#' Adds one or more tags to an object, up to a limit of 10
#'
#' Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, `AddTags` updates the tag\'s value.
#'
#' @param Tags The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.
#' @param ResourceId The ID of the ML object to tag. For example, `exampleModelId`.
#' @param ResourceType The type of the ML object to tag.
#'
#' @examples
#'
#' @export
add_tags <- function (Tags, ResourceId, ResourceType) 
{
    op <- Operation(name = "AddTags", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- add_tags_input(Tags = Tags, ResourceId = ResourceId, 
        ResourceType = ResourceType)
    output <- add_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates predictions for a group of observations
#'
#' Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a `DataSource`. This operation creates a new `BatchPrediction`, and uses an `MLModel` and the data files referenced by the `DataSource` as information sources.
#' 
#' `CreateBatchPrediction` is an asynchronous operation. In response to `CreateBatchPrediction`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `BatchPrediction` status to `PENDING`. After the `BatchPrediction` completes, Amazon ML sets the status to `COMPLETED`.
#' 
#' You can poll for status updates by using the GetBatchPrediction operation and checking the `Status` parameter of the result. After the `COMPLETED` status appears, the results are available in the location specified by the `OutputUri` parameter.
#'
#' @param BatchPredictionId A user-supplied ID that uniquely identifies the `BatchPrediction`.
#' @param MLModelId The ID of the `MLModel` that will generate predictions for the group of observations.
#' @param BatchPredictionDataSourceId The ID of the `DataSource` that points to the group of observations to predict.
#' @param OutputUri The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the `s3 key` portion of the `outputURI` field: \':\', \'//\', \'/./\', \'/../\'.
#' 
#' Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the [Amazon Machine Learning Developer Guide](http://docs.aws.amazon.com/machine-learning/latest/dg).
#' @param BatchPredictionName A user-supplied name or description of the `BatchPrediction`. `BatchPredictionName` can only use the UTF-8 character set.
#'
#' @examples
#'
#' @export
create_batch_prediction <- function (BatchPredictionId, MLModelId, 
    BatchPredictionDataSourceId, OutputUri, BatchPredictionName = NULL) 
{
    op <- Operation(name = "CreateBatchPrediction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_batch_prediction_input(BatchPredictionId = BatchPredictionId, 
        MLModelId = MLModelId, BatchPredictionDataSourceId = BatchPredictionDataSourceId, 
        OutputUri = OutputUri, BatchPredictionName = BatchPredictionName)
    output <- create_batch_prediction_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `DataSource` object from an [Amazon Relational Database Service](http://aws
#'
#' Creates a `DataSource` object from an [Amazon Relational Database Service](http://aws.amazon.com/rds/) (Amazon RDS). A `DataSource` references data that can be used to perform `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.
#' 
#' `CreateDataSourceFromRDS` is an asynchronous operation. In response to `CreateDataSourceFromRDS`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `DataSource` status to `PENDING`. After the `DataSource` is created and ready for use, Amazon ML sets the `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or `PENDING` state can be used only to perform `>CreateMLModel`\>, `CreateEvaluation`, or `CreateBatchPrediction` operations.
#' 
#' If Amazon ML cannot accept the input source, it sets the `Status` parameter to `FAILED` and includes an error message in the `Message` attribute of the `GetDataSource` operation response.
#'
#' @param DataSourceId A user-supplied ID that uniquely identifies the `DataSource`. Typically, an Amazon Resource Number (ARN) becomes the ID for a `DataSource`.
#' @param RDSData The data specification of an Amazon RDS `DataSource`:
#' 
#' -   DatabaseInformation -
#' 
#'     -   `DatabaseName` - The name of the Amazon RDS database.
#'     -   `InstanceIdentifier ` - A unique identifier for the Amazon RDS database instance.
#' 
#' -   DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.
#' 
#' -   ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon Simple Storage Service (Amazon S3). For more information, see [Role templates](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html) for data pipelines.
#' 
#' -   ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see [Role templates](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html) for data pipelines.
#' 
#' -   SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a &#91;`SubnetId`, `SecurityGroupIds`&#93; pair for a VPC-based RDS DB instance.
#' 
#' -   SelectSqlQuery - A query that is used to retrieve the observation data for the `Datasource`.
#' 
#' -   S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using `SelectSqlQuery` is stored in this location.
#' 
#' -   DataSchemaUri - The Amazon S3 location of the `DataSchema`.
#' 
#' -   DataSchema - A JSON string representing the schema. This is not required if `DataSchemaUri` is specified.
#' 
#' -   DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the `Datasource`.
#' 
#'     \
#' 
#'     Sample - ` "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"`
#' @param RoleARN The role that Amazon ML assumes on behalf of the user to create and activate a data pipeline in the user\'s account and copy data using the `SelectSqlQuery` query from Amazon RDS to Amazon S3.
#' @param DataSourceName A user-supplied name or description of the `DataSource`.
#' @param ComputeStatistics The compute statistics for a `DataSource`. The statistics are generated from the observation data referenced by a `DataSource`. Amazon ML uses the statistics internally during `MLModel` training. This parameter must be set to `true` if the ``DataSource`` needs to be used for `MLModel` training.
#'
#' @examples
#'
#' @export
create_data_source_from_rds <- function (DataSourceId, RDSData, 
    RoleARN, DataSourceName = NULL, ComputeStatistics = NULL) 
{
    op <- Operation(name = "CreateDataSourceFromRDS", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_data_source_from_rds_input(DataSourceId = DataSourceId, 
        RDSData = RDSData, RoleARN = RoleARN, DataSourceName = DataSourceName, 
        ComputeStatistics = ComputeStatistics)
    output <- create_data_source_from_rds_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `DataSource` from a database hosted on an Amazon Redshift cluster
#'
#' Creates a `DataSource` from a database hosted on an Amazon Redshift cluster. A `DataSource` references data that can be used to perform either `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.
#' 
#' `CreateDataSourceFromRedshift` is an asynchronous operation. In response to `CreateDataSourceFromRedshift`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `DataSource` status to `PENDING`. After the `DataSource` is created and ready for use, Amazon ML sets the `Status` parameter to `COMPLETED`. `DataSource` in `COMPLETED` or `PENDING` states can be used to perform only `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.
#' 
#' If Amazon ML can\'t accept the input source, it sets the `Status` parameter to `FAILED` and includes an error message in the `Message` attribute of the `GetDataSource` operation response.
#' 
#' The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a `SelectSqlQuery` query. Amazon ML executes an `Unload` command in Amazon Redshift to transfer the result set of the `SelectSqlQuery` query to `S3StagingLocation`.
#' 
#' After the `DataSource` has been created, it\'s ready for use in evaluations and batch predictions. If you plan to use the `DataSource` to train an `MLModel`, the `DataSource` also requires a recipe. A recipe describes how each input variable will be used in training an `MLModel`. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.
#' 
#' You can\'t change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call `GetDataSource` for an existing datasource and copy the values to a `CreateDataSource` call. Change the settings that you want to change and make sure that all required fields have the appropriate values.
#'
#' @param DataSourceId A user-supplied ID that uniquely identifies the `DataSource`.
#' @param DataSpec The data specification of an Amazon Redshift `DataSource`:
#' 
#' -   DatabaseInformation -
#' 
#'     -   `DatabaseName` - The name of the Amazon Redshift database.
#'     -   ` ClusterIdentifier` - The unique ID for the Amazon Redshift cluster.
#' 
#' -   DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.
#' 
#' -   SelectSqlQuery - The query that is used to retrieve the observation data for the `Datasource`.
#' 
#' -   S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon Redshift data. The data retrieved from Amazon Redshift using the `SelectSqlQuery` query is stored in this location.
#' 
#' -   DataSchemaUri - The Amazon S3 location of the `DataSchema`.
#' 
#' -   DataSchema - A JSON string representing the schema. This is not required if `DataSchemaUri` is specified.
#' 
#' -   DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the `DataSource`.
#' 
#'     Sample - ` "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"`
#' @param RoleARN A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:
#' 
#' -   A security group to allow Amazon ML to execute the `SelectSqlQuery` query on an Amazon Redshift cluster
#' 
#' -   An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the `S3StagingLocation`
#' @param DataSourceName A user-supplied name or description of the `DataSource`.
#' @param ComputeStatistics The compute statistics for a `DataSource`. The statistics are generated from the observation data referenced by a `DataSource`. Amazon ML uses the statistics internally during `MLModel` training. This parameter must be set to `true` if the `DataSource` needs to be used for `MLModel` training.
#'
#' @examples
#'
#' @export
create_data_source_from_redshift <- function (DataSourceId, DataSpec, 
    RoleARN, DataSourceName = NULL, ComputeStatistics = NULL) 
{
    op <- Operation(name = "CreateDataSourceFromRedshift", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_data_source_from_redshift_input(DataSourceId = DataSourceId, 
        DataSpec = DataSpec, RoleARN = RoleARN, DataSourceName = DataSourceName, 
        ComputeStatistics = ComputeStatistics)
    output <- create_data_source_from_redshift_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a `DataSource` object
#'
#' Creates a `DataSource` object. A `DataSource` references data that can be used to perform `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.
#' 
#' `CreateDataSourceFromS3` is an asynchronous operation. In response to `CreateDataSourceFromS3`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `DataSource` status to `PENDING`. After the `DataSource` has been created and is ready for use, Amazon ML sets the `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or `PENDING` state can be used to perform only `CreateMLModel`, `CreateEvaluation` or `CreateBatchPrediction` operations.
#' 
#' If Amazon ML can\'t accept the input source, it sets the `Status` parameter to `FAILED` and includes an error message in the `Message` attribute of the `GetDataSource` operation response.
#' 
#' The observation data used in a `DataSource` should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the `DataSource`.
#' 
#' After the `DataSource` has been created, it\'s ready to use in evaluations and batch predictions. If you plan to use the `DataSource` to train an `MLModel`, the `DataSource` also needs a recipe. A recipe describes how each input variable will be used in training an `MLModel`. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.
#'
#' @param DataSourceId A user-supplied identifier that uniquely identifies the `DataSource`.
#' @param DataSpec The data specification of a `DataSource`:
#' 
#' -   DataLocationS3 - The Amazon S3 location of the observation data.
#' 
#' -   DataSchemaLocationS3 - The Amazon S3 location of the `DataSchema`.
#' 
#' -   DataSchema - A JSON string representing the schema. This is not required if `DataSchemaUri` is specified.
#' 
#' -   DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the `Datasource`.
#' 
#'     Sample - ` "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"`
#' @param DataSourceName A user-supplied name or description of the `DataSource`.
#' @param ComputeStatistics The compute statistics for a `DataSource`. The statistics are generated from the observation data referenced by a `DataSource`. Amazon ML uses the statistics internally during `MLModel` training. This parameter must be set to `true` if the ``DataSource`` needs to be used for `MLModel` training.
#'
#' @examples
#'
#' @export
create_data_source_from_s3 <- function (DataSourceId, DataSpec, 
    DataSourceName = NULL, ComputeStatistics = NULL) 
{
    op <- Operation(name = "CreateDataSourceFromS3", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_data_source_from_s3_input(DataSourceId = DataSourceId, 
        DataSpec = DataSpec, DataSourceName = DataSourceName, 
        ComputeStatistics = ComputeStatistics)
    output <- create_data_source_from_s3_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new `Evaluation` of an `MLModel`
#'
#' Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated on a set of observations associated to a `DataSource`. Like a `DataSource` for an `MLModel`, the `DataSource` for an `Evaluation` contains values for the `Target Variable`. The `Evaluation` compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the `MLModel` functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding `MLModelType`: `BINARY`, `REGRESSION` or `MULTICLASS`.
#' 
#' `CreateEvaluation` is an asynchronous operation. In response to `CreateEvaluation`, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to `PENDING`. After the `Evaluation` is created and ready for use, Amazon ML sets the status to `COMPLETED`.
#' 
#' You can use the `GetEvaluation` operation to check progress of the evaluation during the creation operation.
#'
#' @param EvaluationId A user-supplied ID that uniquely identifies the `Evaluation`.
#' @param MLModelId The ID of the `MLModel` to evaluate.
#' 
#' The schema used in creating the `MLModel` must match the schema of the `DataSource` used in the `Evaluation`.
#' @param EvaluationDataSourceId The ID of the `DataSource` for the evaluation. The schema of the `DataSource` must match the schema used to create the `MLModel`.
#' @param EvaluationName A user-supplied name or description of the `Evaluation`.
#'
#' @examples
#'
#' @export
create_evaluation <- function (EvaluationId, MLModelId, EvaluationDataSourceId, 
    EvaluationName = NULL) 
{
    op <- Operation(name = "CreateEvaluation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_evaluation_input(EvaluationId = EvaluationId, 
        MLModelId = MLModelId, EvaluationDataSourceId = EvaluationDataSourceId, 
        EvaluationName = EvaluationName)
    output <- create_evaluation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new `MLModel` using the `DataSource` and the recipe as information sources
#'
#' Creates a new `MLModel` using the `DataSource` and the recipe as information sources.
#' 
#' An `MLModel` is nearly immutable. Users can update only the `MLModelName` and the `ScoreThreshold` in an `MLModel` without creating a new `MLModel`.
#' 
#' `CreateMLModel` is an asynchronous operation. In response to `CreateMLModel`, Amazon Machine Learning (Amazon ML) immediately returns and sets the `MLModel` status to `PENDING`. After the `MLModel` has been created and ready is for use, Amazon ML sets the status to `COMPLETED`.
#' 
#' You can use the `GetMLModel` operation to check the progress of the `MLModel` during the creation operation.
#' 
#' `CreateMLModel` requires a `DataSource` with computed statistics, which can be created by setting `ComputeStatistics` to `true` in `CreateDataSourceFromRDS`, `CreateDataSourceFromS3`, or `CreateDataSourceFromRedshift` operations.
#'
#' @param MLModelId A user-supplied ID that uniquely identifies the `MLModel`.
#' @param MLModelType The category of supervised learning that this `MLModel` will address. Choose from the following types:
#' 
#' -   Choose `REGRESSION` if the `MLModel` will be used to predict a numeric value.
#' -   Choose `BINARY` if the `MLModel` result has two possible values.
#' -   Choose `MULTICLASS` if the `MLModel` result has a limited number of values.
#' 
#' For more information, see the [Amazon Machine Learning Developer Guide](http://docs.aws.amazon.com/machine-learning/latest/dg).
#' @param TrainingDataSourceId The `DataSource` that points to the training data.
#' @param MLModelName A user-supplied name or description of the `MLModel`.
#' @param Parameters A list of the training parameters in the `MLModel`. The list is implemented as a map of key-value pairs.
#' 
#' The following is the current set of training parameters:
#' 
#' -   `sgd.maxMLModelSizeInBytes` - The maximum allowed size of the model. Depending on the input data, the size of the model might affect its performance.
#' 
#'     The value is an integer that ranges from `100000` to `2147483648`. The default value is `33554432`.
#' 
#' -   `sgd.maxPasses` - The number of times that the training process traverses the observations to build the `MLModel`. The value is an integer that ranges from `1` to `10000`. The default value is `10`.
#' 
#' -   `sgd.shuffleType` - Whether Amazon ML shuffles the training data. Shuffling the data improves a model\'s ability to find the optimal solution for a variety of data types. The valid values are `auto` and `none`. The default value is `none`. We strongly recommend that you shuffle your data.
#' 
#' -   `sgd.l1RegularizationAmount` - The coefficient regularization L1 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to zero, resulting in a sparse feature set. If you use this parameter, start by specifying a small value, such as `1.0E-08`.
#' 
#'     The value is a double that ranges from `0` to `MAX_DOUBLE`. The default is to not use L1 normalization. This parameter can\'t be used when `L2` is specified. Use this parameter sparingly.
#' 
#' -   `sgd.l2RegularizationAmount` - The coefficient regularization L2 norm. It controls overfitting the data by penalizing large coefficients. This tends to drive coefficients to small, nonzero values. If you use this parameter, start by specifying a small value, such as `1.0E-08`.
#' 
#'     The value is a double that ranges from `0` to `MAX_DOUBLE`. The default is to not use L2 normalization. This parameter can\'t be used when `L1` is specified. Use this parameter sparingly.
#' @param Recipe The data recipe for creating the `MLModel`. You must specify either the recipe or its URI. If you don\'t specify a recipe or its URI, Amazon ML creates a default.
#' @param RecipeUri The Amazon Simple Storage Service (Amazon S3) location and file name that contains the `MLModel` recipe. You must specify either the recipe or its URI. If you don\'t specify a recipe or its URI, Amazon ML creates a default.
#'
#' @examples
#'
#' @export
create_ml_model <- function (MLModelId, MLModelType, TrainingDataSourceId, 
    MLModelName = NULL, Parameters = NULL, Recipe = NULL, RecipeUri = NULL) 
{
    op <- Operation(name = "CreateMLModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_ml_model_input(MLModelId = MLModelId, MLModelType = MLModelType, 
        TrainingDataSourceId = TrainingDataSourceId, MLModelName = MLModelName, 
        Parameters = Parameters, Recipe = Recipe, RecipeUri = RecipeUri)
    output <- create_ml_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a real-time endpoint for the `MLModel`
#'
#' Creates a real-time endpoint for the `MLModel`. The endpoint contains the URI of the `MLModel`; that is, the location to send real-time prediction requests for the specified `MLModel`.
#'
#' @param MLModelId The ID assigned to the `MLModel` during creation.
#'
#' @examples
#'
#' @export
create_realtime_endpoint <- function (MLModelId) 
{
    op <- Operation(name = "CreateRealtimeEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_realtime_endpoint_input(MLModelId = MLModelId)
    output <- create_realtime_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns the DELETED status to a `BatchPrediction`, rendering it unusable
#'
#' Assigns the DELETED status to a `BatchPrediction`, rendering it unusable.
#' 
#' After using the `DeleteBatchPrediction` operation, you can use the GetBatchPrediction operation to verify that the status of the `BatchPrediction` changed to DELETED.
#' 
#' **Caution:** The result of the `DeleteBatchPrediction` operation is irreversible.
#'
#' @param BatchPredictionId A user-supplied ID that uniquely identifies the `BatchPrediction`.
#'
#' @examples
#'
#' @export
delete_batch_prediction <- function (BatchPredictionId) 
{
    op <- Operation(name = "DeleteBatchPrediction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_batch_prediction_input(BatchPredictionId = BatchPredictionId)
    output <- delete_batch_prediction_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns the DELETED status to a `DataSource`, rendering it unusable
#'
#' Assigns the DELETED status to a `DataSource`, rendering it unusable.
#' 
#' After using the `DeleteDataSource` operation, you can use the GetDataSource operation to verify that the status of the `DataSource` changed to DELETED.
#' 
#' **Caution:** The results of the `DeleteDataSource` operation are irreversible.
#'
#' @param DataSourceId A user-supplied ID that uniquely identifies the `DataSource`.
#'
#' @examples
#'
#' @export
delete_data_source <- function (DataSourceId) 
{
    op <- Operation(name = "DeleteDataSource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_data_source_input(DataSourceId = DataSourceId)
    output <- delete_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns the `DELETED` status to an `Evaluation`, rendering it unusable
#'
#' Assigns the `DELETED` status to an `Evaluation`, rendering it unusable.
#' 
#' After invoking the `DeleteEvaluation` operation, you can use the `GetEvaluation` operation to verify that the status of the `Evaluation` changed to `DELETED`.
#' 
#' Caution
#' 
#' The results of the `DeleteEvaluation` operation are irreversible.
#'
#' @param EvaluationId A user-supplied ID that uniquely identifies the `Evaluation` to delete.
#'
#' @examples
#'
#' @export
delete_evaluation <- function (EvaluationId) 
{
    op <- Operation(name = "DeleteEvaluation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_evaluation_input(EvaluationId = EvaluationId)
    output <- delete_evaluation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns the `DELETED` status to an `MLModel`, rendering it unusable
#'
#' Assigns the `DELETED` status to an `MLModel`, rendering it unusable.
#' 
#' After using the `DeleteMLModel` operation, you can use the `GetMLModel` operation to verify that the status of the `MLModel` changed to DELETED.
#' 
#' **Caution:** The result of the `DeleteMLModel` operation is irreversible.
#'
#' @param MLModelId A user-supplied ID that uniquely identifies the `MLModel`.
#'
#' @examples
#'
#' @export
delete_ml_model <- function (MLModelId) 
{
    op <- Operation(name = "DeleteMLModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_ml_model_input(MLModelId = MLModelId)
    output <- delete_ml_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a real time endpoint of an `MLModel`
#'
#' Deletes a real time endpoint of an `MLModel`.
#'
#' @param MLModelId The ID assigned to the `MLModel` during creation.
#'
#' @examples
#'
#' @export
delete_realtime_endpoint <- function (MLModelId) 
{
    op <- Operation(name = "DeleteRealtimeEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_realtime_endpoint_input(MLModelId = MLModelId)
    output <- delete_realtime_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified tags associated with an ML object
#'
#' Deletes the specified tags associated with an ML object. After this operation is complete, you can\'t recover deleted tags.
#' 
#' If you specify a tag that doesn\'t exist, Amazon ML ignores it.
#'
#' @param TagKeys One or more tags to delete.
#' @param ResourceId The ID of the tagged ML object. For example, `exampleModelId`.
#' @param ResourceType The type of the tagged ML object.
#'
#' @examples
#'
#' @export
delete_tags <- function (TagKeys, ResourceId, ResourceType) 
{
    op <- Operation(name = "DeleteTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_tags_input(TagKeys = TagKeys, ResourceId = ResourceId, 
        ResourceType = ResourceType)
    output <- delete_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of `BatchPrediction` operations that match the search criteria in the request
#'
#' Returns a list of `BatchPrediction` operations that match the search criteria in the request.
#'
#' @param FilterVariable Use one of the following variables to filter a list of `BatchPrediction`:
#' 
#' -   `CreatedAt` - Sets the search criteria to the `BatchPrediction` creation date.
#' -   `Status` - Sets the search criteria to the `BatchPrediction` status.
#' -   `Name` - Sets the search criteria to the contents of the `BatchPrediction` `Name`.
#' -   `IAMUser` - Sets the search criteria to the user account that invoked the `BatchPrediction` creation.
#' -   `MLModelId` - Sets the search criteria to the `MLModel` used in the `BatchPrediction`.
#' -   `DataSourceId` - Sets the search criteria to the `DataSource` used in the `BatchPrediction`.
#' -   `DataURI` - Sets the search criteria to the data file(s) used in the `BatchPrediction`. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.
#' @param EQ The equal to operator. The `BatchPrediction` results will have `FilterVariable` values that exactly match the value specified with `EQ`.
#' @param GT The greater than operator. The `BatchPrediction` results will have `FilterVariable` values that are greater than the value specified with `GT`.
#' @param LT The less than operator. The `BatchPrediction` results will have `FilterVariable` values that are less than the value specified with `LT`.
#' @param GE The greater than or equal to operator. The `BatchPrediction` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.
#' @param LE The less than or equal to operator. The `BatchPrediction` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.
#' @param NE The not equal to operator. The `BatchPrediction` results will have `FilterVariable` values not equal to the value specified with `NE`.
#' @param Prefix A string that is found at the beginning of a variable, such as `Name` or `Id`.
#' 
#' For example, a `Batch Prediction` operation could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `BatchPrediction`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:
#' 
#' -   2014-09
#' 
#' -   2014-09-09
#' 
#' -   2014-09-09-Holiday
#' @param SortOrder A two-value parameter that determines the sequence of the resulting list of `MLModel`s.
#' 
#' -   `asc` - Arranges the list in ascending order (A-Z, 0-9).
#' -   `dsc` - Arranges the list in descending order (Z-A, 9-0).
#' 
#' Results are sorted by `FilterVariable`.
#' @param NextToken An ID of the page in the paginated results.
#' @param Limit The number of pages of information to include in the result. The range of acceptable values is `1` through `100`. The default value is `100`.
#'
#' @examples
#'
#' @export
describe_batch_predictions <- function (FilterVariable = NULL, 
    EQ = NULL, GT = NULL, LT = NULL, GE = NULL, LE = NULL, NE = NULL, 
    Prefix = NULL, SortOrder = NULL, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeBatchPredictions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_batch_predictions_input(FilterVariable = FilterVariable, 
        EQ = EQ, GT = GT, LT = LT, GE = GE, LE = LE, NE = NE, 
        Prefix = Prefix, SortOrder = SortOrder, NextToken = NextToken, 
        Limit = Limit)
    output <- describe_batch_predictions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of `DataSource` that match the search criteria in the request
#'
#' Returns a list of `DataSource` that match the search criteria in the request.
#'
#' @param FilterVariable Use one of the following variables to filter a list of `DataSource`:
#' 
#' -   `CreatedAt` - Sets the search criteria to `DataSource` creation dates.
#' -   `Status` - Sets the search criteria to `DataSource` statuses.
#' -   `Name` - Sets the search criteria to the contents of `DataSource` `Name`.
#' -   `DataUri` - Sets the search criteria to the URI of data files used to create the `DataSource`. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
#' -   `IAMUser` - Sets the search criteria to the user account that invoked the `DataSource` creation.
#' @param EQ The equal to operator. The `DataSource` results will have `FilterVariable` values that exactly match the value specified with `EQ`.
#' @param GT The greater than operator. The `DataSource` results will have `FilterVariable` values that are greater than the value specified with `GT`.
#' @param LT The less than operator. The `DataSource` results will have `FilterVariable` values that are less than the value specified with `LT`.
#' @param GE The greater than or equal to operator. The `DataSource` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.
#' @param LE The less than or equal to operator. The `DataSource` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.
#' @param NE The not equal to operator. The `DataSource` results will have `FilterVariable` values not equal to the value specified with `NE`.
#' @param Prefix A string that is found at the beginning of a variable, such as `Name` or `Id`.
#' 
#' For example, a `DataSource` could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `DataSource`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:
#' 
#' -   2014-09
#' 
#' -   2014-09-09
#' 
#' -   2014-09-09-Holiday
#' @param SortOrder A two-value parameter that determines the sequence of the resulting list of `DataSource`.
#' 
#' -   `asc` - Arranges the list in ascending order (A-Z, 0-9).
#' -   `dsc` - Arranges the list in descending order (Z-A, 9-0).
#' 
#' Results are sorted by `FilterVariable`.
#' @param NextToken The ID of the page in the paginated results.
#' @param Limit The maximum number of `DataSource` to include in the result.
#'
#' @examples
#'
#' @export
describe_data_sources <- function (FilterVariable = NULL, EQ = NULL, 
    GT = NULL, LT = NULL, GE = NULL, LE = NULL, NE = NULL, Prefix = NULL, 
    SortOrder = NULL, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeDataSources", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_data_sources_input(FilterVariable = FilterVariable, 
        EQ = EQ, GT = GT, LT = LT, GE = GE, LE = LE, NE = NE, 
        Prefix = Prefix, SortOrder = SortOrder, NextToken = NextToken, 
        Limit = Limit)
    output <- describe_data_sources_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of `DescribeEvaluations` that match the search criteria in the request
#'
#' Returns a list of `DescribeEvaluations` that match the search criteria in the request.
#'
#' @param FilterVariable Use one of the following variable to filter a list of `Evaluation` objects:
#' 
#' -   `CreatedAt` - Sets the search criteria to the `Evaluation` creation date.
#' -   `Status` - Sets the search criteria to the `Evaluation` status.
#' -   `Name` - Sets the search criteria to the contents of `Evaluation` `Name`.
#' -   `IAMUser` - Sets the search criteria to the user account that invoked an `Evaluation`.
#' -   `MLModelId` - Sets the search criteria to the `MLModel` that was evaluated.
#' -   `DataSourceId` - Sets the search criteria to the `DataSource` used in `Evaluation`.
#' -   `DataUri` - Sets the search criteria to the data file(s) used in `Evaluation`. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.
#' @param EQ The equal to operator. The `Evaluation` results will have `FilterVariable` values that exactly match the value specified with `EQ`.
#' @param GT The greater than operator. The `Evaluation` results will have `FilterVariable` values that are greater than the value specified with `GT`.
#' @param LT The less than operator. The `Evaluation` results will have `FilterVariable` values that are less than the value specified with `LT`.
#' @param GE The greater than or equal to operator. The `Evaluation` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.
#' @param LE The less than or equal to operator. The `Evaluation` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.
#' @param NE The not equal to operator. The `Evaluation` results will have `FilterVariable` values not equal to the value specified with `NE`.
#' @param Prefix A string that is found at the beginning of a variable, such as `Name` or `Id`.
#' 
#' For example, an `Evaluation` could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `Evaluation`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:
#' 
#' -   2014-09
#' 
#' -   2014-09-09
#' 
#' -   2014-09-09-Holiday
#' @param SortOrder A two-value parameter that determines the sequence of the resulting list of `Evaluation`.
#' 
#' -   `asc` - Arranges the list in ascending order (A-Z, 0-9).
#' -   `dsc` - Arranges the list in descending order (Z-A, 9-0).
#' 
#' Results are sorted by `FilterVariable`.
#' @param NextToken The ID of the page in the paginated results.
#' @param Limit The maximum number of `Evaluation` to include in the result.
#'
#' @examples
#'
#' @export
describe_evaluations <- function (FilterVariable = NULL, EQ = NULL, 
    GT = NULL, LT = NULL, GE = NULL, LE = NULL, NE = NULL, Prefix = NULL, 
    SortOrder = NULL, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeEvaluations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_evaluations_input(FilterVariable = FilterVariable, 
        EQ = EQ, GT = GT, LT = LT, GE = GE, LE = LE, NE = NE, 
        Prefix = Prefix, SortOrder = SortOrder, NextToken = NextToken, 
        Limit = Limit)
    output <- describe_evaluations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of `MLModel` that match the search criteria in the request
#'
#' Returns a list of `MLModel` that match the search criteria in the request.
#'
#' @param FilterVariable Use one of the following variables to filter a list of `MLModel`:
#' 
#' -   `CreatedAt` - Sets the search criteria to `MLModel` creation date.
#' -   `Status` - Sets the search criteria to `MLModel` status.
#' -   `Name` - Sets the search criteria to the contents of `MLModel` `Name`.
#' -   `IAMUser` - Sets the search criteria to the user account that invoked the `MLModel` creation.
#' -   `TrainingDataSourceId` - Sets the search criteria to the `DataSource` used to train one or more `MLModel`.
#' -   `RealtimeEndpointStatus` - Sets the search criteria to the `MLModel` real-time endpoint status.
#' -   `MLModelType` - Sets the search criteria to `MLModel` type: binary, regression, or multi-class.
#' -   `Algorithm` - Sets the search criteria to the algorithm that the `MLModel` uses.
#' -   `TrainingDataURI` - Sets the search criteria to the data file(s) used in training a `MLModel`. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
#' @param EQ The equal to operator. The `MLModel` results will have `FilterVariable` values that exactly match the value specified with `EQ`.
#' @param GT The greater than operator. The `MLModel` results will have `FilterVariable` values that are greater than the value specified with `GT`.
#' @param LT The less than operator. The `MLModel` results will have `FilterVariable` values that are less than the value specified with `LT`.
#' @param GE The greater than or equal to operator. The `MLModel` results will have `FilterVariable` values that are greater than or equal to the value specified with `GE`.
#' @param LE The less than or equal to operator. The `MLModel` results will have `FilterVariable` values that are less than or equal to the value specified with `LE`.
#' @param NE The not equal to operator. The `MLModel` results will have `FilterVariable` values not equal to the value specified with `NE`.
#' @param Prefix A string that is found at the beginning of a variable, such as `Name` or `Id`.
#' 
#' For example, an `MLModel` could have the `Name` `2014-09-09-HolidayGiftMailer`. To search for this `MLModel`, select `Name` for the `FilterVariable` and any of the following strings for the `Prefix`:
#' 
#' -   2014-09
#' 
#' -   2014-09-09
#' 
#' -   2014-09-09-Holiday
#' @param SortOrder A two-value parameter that determines the sequence of the resulting list of `MLModel`.
#' 
#' -   `asc` - Arranges the list in ascending order (A-Z, 0-9).
#' -   `dsc` - Arranges the list in descending order (Z-A, 9-0).
#' 
#' Results are sorted by `FilterVariable`.
#' @param NextToken The ID of the page in the paginated results.
#' @param Limit The number of pages of information to include in the result. The range of acceptable values is `1` through `100`. The default value is `100`.
#'
#' @examples
#'
#' @export
describe_ml_models <- function (FilterVariable = NULL, EQ = NULL, 
    GT = NULL, LT = NULL, GE = NULL, LE = NULL, NE = NULL, Prefix = NULL, 
    SortOrder = NULL, NextToken = NULL, Limit = NULL) 
{
    op <- Operation(name = "DescribeMLModels", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_ml_models_input(FilterVariable = FilterVariable, 
        EQ = EQ, GT = GT, LT = LT, GE = GE, LE = LE, NE = NE, 
        Prefix = Prefix, SortOrder = SortOrder, NextToken = NextToken, 
        Limit = Limit)
    output <- describe_ml_models_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of the tags for your Amazon ML object
#'
#' Describes one or more of the tags for your Amazon ML object.
#'
#' @param ResourceId The ID of the ML object. For example, `exampleModelId`.
#' @param ResourceType The type of the ML object.
#'
#' @examples
#'
#' @export
describe_tags <- function (ResourceId, ResourceType) 
{
    op <- Operation(name = "DescribeTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_tags_input(ResourceId = ResourceId, ResourceType = ResourceType)
    output <- describe_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `BatchPrediction` that includes detailed metadata, status, and data file information for a `Batch Prediction` request
#'
#' Returns a `BatchPrediction` that includes detailed metadata, status, and data file information for a `Batch Prediction` request.
#'
#' @param BatchPredictionId An ID assigned to the `BatchPrediction` at creation.
#'
#' @examples
#'
#' @export
get_batch_prediction <- function (BatchPredictionId) 
{
    op <- Operation(name = "GetBatchPrediction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_batch_prediction_input(BatchPredictionId = BatchPredictionId)
    output <- get_batch_prediction_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a `DataSource` that includes metadata and data file information, as well as the current status of the `DataSource`
#'
#' Returns a `DataSource` that includes metadata and data file information, as well as the current status of the `DataSource`.
#' 
#' `GetDataSource` provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.
#'
#' @param DataSourceId The ID assigned to the `DataSource` at creation.
#' @param Verbose Specifies whether the `GetDataSource` operation should return `DataSourceSchema`.
#' 
#' If true, `DataSourceSchema` is returned.
#' 
#' If false, `DataSourceSchema` is not returned.
#'
#' @examples
#'
#' @export
get_data_source <- function (DataSourceId, Verbose = NULL) 
{
    op <- Operation(name = "GetDataSource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_data_source_input(DataSourceId = DataSourceId, 
        Verbose = Verbose)
    output <- get_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an `Evaluation` that includes metadata as well as the current status of the `Evaluation`
#'
#' Returns an `Evaluation` that includes metadata as well as the current status of the `Evaluation`.
#'
#' @param EvaluationId The ID of the `Evaluation` to retrieve. The evaluation of each `MLModel` is recorded and cataloged. The ID provides the means to access the information.
#'
#' @examples
#'
#' @export
get_evaluation <- function (EvaluationId) 
{
    op <- Operation(name = "GetEvaluation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_evaluation_input(EvaluationId = EvaluationId)
    output <- get_evaluation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns an `MLModel` that includes detailed metadata, data source information, and the current status of the `MLModel`
#'
#' Returns an `MLModel` that includes detailed metadata, data source information, and the current status of the `MLModel`.
#' 
#' `GetMLModel` provides results in normal or verbose format.
#'
#' @param MLModelId The ID assigned to the `MLModel` at creation.
#' @param Verbose Specifies whether the `GetMLModel` operation should return `Recipe`.
#' 
#' If true, `Recipe` is returned.
#' 
#' If false, `Recipe` is not returned.
#'
#' @examples
#'
#' @export
get_ml_model <- function (MLModelId, Verbose = NULL) 
{
    op <- Operation(name = "GetMLModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_ml_model_input(MLModelId = MLModelId, Verbose = Verbose)
    output <- get_ml_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Generates a prediction for the observation using the specified `ML Model`
#'
#' Generates a prediction for the observation using the specified `ML Model`.
#' 
#' Note
#' 
#' Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.
#'
#' @param MLModelId A unique identifier of the `MLModel`.
#' @param Record 
#' @param PredictEndpoint 
#'
#' @examples
#'
#' @export
predict <- function (MLModelId, Record, PredictEndpoint) 
{
    op <- Operation(name = "Predict", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- predict_input(MLModelId = MLModelId, Record = Record, 
        PredictEndpoint = PredictEndpoint)
    output <- predict_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the `BatchPredictionName` of a `BatchPrediction`
#'
#' Updates the `BatchPredictionName` of a `BatchPrediction`.
#' 
#' You can use the `GetBatchPrediction` operation to view the contents of the updated data element.
#'
#' @param BatchPredictionId The ID assigned to the `BatchPrediction` during creation.
#' @param BatchPredictionName A new user-supplied name or description of the `BatchPrediction`.
#'
#' @examples
#'
#' @export
update_batch_prediction <- function (BatchPredictionId, BatchPredictionName) 
{
    op <- Operation(name = "UpdateBatchPrediction", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_batch_prediction_input(BatchPredictionId = BatchPredictionId, 
        BatchPredictionName = BatchPredictionName)
    output <- update_batch_prediction_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the `DataSourceName` of a `DataSource`
#'
#' Updates the `DataSourceName` of a `DataSource`.
#' 
#' You can use the `GetDataSource` operation to view the contents of the updated data element.
#'
#' @param DataSourceId The ID assigned to the `DataSource` during creation.
#' @param DataSourceName A new user-supplied name or description of the `DataSource` that will replace the current description.
#'
#' @examples
#'
#' @export
update_data_source <- function (DataSourceId, DataSourceName) 
{
    op <- Operation(name = "UpdateDataSource", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_data_source_input(DataSourceId = DataSourceId, 
        DataSourceName = DataSourceName)
    output <- update_data_source_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the `EvaluationName` of an `Evaluation`
#'
#' Updates the `EvaluationName` of an `Evaluation`.
#' 
#' You can use the `GetEvaluation` operation to view the contents of the updated data element.
#'
#' @param EvaluationId The ID assigned to the `Evaluation` during creation.
#' @param EvaluationName A new user-supplied name or description of the `Evaluation` that will replace the current content.
#'
#' @examples
#'
#' @export
update_evaluation <- function (EvaluationId, EvaluationName) 
{
    op <- Operation(name = "UpdateEvaluation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_evaluation_input(EvaluationId = EvaluationId, 
        EvaluationName = EvaluationName)
    output <- update_evaluation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`
#'
#' Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.
#' 
#' You can use the `GetMLModel` operation to view the contents of the updated data element.
#'
#' @param MLModelId The ID assigned to the `MLModel` during creation.
#' @param MLModelName A user-supplied name or description of the `MLModel`.
#' @param ScoreThreshold The `ScoreThreshold` used in binary classification `MLModel` that marks the boundary between a positive prediction and a negative prediction.
#' 
#' Output values greater than or equal to the `ScoreThreshold` receive a positive result from the `MLModel`, such as `true`. Output values less than the `ScoreThreshold` receive a negative response from the `MLModel`, such as `false`.
#'
#' @examples
#'
#' @export
update_ml_model <- function (MLModelId, MLModelName = NULL, ScoreThreshold = NULL) 
{
    op <- Operation(name = "UpdateMLModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_ml_model_input(MLModelId = MLModelId, MLModelName = MLModelName, 
        ScoreThreshold = ScoreThreshold)
    output <- update_ml_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
