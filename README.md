
# Paws, an AWS SDK for R <img src="docs/logo.png" align="right" height="150" />

[![Build
Status](https://travis-ci.com/paws-r/paws.svg?branch=master)](https://travis-ci.com/paws-r/paws)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/2ma1spb2f55129qc/branch/master?svg=true)](https://ci.appveyor.com/project/paws-r/paws/branch/master)
[![codecov](https://codecov.io/gh/paws-r/paws/branch/master/graph/badge.svg)](https://codecov.io/gh/paws-r/paws)
[![view examples](https://img.shields.io/badge/learn%20by-examples-0077b3.svg)](https://github.com/paws-r/paws/tree/master/examples)

## Overview

Paws is a **P**ackage for **A**mazon **W**eb **S**ervices in R. Paws provides
access to the full suite of AWS services from within R.

Disclaimer: Paws is not a product of or supported by Amazon Web
Services.

Paws is based on the design and implementation of the [AWS SDK for
Go](https://github.com/aws/aws-sdk-go) and it uses AWS’s API definition
files and API documentation from the [AWS SDK for
JavaScript](https://github.com/aws/aws-sdk-js).

*Logo by [Hsinyi Chen](https://www.starfolioart.com/).*

## Installing

Paws is currently available on GitHub. Each AWS service has its own R
package within Paws. For example, to use EC2, use the `paws.ec2` package.
See [the list of available packages here](service). Install a package
(e.g. `paws.ec2`) using:

``` r
devtools::install_github("paws-r/paws/service/paws.ec2")
```

## Credentials

You'll need to set up your credentials and region. Paws supports R 
and OS environment variables, AWS credential files, and IAM roles. 
See [docs/credentials.md](docs/credentials.md) for more info.

In this example, we set them with R environment variables.

``` r
Sys.setenv(
  AWS_ACCESS_KEY_ID = "abc",
  AWS_SECRET_ACCESS_KEY = "123",
  AWS_REGION = "us-east-1"
)
```

## Run operations

Launch an EC2 instance using the `run_instances` function.

``` r
resp <- paws.ec2::run_instances(
  ImageId = "ami-f973ab84",
  InstanceType = "t2.micro",
  KeyName = "default",
  MinCount = 1,
  MaxCount = 1,
  TagSpecifications = list(
    list(
      ResourceType = "instance",
      Tags = list(
        list(Key = "webserver", Value = "production"))
    )
  )
)
```

List all of your instances with `describe_instances`.

``` r
paws.ec2::describe_instances()
```

Shut down the instance you started with `terminate_instances`.

``` r
paws.ec2::terminate_instances(
  InstanceIds = resp$Instances[[1]]$InstanceId
```

## Documentation

You can see all the operations for a given service, like EC2, by looking
through the package documentation.

``` r
help(package = "paws.ec2")
```

We also have examples for [EC2](examples/ec2.R), [S3](examples/s3.R),
[SQS](examples/sqs.R), [SNS](examples/sns.R),
[DynamoDB](examples/dynamodb.R), [Lambda](examples/lambda.R),
[Batch](examples/batch.R), and [Comprehend](examples/comprehend.R).
