
# Paws, an AWS SDK for R [<img src="docs/logo.png" align="right" height="150" />](https://paws-r.github.io)

<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/paws)](https://cran.r-project.org/package=paws)
[![Build Status](https://github.com/paws-r/paws/workflows/Unit%20Tests/badge.svg)](https://github.com/paws-r/paws/actions?workflow=Unit%20Tests)
[![codecov](https://codecov.io/gh/paws-r/paws/branch/main/graph/badge.svg)](https://codecov.io/gh/paws-r/paws)
[![view examples](https://img.shields.io/badge/learn%20by-examples-0077b3.svg)](https://github.com/paws-r/paws/tree/main/examples)
[![:name status badge](https://paws-r.r-universe.dev/badges/:name)](https://paws-r.r-universe.dev)
<!-- badges: end -->

## Overview

Paws is a **P**ackage for **A**mazon **W**eb **S**ervices in R. Paws provides
access to the full suite of AWS services from within R.

Visit [our home page](https://paws-r-sdk.com) to see online documentation.

Disclaimer: Paws is not a product of or supported by Amazon Web Services.

## Installation

Install Paws using:

``` r
install.packages("paws")
```

If you are using Linux, you will need to install the following OS packages:

* Debian/Ubuntu: `libcurl4-openssl-dev libssl-dev libxml2-dev`
* CentOS/Fedora/Red Hat: `libcurl-devel libxml2-devel openssl-devel`

Or install the development version from [r-universe](https://paws-r.r-universe.dev/ui#builds):
``` r
# Enable repository from paws-r
options(repos = c(
  pawsr = 'https://paws-r.r-universe.dev',
  CRAN = 'https://cloud.r-project.org')
)

# Download and install paws in R
install.packages('paws')
```

## Credentials

You'll need to set up your AWS credentials and region. Paws supports setting
these per-service, or using R and OS environment variables, AWS credential
files, and IAM roles. See [docs/credentials.md](docs/credentials.md) for more
info.

In the example below, we set them with R environment variables.

Warning: Do not save your credentials in your code, which could reveal
them to others. Use one of the other methods above instead. See also
[RStudio's best practices for securing credentials](https://db.rstudio.com/best-practices/managing-credentials/#encrypt-credentials-with-keyring).

``` r
Sys.setenv(
  AWS_ACCESS_KEY_ID = "abc",
  AWS_SECRET_ACCESS_KEY = "123",
  AWS_REGION = "us-east-1"
)
```

## Usage

To use a service, create a client. All of a service's operations
can be accessed from this object.

``` r
ec2 <- paws::ec2()
```

Launch an EC2 instance using the `run_instances` function.

``` r
resp <- ec2$run_instances(
  ImageId = "ami-f973ab84",
  InstanceType = "t2.micro",
  KeyName = "default",
  MinCount = 1,
  MaxCount = 1,
  TagSpecifications = list(
    list(
      ResourceType = "instance",
      Tags = list(
        list(Key = "webserver", Value = "production")
      )
    )
  )
)
```

List all of your instances with `describe_instances`.

``` r
ec2$describe_instances()
```

Shut down the instance you started with `terminate_instances`.

``` r
ec2$terminate_instances(
  InstanceIds = resp$Instances[[1]]$InstanceId
)
```

## Documentation

You can browse all available services by looking at the package documentation.

``` r
help(package = "paws")
```

You can also jump to a specific service and see all its operations.

``` r
?paws::ec2
```

RStudio's code completion will show you the available services,
their operations, and each operation's parameters.

![](docs/code_completion.gif)

There are also examples for [EC2](examples/ec2.R), [S3](examples/s3.R),
[SQS](examples/sqs.R), [SNS](examples/sns.R),
[DynamoDB](examples/dynamodb.R), [Lambda](examples/lambda.R),
[Batch](examples/batch.R), and [Comprehend](examples/comprehend.R).

## Related packages

* [`cognitoR`](https://github.com/chi2labs/cognitoR) provides
  authentication for Shiny applications using Amazon Cognito.
* [`noctua`](https://dyfanjones.github.io/noctua/) is an interface to the
[Athena](https://aws.amazon.com/athena/) serverless interactive query
service, which allows you to query files stored in S3 using SQL or
[`dplyr`](https://dplyr.tidyverse.org/).
* [`R6sagemaker`](https://github.com/DyfanJones/sagemaker-r-sdk) is an
interface to the [SageMaker](https://aws.amazon.com/sagemaker/) machine
learning service, designed to work like the Python SageMaker SDK.
* [`redshiftTools`](https://github.com/RedOakStrategic/redshiftTools) is
a collection of tools for working with the
[Redshift](https://aws.amazon.com/redshift/) data warehouse service,
such as performing bulk uploads.
* [`stepfunctions`](https://github.com/DyfanJones/aws-step-functions-data-science-sdk-r)
is an SDK for building machine learning workflows and pipelines on AWS
using the Step Functions service.

## Examples, tutorials, and workshops

* [AWS AI Services for R Users](https://github.com/alex23lemm/AWS-AI-Services-R-Workshop)
shows how to use AWS to add deep learning capabilities like image recognition,
text translation, and text-to-speech conversion to R and Shiny applications.
* [Using Amazon Rekognition from R](https://alex23lemm.github.io/posts/2021-01-03-using-amazon-rekognition-custom-labels-from-r/)
is an end to end example of how to build and deploy a model to detect Nike
swooshes in images using the Rekognition computer vision service.

## Credits

API specifications from [AWS SDK for JavaScript](https://github.com/aws/aws-sdk-js);
design based on [AWS SDK for Go](https://github.com/aws/aws-sdk-go).

[Logo](docs/logo.png) by [Hsinyi Chen](https://linktr.ee/starfolio).

[Home page design](https://paws-r.github.io) and [cheat sheet](docs/cheat_sheet.pdf) by Mara Ursu.

Supported by the AWS Open Source promotional credits program.
