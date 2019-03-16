
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
25
​
26
## Installing
27
​
28
Paws is currently available on GitHub. Each AWS service has its own R
29
package within Paws. For example, to use EC2, use the `paws.ec2` package.
30
See [the list of available packages here](service). Install a package
31
(e.g. `paws.ec2`) using:
32
​
33
``` r
34
devtools::install_github("paws-r/paws/service/paws.ec2")
35
```
36
​
37
## Credentials
38
​
39
You'll need to set up your credentials and region. Paws supports R 
40
and OS environment variables, AWS credential files, and IAM roles. 
41
See [docs/credentials.md](docs/credentials.md) for more info.
42
​
43
In this example, we set them with R environment variables.
44
​
45
``` r
46
Sys.setenv(
47
  AWS_ACCESS_KEY_ID = "abc",
48
  AWS_SECRET_ACCESS_KEY = "123",
49
  AWS_REGION = "us-east-1"
50
)
51
```
52
​
53
## Run operations
54
​
55
Launch an EC2 instance using the `run_instances` function.
56
​
57
``` r
58
resp <- paws.ec2::run_instances(
59
  ImageId = "ami-f973ab84",
60
  InstanceType = "t2.micro",
61
  KeyName = "default",
62
  MinCount = 1,
63
  MaxCount = 1,
64
  TagSpecifications = list(
65
    list(
66
      ResourceType = "instance",
67
      Tags = list(
68
        list(Key = "webserver", Value = "production"))
69
    )
70
  )
71
)
72
```
73
​
74
List all of your instances with `describe_instances`.
75
​
76
``` r
77
paws.ec2::describe_instances()
78
```
79
​
80
Shut down the instance you started with `terminate_instances`.
81
​
82
``` r
83
paws.ec2::terminate_instances(
84
  InstanceIds = resp$Instances[[1]]$InstanceId
85
)
86
```
87
​
88
### Documentation
89
​
90
You can see all the operations for a given service, like EC2, by looking
91
through the package documentation.
92
​
93
``` r
94
help(package = "paws.ec2")
95
```

)
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
