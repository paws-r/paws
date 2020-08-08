################################################################################
# This example will go through how to use SageMaker using Paws
# Author: Dyfan Jones (https://github.com/DyfanJones)
#
# This example is an adaptation from
# https://github.com/awslabs/amazon-sagemaker-examples/blob/master/introduction_to_applying_machine_learning/xgboost_direct_marketing/xgboost_direct_marketing_sagemaker.ipynb
################################################################################

###################################################
# Libraries
###################################################
library(data.table) # Used for data wrangling
library(fastDummies) # Create dummy variables from categorical variables
library(pROC) # Evaluate the model at the end

###################################################
# Helper Functions
###################################################
# As Paws works with the lower level API of AWS similar to boto3, we have to
# create some helper functions to get some of the Python `sagemaker` package's
# functionality.

# Designed based on the Python `sagemaker` wrapper package.
get_execution_role <- function(config = list()){
  assumed_role <- paws::sts(config = config)$get_caller_identity()$Arn
  if (grepl("AmazonSageMaker-ExecutionRole",assumed_role)){
    role <- gsub("^(.+)sts::(\\d+):assumed-role/(.+?)/.*$", "\\1iam::\\2:role/service-role/\\3", role)
    return(role)}

  role <- gsub("^(.+)sts::(\\d+):assumed-role/(.+?)/.*$", "\\1iam::\\2:role/\\3", assumed_role)

  # Call IAM to get the role's path
  role_name = gsub(".*/","", role)

  tryCatch({role = paws::iam(config = config)$get_role(RoleName = role_name)$Role$Arn},
           error = function(e) stop("Couldn't call 'get_role' to get Role ARN from role name ", role_name ," to get Role path."))

  return(role)
}

# Waits for the training job/creation of endpoint to be completed.
sagemaker_waiter <- function(TrainingJobName = NULL, EndpointName = NULL){
  if(!is.null(TrainingJobName)){
    while (TRUE){
      tryCatch(job_status <- paws::sagemaker()$describe_training_job(TrainingJobName=TrainingJobName)$TrainingJobStatus)
      if (job_status %in% c("Completed", "Failed", "Stopped")){return (job_status)} else {Sys.sleep(1)}
    }
  }

  if(!is.null(EndpointName)){
    while (TRUE){
      tryCatch(job_status <- paws::sagemaker()$describe_endpoint(EndpointName=job_name)$EndpointStatus)
      if (job_status != "Creating"){return (job_status)} else {Sys.sleep(1)}
    }
  }
}

###################################################
# Setting initial Parameters
###################################################
# Get execution role for SageMaker. Assumes you are using an IAM role.
role <- get_execution_role()

# S3 parameter set up.
bucket <- "<your bucket>"
prefix <- "<prefix where you want to save sagemaker build>"

# Get the region where you want to run SageMaker.
my_region <- paws.common:::get_region()

# SageMaker uses prebuilt Docker images.
# Each Docker image is linked to a region.
# AWS prebuilt Docker image URLs follow a pattern:
# <account id>.dkr.ecr.<region>.amazonaws.com/sagemaker-<model>:<version>-cpu-py<python version>'
# To get the account ID for your region, go to:
# https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-docker-containers-frameworks.html

# This is the Docker image for xgboost on the eu-west-1 region.
xgb_img <- "141502667606.dkr.ecr.eu-west-1.amazonaws.com/sagemaker-xgboost:1.0-1-cpu-py3"


###################################################
# Download Data
###################################################
# Download data from AWS sample data.
download.file("https://sagemaker-sample-data-us-west-2.s3-us-west-2.amazonaws.com/autopilot/direct_marketing/bank-additional.zip", "bank-addition.zip")
unzip("bank-addition.zip")

# Read in data using `data.table`.
data <- fread("bank-additional/bank-additional-full.csv")

###################################################
# Explore and transform
###################################################
# Use `skimr` to analyze the data quickly.
skimr::skim(data)

# Format the data:
# Indicator variable to capture when pdays takes a value of 999.
data[,no_previous_contact := fifelse(pdays == 999, 1,0)]

# Indicator for individuals not actively employed.
data[,not_working := fifelse(job %in% c("student", "retired", "unemployed"), 1, 0)]

# Convert categorical variables to sets of indicators.
model_data <- dummy_cols(data, remove_selected_columns = T)

# Remove unwanted columns.
model_data <- model_data[,-c("duration", "emp.var.rate", "cons.price.idx", "cons.conf.idx", "euribor3m", "nr.employed")]

# Get train, validation, and test data frames.
set.seed(42)
idx <- sample(1:3, size = nrow(model_data), replace = TRUE, prob = c(.7, .2, .1))
train_data <- model_data[idx == 1,]
validation_data <- model_data[idx == 2,]
test_data <- model_data[idx == 3,]

# Next send the data up to S3.
# This is done so the SageMaker framework can access it.
fwrite(cbind(train_data[,"y_yes"], train_data[,-c("y_no", "y_yes")]), "train.csv", col.names = FALSE)
fwrite(cbind(validation_data[,"y_yes"], validation_data[,-c("y_no", "y_yes")]), "validation.csv", col.names = FALSE)

# Send train and validation data to S3.
obj <- readBin("train.csv", "raw", n = file.size("train.csv"))
paws::s3()$put_object(Body = obj, Bucket = bucket, Key = file.path(prefix, "train/train.csv"))
obj <- readBin("validation.csv", "raw", n = file.size("validation.csv"))
paws::s3()$put_object(Body = obj, Bucket = bucket, Key = file.path(prefix, "validation/validation.csv"))

###################################################
# Training
###################################################
# Get the SageMaker client object from Paws.
sm <- paws::sagemaker()

# Python's `sagemaker` package is a wrapper of boto3 for AWS SageMaker.
# This means we will need to build each component that Python's `sagemaker`
# package provides.

# Each Job needs to be given a unique name.
job_name <- paste0("demo-xgboost-", format(Sys.time(),"%Y-%m-%d-%H-%M-%S",tz="GMT"))

# This lets SageMaker know what Docker file we want to use
# and what format the data will be sent to it.
alg_spec <- list(
  TrainingImage = xgb_img,
  TrainingInputMode = "File"
)

# This lets SageMaker know what EC2 resources are required and how many.
resource_config <- list(
  InstanceCount = 1,
  InstanceType = "ml.m4.xlarge",
  VolumeSizeInGB = 10
)

# This lets SageMaker know about the data it is going to get.
# Set up train input.
s3_input_train <- list(
  ChannelName = "train",
  DataSource = list(
    S3DataSource = list(
      S3DataType = "S3Prefix",
      S3Uri = sprintf("s3://%s/%s/train", bucket, prefix),
      S3DataDistributionType = "FullyReplicated")
  ),
  ContentType= "csv",
  CompressionType = "None",
  RecordWrapperType = "None"
)

# Set up validation input.
s3_input_val <- list(
  ChannelName = "validation",
  DataSource = list(
    S3DataSource = list(
      S3DataType = "S3Prefix",
      S3Uri = sprintf("s3://%s/%s/validation", bucket, prefix),
      S3DataDistributionType = "FullyReplicated")
  ),
  ContentType= "csv",
  CompressionType = "None",
  RecordWrapperType = "None"
)

# Combine train and validation so that they can be sent to SageMaker.
input_config <- list(s3_input_train, s3_input_val)

# Set xgboost hyperparameters.
# xgboost hyperparameter docs: https://xgboost.readthedocs.io/en/latest/parameter.html
hyper_param <- list(
  max_depth = 5,
  eta = 0.2,
  gamma = 4,
  min_child_weight = 6,
  subsample = 0.8,
  silent = 0,
  objective = "binary:logistic",
  num_round = 100
)
# NOTE: each model has their own hyperparameters.

# Set location for output.
s3_output <-  list(S3OutputPath = sprintf("s3://%s/%s/output",bucket, prefix))

# Set conditions for SageMaker to stop if it runs too long.
stopping_cond <- list(MaxRuntimeInSeconds = 60*60)

# Now everything has been set up we can run the AWS Sagemaker Job
sm$create_training_job(
  RoleArn = role,
  TrainingJobName = job_name,
  AlgorithmSpecification = alg_spec,
  ResourceConfig = resource_config,
  InputDataConfig = input_config,
  OutputDataConfig = s3_output,
  HyperParameters = hyper_param,
  StoppingCondition = stopping_cond
)

# Wait for the SageMaker job to run...
# Note: Without this part we won't know when the job has completed or failed.
sagemaker_waiter(TrainingJobName = job_name)

###################################################
# Host
###################################################
# The next step is to host the model on a REST API.

# Similar to before, we need to build each component.
# To build a REST api from a built job we need to do the following steps:
# - Create model
# - Configure an endpoint
# - Invoke endpoint with model

## Creating SageMaker Model

# To create a model in SageMaker you need:
# - Docker file used to run the job in the previous task
# - The location where the model is stored
host_container <- list(
  Image = xgb_img,
  ModelDataUrl = sm$describe_training_job(TrainingJobName=job_name)$ModelArtifacts$S3ModelArtifacts
)

create_model_response <- sm$create_model(
  ModelName = job_name, # Doesn't need to be the same as the job name.
  ExecutionRoleArn = role,
  PrimaryContainer = host_container
)

## Configuring an endpoint

# This is to tell SageMaker what EC2 resources are required to run the model
# as a REST API.
prod_var <- list(
  InstanceType = "ml.m4.xlarge",
  InitialInstanceCount = 1,
  ModelName = job_name,
  VariantName = "AllTraffic"
)

create_endpoint_config_response <- sm$create_endpoint_config(
  EndpointConfigName = job_name, # Doesn't need to be the same as the job name.
  ProductionVariants = list(prod_var)
)


## Invoke endpoint with model
# This builds the endpoint.
create_endpoint_response <- sm$create_endpoint(
  EndpointName = job_name,
  EndpointConfigName = job_name
)

# Wait for the endpoint to be built.
sagemaker_waiter(EndpointName = job_name)

###################################################
# Evaluation
###################################################
# Get the SageMaker Runtime client object from Paws.
sm_run <- paws::sagemakerruntime()

# We will send the test data to the model REST API to get predictions.

# To do this, we first need to convert our test data.frame into a CSV file,
# and read it into R as raw binary data.
fwrite(test_data[,-c("y_no", "y_yes")], "test.csv", col.names = FALSE)
obj <- readBin("test.csv", "raw", n = file.size("test.csv"))

# Next we need to send it to the endpoint and tell it we are sending data
# in CSV format.
resp <- sm_run$invoke_endpoint(
  EndpointName = job_name,
  ContentType = "text/csv",
  Body = obj
)

# The endpoint sends the data back as raw so we need to convert it back.
pred <- as.data.table(unlist(strsplit(rawToChar(resp$Body),",")), value.name= "pred")

# Now we can combine the predictions and the actuals for evaluation.
pred <- cbind(test_data[,"y_yes"], pred)

# Convert the probability to binary result.
pred[, pred := fifelse(V1 >=.5 , 1, 0)]

# Create a confusion matrix.
table(pred$y_yes, pred$pred)

# Create a ROC curve plot.
roc_obj <- roc(pred$y_yes, pred$pred)
plot(roc_obj)

# Get the AUC of the model.
auc(roc_obj)

###################################################
# (Optional) Clean-up
###################################################
# When you are done with your model you can delete it so that it doesn't
# continue incurring costs.
sm$delete_endpoint(EndpointName = job_name)
