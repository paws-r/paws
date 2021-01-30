# Setting Up Credentials and Region

## Credentials

In order to use a Paws package, you must provide it with your
credentials.

Credentials can be set in the following five ways, and Paws will look
for them in this order.

1.  Custom service config.
2.  R environment variables.
3.  System environment variables (Mac and Linux Only).
4.  AWS credentials file.
5.  AWS shared configuration file.
6.  IAM role.

If you are running the package on an instance with an appropriate IAM
role, Paws will use it automatically and you don’t need to do anything
extra.

### Setting Credentials with Custom Service Config

Pass in the credentials for a given service: (requires version >= 0.1.5) 

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

In this example, `paws::svc` is a placeholder for an AWS service. Use a
specific service instead, for example, `paws::s3`.

If you have a session token from temporary security credentials, you
can add that to creds as `session_token`.

Paws supports having multiple service objects with different credentials.

### Setting Credentials with R Environment Variables

Use R to set the credentials with the following command:

``` r
Sys.setenv(AWS_ACCESS_KEY_ID = "accessKeyID")
Sys.setenv(AWS_SECRET_ACCESS_KEY = "secretAccessKey")
```

If you have a session token from temporary security credentials, you
can set that in environment variable `AWS_SESSION_TOKEN`.

### Setting Credentials with System Environment Variables

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

### Setting Credentials with AWS Credentials File

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
    
### Setting Credentials with AWS Shared Configuration File

You can set the credentials using the following settings in the AWS
shared configuration file in `~/.aws/config`.

1. `credential_process` - Retrieve credentials by running a command which 
outputs JSON containing the credentials. See the [AWS documentation](https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-credential_process.html)
for more info.
2. `role_arn` with `credential_source` - Retrieve temporary credentials for
IAM role `role_arn` using `"Environment"`, `"Ec2InstanceMetadata"`, or
`"EcsContainer"`. See the [AWS documentation](https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-credential_source.html)
for more info.
3. `role_arn` with `source_profile` - Retrieve temporary credentials for
IAM role `role_arn` using credentials found in another profile. See the [AWS documentation](https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-source_profile.html)
for more info.

You may set these items in a profile within the shared configuration
file. The profile, e.g. `my_profile`, should appear as follows.

    [profile my_profile]
    key1=value1
    key2=value2

### Multifactor authentication

You can use multifactor authentication by specifying the `mfa_serial` parameter
along with `role_arn` and either `credential_source` or `source_profile`. Paws
will prompt you to provide your MFA token code, and once you provide it the
temporary credentials it retrieves will be valid for one hour.

    
## Region

In order to use a Paws package, you must also set your AWS region.

Paws will look for the region in the following four places, in order:

1.  Custom service config.
2.  `AWS_REGION` R environment variable.
3.  `AWS_REGION` system environment variable (Mac and Linux Only).
4.  AWS config file.

### Setting Region with Custom Service Config

Pass in the region for a given service: (requires version >= 0.1.5) 

``` r
svc <- paws::svc(
    config = list(
        region = "us-east-1"
    )
)
```

In this example, `paws::svc` is a placeholder; use a specific service instead,
such as `paws::s3`.

### Setting Region with R Environment Variable

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

### Setting Region with AWS Config File

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

1.  Custom service config.
2.  `AWS_PROFILE` R environment variable.
3.  `AWS_PROFILE` system environment variable - (Mac and Linux Only)

### Setting Profile with Custom Service Config

Pass in the profile for a given service: (requires version >= 0.1.5) 

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            profile = "nameOfProfile"
        )
    )
)
```

In this example, `paws::svc` is a placeholder; use a specific service instead,
such as `paws::s3`.

### Setting Profile with R Environment Variable

Use R to set the profile with the following command:

``` r
Sys.setenv(AWS_PROFILE = "nameOfProfile")
```

### Setting Profile with System Environment Variable

On Mac or Linux you can use the command line to set the profile with the
following command:

``` bash
export AWS_PROFILE="nameOfProfile"
```

Paws currently does not support setting the profile using a system
variable on Windows.
