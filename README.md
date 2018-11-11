
# Paws

[![Build
Status](https://travis-ci.com/paws-r/paws.svg?branch=master)](https://travis-ci.com/paws-r/paws)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/2ma1spb2f55129qc/branch/master?svg=true)](https://ci.appveyor.com/project/paws-r/paws/branch/master)
[![codecov](https://codecov.io/gh/paws-r/paws/branch/master/graph/badge.svg)](https://codecov.io/gh/paws-r/paws)

Paws is a **P**ackage for **A**mazon **W**eb **S**ervices. Paws provides
access to the full suite of AWS services from within R.

Each AWS service has its own R package within Paws. For example, to use
EC2, use the `paws.ec2` package.

Disclaimer: We are not affiliated with Amazon Web Services, and Paws is
not a product of or supported by Amazon Web Services.

Paws is based on the design and implementation of the [AWS SDK for
Go](https://github.com/aws/aws-sdk-go) and it uses AWS’s API definition
files and API documentation from the [AWS SDK for
JavaScript](https://github.com/aws/aws-sdk-js).

## Getting Started

### Installation

Paws is currently only available from GitHub. Install a package using:

``` r
devtools::install_github("paws-r/paws/service/paws.ec2")
```

### Credentials

First, set up your credentials and region. See the section below for
more on the different ways you can do this. Here we set them within R.

``` r
Sys.setenv(
  AWS_ACCESS_KEY_ID = "abc",
  AWS_SECRET_ACCESS_KEY = "123",
  AWS_REGION = "us-east-1"
)
```

### Run an operation

Here we launch an EC2 instance using the `run_instances` function.

``` r
ec2 <- paws.ec2::run_instances(
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

We can get a list of all of our instances with `describe_instances`.

``` r
paws.ec2::describe_instances()
```

Using AWS services can cost money, so remember to shut down anything you
start.

``` r
paws.ec2::terminate_instances(
  InstanceIds = ec2$Instances[[1]]$InstanceId
)
```

### Documentation

You can see all the operations for a given service, like EC2, by looking
through the package documentation.

``` r
help(package = "paws.ec2")
```

## Setting Up Credentials and Region

### Credentials

In order to use a Paws package, you must provide it with your
credentials.

Credentials can be set in the following four ways, and Paws will look
for them in this order.

1.  R environment variables.
2.  System environment variables (Mac and Linux Only).
3.  AWS credentials file.
4.  IAM role.

If you are running the package on an instance with an appropriate IAM
role, Paws will use it automatically and you don’t need to do anything
extra.

#### Setting Credentials with R Environment Variables

Use R to set the credentials with the following command:

``` r
Sys.setenv(AWS_ACCESS_KEY_ID = "accessKeyID")
Sys.setenv(AWS_SECRET_ACCESS_KEY = "secretAccessKey")
```

#### Setting Credentials with System Environment Variables

On Mac or Linux you can use the command line to set the credentials with
the following command:

``` bash
export AWS_ACCESS_KEY_ID="accessKeyID"
export AWS_SECRET_ACCESS_KEY="secretAccessKey"
```

Paws currently does not support setting the credentials using a system
variable on Windows.

#### Setting Credentials with AWS Credentials File

You can set the credentials using a credentials file in
`~/.aws/credentials`. You can generate a credentials file using the AWS
CLI’s `aws configure` command.

The credentials file should be in INI format and should look like:

    [default]
    aws_access_key_id=awsAccessKeyID
    aws_secret_access_key=awsSecretAccessKey

By default, Paws will use the `default` profile. If you would rather use
the credentials from a different profile, you can set the preferred
profile by following the instructions in the “Profile” section of this
document.

Profiles are added to the credentials file by appending them to the file
below the default:

    [default]
    aws_access_key_id=awsAccessKeyID
    aws_secret_access_key=awsSecretAccessKey
    
    [other_profile]
    aws_access_key_id=awsOtherAccessKeyID
    aws_secret_access_key=awsOtherSecretAccessKey

### Region

In order to use a Paws package, you must also set your AWS region.

Paws will look for the region in the following three places, in order:

1.  `AWS_REGION` R environment variable.
2.  `AWS_REGION` system environment variable (Mac and Linux Only).
3.  AWS config file.

#### Setting Region with R Environment Variable

Use R to set the region with the following command:

``` r
Sys.setenv(AWS_REGION = "us-east-1")
```

#### Setting Region with System Environment Variable

On Mac or Linux you can use the command line to set the region with the
following command:

``` bash
export AWS_REGION="us-east-1"
```

Paws currently does not support setting the region using a system
variable on Windows.

#### Setting Region with Config file

You can set the region using a config file in `~/.aws/config`. You can
generate a config file using the AWS CLI’s `aws configure` command.

The config file should be in INI format and should look like:

    [default]
    region=us-east-1

By default, Paws will use the `default` profile. If you would rather use
a different profile, you can set the preferred profile by following the
instructions in the “Profile” section of this document.

Profiles are added to the config file by appending them to the file
below the default:

    [default]
    region=region-1
    
    [other_profile]
    region=region-2

### AWS Profile

If you do not set your AWS profile, the package will use the `default`
profile.

However, you may want to use another profile, which you can choose in
the following ways:

1.  `AWS_PROFILE` R environment variable.
2.  `AWS_PROFILE` system environment variable - (Mac and Linux Only)

#### Setting Profile with R Environment Variable

Use R to set the profile with the following command:

``` r
Sys.setenv(AWS_PROFILE = "nameOfProfile")
```

#### Setting Region with System Environment Variable

On Mac or Linux you can use the command line to set the profile with the
following command:

``` bash
export AWS_PROFILE="nameOfProfile"
```

Paws currently does not support setting the profile using a system
variable on Windows.
