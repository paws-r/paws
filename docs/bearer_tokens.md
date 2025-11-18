# Using Bearer Tokens with AWS Bedrock

AWS Bedrock API keys provide a simplified authentication method for accessing Amazon Bedrock services using bearer tokens. This authentication mechanism is an alternative to traditional AWS credentials (access keys and secret keys).

## Table of Contents

-   [Overview](#overview)
-   [Setting Up Bearer Token Authentication](#setting-up-bearer-token-authentication)
    -   [Using Environment Variables](#using-environment-variables)
    -   [Limitations](#limitations)
    -   [Security Considerations](#security-considerations)
-   [Reference](#reference)

------------------------------------------------------------------------

## Overview {#overview}

Bearer tokens for AWS Bedrock enable you to authenticate API requests without using traditional AWS IAM credentials. This is particularly useful for:

-   Simplified authentication workflows
-   Applications that don't require full AWS IAM access
-   Rapid prototyping and testing with Bedrock models

The bearer token is provided through the `AWS_BEARER_TOKEN_BEDROCK` environment variable or service configuration.

------------------------------------------------------------------------

## Setting Up Bearer Token Authentication {#setting-up-bearer-token-authentication}

### Using Environment Variables {#using-environment-variables}

You can set the bearer token for all Bedrock service calls using the `AWS_BEARER_TOKEN_BEDROCK` environment variable.

``` r
library(paws)

# Set the bearer token as an environment variable
Sys.setenv(AWS_BEARER_TOKEN_BEDROCK = "your-api-key-here")

# Create an Amazon Bedrock Runtime client
client <- bedrockruntime(region = "us-east-1")

# Define the model and message
model_id <- "us.anthropic.claude-3-5-haiku-20241022-v1:0"
messages <- list(list(
  role = "user",
  content = list(list(text = "Hello, how are you?"))
))

# Make API call using bearer token authentication
response <- client$converse(
  modelId = model_id,
  messages = messages
)

print(response)
```

This is the recommended approach as it keeps your API key separate from your code and makes it easy to manage across different environments.

### Limitations {#limitations}

**Note:** API keys do not work with the following operations:

-   `InvokeModelWithBidirectionalStream`
-   Agents for Amazon Bedrock operations
-   Data Automation for Amazon Bedrock operations

For these operations, you must use standard AWS IAM credentials (access key and secret key). See [credentials.md](credentials.md) for details on configuring IAM credentials.

### Security Considerations {#security-considerations}

-   **Store securely**: Never hardcode bearer tokens in your source code. Use environment variables or secure credential storage.
-   **Rotation**: Regularly rotate your API keys according to your organization's security policies
-   **Scope**: Bearer tokens provide access to Bedrock services - ensure they are only used by authorized applications
-   **Environment isolation**: Use different API keys for development, testing, and production environments

------------------------------------------------------------------------

## Reference {#reference}

### Credential Priority

When using Bedrock services, credentials are checked in the following order:

1.  Bearer token from `AWS_BEARER_TOKEN_BEDROCK` environment variable (Bedrock-specific)
2.  Service settings (access key, secret key)
3.  Environment variables (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`)
4.  AWS shared credentials file (`~/.aws/credentials`)
5.  AWS config file (`~/.aws/config`)
6.  EC2 instance or container IAM role

This means that if `AWS_BEARER_TOKEN_BEDROCK` is set, it will be used for Bedrock API authentication, overriding traditional IAM credentials for supported operations.

### Related Documentation

-   [Setting Credentials and Region](credentials.md) - General AWS credential configuration
-   [AWS Bedrock API Keys Documentation](https://docs.aws.amazon.com/bedrock/latest/userguide/api-keys-use.html) - Official AWS documentation
-   [Streaming](streaming.md) - Information about streaming responses (note limitations with bearer tokens)

### Getting Help

If you encounter issues with bearer token authentication:

1.  Verify your API key is valid and active in the AWS Bedrock console
2.  Check that your region is correctly specified
3.  Review the Bedrock service quotas and limits for your account

For operations that require IAM credentials, refer to the [credentials documentation](credentials.md).

[Original AWS Reference Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/api-keys-use.html)