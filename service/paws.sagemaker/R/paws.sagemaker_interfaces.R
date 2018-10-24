add_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 256L), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L)), shape = "AddTagsInput", 
        type = "structure")
    return(populate(args, shape))
}

add_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tag", type = "structure")), shape = "TagList", 
        type = "list", max = 50L, min = 0L)), shape = "AddTagsOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        EndpointConfigName = structure(logical(0), shape = "EndpointConfigName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L)), shape = "CreateEndpointInput", 
        type = "structure")
    return(populate(args, shape))
}

create_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "EndpointArn", type = "string", max = 2048L, 
        min = 20L)), shape = "CreateEndpointOutput", type = "structure")
    return(populate(args, shape))
}

create_endpoint_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointConfigName = structure(logical(0), 
        shape = "EndpointConfigName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), ProductionVariants = structure(list(structure(list(VariantName = structure(logical(0), 
        shape = "VariantName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        ModelName = structure(logical(0), shape = "ModelName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        InitialInstanceCount = structure(logical(0), shape = "TaskCount", 
            type = "integer", min = 1L), InstanceType = structure(logical(0), 
            shape = "ProductionVariantInstanceType", type = "string"), 
        InitialVariantWeight = structure(logical(0), shape = "VariantWeight", 
            type = "float", min = 0L)), shape = "ProductionVariant", 
        type = "structure")), shape = "ProductionVariantList", 
        type = "list", min = 1L), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tag", type = "structure")), shape = "TagList", 
        type = "list", max = 50L, min = 0L), KmsKeyId = structure(logical(0), 
        shape = "KmsKeyId", type = "string", max = 2048L)), shape = "CreateEndpointConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

create_endpoint_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointConfigArn = structure(logical(0), 
        shape = "EndpointConfigArn", type = "string", max = 2048L, 
        min = 20L)), shape = "CreateEndpointConfigOutput", type = "structure")
    return(populate(args, shape))
}

create_hyper_parameter_tuning_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobName = structure(logical(0), 
        shape = "HyperParameterTuningJobName", type = "string", 
        max = 32L, min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        HyperParameterTuningJobConfig = structure(list(Strategy = structure(logical(0), 
            shape = "HyperParameterTuningJobStrategyType", type = "string"), 
            HyperParameterTuningJobObjective = structure(list(Type = structure(logical(0), 
                shape = "HyperParameterTuningJobObjectiveType", 
                type = "string"), MetricName = structure(logical(0), 
                shape = "MetricName", type = "string", max = 255L, 
                min = 1L)), shape = "HyperParameterTuningJobObjective", 
                type = "structure"), ResourceLimits = structure(list(MaxNumberOfTrainingJobs = structure(logical(0), 
                shape = "MaxNumberOfTrainingJobs", type = "integer", 
                min = 1L), MaxParallelTrainingJobs = structure(logical(0), 
                shape = "MaxParallelTrainingJobs", type = "integer", 
                min = 1L)), shape = "ResourceLimits", type = "structure"), 
            ParameterRanges = structure(list(IntegerParameterRanges = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ParameterKey", type = "string", max = 256L), 
                MinValue = structure(logical(0), shape = "ParameterValue", 
                  type = "string", max = 256L), MaxValue = structure(logical(0), 
                  shape = "ParameterValue", type = "string", 
                  max = 256L)), shape = "IntegerParameterRange", 
                type = "structure")), shape = "IntegerParameterRanges", 
                type = "list", max = 20L, min = 0L), ContinuousParameterRanges = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ParameterKey", type = "string", max = 256L), 
                MinValue = structure(logical(0), shape = "ParameterValue", 
                  type = "string", max = 256L), MaxValue = structure(logical(0), 
                  shape = "ParameterValue", type = "string", 
                  max = 256L)), shape = "ContinuousParameterRange", 
                type = "structure")), shape = "ContinuousParameterRanges", 
                type = "list", max = 20L, min = 0L), CategoricalParameterRanges = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ParameterKey", type = "string", max = 256L), 
                Values = structure(list(structure(logical(0), 
                  shape = "ParameterValue", type = "string", 
                  max = 256L)), shape = "ParameterValues", type = "list", 
                  max = 20L, min = 1L)), shape = "CategoricalParameterRange", 
                type = "structure")), shape = "CategoricalParameterRanges", 
                type = "list", max = 20L, min = 0L)), shape = "ParameterRanges", 
                type = "structure")), shape = "HyperParameterTuningJobConfig", 
            type = "structure"), TrainingJobDefinition = structure(list(StaticHyperParameters = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string", max = 256L)), 
            shape = "HyperParameters", type = "map", max = 100L, 
            min = 0L), AlgorithmSpecification = structure(list(TrainingImage = structure(logical(0), 
            shape = "AlgorithmImage", type = "string", max = 255L), 
            TrainingInputMode = structure(logical(0), shape = "TrainingInputMode", 
                type = "string"), MetricDefinitions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "MetricName", type = "string", max = 255L, 
                min = 1L), Regex = structure(logical(0), shape = "MetricRegex", 
                type = "string", max = 500L, min = 1L)), shape = "MetricDefinition", 
                type = "structure")), shape = "MetricDefinitionList", 
                type = "list", max = 20L, min = 0L)), shape = "HyperParameterAlgorithmSpecification", 
            type = "structure"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
            InputDataConfig = structure(list(structure(list(ChannelName = structure(logical(0), 
                shape = "ChannelName", type = "string", max = 64L, 
                min = 1L, pattern = "[A-Za-z0-9\\.\\-_]+"), DataSource = structure(list(S3DataSource = structure(list(S3DataType = structure(logical(0), 
                shape = "S3DataType", type = "string"), S3Uri = structure(logical(0), 
                shape = "S3Uri", type = "string", max = 1024L, 
                pattern = "^(https|s3)://([^/]+)/?(.*)$"), S3DataDistributionType = structure(logical(0), 
                shape = "S3DataDistribution", type = "string")), 
                shape = "S3DataSource", type = "structure")), 
                shape = "DataSource", type = "structure"), ContentType = structure(logical(0), 
                shape = "ContentType", type = "string", max = 256L), 
                CompressionType = structure(logical(0), shape = "CompressionType", 
                  type = "string"), RecordWrapperType = structure(logical(0), 
                  shape = "RecordWrapper", type = "string")), 
                shape = "Channel", type = "structure")), shape = "InputDataConfig", 
                type = "list", max = 8L, min = 1L), VpcConfig = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "SecurityGroupId", type = "string", max = 32L)), 
                shape = "VpcSecurityGroupIds", type = "list", 
                max = 5L, min = 1L), Subnets = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", max = 32L)), 
                shape = "Subnets", type = "list", max = 16L, 
                min = 1L)), shape = "VpcConfig", type = "structure"), 
            OutputDataConfig = structure(list(KmsKeyId = structure(logical(0), 
                shape = "KmsKeyId", type = "string", max = 2048L), 
                S3OutputPath = structure(logical(0), shape = "S3Uri", 
                  type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
                shape = "OutputDataConfig", type = "structure"), 
            ResourceConfig = structure(list(InstanceType = structure(logical(0), 
                shape = "TrainingInstanceType", type = "string"), 
                InstanceCount = structure(logical(0), shape = "TrainingInstanceCount", 
                  type = "integer", min = 1L), VolumeSizeInGB = structure(logical(0), 
                  shape = "VolumeSizeInGB", type = "integer", 
                  min = 1L), VolumeKmsKeyId = structure(logical(0), 
                  shape = "KmsKeyId", type = "string", max = 2048L)), 
                shape = "ResourceConfig", type = "structure"), 
            StoppingCondition = structure(list(MaxRuntimeInSeconds = structure(logical(0), 
                shape = "MaxRuntimeInSeconds", type = "integer", 
                min = 1L)), shape = "StoppingCondition", type = "structure")), 
            shape = "HyperParameterTrainingJobDefinition", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L)), shape = "CreateHyperParameterTuningJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_hyper_parameter_tuning_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobArn = structure(logical(0), 
        shape = "HyperParameterTuningJobArn", type = "string", 
        max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:hyper-parameter-tuning-job/.*")), 
        shape = "CreateHyperParameterTuningJobResponse", type = "structure")
    return(populate(args, shape))
}

create_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ModelName = structure(logical(0), 
        shape = "ModelName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        PrimaryContainer = structure(list(ContainerHostname = structure(logical(0), 
            shape = "ContainerHostname", type = "string", max = 63L, 
            pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), Image = structure(logical(0), 
            shape = "Image", type = "string", max = 255L, pattern = "[\\S]+"), 
            ModelDataUrl = structure(logical(0), shape = "Url", 
                type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$"), 
            Environment = structure(list(structure(logical(0), 
                shape = "EnvironmentValue", type = "string", 
                max = 1024L)), shape = "EnvironmentMap", type = "map", 
                max = 16L)), shape = "ContainerDefinition", type = "structure"), 
        ExecutionRoleArn = structure(logical(0), shape = "RoleArn", 
            type = "string", max = 2048L, min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L), VpcConfig = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string", max = 32L)), 
            shape = "VpcSecurityGroupIds", type = "list", max = 5L, 
            min = 1L), Subnets = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", max = 32L)), 
            shape = "Subnets", type = "list", max = 16L, min = 1L)), 
            shape = "VpcConfig", type = "structure")), shape = "CreateModelInput", 
        type = "structure")
    return(populate(args, shape))
}

create_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ModelArn = structure(logical(0), 
        shape = "ModelArn", type = "string", max = 2048L, min = 20L)), 
        shape = "CreateModelOutput", type = "structure")
    return(populate(args, shape))
}

create_notebook_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), InstanceType = structure(logical(0), 
        shape = "InstanceType", type = "string"), SubnetId = structure(logical(0), 
        shape = "SubnetId", type = "string", max = 32L), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "SecurityGroupId", type = "string", max = 32L)), 
        shape = "SecurityGroupIds", type = "list", max = 5L), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 2048L), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L), LifecycleConfigName = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigName", type = "string", 
            max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        DirectInternetAccess = structure(logical(0), shape = "DirectInternetAccess", 
            type = "string")), shape = "CreateNotebookInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

create_notebook_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceArn = structure(logical(0), 
        shape = "NotebookInstanceArn", type = "string", max = 256L)), 
        shape = "CreateNotebookInstanceOutput", type = "structure")
    return(populate(args, shape))
}

create_notebook_instance_lifecycle_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceLifecycleConfigName = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigName", type = "string", 
        max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        OnCreate = structure(list(structure(list(Content = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigContent", 
            type = "string", max = 16384L, min = 1L)), shape = "NotebookInstanceLifecycleHook", 
            type = "structure")), shape = "NotebookInstanceLifecycleConfigList", 
            type = "list", max = 1L), OnStart = structure(list(structure(list(Content = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigContent", 
            type = "string", max = 16384L, min = 1L)), shape = "NotebookInstanceLifecycleHook", 
            type = "structure")), shape = "NotebookInstanceLifecycleConfigList", 
            type = "list", max = 1L)), shape = "CreateNotebookInstanceLifecycleConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

create_notebook_instance_lifecycle_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceLifecycleConfigArn = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigArn", type = "string", 
        max = 256L)), shape = "CreateNotebookInstanceLifecycleConfigOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_presigned_notebook_instance_url_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), SessionExpirationDurationInSeconds = structure(logical(0), 
        shape = "SessionExpirationDurationInSeconds", type = "integer", 
        max = 43200L, min = 1800L)), shape = "CreatePresignedNotebookInstanceUrlInput", 
        type = "structure")
    return(populate(args, shape))
}

create_presigned_notebook_instance_url_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AuthorizedUrl = structure(logical(0), 
        shape = "NotebookInstanceUrl", type = "string")), shape = "CreatePresignedNotebookInstanceUrlOutput", 
        type = "structure")
    return(populate(args, shape))
}

create_training_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobName = structure(logical(0), 
        shape = "TrainingJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        HyperParameters = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string", max = 256L)), 
            shape = "HyperParameters", type = "map", max = 100L, 
            min = 0L), AlgorithmSpecification = structure(list(TrainingImage = structure(logical(0), 
            shape = "AlgorithmImage", type = "string", max = 255L), 
            TrainingInputMode = structure(logical(0), shape = "TrainingInputMode", 
                type = "string")), shape = "AlgorithmSpecification", 
            type = "structure"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        InputDataConfig = structure(list(structure(list(ChannelName = structure(logical(0), 
            shape = "ChannelName", type = "string", max = 64L, 
            min = 1L, pattern = "[A-Za-z0-9\\.\\-_]+"), DataSource = structure(list(S3DataSource = structure(list(S3DataType = structure(logical(0), 
            shape = "S3DataType", type = "string"), S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$"), 
            S3DataDistributionType = structure(logical(0), shape = "S3DataDistribution", 
                type = "string")), shape = "S3DataSource", type = "structure")), 
            shape = "DataSource", type = "structure"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 256L), 
            CompressionType = structure(logical(0), shape = "CompressionType", 
                type = "string"), RecordWrapperType = structure(logical(0), 
                shape = "RecordWrapper", type = "string")), shape = "Channel", 
            type = "structure")), shape = "InputDataConfig", 
            type = "list", max = 8L, min = 1L), OutputDataConfig = structure(list(KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 2048L), 
            S3OutputPath = structure(logical(0), shape = "S3Uri", 
                type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
            shape = "OutputDataConfig", type = "structure"), 
        ResourceConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "TrainingInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "TrainingInstanceCount", 
                type = "integer", min = 1L), VolumeSizeInGB = structure(logical(0), 
                shape = "VolumeSizeInGB", type = "integer", min = 1L), 
            VolumeKmsKeyId = structure(logical(0), shape = "KmsKeyId", 
                type = "string", max = 2048L)), shape = "ResourceConfig", 
            type = "structure"), VpcConfig = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string", max = 32L)), 
            shape = "VpcSecurityGroupIds", type = "list", max = 5L, 
            min = 1L), Subnets = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", max = 32L)), 
            shape = "Subnets", type = "list", max = 16L, min = 1L)), 
            shape = "VpcConfig", type = "structure"), StoppingCondition = structure(list(MaxRuntimeInSeconds = structure(logical(0), 
            shape = "MaxRuntimeInSeconds", type = "integer", 
            min = 1L)), shape = "StoppingCondition", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L)), shape = "CreateTrainingJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_training_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobArn = structure(logical(0), 
        shape = "TrainingJobArn", type = "string", max = 256L, 
        pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-job/.*")), 
        shape = "CreateTrainingJobResponse", type = "structure")
    return(populate(args, shape))
}

create_transform_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransformJobName = structure(logical(0), 
        shape = "TransformJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        ModelName = structure(logical(0), shape = "ModelName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        MaxConcurrentTransforms = structure(logical(0), shape = "MaxConcurrentTransforms", 
            type = "integer", min = 0L), MaxPayloadInMB = structure(logical(0), 
            shape = "MaxPayloadInMB", type = "integer", min = 0L), 
        BatchStrategy = structure(logical(0), shape = "BatchStrategy", 
            type = "string"), Environment = structure(list(structure(logical(0), 
            shape = "TransformEnvironmentValue", type = "string", 
            max = 10240L)), shape = "TransformEnvironmentMap", 
            type = "map", max = 16L), TransformInput = structure(list(DataSource = structure(list(S3DataSource = structure(list(S3DataType = structure(logical(0), 
            shape = "S3DataType", type = "string"), S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
            shape = "TransformS3DataSource", type = "structure")), 
            shape = "TransformDataSource", type = "structure"), 
            ContentType = structure(logical(0), shape = "ContentType", 
                type = "string", max = 256L), CompressionType = structure(logical(0), 
                shape = "CompressionType", type = "string"), 
            SplitType = structure(logical(0), shape = "SplitType", 
                type = "string")), shape = "TransformInput", 
            type = "structure"), TransformOutput = structure(list(S3OutputPath = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$"), 
            Accept = structure(logical(0), shape = "Accept", 
                type = "string", max = 256L), AssembleWith = structure(logical(0), 
                shape = "AssemblyType", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "KmsKeyId", type = "string", max = 2048L)), 
            shape = "TransformOutput", type = "structure"), TransformResources = structure(list(InstanceType = structure(logical(0), 
            shape = "TransformInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "TransformInstanceCount", 
                type = "integer", min = 1L), VolumeKmsKeyId = structure(logical(0), 
                shape = "KmsKeyId", type = "string", max = 2048L)), 
            shape = "TransformResources", type = "structure"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
            Value = structure(logical(0), shape = "TagValue", 
                type = "string", max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "Tag", type = "structure")), shape = "TagList", 
            type = "list", max = 50L, min = 0L)), shape = "CreateTransformJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_transform_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransformJobArn = structure(logical(0), 
        shape = "TransformJobArn", type = "string", max = 256L, 
        pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:transform-job/.*")), 
        shape = "CreateTransformJobResponse", type = "structure")
    return(populate(args, shape))
}

delete_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DeleteEndpointInput", type = "structure")
    return(populate(args, shape))
}

delete_endpoint_output <- function () 
{
    return(list())
}

delete_endpoint_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointConfigName = structure(logical(0), 
        shape = "EndpointConfigName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), shape = "DeleteEndpointConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_endpoint_config_output <- function () 
{
    return(list())
}

delete_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ModelName = structure(logical(0), 
        shape = "ModelName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DeleteModelInput", type = "structure")
    return(populate(args, shape))
}

delete_model_output <- function () 
{
    return(list())
}

delete_notebook_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), shape = "DeleteNotebookInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_notebook_instance_output <- function () 
{
    return(list())
}

delete_notebook_instance_lifecycle_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceLifecycleConfigName = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigName", type = "string", 
        max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DeleteNotebookInstanceLifecycleConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

delete_notebook_instance_lifecycle_config_output <- function () 
{
    return(list())
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 256L), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list", max = 50L, min = 1L)), 
        shape = "DeleteTagsInput", type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "DeleteTagsOutput", type = "structure")
    return(populate(args, shape))
}

describe_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DescribeEndpointInput", type = "structure")
    return(populate(args, shape))
}

describe_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        EndpointArn = structure(logical(0), shape = "EndpointArn", 
            type = "string", max = 2048L, min = 20L), EndpointConfigName = structure(logical(0), 
            shape = "EndpointConfigName", type = "string", max = 63L, 
            pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), ProductionVariants = structure(list(structure(list(VariantName = structure(logical(0), 
            shape = "VariantName", type = "string", max = 63L, 
            pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), DeployedImages = structure(list(structure(list(SpecifiedImage = structure(logical(0), 
            shape = "Image", type = "string", max = 255L, pattern = "[\\S]+"), 
            ResolvedImage = structure(logical(0), shape = "Image", 
                type = "string", max = 255L, pattern = "[\\S]+"), 
            ResolutionTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp")), shape = "DeployedImage", 
            type = "structure")), shape = "DeployedImages", type = "list"), 
            CurrentWeight = structure(logical(0), shape = "VariantWeight", 
                type = "float", min = 0L), DesiredWeight = structure(logical(0), 
                shape = "VariantWeight", type = "float", min = 0L), 
            CurrentInstanceCount = structure(logical(0), shape = "TaskCount", 
                type = "integer", min = 1L), DesiredInstanceCount = structure(logical(0), 
                shape = "TaskCount", type = "integer", min = 1L)), 
            shape = "ProductionVariantSummary", type = "structure")), 
            shape = "ProductionVariantSummaryList", type = "list", 
            min = 1L), EndpointStatus = structure(logical(0), 
            shape = "EndpointStatus", type = "string"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string", max = 1024L), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "DescribeEndpointOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoint_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointConfigName = structure(logical(0), 
        shape = "EndpointConfigName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), shape = "DescribeEndpointConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_endpoint_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointConfigName = structure(logical(0), 
        shape = "EndpointConfigName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), EndpointConfigArn = structure(logical(0), 
        shape = "EndpointConfigArn", type = "string", max = 2048L, 
        min = 20L), ProductionVariants = structure(list(structure(list(VariantName = structure(logical(0), 
        shape = "VariantName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        ModelName = structure(logical(0), shape = "ModelName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        InitialInstanceCount = structure(logical(0), shape = "TaskCount", 
            type = "integer", min = 1L), InstanceType = structure(logical(0), 
            shape = "ProductionVariantInstanceType", type = "string"), 
        InitialVariantWeight = structure(logical(0), shape = "VariantWeight", 
            type = "float", min = 0L)), shape = "ProductionVariant", 
        type = "structure")), shape = "ProductionVariantList", 
        type = "list", min = 1L), KmsKeyId = structure(logical(0), 
        shape = "KmsKeyId", type = "string", max = 2048L), CreationTime = structure(logical(0), 
        shape = "Timestamp", type = "timestamp")), shape = "DescribeEndpointConfigOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_hyper_parameter_tuning_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobName = structure(logical(0), 
        shape = "HyperParameterTuningJobName", type = "string", 
        max = 32L, min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DescribeHyperParameterTuningJobRequest", type = "structure")
    return(populate(args, shape))
}

describe_hyper_parameter_tuning_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobName = structure(logical(0), 
        shape = "HyperParameterTuningJobName", type = "string", 
        max = 32L, min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        HyperParameterTuningJobArn = structure(logical(0), shape = "HyperParameterTuningJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:hyper-parameter-tuning-job/.*"), 
        HyperParameterTuningJobConfig = structure(list(Strategy = structure(logical(0), 
            shape = "HyperParameterTuningJobStrategyType", type = "string"), 
            HyperParameterTuningJobObjective = structure(list(Type = structure(logical(0), 
                shape = "HyperParameterTuningJobObjectiveType", 
                type = "string"), MetricName = structure(logical(0), 
                shape = "MetricName", type = "string", max = 255L, 
                min = 1L)), shape = "HyperParameterTuningJobObjective", 
                type = "structure"), ResourceLimits = structure(list(MaxNumberOfTrainingJobs = structure(logical(0), 
                shape = "MaxNumberOfTrainingJobs", type = "integer", 
                min = 1L), MaxParallelTrainingJobs = structure(logical(0), 
                shape = "MaxParallelTrainingJobs", type = "integer", 
                min = 1L)), shape = "ResourceLimits", type = "structure"), 
            ParameterRanges = structure(list(IntegerParameterRanges = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ParameterKey", type = "string", max = 256L), 
                MinValue = structure(logical(0), shape = "ParameterValue", 
                  type = "string", max = 256L), MaxValue = structure(logical(0), 
                  shape = "ParameterValue", type = "string", 
                  max = 256L)), shape = "IntegerParameterRange", 
                type = "structure")), shape = "IntegerParameterRanges", 
                type = "list", max = 20L, min = 0L), ContinuousParameterRanges = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ParameterKey", type = "string", max = 256L), 
                MinValue = structure(logical(0), shape = "ParameterValue", 
                  type = "string", max = 256L), MaxValue = structure(logical(0), 
                  shape = "ParameterValue", type = "string", 
                  max = 256L)), shape = "ContinuousParameterRange", 
                type = "structure")), shape = "ContinuousParameterRanges", 
                type = "list", max = 20L, min = 0L), CategoricalParameterRanges = structure(list(structure(list(Name = structure(logical(0), 
                shape = "ParameterKey", type = "string", max = 256L), 
                Values = structure(list(structure(logical(0), 
                  shape = "ParameterValue", type = "string", 
                  max = 256L)), shape = "ParameterValues", type = "list", 
                  max = 20L, min = 1L)), shape = "CategoricalParameterRange", 
                type = "structure")), shape = "CategoricalParameterRanges", 
                type = "list", max = 20L, min = 0L)), shape = "ParameterRanges", 
                type = "structure")), shape = "HyperParameterTuningJobConfig", 
            type = "structure"), TrainingJobDefinition = structure(list(StaticHyperParameters = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string", max = 256L)), 
            shape = "HyperParameters", type = "map", max = 100L, 
            min = 0L), AlgorithmSpecification = structure(list(TrainingImage = structure(logical(0), 
            shape = "AlgorithmImage", type = "string", max = 255L), 
            TrainingInputMode = structure(logical(0), shape = "TrainingInputMode", 
                type = "string"), MetricDefinitions = structure(list(structure(list(Name = structure(logical(0), 
                shape = "MetricName", type = "string", max = 255L, 
                min = 1L), Regex = structure(logical(0), shape = "MetricRegex", 
                type = "string", max = 500L, min = 1L)), shape = "MetricDefinition", 
                type = "structure")), shape = "MetricDefinitionList", 
                type = "list", max = 20L, min = 0L)), shape = "HyperParameterAlgorithmSpecification", 
            type = "structure"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
            InputDataConfig = structure(list(structure(list(ChannelName = structure(logical(0), 
                shape = "ChannelName", type = "string", max = 64L, 
                min = 1L, pattern = "[A-Za-z0-9\\.\\-_]+"), DataSource = structure(list(S3DataSource = structure(list(S3DataType = structure(logical(0), 
                shape = "S3DataType", type = "string"), S3Uri = structure(logical(0), 
                shape = "S3Uri", type = "string", max = 1024L, 
                pattern = "^(https|s3)://([^/]+)/?(.*)$"), S3DataDistributionType = structure(logical(0), 
                shape = "S3DataDistribution", type = "string")), 
                shape = "S3DataSource", type = "structure")), 
                shape = "DataSource", type = "structure"), ContentType = structure(logical(0), 
                shape = "ContentType", type = "string", max = 256L), 
                CompressionType = structure(logical(0), shape = "CompressionType", 
                  type = "string"), RecordWrapperType = structure(logical(0), 
                  shape = "RecordWrapper", type = "string")), 
                shape = "Channel", type = "structure")), shape = "InputDataConfig", 
                type = "list", max = 8L, min = 1L), VpcConfig = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "SecurityGroupId", type = "string", max = 32L)), 
                shape = "VpcSecurityGroupIds", type = "list", 
                max = 5L, min = 1L), Subnets = structure(list(structure(logical(0), 
                shape = "SubnetId", type = "string", max = 32L)), 
                shape = "Subnets", type = "list", max = 16L, 
                min = 1L)), shape = "VpcConfig", type = "structure"), 
            OutputDataConfig = structure(list(KmsKeyId = structure(logical(0), 
                shape = "KmsKeyId", type = "string", max = 2048L), 
                S3OutputPath = structure(logical(0), shape = "S3Uri", 
                  type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
                shape = "OutputDataConfig", type = "structure"), 
            ResourceConfig = structure(list(InstanceType = structure(logical(0), 
                shape = "TrainingInstanceType", type = "string"), 
                InstanceCount = structure(logical(0), shape = "TrainingInstanceCount", 
                  type = "integer", min = 1L), VolumeSizeInGB = structure(logical(0), 
                  shape = "VolumeSizeInGB", type = "integer", 
                  min = 1L), VolumeKmsKeyId = structure(logical(0), 
                  shape = "KmsKeyId", type = "string", max = 2048L)), 
                shape = "ResourceConfig", type = "structure"), 
            StoppingCondition = structure(list(MaxRuntimeInSeconds = structure(logical(0), 
                shape = "MaxRuntimeInSeconds", type = "integer", 
                min = 1L)), shape = "StoppingCondition", type = "structure")), 
            shape = "HyperParameterTrainingJobDefinition", type = "structure"), 
        HyperParameterTuningJobStatus = structure(logical(0), 
            shape = "HyperParameterTuningJobStatus", type = "string"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), HyperParameterTuningEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TrainingJobStatusCounters = structure(list(Completed = structure(logical(0), 
            shape = "TrainingJobStatusCounter", type = "integer", 
            min = 0L), InProgress = structure(logical(0), shape = "TrainingJobStatusCounter", 
            type = "integer", min = 0L), RetryableError = structure(logical(0), 
            shape = "TrainingJobStatusCounter", type = "integer", 
            min = 0L), NonRetryableError = structure(logical(0), 
            shape = "TrainingJobStatusCounter", type = "integer", 
            min = 0L), Stopped = structure(logical(0), shape = "TrainingJobStatusCounter", 
            type = "integer", min = 0L)), shape = "TrainingJobStatusCounters", 
            type = "structure"), ObjectiveStatusCounters = structure(list(Succeeded = structure(logical(0), 
            shape = "ObjectiveStatusCounter", type = "integer", 
            min = 0L), Pending = structure(logical(0), shape = "ObjectiveStatusCounter", 
            type = "integer", min = 0L), Failed = structure(logical(0), 
            shape = "ObjectiveStatusCounter", type = "integer", 
            min = 0L)), shape = "ObjectiveStatusCounters", type = "structure"), 
        BestTrainingJob = structure(list(TrainingJobName = structure(logical(0), 
            shape = "TrainingJobName", type = "string", max = 63L, 
            min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
            TrainingJobArn = structure(logical(0), shape = "TrainingJobArn", 
                type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-job/.*"), 
            CreationTime = structure(logical(0), shape = "Timestamp", 
                type = "timestamp"), TrainingStartTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), TrainingEndTime = structure(logical(0), 
                shape = "Timestamp", type = "timestamp"), TrainingJobStatus = structure(logical(0), 
                shape = "TrainingJobStatus", type = "string"), 
            TunedHyperParameters = structure(list(structure(logical(0), 
                shape = "ParameterValue", type = "string", max = 256L)), 
                shape = "HyperParameters", type = "map", max = 100L, 
                min = 0L), FailureReason = structure(logical(0), 
                shape = "FailureReason", type = "string", max = 1024L), 
            FinalHyperParameterTuningJobObjectiveMetric = structure(list(Type = structure(logical(0), 
                shape = "HyperParameterTuningJobObjectiveType", 
                type = "string"), MetricName = structure(logical(0), 
                shape = "MetricName", type = "string", max = 255L, 
                min = 1L), Value = structure(logical(0), shape = "MetricValue", 
                type = "float")), shape = "FinalHyperParameterTuningJobObjectiveMetric", 
                type = "structure"), ObjectiveStatus = structure(logical(0), 
                shape = "ObjectiveStatus", type = "string")), 
            shape = "HyperParameterTrainingJobSummary", type = "structure"), 
        FailureReason = structure(logical(0), shape = "FailureReason", 
            type = "string", max = 1024L)), shape = "DescribeHyperParameterTuningJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_model_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ModelName = structure(logical(0), 
        shape = "ModelName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DescribeModelInput", type = "structure")
    return(populate(args, shape))
}

describe_model_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ModelName = structure(logical(0), 
        shape = "ModelName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        PrimaryContainer = structure(list(ContainerHostname = structure(logical(0), 
            shape = "ContainerHostname", type = "string", max = 63L, 
            pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), Image = structure(logical(0), 
            shape = "Image", type = "string", max = 255L, pattern = "[\\S]+"), 
            ModelDataUrl = structure(logical(0), shape = "Url", 
                type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$"), 
            Environment = structure(list(structure(logical(0), 
                shape = "EnvironmentValue", type = "string", 
                max = 1024L)), shape = "EnvironmentMap", type = "map", 
                max = 16L)), shape = "ContainerDefinition", type = "structure"), 
        ExecutionRoleArn = structure(logical(0), shape = "RoleArn", 
            type = "string", max = 2048L, min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        VpcConfig = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string", max = 32L)), 
            shape = "VpcSecurityGroupIds", type = "list", max = 5L, 
            min = 1L), Subnets = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", max = 32L)), 
            shape = "Subnets", type = "list", max = 16L, min = 1L)), 
            shape = "VpcConfig", type = "structure"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), ModelArn = structure(logical(0), 
            shape = "ModelArn", type = "string", max = 2048L, 
            min = 20L)), shape = "DescribeModelOutput", type = "structure")
    return(populate(args, shape))
}

describe_notebook_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), shape = "DescribeNotebookInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_notebook_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceArn = structure(logical(0), 
        shape = "NotebookInstanceArn", type = "string", max = 256L), 
        NotebookInstanceName = structure(logical(0), shape = "NotebookInstanceName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        NotebookInstanceStatus = structure(logical(0), shape = "NotebookInstanceStatus", 
            type = "string"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string", max = 1024L), 
        Url = structure(logical(0), shape = "NotebookInstanceUrl", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string"), SubnetId = structure(logical(0), 
            shape = "SubnetId", type = "string", max = 32L), 
        SecurityGroups = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string", max = 32L)), 
            shape = "SecurityGroupIds", type = "list", max = 5L), 
        RoleArn = structure(logical(0), shape = "RoleArn", type = "string", 
            max = 2048L, min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        KmsKeyId = structure(logical(0), shape = "KmsKeyId", 
            type = "string", max = 2048L), NetworkInterfaceId = structure(logical(0), 
            shape = "NetworkInterfaceId", type = "string"), LastModifiedTime = structure(logical(0), 
            shape = "LastModifiedTime", type = "timestamp"), 
        CreationTime = structure(logical(0), shape = "CreationTime", 
            type = "timestamp"), NotebookInstanceLifecycleConfigName = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigName", type = "string", 
            max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        DirectInternetAccess = structure(logical(0), shape = "DirectInternetAccess", 
            type = "string")), shape = "DescribeNotebookInstanceOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_notebook_instance_lifecycle_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceLifecycleConfigName = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigName", type = "string", 
        max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DescribeNotebookInstanceLifecycleConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

describe_notebook_instance_lifecycle_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceLifecycleConfigArn = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigArn", type = "string", 
        max = 256L), NotebookInstanceLifecycleConfigName = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigName", type = "string", 
        max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        OnCreate = structure(list(structure(list(Content = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigContent", 
            type = "string", max = 16384L, min = 1L)), shape = "NotebookInstanceLifecycleHook", 
            type = "structure")), shape = "NotebookInstanceLifecycleConfigList", 
            type = "list", max = 1L), OnStart = structure(list(structure(list(Content = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigContent", 
            type = "string", max = 16384L, min = 1L)), shape = "NotebookInstanceLifecycleHook", 
            type = "structure")), shape = "NotebookInstanceLifecycleConfigList", 
            type = "list", max = 1L), LastModifiedTime = structure(logical(0), 
            shape = "LastModifiedTime", type = "timestamp"), 
        CreationTime = structure(logical(0), shape = "CreationTime", 
            type = "timestamp")), shape = "DescribeNotebookInstanceLifecycleConfigOutput", 
        type = "structure")
    return(populate(args, shape))
}

describe_training_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobName = structure(logical(0), 
        shape = "TrainingJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DescribeTrainingJobRequest", type = "structure")
    return(populate(args, shape))
}

describe_training_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobName = structure(logical(0), 
        shape = "TrainingJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        TrainingJobArn = structure(logical(0), shape = "TrainingJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-job/.*"), 
        TuningJobArn = structure(logical(0), shape = "HyperParameterTuningJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:hyper-parameter-tuning-job/.*"), 
        ModelArtifacts = structure(list(S3ModelArtifacts = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
            shape = "ModelArtifacts", type = "structure"), TrainingJobStatus = structure(logical(0), 
            shape = "TrainingJobStatus", type = "string"), SecondaryStatus = structure(logical(0), 
            shape = "SecondaryStatus", type = "string"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string", max = 1024L), 
        HyperParameters = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string", max = 256L)), 
            shape = "HyperParameters", type = "map", max = 100L, 
            min = 0L), AlgorithmSpecification = structure(list(TrainingImage = structure(logical(0), 
            shape = "AlgorithmImage", type = "string", max = 255L), 
            TrainingInputMode = structure(logical(0), shape = "TrainingInputMode", 
                type = "string")), shape = "AlgorithmSpecification", 
            type = "structure"), RoleArn = structure(logical(0), 
            shape = "RoleArn", type = "string", max = 2048L, 
            min = 20L, pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        InputDataConfig = structure(list(structure(list(ChannelName = structure(logical(0), 
            shape = "ChannelName", type = "string", max = 64L, 
            min = 1L, pattern = "[A-Za-z0-9\\.\\-_]+"), DataSource = structure(list(S3DataSource = structure(list(S3DataType = structure(logical(0), 
            shape = "S3DataType", type = "string"), S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$"), 
            S3DataDistributionType = structure(logical(0), shape = "S3DataDistribution", 
                type = "string")), shape = "S3DataSource", type = "structure")), 
            shape = "DataSource", type = "structure"), ContentType = structure(logical(0), 
            shape = "ContentType", type = "string", max = 256L), 
            CompressionType = structure(logical(0), shape = "CompressionType", 
                type = "string"), RecordWrapperType = structure(logical(0), 
                shape = "RecordWrapper", type = "string")), shape = "Channel", 
            type = "structure")), shape = "InputDataConfig", 
            type = "list", max = 8L, min = 1L), OutputDataConfig = structure(list(KmsKeyId = structure(logical(0), 
            shape = "KmsKeyId", type = "string", max = 2048L), 
            S3OutputPath = structure(logical(0), shape = "S3Uri", 
                type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
            shape = "OutputDataConfig", type = "structure"), 
        ResourceConfig = structure(list(InstanceType = structure(logical(0), 
            shape = "TrainingInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "TrainingInstanceCount", 
                type = "integer", min = 1L), VolumeSizeInGB = structure(logical(0), 
                shape = "VolumeSizeInGB", type = "integer", min = 1L), 
            VolumeKmsKeyId = structure(logical(0), shape = "KmsKeyId", 
                type = "string", max = 2048L)), shape = "ResourceConfig", 
            type = "structure"), VpcConfig = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "SecurityGroupId", type = "string", max = 32L)), 
            shape = "VpcSecurityGroupIds", type = "list", max = 5L, 
            min = 1L), Subnets = structure(list(structure(logical(0), 
            shape = "SubnetId", type = "string", max = 32L)), 
            shape = "Subnets", type = "list", max = 16L, min = 1L)), 
            shape = "VpcConfig", type = "structure"), StoppingCondition = structure(list(MaxRuntimeInSeconds = structure(logical(0), 
            shape = "MaxRuntimeInSeconds", type = "integer", 
            min = 1L)), shape = "StoppingCondition", type = "structure"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TrainingStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TrainingEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), SecondaryStatusTransitions = structure(list(structure(list(Status = structure(logical(0), 
            shape = "SecondaryStatus", type = "string"), StartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StatusMessage = structure(logical(0), 
            shape = "StatusMessage", type = "string")), shape = "SecondaryStatusTransition", 
            type = "structure")), shape = "SecondaryStatusTransitions", 
            type = "list")), shape = "DescribeTrainingJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_transform_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransformJobName = structure(logical(0), 
        shape = "TransformJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "DescribeTransformJobRequest", type = "structure")
    return(populate(args, shape))
}

describe_transform_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransformJobName = structure(logical(0), 
        shape = "TransformJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        TransformJobArn = structure(logical(0), shape = "TransformJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:transform-job/.*"), 
        TransformJobStatus = structure(logical(0), shape = "TransformJobStatus", 
            type = "string"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string", max = 1024L), 
        ModelName = structure(logical(0), shape = "ModelName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        MaxConcurrentTransforms = structure(logical(0), shape = "MaxConcurrentTransforms", 
            type = "integer", min = 0L), MaxPayloadInMB = structure(logical(0), 
            shape = "MaxPayloadInMB", type = "integer", min = 0L), 
        BatchStrategy = structure(logical(0), shape = "BatchStrategy", 
            type = "string"), Environment = structure(list(structure(logical(0), 
            shape = "TransformEnvironmentValue", type = "string", 
            max = 10240L)), shape = "TransformEnvironmentMap", 
            type = "map", max = 16L), TransformInput = structure(list(DataSource = structure(list(S3DataSource = structure(list(S3DataType = structure(logical(0), 
            shape = "S3DataType", type = "string"), S3Uri = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$")), 
            shape = "TransformS3DataSource", type = "structure")), 
            shape = "TransformDataSource", type = "structure"), 
            ContentType = structure(logical(0), shape = "ContentType", 
                type = "string", max = 256L), CompressionType = structure(logical(0), 
                shape = "CompressionType", type = "string"), 
            SplitType = structure(logical(0), shape = "SplitType", 
                type = "string")), shape = "TransformInput", 
            type = "structure"), TransformOutput = structure(list(S3OutputPath = structure(logical(0), 
            shape = "S3Uri", type = "string", max = 1024L, pattern = "^(https|s3)://([^/]+)/?(.*)$"), 
            Accept = structure(logical(0), shape = "Accept", 
                type = "string", max = 256L), AssembleWith = structure(logical(0), 
                shape = "AssemblyType", type = "string"), KmsKeyId = structure(logical(0), 
                shape = "KmsKeyId", type = "string", max = 2048L)), 
            shape = "TransformOutput", type = "structure"), TransformResources = structure(list(InstanceType = structure(logical(0), 
            shape = "TransformInstanceType", type = "string"), 
            InstanceCount = structure(logical(0), shape = "TransformInstanceCount", 
                type = "integer", min = 1L), VolumeKmsKeyId = structure(logical(0), 
                shape = "KmsKeyId", type = "string", max = 2048L)), 
            shape = "TransformResources", type = "structure"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TransformStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TransformEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "DescribeTransformJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_endpoint_configs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SortBy = structure(logical(0), shape = "EndpointConfigSortKey", 
        type = "string"), SortOrder = structure(logical(0), shape = "OrderKey", 
        type = "string"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        NameContains = structure(logical(0), shape = "EndpointConfigNameContains", 
            type = "string", pattern = "[a-zA-Z0-9-]+"), CreationTimeBefore = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CreationTimeAfter = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ListEndpointConfigsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_endpoint_configs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointConfigs = structure(list(structure(list(EndpointConfigName = structure(logical(0), 
        shape = "EndpointConfigName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), EndpointConfigArn = structure(logical(0), 
        shape = "EndpointConfigArn", type = "string", max = 2048L, 
        min = 20L), CreationTime = structure(logical(0), shape = "Timestamp", 
        type = "timestamp")), shape = "EndpointConfigSummary", 
        type = "structure")), shape = "EndpointConfigSummaryList", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 8192L)), shape = "ListEndpointConfigsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_endpoints_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SortBy = structure(logical(0), shape = "EndpointSortKey", 
        type = "string"), SortOrder = structure(logical(0), shape = "OrderKey", 
        type = "string"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        NameContains = structure(logical(0), shape = "EndpointNameContains", 
            type = "string", pattern = "[a-zA-Z0-9-]+"), CreationTimeBefore = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CreationTimeAfter = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTimeBefore = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTimeAfter = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StatusEquals = structure(logical(0), 
            shape = "EndpointStatus", type = "string")), shape = "ListEndpointsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_endpoints_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Endpoints = structure(list(structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        EndpointArn = structure(logical(0), shape = "EndpointArn", 
            type = "string", max = 2048L, min = 20L), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), EndpointStatus = structure(logical(0), 
            shape = "EndpointStatus", type = "string")), shape = "EndpointSummary", 
        type = "structure")), shape = "EndpointSummaryList", 
        type = "list"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 8192L)), shape = "ListEndpointsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_hyper_parameter_tuning_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 100L, 
        min = 1L), SortBy = structure(logical(0), shape = "HyperParameterTuningJobSortByOptions", 
        type = "string"), SortOrder = structure(logical(0), shape = "SortOrder", 
        type = "string"), NameContains = structure(logical(0), 
        shape = "NameContains", type = "string", max = 63L, pattern = "[a-zA-Z0-9\\-]+"), 
        CreationTimeAfter = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), CreationTimeBefore = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTimeAfter = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTimeBefore = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), StatusEquals = structure(logical(0), 
            shape = "HyperParameterTuningJobStatus", type = "string")), 
        shape = "ListHyperParameterTuningJobsRequest", type = "structure")
    return(populate(args, shape))
}

list_hyper_parameter_tuning_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobSummaries = structure(list(structure(list(HyperParameterTuningJobName = structure(logical(0), 
        shape = "HyperParameterTuningJobName", type = "string", 
        max = 32L, min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        HyperParameterTuningJobArn = structure(logical(0), shape = "HyperParameterTuningJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:hyper-parameter-tuning-job/.*"), 
        HyperParameterTuningJobStatus = structure(logical(0), 
            shape = "HyperParameterTuningJobStatus", type = "string"), 
        Strategy = structure(logical(0), shape = "HyperParameterTuningJobStrategyType", 
            type = "string"), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), HyperParameterTuningEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TrainingJobStatusCounters = structure(list(Completed = structure(logical(0), 
            shape = "TrainingJobStatusCounter", type = "integer", 
            min = 0L), InProgress = structure(logical(0), shape = "TrainingJobStatusCounter", 
            type = "integer", min = 0L), RetryableError = structure(logical(0), 
            shape = "TrainingJobStatusCounter", type = "integer", 
            min = 0L), NonRetryableError = structure(logical(0), 
            shape = "TrainingJobStatusCounter", type = "integer", 
            min = 0L), Stopped = structure(logical(0), shape = "TrainingJobStatusCounter", 
            type = "integer", min = 0L)), shape = "TrainingJobStatusCounters", 
            type = "structure"), ObjectiveStatusCounters = structure(list(Succeeded = structure(logical(0), 
            shape = "ObjectiveStatusCounter", type = "integer", 
            min = 0L), Pending = structure(logical(0), shape = "ObjectiveStatusCounter", 
            type = "integer", min = 0L), Failed = structure(logical(0), 
            shape = "ObjectiveStatusCounter", type = "integer", 
            min = 0L)), shape = "ObjectiveStatusCounters", type = "structure"), 
        ResourceLimits = structure(list(MaxNumberOfTrainingJobs = structure(logical(0), 
            shape = "MaxNumberOfTrainingJobs", type = "integer", 
            min = 1L), MaxParallelTrainingJobs = structure(logical(0), 
            shape = "MaxParallelTrainingJobs", type = "integer", 
            min = 1L)), shape = "ResourceLimits", type = "structure")), 
        shape = "HyperParameterTuningJobSummary", type = "structure")), 
        shape = "HyperParameterTuningJobSummaries", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 8192L)), shape = "ListHyperParameterTuningJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_models_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SortBy = structure(logical(0), shape = "ModelSortKey", 
        type = "string"), SortOrder = structure(logical(0), shape = "OrderKey", 
        type = "string"), NextToken = structure(logical(0), shape = "PaginationToken", 
        type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        NameContains = structure(logical(0), shape = "ModelNameContains", 
            type = "string", pattern = "[a-zA-Z0-9-]+"), CreationTimeBefore = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), CreationTimeAfter = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ListModelsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_models_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Models = structure(list(structure(list(ModelName = structure(logical(0), 
        shape = "ModelName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        ModelArn = structure(logical(0), shape = "ModelArn", 
            type = "string", max = 2048L, min = 20L), CreationTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp")), shape = "ModelSummary", 
        type = "structure")), shape = "ModelSummaryList", type = "list"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", max = 8192L)), shape = "ListModelsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_notebook_instance_lifecycle_configs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        SortBy = structure(logical(0), shape = "NotebookInstanceLifecycleConfigSortKey", 
            type = "string"), SortOrder = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigSortOrder", 
            type = "string"), NameContains = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigNameContains", 
            type = "string", pattern = "[a-zA-Z0-9-]+"), CreationTimeBefore = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), CreationTimeAfter = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), LastModifiedTimeBefore = structure(logical(0), 
            shape = "LastModifiedTime", type = "timestamp"), 
        LastModifiedTimeAfter = structure(logical(0), shape = "LastModifiedTime", 
            type = "timestamp")), shape = "ListNotebookInstanceLifecycleConfigsInput", 
        type = "structure")
    return(populate(args, shape))
}

list_notebook_instance_lifecycle_configs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), NotebookInstanceLifecycleConfigs = structure(list(structure(list(NotebookInstanceLifecycleConfigName = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigName", type = "string", 
        max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        NotebookInstanceLifecycleConfigArn = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigArn", type = "string", 
            max = 256L), CreationTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "LastModifiedTime", type = "timestamp")), 
        shape = "NotebookInstanceLifecycleConfigSummary", type = "structure")), 
        shape = "NotebookInstanceLifecycleConfigSummaryList", 
        type = "list")), shape = "ListNotebookInstanceLifecycleConfigsOutput", 
        type = "structure")
    return(populate(args, shape))
}

list_notebook_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 100L, min = 1L), 
        SortBy = structure(logical(0), shape = "NotebookInstanceSortKey", 
            type = "string"), SortOrder = structure(logical(0), 
            shape = "NotebookInstanceSortOrder", type = "string"), 
        NameContains = structure(logical(0), shape = "NotebookInstanceNameContains", 
            type = "string", pattern = "[a-zA-Z0-9-]+"), CreationTimeBefore = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), CreationTimeAfter = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), LastModifiedTimeBefore = structure(logical(0), 
            shape = "LastModifiedTime", type = "timestamp"), 
        LastModifiedTimeAfter = structure(logical(0), shape = "LastModifiedTime", 
            type = "timestamp"), StatusEquals = structure(logical(0), 
            shape = "NotebookInstanceStatus", type = "string"), 
        NotebookInstanceLifecycleConfigNameContains = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigName", type = "string", 
            max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "ListNotebookInstancesInput", type = "structure")
    return(populate(args, shape))
}

list_notebook_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), NotebookInstances = structure(list(structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), NotebookInstanceArn = structure(logical(0), 
        shape = "NotebookInstanceArn", type = "string", max = 256L), 
        NotebookInstanceStatus = structure(logical(0), shape = "NotebookInstanceStatus", 
            type = "string"), Url = structure(logical(0), shape = "NotebookInstanceUrl", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string"), CreationTime = structure(logical(0), 
            shape = "CreationTime", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "LastModifiedTime", type = "timestamp"), 
        NotebookInstanceLifecycleConfigName = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigName", type = "string", 
            max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "NotebookInstanceSummary", type = "structure")), 
        shape = "NotebookInstanceSummaryList", type = "list")), 
        shape = "ListNotebookInstancesOutput", type = "structure")
    return(populate(args, shape))
}

list_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", max = 256L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 8192L), MaxResults = structure(logical(0), 
            shape = "ListTagsMaxResults", type = "integer", min = 50L)), 
        shape = "ListTagsInput", type = "structure")
    return(populate(args, shape))
}

list_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "TagKey", type = "string", max = 128L, min = 1L, 
        pattern = "^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"), 
        Value = structure(logical(0), shape = "TagValue", type = "string", 
            max = 256L, min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
        shape = "Tag", type = "structure")), shape = "TagList", 
        type = "list", max = 50L, min = 0L), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L)), 
        shape = "ListTagsOutput", type = "structure")
    return(populate(args, shape))
}

list_training_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L), MaxResults = structure(logical(0), 
        shape = "MaxResults", box = TRUE, type = "integer", max = 100L, 
        min = 1L), CreationTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CreationTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LastModifiedTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LastModifiedTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), NameContains = structure(logical(0), 
        shape = "NameContains", type = "string", max = 63L, pattern = "[a-zA-Z0-9\\-]+"), 
        StatusEquals = structure(logical(0), shape = "TrainingJobStatus", 
            type = "string"), SortBy = structure(logical(0), 
            shape = "SortBy", type = "string"), SortOrder = structure(logical(0), 
            shape = "SortOrder", type = "string")), shape = "ListTrainingJobsRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_training_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobSummaries = structure(list(structure(list(TrainingJobName = structure(logical(0), 
        shape = "TrainingJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        TrainingJobArn = structure(logical(0), shape = "TrainingJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-job/.*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TrainingEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TrainingJobStatus = structure(logical(0), 
            shape = "TrainingJobStatus", type = "string")), shape = "TrainingJobSummary", 
        type = "structure")), shape = "TrainingJobSummaries", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 8192L)), shape = "ListTrainingJobsResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_training_jobs_for_hyper_parameter_tuning_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobName = structure(logical(0), 
        shape = "HyperParameterTuningJobName", type = "string", 
        max = 32L, min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 8192L), MaxResults = structure(logical(0), 
            shape = "MaxResults", type = "integer", max = 100L, 
            min = 1L), StatusEquals = structure(logical(0), shape = "TrainingJobStatus", 
            type = "string"), SortBy = structure(logical(0), 
            shape = "TrainingJobSortByOptions", type = "string"), 
        SortOrder = structure(logical(0), shape = "SortOrder", 
            type = "string")), shape = "ListTrainingJobsForHyperParameterTuningJobRequest", 
        type = "structure")
    return(populate(args, shape))
}

list_training_jobs_for_hyper_parameter_tuning_job_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobSummaries = structure(list(structure(list(TrainingJobName = structure(logical(0), 
        shape = "TrainingJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        TrainingJobArn = structure(logical(0), shape = "TrainingJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-job/.*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TrainingStartTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TrainingEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TrainingJobStatus = structure(logical(0), 
            shape = "TrainingJobStatus", type = "string"), TunedHyperParameters = structure(list(structure(logical(0), 
            shape = "ParameterValue", type = "string", max = 256L)), 
            shape = "HyperParameters", type = "map", max = 100L, 
            min = 0L), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string", max = 1024L), 
        FinalHyperParameterTuningJobObjectiveMetric = structure(list(Type = structure(logical(0), 
            shape = "HyperParameterTuningJobObjectiveType", type = "string"), 
            MetricName = structure(logical(0), shape = "MetricName", 
                type = "string", max = 255L, min = 1L), Value = structure(logical(0), 
                shape = "MetricValue", type = "float")), shape = "FinalHyperParameterTuningJobObjectiveMetric", 
            type = "structure"), ObjectiveStatus = structure(logical(0), 
            shape = "ObjectiveStatus", type = "string")), shape = "HyperParameterTrainingJobSummary", 
        type = "structure")), shape = "HyperParameterTrainingJobSummaries", 
        type = "list"), NextToken = structure(logical(0), shape = "NextToken", 
        type = "string", max = 8192L)), shape = "ListTrainingJobsForHyperParameterTuningJobResponse", 
        type = "structure")
    return(populate(args, shape))
}

list_transform_jobs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreationTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), CreationTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LastModifiedTimeAfter = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), LastModifiedTimeBefore = structure(logical(0), 
        shape = "Timestamp", type = "timestamp"), NameContains = structure(logical(0), 
        shape = "NameContains", type = "string", max = 63L, pattern = "[a-zA-Z0-9\\-]+"), 
        StatusEquals = structure(logical(0), shape = "TransformJobStatus", 
            type = "string"), SortBy = structure(logical(0), 
            shape = "SortBy", type = "string"), SortOrder = structure(logical(0), 
            shape = "SortOrder", type = "string"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 8192L), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            box = TRUE, type = "integer", max = 100L, min = 1L)), 
        shape = "ListTransformJobsRequest", type = "structure")
    return(populate(args, shape))
}

list_transform_jobs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransformJobSummaries = structure(list(structure(list(TransformJobName = structure(logical(0), 
        shape = "TransformJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        TransformJobArn = structure(logical(0), shape = "TransformJobArn", 
            type = "string", max = 256L, pattern = "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:transform-job/.*"), 
        CreationTime = structure(logical(0), shape = "Timestamp", 
            type = "timestamp"), TransformEndTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), LastModifiedTime = structure(logical(0), 
            shape = "Timestamp", type = "timestamp"), TransformJobStatus = structure(logical(0), 
            shape = "TransformJobStatus", type = "string"), FailureReason = structure(logical(0), 
            shape = "FailureReason", type = "string", max = 1024L)), 
        shape = "TransformJobSummary", type = "structure")), 
        shape = "TransformJobSummaries", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", type = "string", max = 8192L)), 
        shape = "ListTransformJobsResponse", type = "structure")
    return(populate(args, shape))
}

start_notebook_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), shape = "StartNotebookInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

start_notebook_instance_output <- function () 
{
    return(list())
}

stop_hyper_parameter_tuning_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HyperParameterTuningJobName = structure(logical(0), 
        shape = "HyperParameterTuningJobName", type = "string", 
        max = 32L, min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "StopHyperParameterTuningJobRequest", type = "structure")
    return(populate(args, shape))
}

stop_hyper_parameter_tuning_job_output <- function () 
{
    return(list())
}

stop_notebook_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), shape = "StopNotebookInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

stop_notebook_instance_output <- function () 
{
    return(list())
}

stop_training_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TrainingJobName = structure(logical(0), 
        shape = "TrainingJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "StopTrainingJobRequest", type = "structure")
    return(populate(args, shape))
}

stop_training_job_output <- function () 
{
    return(list())
}

stop_transform_job_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TransformJobName = structure(logical(0), 
        shape = "TransformJobName", type = "string", max = 63L, 
        min = 1L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "StopTransformJobRequest", type = "structure")
    return(populate(args, shape))
}

stop_transform_job_output <- function () 
{
    return(list())
}

update_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        EndpointConfigName = structure(logical(0), shape = "EndpointConfigName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")), 
        shape = "UpdateEndpointInput", type = "structure")
    return(populate(args, shape))
}

update_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "EndpointArn", type = "string", max = 2048L, 
        min = 20L)), shape = "UpdateEndpointOutput", type = "structure")
    return(populate(args, shape))
}

update_endpoint_weights_and_capacities_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointName = structure(logical(0), 
        shape = "EndpointName", type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        DesiredWeightsAndCapacities = structure(list(structure(list(VariantName = structure(logical(0), 
            shape = "VariantName", type = "string", max = 63L, 
            pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), DesiredWeight = structure(logical(0), 
            shape = "VariantWeight", type = "float", min = 0L), 
            DesiredInstanceCount = structure(logical(0), shape = "TaskCount", 
                type = "integer", min = 1L)), shape = "DesiredWeightAndCapacity", 
            type = "structure")), shape = "DesiredWeightAndCapacityList", 
            type = "list", min = 1L)), shape = "UpdateEndpointWeightsAndCapacitiesInput", 
        type = "structure")
    return(populate(args, shape))
}

update_endpoint_weights_and_capacities_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EndpointArn = structure(logical(0), 
        shape = "EndpointArn", type = "string", max = 2048L, 
        min = 20L)), shape = "UpdateEndpointWeightsAndCapacitiesOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_notebook_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceName = structure(logical(0), 
        shape = "NotebookInstanceName", type = "string", max = 63L, 
        pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), InstanceType = structure(logical(0), 
        shape = "InstanceType", type = "string"), RoleArn = structure(logical(0), 
        shape = "RoleArn", type = "string", max = 2048L, min = 20L, 
        pattern = "^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"), 
        LifecycleConfigName = structure(logical(0), shape = "NotebookInstanceLifecycleConfigName", 
            type = "string", max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        DisassociateLifecycleConfig = structure(logical(0), shape = "DisassociateNotebookInstanceLifecycleConfig", 
            type = "boolean")), shape = "UpdateNotebookInstanceInput", 
        type = "structure")
    return(populate(args, shape))
}

update_notebook_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateNotebookInstanceOutput", 
        type = "structure")
    return(populate(args, shape))
}

update_notebook_instance_lifecycle_config_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NotebookInstanceLifecycleConfigName = structure(logical(0), 
        shape = "NotebookInstanceLifecycleConfigName", type = "string", 
        max = 63L, pattern = "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"), 
        OnCreate = structure(list(structure(list(Content = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigContent", 
            type = "string", max = 16384L, min = 1L)), shape = "NotebookInstanceLifecycleHook", 
            type = "structure")), shape = "NotebookInstanceLifecycleConfigList", 
            type = "list", max = 1L), OnStart = structure(list(structure(list(Content = structure(logical(0), 
            shape = "NotebookInstanceLifecycleConfigContent", 
            type = "string", max = 16384L, min = 1L)), shape = "NotebookInstanceLifecycleHook", 
            type = "structure")), shape = "NotebookInstanceLifecycleConfigList", 
            type = "list", max = 1L)), shape = "UpdateNotebookInstanceLifecycleConfigInput", 
        type = "structure")
    return(populate(args, shape))
}

update_notebook_instance_lifecycle_config_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UpdateNotebookInstanceLifecycleConfigOutput", 
        type = "structure")
    return(populate(args, shape))
}
