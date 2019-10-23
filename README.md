
# Paws, an AWS SDK for R [<img src="docs/logo.png" align="right" height="150" />](docs/cheat_sheet.pdf)

[![CRAN status](https://www.r-pkg.org/badges/version/paws)](https://cran.r-project.org/package=paws)
[![Build Status](https://travis-ci.com/paws-r/paws.svg?branch=master)](https://travis-ci.com/paws-r/paws)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/2ma1spb2f55129qc/branch/master?svg=true)](https://ci.appveyor.com/project/paws-r/paws/branch/master)
[![codecov](https://codecov.io/gh/paws-r/paws/branch/master/graph/badge.svg)](https://codecov.io/gh/paws-r/paws)
[![view examples](https://img.shields.io/badge/learn%20by-examples-0077b3.svg)](https://github.com/paws-r/paws/tree/master/examples)

## Overview

Paws is a **P**ackage for **A**mazon **W**eb **S**ervices in R. Paws provides
access to the full suite of AWS services from within R.

Visit [our home page](https://paws-r.github.io) to see online documentation.

Disclaimer: Paws is not a product of or supported by Amazon Web Services.

## Installation

Install Paws using:

``` r
install.packages("paws")
```

If you are using Linux, you will need to install the following OS packages:

* Debian/Ubuntu: `libcurl4-openssl-dev libssl-dev libxml2-dev`
* CentOS/Fedora/Red Hat: `libcurl-devel libxml2-devel openssl-devel`

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

## Credits

API specifications from [AWS SDK for JavaScript](https://github.com/aws/aws-sdk-js);
design based on [AWS SDK for Go](https://github.com/aws/aws-sdk-go).

[Logo](docs/logo.png) by [Hsinyi Chen](https://linktr.ee/starfolio).

[Home page design](https://paws-r.github.io) and [cheat sheet](docs/cheat_sheet.pdf) by Mara Ursu.
