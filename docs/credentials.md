# <!-- omit in toc --> Setting Credentials and Region

- [Set credentials](#set-credentials)
  - [Set credentials for all services with environment variables](#set-credentials-for-all-services-with-environment-variables)
  - [Get credentials from the AWS shared credentials file](#get-credentials-from-the-aws-shared-credentials-file)
  - [Set credentials for an individual service](#set-credentials-for-an-individual-service)
  - [Get credentials from an EC2 instance or container role](#get-credentials-from-an-ec2-instance-or-container-role)
  - [Get credentials from a command line process](#get-credentials-from-a-command-line-process)
  - [Assume a role with credentials from the environment or an instance/container role](#assume-a-role-with-credentials-from-the-environment-or-an-instancecontainer-role)
  - [Assume a role with credentials from another profile](#assume-a-role-with-credentials-from-another-profile)
  - [Use multifactor authentication when assuming a role](#use-multifactor-authentication-when-assuming-a-role)
- [Set region](#set-region)
  - [Set region for all services with an environment variable](#set-region-for-all-services-with-an-environment-variable)
  - [Get region from the AWS config file](#get-region-from-the-aws-config-file)
  - [Set region for an individual service](#set-region-for-an-individual-service)
- [Set profile](#set-profile)
- [Reference](#reference)
  - [Credential and option locations and priority](#credential-and-option-locations-and-priority)
  - [Service settings](#service-settings)
  - [Environment variables](#environment-variables)
  - [Shared credentials file](#shared-credentials-file)
  - [Config file](#config-file)

---


# Set credentials

In order to use AWS APIs, you must provide your credentials.

Below are examples of how to set your credentials for common scenarios. For
a reference to all available options, [see the reference section](#reference).

---


## Set credentials for all services with environment variables

You can set credentials for all services using environment variables. Paws will
look for credentials in both OS or R environment variables.

You can use R to set credentials with the following command:

``` r
Sys.setenv(
    AWS_ACCESS_KEY_ID = "your AWS access key",
    AWS_SECRET_ACCESS_KEY = "your AWS secret key"
)
```

If you have a session token from temporary security credentials, you
can set it and its expiration time in environment variables `AWS_SESSION_TOKEN`
and `AWS_CREDENTIAL_EXPIRATION`:

``` r
Sys.setenv(
    AWS_ACCESS_KEY_ID = "your AWS access key",
    AWS_SECRET_ACCESS_KEY = "your AWS secret key",
    AWS_SESSION_TOKEN = "your session token",
    AWS_CREDENTIAL_EXPIRATION = "ISO 8601 expiration time"
)
```

`AWS_CREDENTIAL_EXPIRATION` must be an ISO 8601 formatted date string.

---


## Get credentials from the AWS shared credentials file

You can set credentials for all services using the AWS shared credentials file
in `~/.aws/credentials`.

The credentials file should be in INI format and should look like:

    [my-profile]
    aws_access_key_id=your AWS access key
    aws_secret_access_key=your AWS secret key

If you put these settings in a profile other than `default`, you will
need to specify which profile to use; see [set profile](#set-profile).

You can specify another location for the AWS shared credentials file using
environment variable `AWS_SHARED_CREDENTIALS_FILE`.

---


## Set credentials for an individual service

You can set credentials for an individual service by specifying them as
arguments when you create the service object. These take precedence over
credentials set using any other method.

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            creds = list(
                access_key_id = "your AWS access key",
                secret_access_key = "your AWS secret key"
            )
        )
    )
)
```

In this example, `paws::svc` is a placeholder for an AWS service. Use a
specific service instead, for example, `paws::s3`. Paws supports having
multiple service objects with different credentials.

If you have a session token from temporary security credentials, you can
provide it and its expiration time to `session_token` and `expiration`:

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            creds = list(
                access_key_id = "your AWS access key",
                secret_access_key = "your AWS secret key",
                session_token = "your session token",
                expiration = as.POSIXct("2001-02-03 04:05:06")
            )
        )
    )
)
```

`expiration` must be a `POSIXct` date-time or able to be compared with them.

---


## Get credentials from an EC2 instance or container role

If you are running R on an EC2 instance with an attached IAM role, or in a
container on AWS with an attached container IAM role, Paws will automatically
use the credentials from the attached role.

---


## Get credentials from a command line process

You can get credentials from a command line process by specifying the process
to run in `credential_process` in the AWS config file.

    [profile my-profile]
    credential_process=/opt/aws/get_credentials

The credential process is a command that must return JSON output that looks
like the following:

    {
      "Version": 1,
      "AccessKeyId": "your AWS access key",
      "SecretAccessKey": "your AWS secret access key",
      "SessionToken": "your session token",
      "Expiration": "ISO8601 expiration time"
    }

If you put this setting in a config profile other than `default`, you will
need to specify which profile to use; see [set profile](#set-profile).

The default location for the AWS config file is `~/.aws/config`. You can
specify another location using environment variable `AWS_CONFIG_FILE`.

---


## Assume a role with credentials from the environment or an instance/container role

You can assume a role, using initial credentials provided by environment
variables or by an EC2 instance or container role. To do this, specify in the
AWS config file the role to assume in `role_arn` and the source of the
credentials in `credential_source`.

    [profile my-profile]
    role_arn=arn:aws:iam::123456789012:role/my-role-name
    credential_source=Environment

`credential_source` can have one of three values:

  * `Environment` – Specifies that the SDK is to retrieve source credentials
    from environment variables.

  * `Ec2InstanceMetadata` – Specifies that the SDK is to use the IAM role
    attached to the EC2 instance profile to get source credentials.

  * `EcsContainer` – Specifies that the SDK is to use the IAM role attached
    to the ECS container as source credentials.

If you put these settings in a config profile other than `default`, you will
need to specify which profile to use; see [set profile](#set-profile).

The default location for the AWS config file is `~/.aws/config`. You can
specify another location using environment variable `AWS_CONFIG_FILE`.

---


## Assume a role with credentials from another profile

You can assume a role, using initial credentials provided by another profile.
To do this, specify in the AWS config file the role to assume in `role_arn` and
the name of the other profile in `source_profile`.

    [profile my-profile]
    role_arn=arn:aws:iam::123456789012:role/my-role-name
    source_profile=my-other-profile

Paws will look in both the AWS shared credentials file and the AWS config file
for the source profile. The source profile can use any method to provide
credentials.

If you put these settings in a config profile other than `default`, you will
need to specify which profile to use; see [set profile](#set-profile).

The default location for the AWS config file is `~/.aws/config`. You can
specify another location using environment variable `AWS_CONFIG_FILE`.

---


## Use multifactor authentication when assuming a role

To use multifactor authentication (MFA) when assuming a role, specify in the
AWS config file the MFA serial number in `mfa_serial`. When assuming the role,
Paws will prompt you to enter your MFA token code.

An example specifying MFA along with `source_profile` is below.

    [profile my-profile]
    role_arn=arn:aws:iam::123456789012:role/my-role-name
    source_profile=my-other-profile
    mfa_serial=arn:aws:iam::123456789012:mfa/my-user-name

With multifactor authentication, Paws will ask you to re-enter your MFA token
code whenever it has to refresh your credentials (currently, after one hour).

If you put these settings in a config profile other than `default`, you will
need to specify which profile to use; see [set profile](#set-profile).

The default location for the AWS config file is `~/.aws/config`. You can
specify another location using environment variable `AWS_CONFIG_FILE`.

---


# Set region

To use AWS, you must also set your AWS region. See below for common scenarios.
For a reference to all available options, [see the reference section](#reference).

---


## Set region for all services with an environment variable

You can set the region for all services using an environment variable. Paws
will look for region in both OS or R environment variables using either
`AWS_REGION` or `AWS_DEFAULT_REGION`.

You can use R to set region with the following command:

``` r
Sys.setenv(
    AWS_REGION = "us-east-2"
)
# or
Sys.setenv(
    AWS_DEFAULT_REGION = "us-east-2"
)

```

---


## Get region from the AWS config file

You can set the region using the AWS config file in `~/.aws/config`.

    [profile my-profile]
    region=us-east-2

If you put these settings in a config profile other than `default`, you will
need to specify which profile to use; see [set profile](#set-profile).

The default location for the AWS config file is `~/.aws/config`. You can
specify another location using environment variable `AWS_CONFIG_FILE`.

---


## Set region for an individual service

You can set region for an individual service by specifying it as an
argument when you create the service object. This take precedence over
region set using any other method.

``` r
svc <- paws::svc(
    config = list(
        region = "us-east-2"
    )
)
```

In this example, `paws::svc` is a placeholder for an AWS service. Use a
specific service instead, for example, `paws::s3`. Paws supports having
multiple service objects with different regions.

---


# Set profile

You can store different settings together under different profiles in the AWS
shared credentials and config files.

If you do not specify a profile to use, Paws will use the `default` profile.

You can specify a different profile to use using the `AWS_PROFILE` environment
variable:

``` r
Sys.setenv(
    AWS_PROFILE = "my-profile"
)
```

Or using the `profile` parameter to an individual service:

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            profile = "your profile"
        )
    )
)
```

In the AWS shared credentials, a separate profile looks like the following:

    [default]
    aws_access_key_id=default AWS access key
    aws_secret_access_key=default AWS secret key

    [my-profile]
    aws_access_key_id=my-profile AWS access key
    aws_secret_access_key=my-profile AWS secret key

And in the AWS config file, it looks like the following. Note that in the
config file, profile names other than default begin with `profile`.

    [default]
    region=us-east-1

    [profile my-profile]
    region=us-east-2

---


# Reference

## Credential and option locations and priority

Credentials and options can be set in the following locations. Paws will check
them in this order:

1.  [In settings provided to an individual service](#service-settings)
2.  [In environment variables](#environment-variables)
3.  In the [AWS shared credentials file](#shared-credentials-file) and
    [AWS config file](#config-file)
4.  In an EC2 instance or container IAM role

This means that, for example, a service setting will take precedence over an
environment variable, and an environment variable will take precedence over a
setting in a config file.

---


## Service settings

Paws supports the following settings provided as arguments to a service:

* `access_key_id` - Specifies the AWS access key used as part of the
  credentials to authenticate the request.

* `secret_access_key` - Specifies the AWS secret key used as part of the
  credentials to authenticate the request.

* `session_token` - Specifies the session token value that is required if
  you are using temporary security credentials that you retrieved directly
  from AWS STS operations.

* `expiration` - The expiration time of the credentials contained in the
  parameters `access_key_id`, `secret_access_key`, and `session_token`. The
  expiration time must be a date-time, e.g. `as.POSIXct("2001-02-03 04:05:06")`.

* `profile` - Specifies the name of the profile with the credentials and
  options to use.

* `region` - Specifies the AWS region to send the request to.

They must be provided to the service in the following structure. It is
allowable to specify only some of the settings, e.g. only `region`.

``` r
svc <- paws::svc(
    config = list(
        credentials = list(
            creds = list(
                access_key_id = "your AWS access key",
                secret_access_key = "your AWS secret key",
                session_token = "your session token",
                expiration = as.POSIXct("2001-02-03 04:05:06")
            ),
            profile = "your profile"
        ),
        region = "your region"
    )
)
```

---


## Environment variables

Paws supports the following settings in environment variables.

* `AWS_ACCESS_KEY_ID` - Specifies the AWS access key used as part of the
  credentials to authenticate the request.

* `AWS_CONFIG_FILE` - Specifies the location of the file used to store
  configuration profiles. The default path is `~/.aws/config`.

* `AWS_CREDENTIAL_EXPIRATION` - The expiration time of the credentials
  contained in the environment variables `AWS_ACCESS_KEY_ID`,
  `AWS_SECRET_ACCESS_KEY`, and `AWS_SESSION_TOKEN`. The expiration time must
  be specified in ISO 8601 format, e.g. `"2021-02-19T04:42:29Z"`.

* `AWS_EC2_METADATA_DISABLED` - Disables the use of the Amazon EC2 instance
  metadata service (IMDS) when set to `"true"` (case insensitive) or `"1"`.

* `AWS_PROFILE` - Specifies the name of the profile with the credentials and
  options to use.

* `AWS_REGION`/`AWS_DEFAULT_REGION` - Specifies the AWS region to send the request to.

* `AWS_SECRET_ACCESS_KEY` - Specifies the AWS secret key used as part of the
  credentials to authenticate the request.

* `AWS_SESSION_TOKEN` - Specifies the session token value that is required if
  you are using temporary security credentials that you retrieved directly
  from AWS STS operations.

* `AWS_SHARED_CREDENTIALS_FILES` - Specifies the location of the file used to
  store access keys. The default path is `~/.aws/credentials`.

---


## Shared credentials file

The default location for the AWS shared credentials file is
`~/.aws/credentials`. You can specify another location using environment
variable `AWS_SHARED_CREDENTIALS_FILE`.

Paws supports the following settings in the AWS shared credentials file.

* `aws_access_key_id` - Specifies the AWS access key used as part of the
  credentials to authenticate the request.

* `aws_secret_access_key` - Specifies the AWS secret key used as part of the
  credentials to authenticate the request.

---


## Config file

The default location for the AWS config file is `~/.aws/config`. You can
specify another location using environment variable `AWS_CONFIG_FILE`.

Paws supports the following settings in the AWS config file.

* `credential_process` - Specifies an external command to be run to generate
  or retrieve authentication credentials. The command must return the
  credentials in a specific format. For more information about how to use this
  setting, see [Sourcing credentials with an external process](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sourcing-external.html).

* `credential_source` - Used within Amazon EC2 instances or EC2 containers to
  specify where the SDK can find credentials to use to assume the role you
  specified with the `role_arn` parameter. You cannot specify both
  `source_profile` and `credential_source` in the same profile.

  This parameter can have one of three values:

    * `Environment` – Specifies that the SDK is to retrieve source credentials
      from environment variables.

    * `Ec2InstanceMetadata` – Specifies that the SDK is to use the IAM role
      attached to the EC2 instance profile to get source credentials.

    * `EcsContainer` – Specifies that the SDK is to use the IAM role attached
      to the ECS container as source credentials.

* `mfa_serial` - The identification number of an MFA device to use when
  assuming a role. This is mandatory only if the trust policy of the role being
  assumed includes a condition that requires MFA authentication. The value can
  be either a serial number for a hardware device (such as GAHT12345678) or an
  Amazon Resource Name (ARN) for a virtual MFA device (such as
  `arn:aws:iam::123456789012:mfa/user`).

* `region` - Specifies the AWS Region to send requests to for commands
  requested using this profile.

* `role_arn` - Specifies the Amazon Resource Name (ARN) of an IAM role that you
  want to use to run SDK commands. You must also specify one of the
  following parameters to identify the credentials that have permission to
  assume this role: `source_profile`, `credential_source`.

* `source_profile` - Specifies a named profile with long-term credentials that
  the SDK can use to assume a role that you specified with the `role_arn`
  parameter. You cannot specify both `source_profile` and `credential_source`
  in the same profile.

