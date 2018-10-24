#' Adds or overwrites one or more tags for the specified Amazon SageMaker resource
#'
#' Adds or overwrites one or more tags for the specified Amazon SageMaker resource. You can add tags to notebook instances, training jobs, models, endpoint configurations, and endpoints.
#' 
#' Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the resource that you want to tag.
#' @param Tags An array of `Tag` objects. Each tag is a key-value pair. Only the `key` parameter is required. If you don\'t specify a value, Amazon SageMaker sets the value to an empty string.
#'
#' @examples
#'
#' @export
add_tags <- function (ResourceArn, Tags) 
{
    op <- Operation(name = "AddTags", http_method = "POST", http_path = "/", 
        paginator = list())
    input <- add_tags_input(ResourceArn = ResourceArn, Tags = Tags)
    output <- add_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an endpoint using the endpoint configuration specified in the request
#'
#' Creates an endpoint using the endpoint configuration specified in the request. Amazon SageMaker uses the endpoint to provision resources and deploy models. You create the endpoint configuration with the [CreateEndpointConfig](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html) API.
#' 
#' Use this API only for hosting models using Amazon SageMaker hosting services.
#' 
#' The endpoint name must be unique within an AWS Region in your AWS account.
#' 
#' When it receives the request, Amazon SageMaker creates the endpoint, launches the resources (ML compute instances), and deploys the model(s) on them.
#' 
#' When Amazon SageMaker receives the request, it sets the endpoint status to `Creating`. After it creates the endpoint, it sets the status to `InService`. Amazon SageMaker can then process incoming requests for inferences. To check the status of an endpoint, use the [DescribeEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html) API.
#' 
#' For an example, see [Exercise 1: Using the K-Means Algorithm Provided by Amazon SageMaker](http://docs.aws.amazon.com/sagemaker/latest/dg/ex1.html).
#' 
#' If any of the models hosted at this endpoint get model data from an Amazon S3 location, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provided. AWS STS is activated in your IAM user account by default. If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region. For more information, see [Activating and Deactivating AWS STS i an AWS Region](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the *AWS Identity and Access Management User Guide*.
#'
#' @param EndpointName The name of the endpoint. The name must be unique within an AWS Region in your AWS account.
#' @param EndpointConfigName The name of an endpoint configuration. For more information, see [CreateEndpointConfig](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html).
#' @param Tags An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)in the *AWS Billing and Cost Management User Guide*.
#'
#' @examples
#'
#' @export
create_endpoint <- function (EndpointName, EndpointConfigName, 
    Tags = NULL) 
{
    op <- Operation(name = "CreateEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_endpoint_input(EndpointName = EndpointName, 
        EndpointConfigName = EndpointConfigName, Tags = Tags)
    output <- create_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models
#'
#' Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models. In the configuration, you identify one or more models, created using the `CreateModel` API, to deploy and the resources that you want Amazon SageMaker to provision. Then you call the [CreateEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html) API.
#' 
#' Use this API only if you want to use Amazon SageMaker hosting services to deploy models into production.
#' 
#' In the request, you define one or more `ProductionVariant`s, each of which identifies a model. Each `ProductionVariant` parameter also describes the resources that you want Amazon SageMaker to provision. This includes the number and type of ML compute instances to deploy.
#' 
#' If you are hosting multiple models, you also assign a `VariantWeight` to specify how much traffic you want to allocate to each model. For example, suppose that you want to host two models, A and B, and you assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker distributes two-thirds of the traffic to Model A, and one-third to model B.
#'
#' @param EndpointConfigName The name of the endpoint configuration. You specify this name in a [CreateEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html) request.
#' @param ProductionVariants An array of `ProductionVariant` objects, one for each model that you want to host at this endpoint.
#' @param Tags An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
#' @param KmsKeyId The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
#'
#' @examples
#'
#' @export
create_endpoint_config <- function (EndpointConfigName, ProductionVariants, 
    Tags = NULL, KmsKeyId = NULL) 
{
    op <- Operation(name = "CreateEndpointConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_endpoint_config_input(EndpointConfigName = EndpointConfigName, 
        ProductionVariants = ProductionVariants, Tags = Tags, 
        KmsKeyId = KmsKeyId)
    output <- create_endpoint_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a hyperparameter tuning job
#'
#' Starts a hyperparameter tuning job.
#'
#' @param HyperParameterTuningJobName The name of the tuning job. This name is the prefix for the names of all training jobs that this tuning job launches. The name must be unique within the same AWS account and AWS Region. Names are not case sensitive, and must be between 1-32 characters.
#' @param HyperParameterTuningJobConfig The HyperParameterTuningJobConfig object that describes the tuning job, including the search strategy, metric used to evaluate training jobs, ranges of parameters to search, and resource limits for the tuning job.
#' @param TrainingJobDefinition The HyperParameterTrainingJobDefinition object that describes the training jobs that this tuning job launches, including static hyperparameters, input data configuration, output data configuration, resource configuration, and stopping condition.
#' @param Tags An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com//awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
#'
#' @examples
#'
#' @export
create_hyper_parameter_tuning_job <- function (HyperParameterTuningJobName, 
    HyperParameterTuningJobConfig, TrainingJobDefinition, Tags = NULL) 
{
    op <- Operation(name = "CreateHyperParameterTuningJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_hyper_parameter_tuning_job_input(HyperParameterTuningJobName = HyperParameterTuningJobName, 
        HyperParameterTuningJobConfig = HyperParameterTuningJobConfig, 
        TrainingJobDefinition = TrainingJobDefinition, Tags = Tags)
    output <- create_hyper_parameter_tuning_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a model in Amazon SageMaker
#'
#' Creates a model in Amazon SageMaker. In the request, you name the model and describe a primary container. For the primary container, you specify the docker image containing inference code, artifacts (from prior training), and custom environment map that the inference code uses when you deploy the model for predictions.
#' 
#' Use this API to create a model if you want to use Amazon SageMaker hosting services or run a batch transform job.
#' 
#' To host your model, you create an endpoint configuration with the `CreateEndpointConfig` API, and then create an endpoint with the `CreateEndpoint` API. Amazon SageMaker then deploys all of the containers that you defined for the model in the hosting environment.
#' 
#' To run a batch transform using your model, you start a job with the `CreateTransformJob` API. Amazon SageMaker uses your model and your dataset to get inferences which are then saved to a specified S3 location.
#' 
#' In the `CreateModel` request, you must define a container with the `PrimaryContainer` parameter.
#' 
#' In the request, you also provide an IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute hosting instances or for batch transform jobs. In addition, you also use the IAM role to manage permissions the inference code needs. For example, if the inference code access any other AWS resources, you grant necessary permissions via this role.
#'
#' @param ModelName The name of the new model.
#' @param PrimaryContainer The location of the primary docker image containing inference code, associated artifacts, and custom environment map that the inference code uses when the model is deployed for predictions.
#' @param ExecutionRoleArn The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute instances or for batch transform jobs. Deploying on ML compute instances is part of model hosting. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).
#' 
#' To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.
#' @param Tags An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
#' @param VpcConfig A VpcConfig object that specifies the VPC that you want your model to connect to. Control access to and from your model container by configuring the VPC. `VpcConfig` is currently used in hosting services but not in batch transform. For more information, see host-vpc.
#'
#' @examples
#'
#' @export
create_model <- function (ModelName, PrimaryContainer, ExecutionRoleArn, 
    Tags = NULL, VpcConfig = NULL) 
{
    op <- Operation(name = "CreateModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_model_input(ModelName = ModelName, PrimaryContainer = PrimaryContainer, 
        ExecutionRoleArn = ExecutionRoleArn, Tags = Tags, VpcConfig = VpcConfig)
    output <- create_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an Amazon SageMaker notebook instance
#'
#' Creates an Amazon SageMaker notebook instance. A notebook instance is a machine learning (ML) compute instance running on a Jupyter notebook.
#' 
#' In a `CreateNotebookInstance` request, specify the type of ML compute instance that you want to run. Amazon SageMaker launches the instance, installs common libraries that you can use to explore datasets for model training, and attaches an ML storage volume to the notebook instance.
#' 
#' Amazon SageMaker also provides a set of example notebooks. Each notebook demonstrates how to use Amazon SageMaker with a specific algorithm or with a machine learning framework.
#' 
#' After receiving the request, Amazon SageMaker does the following:
#' 
#' 1.  Creates a network interface in the Amazon SageMaker VPC.
#' 
#' 2.  (Option) If you specified `SubnetId`, Amazon SageMaker creates a network interface in your own VPC, which is inferred from the subnet ID that you provide in the input. When creating this network interface, Amazon SageMaker attaches the security group that you specified in the request to the network interface that it creates in your VPC.
#' 
#' 3.  Launches an EC2 instance of the type specified in the request in the Amazon SageMaker VPC. If you specified `SubnetId` of your VPC, Amazon SageMaker specifies both network interfaces when launching this instance. This enables inbound traffic from your own VPC to the notebook instance, assuming that the security groups allow it.
#' 
#' After creating the notebook instance, Amazon SageMaker returns its Amazon Resource Name (ARN).
#' 
#' After Amazon SageMaker creates the notebook instance, you can connect to the Jupyter server and work in Jupyter notebooks. For example, you can write code to explore a dataset that you can use for model training, train a model, host models by creating Amazon SageMaker endpoints, and validate hosted models.
#' 
#' For more information, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
#'
#' @param NotebookInstanceName The name of the new notebook instance.
#' @param InstanceType The type of ML compute instance to launch for the notebook instance.
#' @param RoleArn When you send any requests to AWS resources from the notebook instance, Amazon SageMaker assumes this role to perform tasks on your behalf. You must grant this role necessary permissions so Amazon SageMaker can perform these tasks. The policy must allow the Amazon SageMaker service principal (sagemaker.amazonaws.com) permissions to assume this role. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).
#' 
#' To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.
#' @param SubnetId The ID of the subnet in a VPC to which you would like to have a connectivity from your ML compute instance.
#' @param SecurityGroupIds The VPC security group IDs, in the form sg-xxxxxxxx. The security groups must be for the same VPC as specified in the subnet.
#' @param KmsKeyId If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt data at rest on the ML storage volume that is attached to your notebook instance.
#' @param Tags A list of tags to associate with the notebook instance. You can add tags later by using the `CreateTags` API.
#' @param LifecycleConfigName The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see notebook-lifecycle-config.
#' @param DirectInternetAccess Sets whether Amazon SageMaker provides internet access to the notebook instance. If you set this to `Disabled` this notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC.
#' 
#' For more information, see appendix-notebook-and-internet-access. You can set the value of this parameter to `Disabled` only if you set a value for the `SubnetId` parameter.
#'
#' @examples
#'
#' @export
create_notebook_instance <- function (NotebookInstanceName, InstanceType, 
    RoleArn, SubnetId = NULL, SecurityGroupIds = NULL, KmsKeyId = NULL, 
    Tags = NULL, LifecycleConfigName = NULL, DirectInternetAccess = NULL) 
{
    op <- Operation(name = "CreateNotebookInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_notebook_instance_input(NotebookInstanceName = NotebookInstanceName, 
        InstanceType = InstanceType, RoleArn = RoleArn, SubnetId = SubnetId, 
        SecurityGroupIds = SecurityGroupIds, KmsKeyId = KmsKeyId, 
        Tags = Tags, LifecycleConfigName = LifecycleConfigName, 
        DirectInternetAccess = DirectInternetAccess)
    output <- create_notebook_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a lifecycle configuration that you can associate with a notebook instance
#'
#' Creates a lifecycle configuration that you can associate with a notebook instance. A *lifecycle configuration* is a collection of shell scripts that run when you create or start a notebook instance.
#' 
#' Each lifecycle configuration script has a limit of 16384 characters.
#' 
#' The value of the `$PATH` environment variable that is available to both scripts is `/sbin:bin:/usr/sbin:/usr/bin`.
#' 
#' View CloudWatch Logs for notebook instance lifecycle configurations in log group `/aws/sagemaker/NotebookInstances` in log stream `[notebook-instance-name]/[LifecycleConfigHook]`.
#' 
#' Lifecycle configuration scripts cannot run for longer than 5 minutes. If a script runs for longer than 5 minutes, it fails and the notebook instance is not created or started.
#' 
#' For information about notebook instance lifestyle configurations, see notebook-lifecycle-config.
#'
#' @param NotebookInstanceLifecycleConfigName The name of the lifecycle configuration.
#' @param OnCreate A shell script that runs only once, when you create a notebook instance.
#' @param OnStart A shell script that runs every time you start a notebook instance, including when you create the notebook instance.
#'
#' @examples
#'
#' @export
create_notebook_instance_lifecycle_config <- function (NotebookInstanceLifecycleConfigName, 
    OnCreate = NULL, OnStart = NULL) 
{
    op <- Operation(name = "CreateNotebookInstanceLifecycleConfig", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_notebook_instance_lifecycle_config_input(NotebookInstanceLifecycleConfigName = NotebookInstanceLifecycleConfigName, 
        OnCreate = OnCreate, OnStart = OnStart)
    output <- create_notebook_instance_lifecycle_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a URL that you can use to connect to the Jupyter server from a notebook instance
#'
#' Returns a URL that you can use to connect to the Jupyter server from a notebook instance. In the Amazon SageMaker console, when you choose `Open` next to a notebook instance, Amazon SageMaker opens a new tab showing the Jupyter server home page from the notebook instance. The console uses this API to get the URL and show the page.
#' 
#' You can restrict access to this API and to the URL that it returns to a list of IP addresses that you specify. To restrict access, attach an IAM policy that denies access to this API unless the call comes from an IP address in the specified list to every AWS Identity and Access Management user, group, or role used to access the notebook instance. Use the `NotIpAddress` condition operator and the `aws:SourceIP` condition context key to specify the list of IP addresses that you want to have access to the notebook instance. For more information, see nbi-ip-filter.
#'
#' @param NotebookInstanceName The name of the notebook instance.
#' @param SessionExpirationDurationInSeconds The duration of the session, in seconds. The default is 12 hours.
#'
#' @examples
#'
#' @export
create_presigned_notebook_instance_url <- function (NotebookInstanceName, 
    SessionExpirationDurationInSeconds = NULL) 
{
    op <- Operation(name = "CreatePresignedNotebookInstanceUrl", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_presigned_notebook_instance_url_input(NotebookInstanceName = NotebookInstanceName, 
        SessionExpirationDurationInSeconds = SessionExpirationDurationInSeconds)
    output <- create_presigned_notebook_instance_url_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a model training job
#'
#' Starts a model training job. After training completes, Amazon SageMaker saves the resulting model artifacts to an Amazon S3 location that you specify.
#' 
#' If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts in a deep learning service other than Amazon SageMaker, provided that you know how to use them for inferences.
#' 
#' In the request body, you provide the following:
#' 
#' -   `AlgorithmSpecification` - Identifies the training algorithm to use.
#' 
#' -   `HyperParameters` - Specify these algorithm-specific parameters to influence the quality of the final model. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see [Algorithms](http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).
#' 
#' -   `InputDataConfig` - Describes the training dataset and the Amazon S3 location where it is stored.
#' 
#' -   `OutputDataConfig` - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results of model training.
#' 
#' -   `ResourceConfig` - Identifies the resources, ML compute instances, and ML storage volumes to deploy for model training. In distributed training, you specify more than one instance.
#' 
#' -   `RoleARN` - The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during model training. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete model training.
#' 
#' -   `StoppingCondition` - Sets a duration for training. Use this parameter to cap model training costs.
#' 
#' For more information about Amazon SageMaker, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
#'
#' @param TrainingJobName The name of the training job. The name must be unique within an AWS Region in an AWS account.
#' @param AlgorithmSpecification The registry path of the Docker image that contains the training algorithm and algorithm-specific metadata, including the input mode. For more information about algorithms provided by Amazon SageMaker, see [Algorithms](http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html). For information about providing your own algorithms, see your-algorithms.
#' @param RoleArn The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
#' 
#' During model training, Amazon SageMaker needs your permission to read input data from an S3 bucket, download a Docker image that contains training code, write model artifacts to an S3 bucket, write logs to Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant permissions for all of these tasks to an IAM role. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).
#' 
#' To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.
#' @param InputDataConfig An array of `Channel` objects. Each channel is a named input source. `InputDataConfig` describes the input data and its location.
#' 
#' Algorithms can accept input data from one or more channels. For example, an algorithm might have two channels of input data, `training_data` and `validation_data`. The configuration for each channel provides the S3 location where the input data is stored. It also provides information about the stored data: the MIME type, compression method, and whether the data is wrapped in RecordIO format.
#' 
#' Depending on the input mode that the algorithm supports, Amazon SageMaker either copies input data files from an S3 bucket to a local directory in the Docker container, or makes it available as input streams.
#' @param OutputDataConfig Specifies the path to the S3 bucket where you want to store model artifacts. Amazon SageMaker creates subfolders for the artifacts.
#' @param ResourceConfig The resources, including the ML compute instances and ML storage volumes, to use for model training.
#' 
#' ML storage volumes store model artifacts and incremental states. Training algorithms might also use ML storage volumes for scratch space. If you want Amazon SageMaker to use the ML storage volume to store the training data, choose `File` as the `TrainingInputMode` in the algorithm specification. For distributed training algorithms, specify an instance count greater than 1.
#' @param StoppingCondition Sets a duration for training. Use this parameter to cap model training costs. To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM` signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts.
#' 
#' When Amazon SageMaker terminates a job because the stopping condition has been met, training algorithms provided by Amazon SageMaker save the intermediate results of the job. This intermediate data is a valid model artifact. You can use it to create a model using the `CreateModel` API.
#' @param HyperParameters Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see [Algorithms](http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).
#' 
#' You can specify a maximum of 100 hyperparameters. Each hyperparameter is a key-value pair. Each key and value is limited to 256 characters, as specified by the `Length Constraint`.
#' @param VpcConfig A VpcConfig object that specifies the VPC that you want your training job to connect to. Control access to and from your training container by configuring the VPC. For more information, see train-vpc
#' @param Tags An array of key-value pairs. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
#'
#' @examples
#'
#' @export
create_training_job <- function (TrainingJobName, AlgorithmSpecification, 
    RoleArn, InputDataConfig, OutputDataConfig, ResourceConfig, 
    StoppingCondition, HyperParameters = NULL, VpcConfig = NULL, 
    Tags = NULL) 
{
    op <- Operation(name = "CreateTrainingJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_training_job_input(TrainingJobName = TrainingJobName, 
        AlgorithmSpecification = AlgorithmSpecification, RoleArn = RoleArn, 
        InputDataConfig = InputDataConfig, OutputDataConfig = OutputDataConfig, 
        ResourceConfig = ResourceConfig, StoppingCondition = StoppingCondition, 
        HyperParameters = HyperParameters, VpcConfig = VpcConfig, 
        Tags = Tags)
    output <- create_training_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts a transform job
#'
#' Starts a transform job. A transform job uses a trained model to get inferences on a dataset and saves these results to an Amazon S3 location that you specify.
#' 
#' To perform batch transformations, you create a transform job and use the data that you have readily available.
#' 
#' In the request body, you provide the following:
#' 
#' -   `TransformJobName` - Identifies the transform job. The name must be unique within an AWS Region in an AWS account.
#' 
#' -   `ModelName` - Identifies the model to use. `ModelName` must be the name of an existing Amazon SageMaker model in the same AWS Region and AWS account. For information on creating a model, see CreateModel.
#' 
#' -   `TransformInput` - Describes the dataset to be transformed and the Amazon S3 location where it is stored.
#' 
#' -   `TransformOutput` - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results from the transform job.
#' 
#' -   `TransformResources` - Identifies the ML compute instances for the transform job.
#' 
#' For more information about how batch transformation works Amazon SageMaker, see [How It Works](http://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).
#'
#' @param TransformJobName The name of the transform job. The name must be unique within an AWS Region in an AWS account.
#' @param ModelName The name of the model that you want to use for the transform job. `ModelName` must be the name of an existing Amazon SageMaker model within an AWS Region in an AWS account.
#' @param TransformInput Describes the input source and the way the transform job consumes it.
#' @param TransformOutput Describes the results of the transform job.
#' @param TransformResources Describes the resources, including ML instance types and ML instance count, to use for the transform job.
#' @param MaxConcurrentTransforms The maximum number of parallel requests that can be sent to each instance in a transform job. This is good for algorithms that implement multiple workers on larger instances . The default value is `1`. To allow Amazon SageMaker to determine the appropriate number for `MaxConcurrentTransforms`, set the value to `0`.
#' @param MaxPayloadInMB The maximum payload size allowed, in MB. A payload is the data portion of a record (without metadata). The value in `MaxPayloadInMB` must be greater or equal to the size of a single record. You can approximate the size of a record by dividing the size of your dataset by the number of records. Then multiply this value by the number of records you want in a mini-batch. It is recommended to enter a value slightly larger than this to ensure the records fit within the maximum payload size. The default value is `6` MB. For an unlimited payload size, set the value to `0`.
#' @param BatchStrategy Determines the number of records included in a single mini-batch. `SingleRecord` means only one record is used per mini-batch. `MultiRecord` means a mini-batch is set to contain as many records that can fit within the `MaxPayloadInMB` limit.
#' 
#' Batch transform will automatically split your input data into whatever payload size is specified if you set `SplitType` to `Line` and `BatchStrategy` to `MultiRecord`. There\'s no need to split the dataset into smaller files or to use larger payload sizes unless the records in your dataset are very large.
#' @param Environment The environment variables to set in the Docker container. We support up to 16 key and values entries in the map.
#' @param Tags An array of key-value pairs. Adding tags is optional. For more information, see [Using Cost Allocation Tags](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what) in the *AWS Billing and Cost Management User Guide*.
#'
#' @examples
#'
#' @export
create_transform_job <- function (TransformJobName, ModelName, 
    TransformInput, TransformOutput, TransformResources, MaxConcurrentTransforms = NULL, 
    MaxPayloadInMB = NULL, BatchStrategy = NULL, Environment = NULL, 
    Tags = NULL) 
{
    op <- Operation(name = "CreateTransformJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_transform_job_input(TransformJobName = TransformJobName, 
        ModelName = ModelName, TransformInput = TransformInput, 
        TransformOutput = TransformOutput, TransformResources = TransformResources, 
        MaxConcurrentTransforms = MaxConcurrentTransforms, MaxPayloadInMB = MaxPayloadInMB, 
        BatchStrategy = BatchStrategy, Environment = Environment, 
        Tags = Tags)
    output <- create_transform_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an endpoint
#'
#' Deletes an endpoint. Amazon SageMaker frees up all of the resources that were deployed when the endpoint was created.
#' 
#' Amazon SageMaker retires any custom KMS key grants associated with the endpoint, meaning you don\'t need to use the [RevokeGrant](http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html) API call.
#'
#' @param EndpointName The name of the endpoint that you want to delete.
#'
#' @examples
#'
#' @export
delete_endpoint <- function (EndpointName) 
{
    op <- Operation(name = "DeleteEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_endpoint_input(EndpointName = EndpointName)
    output <- delete_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an endpoint configuration
#'
#' Deletes an endpoint configuration. The `DeleteEndpointConfig` API deletes only the specified configuration. It does not delete endpoints created using the configuration.
#'
#' @param EndpointConfigName The name of the endpoint configuration that you want to delete.
#'
#' @examples
#'
#' @export
delete_endpoint_config <- function (EndpointConfigName) 
{
    op <- Operation(name = "DeleteEndpointConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_endpoint_config_input(EndpointConfigName = EndpointConfigName)
    output <- delete_endpoint_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a model
#'
#' Deletes a model. The `DeleteModel` API deletes only the model entry that was created in Amazon SageMaker when you called the [CreateModel](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html) API. It does not delete model artifacts, inference code, or the IAM role that you specified when creating the model.
#'
#' @param ModelName The name of the model to delete.
#'
#' @examples
#'
#' @export
delete_model <- function (ModelName) 
{
    op <- Operation(name = "DeleteModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_model_input(ModelName = ModelName)
    output <- delete_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an Amazon SageMaker notebook instance
#'
#' Deletes an Amazon SageMaker notebook instance. Before you can delete a notebook instance, you must call the `StopNotebookInstance` API.
#' 
#' When you delete a notebook instance, you lose all of your data. Amazon SageMaker removes the ML compute instance, and deletes the ML storage volume and the network interface associated with the notebook instance.
#'
#' @param NotebookInstanceName The name of the Amazon SageMaker notebook instance to delete.
#'
#' @examples
#'
#' @export
delete_notebook_instance <- function (NotebookInstanceName) 
{
    op <- Operation(name = "DeleteNotebookInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_notebook_instance_input(NotebookInstanceName = NotebookInstanceName)
    output <- delete_notebook_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a notebook instance lifecycle configuration
#'
#' Deletes a notebook instance lifecycle configuration.
#'
#' @param NotebookInstanceLifecycleConfigName The name of the lifecycle configuration to delete.
#'
#' @examples
#'
#' @export
delete_notebook_instance_lifecycle_config <- function (NotebookInstanceLifecycleConfigName) 
{
    op <- Operation(name = "DeleteNotebookInstanceLifecycleConfig", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_notebook_instance_lifecycle_config_input(NotebookInstanceLifecycleConfigName = NotebookInstanceLifecycleConfigName)
    output <- delete_notebook_instance_lifecycle_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified tags from an Amazon SageMaker resource
#'
#' Deletes the specified tags from an Amazon SageMaker resource.
#' 
#' To list a resource\'s tags, use the `ListTags` API.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the resource whose tags you want to delete.
#' @param TagKeys An array or one or more tag keys to delete.
#'
#' @examples
#'
#' @export
delete_tags <- function (ResourceArn, TagKeys) 
{
    op <- Operation(name = "DeleteTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_tags_input(ResourceArn = ResourceArn, TagKeys = TagKeys)
    output <- delete_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the description of an endpoint
#'
#' Returns the description of an endpoint.
#'
#' @param EndpointName The name of the endpoint.
#'
#' @examples
#'
#' @export
describe_endpoint <- function (EndpointName) 
{
    op <- Operation(name = "DescribeEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_endpoint_input(EndpointName = EndpointName)
    output <- describe_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the description of an endpoint configuration created using the `CreateEndpointConfig` API
#'
#' Returns the description of an endpoint configuration created using the `CreateEndpointConfig` API.
#'
#' @param EndpointConfigName The name of the endpoint configuration.
#'
#' @examples
#'
#' @export
describe_endpoint_config <- function (EndpointConfigName) 
{
    op <- Operation(name = "DescribeEndpointConfig", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_endpoint_config_input(EndpointConfigName = EndpointConfigName)
    output <- describe_endpoint_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a description of a hyperparameter tuning job
#'
#' Gets a description of a hyperparameter tuning job.
#'
#' @param HyperParameterTuningJobName The name of the tuning job to describe.
#'
#' @examples
#'
#' @export
describe_hyper_parameter_tuning_job <- function (HyperParameterTuningJobName) 
{
    op <- Operation(name = "DescribeHyperParameterTuningJob", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_hyper_parameter_tuning_job_input(HyperParameterTuningJobName = HyperParameterTuningJobName)
    output <- describe_hyper_parameter_tuning_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a model that you created using the `CreateModel` API
#'
#' Describes a model that you created using the `CreateModel` API.
#'
#' @param ModelName The name of the model.
#'
#' @examples
#'
#' @export
describe_model <- function (ModelName) 
{
    op <- Operation(name = "DescribeModel", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_model_input(ModelName = ModelName)
    output <- describe_model_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a notebook instance
#'
#' Returns information about a notebook instance.
#'
#' @param NotebookInstanceName The name of the notebook instance that you want information about.
#'
#' @examples
#'
#' @export
describe_notebook_instance <- function (NotebookInstanceName) 
{
    op <- Operation(name = "DescribeNotebookInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_notebook_instance_input(NotebookInstanceName = NotebookInstanceName)
    output <- describe_notebook_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a description of a notebook instance lifecycle configuration
#'
#' Returns a description of a notebook instance lifecycle configuration.
#' 
#' For information about notebook instance lifestyle configurations, see notebook-lifecycle-config.
#'
#' @param NotebookInstanceLifecycleConfigName The name of the lifecycle configuration to describe.
#'
#' @examples
#'
#' @export
describe_notebook_instance_lifecycle_config <- function (NotebookInstanceLifecycleConfigName) 
{
    op <- Operation(name = "DescribeNotebookInstanceLifecycleConfig", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_notebook_instance_lifecycle_config_input(NotebookInstanceLifecycleConfigName = NotebookInstanceLifecycleConfigName)
    output <- describe_notebook_instance_lifecycle_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a training job
#'
#' Returns information about a training job.
#'
#' @param TrainingJobName The name of the training job.
#'
#' @examples
#'
#' @export
describe_training_job <- function (TrainingJobName) 
{
    op <- Operation(name = "DescribeTrainingJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_training_job_input(TrainingJobName = TrainingJobName)
    output <- describe_training_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns information about a transform job
#'
#' Returns information about a transform job.
#'
#' @param TransformJobName The name of the transform job that you want to view details of.
#'
#' @examples
#'
#' @export
describe_transform_job <- function (TransformJobName) 
{
    op <- Operation(name = "DescribeTransformJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_transform_job_input(TransformJobName = TransformJobName)
    output <- describe_transform_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists endpoint configurations
#'
#' Lists endpoint configurations.
#'
#' @param SortBy The field to sort results by. The default is `CreationTime`.
#' @param SortOrder The sort order for results. The default is `Ascending`.
#' @param NextToken If the result of the previous `ListEndpointConfig` request was truncated, the response includes a `NextToken`. To retrieve the next set of endpoint configurations, use the token in the next request.
#' @param MaxResults The maximum number of training jobs to return in the response.
#' @param NameContains A string in the endpoint configuration name. This filter returns only endpoint configurations whose name contains the specified string.
#' @param CreationTimeBefore A filter that returns only endpoint configurations created before the specified time (timestamp).
#' @param CreationTimeAfter A filter that returns only endpoint configurations created after the specified time (timestamp).
#'
#' @examples
#'
#' @export
list_endpoint_configs <- function (SortBy = NULL, SortOrder = NULL, 
    NextToken = NULL, MaxResults = NULL, NameContains = NULL, 
    CreationTimeBefore = NULL, CreationTimeAfter = NULL) 
{
    op <- Operation(name = "ListEndpointConfigs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_endpoint_configs_input(SortBy = SortBy, SortOrder = SortOrder, 
        NextToken = NextToken, MaxResults = MaxResults, NameContains = NameContains, 
        CreationTimeBefore = CreationTimeBefore, CreationTimeAfter = CreationTimeAfter)
    output <- list_endpoint_configs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists endpoints
#'
#' Lists endpoints.
#'
#' @param SortBy Sorts the list of results. The default is `CreationTime`.
#' @param SortOrder The sort order for results. The default is `Ascending`.
#' @param NextToken If the result of a `ListEndpoints` request was truncated, the response includes a `NextToken`. To retrieve the next set of endpoints, use the token in the next request.
#' @param MaxResults The maximum number of endpoints to return in the response.
#' @param NameContains A string in endpoint names. This filter returns only endpoints whose name contains the specified string.
#' @param CreationTimeBefore A filter that returns only endpoints that were created before the specified time (timestamp).
#' @param CreationTimeAfter A filter that returns only endpoints that were created after the specified time (timestamp).
#' @param LastModifiedTimeBefore A filter that returns only endpoints that were modified before the specified timestamp.
#' @param LastModifiedTimeAfter A filter that returns only endpoints that were modified after the specified timestamp.
#' @param StatusEquals A filter that returns only endpoints with the specified status.
#'
#' @examples
#'
#' @export
list_endpoints <- function (SortBy = NULL, SortOrder = NULL, 
    NextToken = NULL, MaxResults = NULL, NameContains = NULL, 
    CreationTimeBefore = NULL, CreationTimeAfter = NULL, LastModifiedTimeBefore = NULL, 
    LastModifiedTimeAfter = NULL, StatusEquals = NULL) 
{
    op <- Operation(name = "ListEndpoints", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_endpoints_input(SortBy = SortBy, SortOrder = SortOrder, 
        NextToken = NextToken, MaxResults = MaxResults, NameContains = NameContains, 
        CreationTimeBefore = CreationTimeBefore, CreationTimeAfter = CreationTimeAfter, 
        LastModifiedTimeBefore = LastModifiedTimeBefore, LastModifiedTimeAfter = LastModifiedTimeAfter, 
        StatusEquals = StatusEquals)
    output <- list_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account
#'
#' Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account.
#'
#' @param NextToken If the result of the previous `ListHyperParameterTuningJobs` request was truncated, the response includes a `NextToken`. To retrieve the next set of tuning jobs, use the token in the next request.
#' @param MaxResults The maximum number of tuning jobs to return. The default value is 10.
#' @param SortBy The field to sort results by. The default is `Name`.
#' @param SortOrder The sort order for results. The default is `Ascending`.
#' @param NameContains A string in the tuning job name. This filter returns only tuning jobs whose name contains the specified string.
#' @param CreationTimeAfter A filter that returns only tuning jobs that were created after the specified time.
#' @param CreationTimeBefore A filter that returns only tuning jobs that were created before the specified time.
#' @param LastModifiedTimeAfter A filter that returns only tuning jobs that were modified after the specified time.
#' @param LastModifiedTimeBefore A filter that returns only tuning jobs that were modified before the specified time.
#' @param StatusEquals A filter that returns only tuning jobs with the specified status.
#'
#' @examples
#'
#' @export
list_hyper_parameter_tuning_jobs <- function (NextToken = NULL, 
    MaxResults = NULL, SortBy = NULL, SortOrder = NULL, NameContains = NULL, 
    CreationTimeAfter = NULL, CreationTimeBefore = NULL, LastModifiedTimeAfter = NULL, 
    LastModifiedTimeBefore = NULL, StatusEquals = NULL) 
{
    op <- Operation(name = "ListHyperParameterTuningJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_hyper_parameter_tuning_jobs_input(NextToken = NextToken, 
        MaxResults = MaxResults, SortBy = SortBy, SortOrder = SortOrder, 
        NameContains = NameContains, CreationTimeAfter = CreationTimeAfter, 
        CreationTimeBefore = CreationTimeBefore, LastModifiedTimeAfter = LastModifiedTimeAfter, 
        LastModifiedTimeBefore = LastModifiedTimeBefore, StatusEquals = StatusEquals)
    output <- list_hyper_parameter_tuning_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists models created with the [CreateModel](http://docs
#'
#' Lists models created with the [CreateModel](http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html) API.
#'
#' @param SortBy Sorts the list of results. The default is `CreationTime`.
#' @param SortOrder The sort order for results. The default is `Ascending`.
#' @param NextToken If the response to a previous `ListModels` request was truncated, the response includes a `NextToken`. To retrieve the next set of models, use the token in the next request.
#' @param MaxResults The maximum number of models to return in the response.
#' @param NameContains A string in the training job name. This filter returns only models in the training job whose name contains the specified string.
#' @param CreationTimeBefore A filter that returns only models created before the specified time (timestamp).
#' @param CreationTimeAfter A filter that returns only models created after the specified time (timestamp).
#'
#' @examples
#'
#' @export
list_models <- function (SortBy = NULL, SortOrder = NULL, NextToken = NULL, 
    MaxResults = NULL, NameContains = NULL, CreationTimeBefore = NULL, 
    CreationTimeAfter = NULL) 
{
    op <- Operation(name = "ListModels", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_models_input(SortBy = SortBy, SortOrder = SortOrder, 
        NextToken = NextToken, MaxResults = MaxResults, NameContains = NameContains, 
        CreationTimeBefore = CreationTimeBefore, CreationTimeAfter = CreationTimeAfter)
    output <- list_models_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API
#'
#' Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API.
#'
#' @param NextToken If the result of a `ListNotebookInstanceLifecycleConfigs` request was truncated, the response includes a `NextToken`. To get the next set of lifecycle configurations, use the token in the next request.
#' @param MaxResults The maximum number of lifecycle configurations to return in the response.
#' @param SortBy Sorts the list of results. The default is `CreationTime`.
#' @param SortOrder The sort order for results.
#' @param NameContains A string in the lifecycle configuration name. This filter returns only lifecycle configurations whose name contains the specified string.
#' @param CreationTimeBefore A filter that returns only lifecycle configurations that were created before the specified time (timestamp).
#' @param CreationTimeAfter A filter that returns only lifecycle configurations that were created after the specified time (timestamp).
#' @param LastModifiedTimeBefore A filter that returns only lifecycle configurations that were modified before the specified time (timestamp).
#' @param LastModifiedTimeAfter A filter that returns only lifecycle configurations that were modified after the specified time (timestamp).
#'
#' @examples
#'
#' @export
list_notebook_instance_lifecycle_configs <- function (NextToken = NULL, 
    MaxResults = NULL, SortBy = NULL, SortOrder = NULL, NameContains = NULL, 
    CreationTimeBefore = NULL, CreationTimeAfter = NULL, LastModifiedTimeBefore = NULL, 
    LastModifiedTimeAfter = NULL) 
{
    op <- Operation(name = "ListNotebookInstanceLifecycleConfigs", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- list_notebook_instance_lifecycle_configs_input(NextToken = NextToken, 
        MaxResults = MaxResults, SortBy = SortBy, SortOrder = SortOrder, 
        NameContains = NameContains, CreationTimeBefore = CreationTimeBefore, 
        CreationTimeAfter = CreationTimeAfter, LastModifiedTimeBefore = LastModifiedTimeBefore, 
        LastModifiedTimeAfter = LastModifiedTimeAfter)
    output <- list_notebook_instance_lifecycle_configs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a list of the Amazon SageMaker notebook instances in the requester\'s account in an AWS Region
#'
#' Returns a list of the Amazon SageMaker notebook instances in the requester\'s account in an AWS Region.
#'
#' @param NextToken If the previous call to the `ListNotebookInstances` is truncated, the response includes a `NextToken`. You can use this token in your subsequent `ListNotebookInstances` request to fetch the next set of notebook instances.
#' 
#' You might specify a filter or a sort order in your request. When response is truncated, you must use the same values for the filer and sort order in the next request.
#' @param MaxResults The maximum number of notebook instances to return.
#' @param SortBy The field to sort results by. The default is `Name`.
#' @param SortOrder The sort order for results.
#' @param NameContains A string in the notebook instances\' name. This filter returns only notebook instances whose name contains the specified string.
#' @param CreationTimeBefore A filter that returns only notebook instances that were created before the specified time (timestamp).
#' @param CreationTimeAfter A filter that returns only notebook instances that were created after the specified time (timestamp).
#' @param LastModifiedTimeBefore A filter that returns only notebook instances that were modified before the specified time (timestamp).
#' @param LastModifiedTimeAfter A filter that returns only notebook instances that were modified after the specified time (timestamp).
#' @param StatusEquals A filter that returns only notebook instances with the specified status.
#' @param NotebookInstanceLifecycleConfigNameContains A string in the name of a notebook instances lifecycle configuration associated with this notebook instance. This filter returns only notebook instances associated with a lifecycle configuration with a name that contains the specified string.
#'
#' @examples
#'
#' @export
list_notebook_instances <- function (NextToken = NULL, MaxResults = NULL, 
    SortBy = NULL, SortOrder = NULL, NameContains = NULL, CreationTimeBefore = NULL, 
    CreationTimeAfter = NULL, LastModifiedTimeBefore = NULL, 
    LastModifiedTimeAfter = NULL, StatusEquals = NULL, NotebookInstanceLifecycleConfigNameContains = NULL) 
{
    op <- Operation(name = "ListNotebookInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_notebook_instances_input(NextToken = NextToken, 
        MaxResults = MaxResults, SortBy = SortBy, SortOrder = SortOrder, 
        NameContains = NameContains, CreationTimeBefore = CreationTimeBefore, 
        CreationTimeAfter = CreationTimeAfter, LastModifiedTimeBefore = LastModifiedTimeBefore, 
        LastModifiedTimeAfter = LastModifiedTimeAfter, StatusEquals = StatusEquals, 
        NotebookInstanceLifecycleConfigNameContains = NotebookInstanceLifecycleConfigNameContains)
    output <- list_notebook_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns the tags for the specified Amazon SageMaker resource
#'
#' Returns the tags for the specified Amazon SageMaker resource.
#'
#' @param ResourceArn The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.
#' @param NextToken If the response to the previous `ListTags` request is truncated, Amazon SageMaker returns this token. To retrieve the next set of tags, use it in the subsequent request.
#' @param MaxResults Maximum number of tags to return.
#'
#' @examples
#'
#' @export
list_tags <- function (ResourceArn, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_tags_input(ResourceArn = ResourceArn, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- list_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists training jobs
#'
#' Lists training jobs.
#'
#' @param NextToken If the result of the previous `ListTrainingJobs` request was truncated, the response includes a `NextToken`. To retrieve the next set of training jobs, use the token in the next request.
#' @param MaxResults The maximum number of training jobs to return in the response.
#' @param CreationTimeAfter A filter that returns only training jobs created after the specified time (timestamp).
#' @param CreationTimeBefore A filter that returns only training jobs created before the specified time (timestamp).
#' @param LastModifiedTimeAfter A filter that returns only training jobs modified after the specified time (timestamp).
#' @param LastModifiedTimeBefore A filter that returns only training jobs modified before the specified time (timestamp).
#' @param NameContains A string in the training job name. This filter returns only training jobs whose name contains the specified string.
#' @param StatusEquals A filter that retrieves only training jobs with a specific status.
#' @param SortBy The field to sort results by. The default is `CreationTime`.
#' @param SortOrder The sort order for results. The default is `Ascending`.
#'
#' @examples
#'
#' @export
list_training_jobs <- function (NextToken = NULL, MaxResults = NULL, 
    CreationTimeAfter = NULL, CreationTimeBefore = NULL, LastModifiedTimeAfter = NULL, 
    LastModifiedTimeBefore = NULL, NameContains = NULL, StatusEquals = NULL, 
    SortBy = NULL, SortOrder = NULL) 
{
    op <- Operation(name = "ListTrainingJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_training_jobs_input(NextToken = NextToken, 
        MaxResults = MaxResults, CreationTimeAfter = CreationTimeAfter, 
        CreationTimeBefore = CreationTimeBefore, LastModifiedTimeAfter = LastModifiedTimeAfter, 
        LastModifiedTimeBefore = LastModifiedTimeBefore, NameContains = NameContains, 
        StatusEquals = StatusEquals, SortBy = SortBy, SortOrder = SortOrder)
    output <- list_training_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched
#'
#' Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched.
#'
#' @param HyperParameterTuningJobName The name of the tuning job whose training jobs you want to list.
#' @param NextToken If the result of the previous `ListTrainingJobsForHyperParameterTuningJob` request was truncated, the response includes a `NextToken`. To retrieve the next set of training jobs, use the token in the next request.
#' @param MaxResults The maximum number of training jobs to return. The default value is 10.
#' @param StatusEquals A filter that returns only training jobs with the specified status.
#' @param SortBy The field to sort results by. The default is `Name`.
#' 
#' If the value of this field is `FinalObjectiveMetricValue`, any training jobs that did not return an objective metric are not listed.
#' @param SortOrder The sort order for results. The default is `Ascending`.
#'
#' @examples
#'
#' @export
list_training_jobs_for_hyper_parameter_tuning_job <- function (HyperParameterTuningJobName, 
    NextToken = NULL, MaxResults = NULL, StatusEquals = NULL, 
    SortBy = NULL, SortOrder = NULL) 
{
    op <- Operation(name = "ListTrainingJobsForHyperParameterTuningJob", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- list_training_jobs_for_hyper_parameter_tuning_job_input(HyperParameterTuningJobName = HyperParameterTuningJobName, 
        NextToken = NextToken, MaxResults = MaxResults, StatusEquals = StatusEquals, 
        SortBy = SortBy, SortOrder = SortOrder)
    output <- list_training_jobs_for_hyper_parameter_tuning_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Lists transform jobs
#'
#' Lists transform jobs.
#'
#' @param CreationTimeAfter A filter that returns only transform jobs created after the specified time.
#' @param CreationTimeBefore A filter that returns only transform jobs created before the specified time.
#' @param LastModifiedTimeAfter A filter that returns only transform jobs modified after the specified time.
#' @param LastModifiedTimeBefore A filter that returns only transform jobs modified before the specified time.
#' @param NameContains A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.
#' @param StatusEquals A filter that retrieves only transform jobs with a specific status.
#' @param SortBy The field to sort results by. The default is `CreationTime`.
#' @param SortOrder The sort order for results. The default is `Descending`.
#' @param NextToken If the result of the previous `ListTransformJobs` request was truncated, the response includes a `NextToken`. To retrieve the next set of transform jobs, use the token in the next request.
#' @param MaxResults The maximum number of transform jobs to return in the response. The default value is `10`.
#'
#' @examples
#'
#' @export
list_transform_jobs <- function (CreationTimeAfter = NULL, CreationTimeBefore = NULL, 
    LastModifiedTimeAfter = NULL, LastModifiedTimeBefore = NULL, 
    NameContains = NULL, StatusEquals = NULL, SortBy = NULL, 
    SortOrder = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "ListTransformJobs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- list_transform_jobs_input(CreationTimeAfter = CreationTimeAfter, 
        CreationTimeBefore = CreationTimeBefore, LastModifiedTimeAfter = LastModifiedTimeAfter, 
        LastModifiedTimeBefore = LastModifiedTimeBefore, NameContains = NameContains, 
        StatusEquals = StatusEquals, SortBy = SortBy, SortOrder = SortOrder, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- list_transform_jobs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume
#'
#' Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume. After configuring the notebook instance, Amazon SageMaker sets the notebook instance status to `InService`. A notebook instance\'s status must be `InService` before you can connect to your Jupyter notebook.
#'
#' @param NotebookInstanceName The name of the notebook instance to start.
#'
#' @examples
#'
#' @export
start_notebook_instance <- function (NotebookInstanceName) 
{
    op <- Operation(name = "StartNotebookInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_notebook_instance_input(NotebookInstanceName = NotebookInstanceName)
    output <- start_notebook_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched
#'
#' Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched.
#' 
#' All model artifacts output from the training jobs are stored in Amazon Simple Storage Service (Amazon S3). All data that the training jobs write to Amazon CloudWatch Logs are still available in CloudWatch. After the tuning job moves to the `Stopped` state, it releases all reserved resources for the tuning job.
#'
#' @param HyperParameterTuningJobName The name of the tuning job to stop.
#'
#' @examples
#'
#' @export
stop_hyper_parameter_tuning_job <- function (HyperParameterTuningJobName) 
{
    op <- Operation(name = "StopHyperParameterTuningJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_hyper_parameter_tuning_job_input(HyperParameterTuningJobName = HyperParameterTuningJobName)
    output <- stop_hyper_parameter_tuning_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Terminates the ML compute instance
#'
#' Terminates the ML compute instance. Before terminating the instance, Amazon SageMaker disconnects the ML storage volume from it. Amazon SageMaker preserves the ML storage volume.
#' 
#' To access data on the ML storage volume for a notebook instance that has been terminated, call the `StartNotebookInstance` API. `StartNotebookInstance` launches another ML compute instance, configures it, and attaches the preserved ML storage volume so you can continue your work.
#'
#' @param NotebookInstanceName The name of the notebook instance to terminate.
#'
#' @examples
#'
#' @export
stop_notebook_instance <- function (NotebookInstanceName) 
{
    op <- Operation(name = "StopNotebookInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_notebook_instance_input(NotebookInstanceName = NotebookInstanceName)
    output <- stop_notebook_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a training job
#'
#' Stops a training job. To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM` signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of the training is not lost.
#' 
#' Training algorithms provided by Amazon SageMaker save the intermediate results of a model training job. This intermediate data is a valid model artifact. You can use the model artifacts that are saved when Amazon SageMaker stops a training job to create a model.
#' 
#' When it receives a `StopTrainingJob` request, Amazon SageMaker changes the status of the job to `Stopping`. After Amazon SageMaker stops the job, it sets the status to `Stopped`.
#'
#' @param TrainingJobName The name of the training job to stop.
#'
#' @examples
#'
#' @export
stop_training_job <- function (TrainingJobName) 
{
    op <- Operation(name = "StopTrainingJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_training_job_input(TrainingJobName = TrainingJobName)
    output <- stop_training_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops a transform job
#'
#' Stops a transform job.
#' 
#' When Amazon SageMaker receives a `StopTransformJob` request, the status of the job changes to `Stopping`. After Amazon SageMaker stops the job, the status is set to `Stopped`. When you stop a transform job before it is completed, Amazon SageMaker doesn\'t store the job\'s output in Amazon S3.
#'
#' @param TransformJobName The name of the transform job to stop.
#'
#' @examples
#'
#' @export
stop_transform_job <- function (TransformJobName) 
{
    op <- Operation(name = "StopTransformJob", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_transform_job_input(TransformJobName = TransformJobName)
    output <- stop_transform_job_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deploys the new `EndpointConfig` specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous `EndpointConfig` (there is no availability loss)
#'
#' Deploys the new `EndpointConfig` specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous `EndpointConfig` (there is no availability loss).
#' 
#' When Amazon SageMaker receives the request, it sets the endpoint status to `Updating`. After updating the endpoint, it sets the status to `InService`. To check the status of an endpoint, use the [DescribeEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html) API.
#' 
#' You cannot update an endpoint with the current `EndpointConfig`. To update an endpoint, you must create a new `EndpointConfig`.
#'
#' @param EndpointName The name of the endpoint whose configuration you want to update.
#' @param EndpointConfigName The name of the new endpoint configuration.
#'
#' @examples
#'
#' @export
update_endpoint <- function (EndpointName, EndpointConfigName) 
{
    op <- Operation(name = "UpdateEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_endpoint_input(EndpointName = EndpointName, 
        EndpointConfigName = EndpointConfigName)
    output <- update_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint
#'
#' Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint. When it receives the request, Amazon SageMaker sets the endpoint status to `Updating`. After updating the endpoint, it sets the status to `InService`. To check the status of an endpoint, use the [DescribeEndpoint](http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html) API.
#'
#' @param EndpointName The name of an existing Amazon SageMaker endpoint.
#' @param DesiredWeightsAndCapacities An object that provides new capacity and weight values for a variant.
#'
#' @examples
#'
#' @export
update_endpoint_weights_and_capacities <- function (EndpointName, 
    DesiredWeightsAndCapacities) 
{
    op <- Operation(name = "UpdateEndpointWeightsAndCapacities", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- update_endpoint_weights_and_capacities_input(EndpointName = EndpointName, 
        DesiredWeightsAndCapacities = DesiredWeightsAndCapacities)
    output <- update_endpoint_weights_and_capacities_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a notebook instance
#'
#' Updates a notebook instance. NotebookInstance updates include upgrading or downgrading the ML compute instance used for your notebook instance to accommodate changes in your workload requirements. You can also update the VPC security groups.
#'
#' @param NotebookInstanceName The name of the notebook instance to update.
#' @param InstanceType The Amazon ML compute instance type.
#' @param RoleArn The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can assume to access the notebook instance. For more information, see [Amazon SageMaker Roles](http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).
#' 
#' To be able to pass this role to Amazon SageMaker, the caller of this API must have the `iam:PassRole` permission.
#' @param LifecycleConfigName The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see notebook-lifecycle-config.
#' @param DisassociateLifecycleConfig Set to `true` to remove the notebook instance lifecycle configuration currently associated with the notebook instance.
#'
#' @examples
#'
#' @export
update_notebook_instance <- function (NotebookInstanceName, InstanceType = NULL, 
    RoleArn = NULL, LifecycleConfigName = NULL, DisassociateLifecycleConfig = NULL) 
{
    op <- Operation(name = "UpdateNotebookInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- update_notebook_instance_input(NotebookInstanceName = NotebookInstanceName, 
        InstanceType = InstanceType, RoleArn = RoleArn, LifecycleConfigName = LifecycleConfigName, 
        DisassociateLifecycleConfig = DisassociateLifecycleConfig)
    output <- update_notebook_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API
#'
#' Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API.
#'
#' @param NotebookInstanceLifecycleConfigName The name of the lifecycle configuration.
#' @param OnCreate The shell script that runs only once, when you create a notebook instance
#' @param OnStart The shell script that runs every time you start a notebook instance, including when you create the notebook instance.
#'
#' @examples
#'
#' @export
update_notebook_instance_lifecycle_config <- function (NotebookInstanceLifecycleConfigName, 
    OnCreate = NULL, OnStart = NULL) 
{
    op <- Operation(name = "UpdateNotebookInstanceLifecycleConfig", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- update_notebook_instance_lifecycle_config_input(NotebookInstanceLifecycleConfigName = NotebookInstanceLifecycleConfigName, 
        OnCreate = OnCreate, OnStart = OnStart)
    output <- update_notebook_instance_lifecycle_config_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
