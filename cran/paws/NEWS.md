For a more comprehensive list, please see the paws.common NEWS

# paws 0.1.12

* Make the following services available on CRAN:
  + AppStream (appstream)
  + Cloud 9 (cloud9)
  + CodeBuild (codebuild)
  + CodeCommit (codecommit)
  + CodeDeploy (codedeploy)
  + CodePipeline (codepipeline)
  + CodeStar (codestar)
  + WorkDocs (workdocs)
  + WorkLink (worklink)
  + WorkSpaces (workspaces)
  + X-Ray (xray)
* Fix the endpoint for EventBridge (eventbridge).

# paws 0.1.11

* Fix the default endpoints for a number of services which previously used
  non-standard or incorrect endpoints:
  + API Gateway Management API (apigatewaymanagementapi)
  + API Gateway V2 (apigatewayv2)
  + Application AutoScaling (applicationautoscaling)
  + AutoScaling Plans (autoscalingplans)
  + EC2 Instance Connect (ec2instanceconnect)
  + Elastic Container Registry (ecr)
  + EventBridge (eventbridge)
  + Kinesis Analytics V2 (kinesisanalyticsv2)
  + License Manager (licensemanager)
  + Personalize Events (personalizeevents)
  + Personalize Runtime (personalizeruntime)
  + Pinpoint Email (pinpointemail)
  + Pinpoint SMS and Voice (pinpointsmsvoice)
  + RDS Data Service (rdsdataservice)
  + S3 Control (s3control)
  + SageMaker (sagemaker)
* Updates to documentation:
  + Link to the relevant Paws help page wherever the documentation refers to
    an API operation, e.g. references to S3's `ListBuckets` operation now link
    to the `list_buckets` documentation.
  + Show the structure of API responses.
  + Remove extra escapes and fix miscellaneous formatting issues.
* Updates to credential support inherited from updates to paws.common. See
  https://github.com/paws-r/paws/blob/main/docs/credentials.md for details 
  about which options are supported and how to use them.
  + Support multifactor authentication with the `mfa_serial` shared 
    configuration file setting in concert with `role_arn`.
  + Cache credentials in each service object and automatically refresh them
    when they expire.
  + Support the environment variable options `AWS_CONFIG_FILE`, 
    `AWS_SHARED_CREDENTIALS_FILE`, `AWS_CREDENTIAL_EXPIRATION`, and 
    `AWS_EC2_METADATA_DISABLED`.

# paws 0.1.10

* Update Paws with the latest AWS features.
* Remove some extra backslashes mistakenly included in documentation.

# paws 0.1.9

* Support the S3 operation `SelectObjectContent` in `s3$select_object_content`.
  This operation allows you to query a data file in S3 using SQL.
* Correctly decode Unicode strings in API responses received from AWS, such as
  "Me voy a casa mañana.".
* Decode base64-encoded blobs to raw vectors. Previously, Paws decoded them to
  UTF-8 inappropriately, which would fail for any data other than text.
* In some cases, httr/curl do not decompress the response body. In these cases,
  check whether it looks compressed and try decompressing it.
* Update Paws with the latest AWS services and features.

# paws 0.1.8

* Fix a small number of operations that require additional metadata sent to AWS,
  for example S3 operation `select_object_content`.

# paws 0.1.7

* Add HTTP status codes to the error response when an operation fails, along
  with any other information returned by AWS about the error.
* Add support for S3 operation `GetBucketLocation`, which needs special
  handling.

# paws 0.1.6

* Support RDS IAM authentication in `rds$build_auth_token`.
* Check for a container IAM role in the AWS credential chain before checking
  for an instance IAM role.

# paws 0.1.5

* Support per-service configuration of credentials, endpoint, and region,
  e.g. `svc <- paws::svc(config = list(region = "us-east-1"))`.

# paws 0.1.4

* Fix services like IAM and CloudFront which have global endpoints. Previously
  they did not work outside of `us-east-1` due to a bug.

# paws 0.1.3

* Update Paws with the latest AWS services and features.

# paws 0.1.1

* Add support for more AWS services to CRAN.

# paws 0.1.0

* Initial version.
