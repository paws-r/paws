# Setting Up Credentials and Region

## Credentials

In order to use a Paws package, you must provide it with your
credentials.

Credentials can be set in the following five ways, and Paws will look
for them in this order.

1.  Custom service config. (NOT YET AVAILABLE ON CRAN)
2.  R environment variables.
3.  System environment variables (Mac and Linux Only).
4.  AWS credentials file.
5.  IAM role.

If you are running the package on an instance with an appropriate IAM
role, Paws will use it automatically and you don’t need to do anything
extra.

## Setting Credentials with Custom Service Config*

\* Option not yet available on CRAN

Pass in the credentials directly for a given service with the following
command:

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            creds = list(
                access_key_id = "accessKeyID",
                secret_access_key = "secretAccessKey"
            )
        )
    )
)
```

If you have a session token from temporary security credentials, you
can add that to creds as `session_token`.

Paws supports having multiple service objects with different credentials.

## Setting Credentials with R Environment Variables

Use R to set the credentials with the following command:

``` r
Sys.setenv(AWS_ACCESS_KEY_ID = "accessKeyID")
Sys.setenv(AWS_SECRET_ACCESS_KEY = "secretAccessKey")
```

If you have a session token from temporary security credentials, you
can set that in environment variable `AWS_SESSION_TOKEN`.

## Setting Credentials with System Environment Variables

On Mac or Linux you can use the command line to set the credentials with
the following command:

``` bash
export AWS_ACCESS_KEY_ID="accessKeyID"
export AWS_SECRET_ACCESS_KEY="secretAccessKey"
```

If you have a session token from temporary security credentials, you
can set that in environment variable `AWS_SESSION_TOKEN`.

Paws currently does not support setting the credentials using a system
variable on Windows.

## Setting Credentials with AWS Credentials File

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

## Region

In order to use a Paws package, you must also set your AWS region.

Paws will look for the region in the following four places, in order:

1.  Custom service config. (NOT YET AVAILABLE ON CRAN)
2.  `AWS_REGION` R environment variable.
3.  `AWS_REGION` system environment variable (Mac and Linux Only).
4.  AWS config file.

## Setting Region with Custom Service Config*

\* Option not yet available on CRAN

Pass in the region directly for a given service with the following
command:

``` r
svc <- paws::svc(
    config = list(
        region = "us-east-1"
    )
)
```

## Setting Region with R Environment Variable

Use R to set the region with the following command:

``` r
Sys.setenv(AWS_REGION = "us-east-1")
```

## Setting Region with System Environment Variable

On Mac or Linux you can use the command line to set the region with the
following command:

``` bash
export AWS_REGION="us-east-1"
```

Paws currently does not support setting the region using a system
variable on Windows.

## Setting Region with Config file

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
    
    [profile other_profile]
    region=region-2

## AWS Profile

If you do not set your AWS profile, the package will use the `default`
profile.

However, you may want to use another profile, which you can choose in
the following ways:

1.  Custom service config. (NOT YET AVAILABLE ON CRAN)
2.  `AWS_PROFILE` R environment variable.
3.  `AWS_PROFILE` system environment variable - (Mac and Linux Only)

## Setting Profile with Custom Service Config*

\* Option not yet available on CRAN

Pass in the profile directly for a given service with the following
command:

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            profile = "nameOfProfile"
        )
    )
)
```

## Setting Profile with R Environment Variable

Use R to set the profile with the following command:

``` r
Sys.setenv(AWS_PROFILE = "nameOfProfile")
```

## Setting Region with System Environment Variable

On Mac or Linux you can use the command line to set the profile with the
following command:

``` bash
export AWS_PROFILE="nameOfProfile"
```

Paws currently does not support setting the profile using a system
variable on Windows.
