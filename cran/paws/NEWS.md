# paws 0.9.0

## Enhancements
- Improved error messages for clearer user feedback during API interactions.
- Added specific region endpoints for better handling and routing of requests.
- Removed the default assignment for regions, specifically eliminating the default to aws-global, allowing greater flexibility in region selection.

## Bug Fixes
- Resolved the issue where the application was failing to read wide INI files correctly, ensuring successful processing of diverse configuration options.
- Enhanced regional regex checks to improve region identification and utilization, preventing unexpected failures in service operations.

## Documentation
- Updated multiple URLs to ensure proper navigation and access to resources.
- Added detailed documentation for recent changes, including adjustments to error messaging and regional handling.
- Updated documentation to clarify the usage of enhanced features related to service endpoints and erroneous API responses.

## Code Quality
- Conducted extensive refactoring to optimize performance and readability, particularly focusing on error handling and configuration management.
- Improved unit tests to align with the recent enhancements, ensuring robust performance and accuracy in error handling.

## User Experience
- Enhanced feedback during API interactions, providing users with more informative responses, especially while handling errors.
- Implemented performance optimizations across key functions to provide a smoother experience when interacting with AWS services.

# paws 0.8.0

## Enhancements
- Introduced a new streaming functionality, allowing for improved handling of large data transfers and API responses. This includes a dedicated stream parser for better integration with event-driven architectures.
- Migrated from backend vendor from AWS SDK for JavaScript to the Botocore.
- Enhanced support for Single Sign-On (SSO) credentials, automatically retrieving tokens and enriching error messages for clearer user guidance.

## Bug Fixes
- URL Redirects: Fixed multiple URL redirects throughout the package, ensuring proper navigation and resource access.
- Mocking Improvements: Updated mocking functionality to prevent failures in tests under various environments, ensuring more reliable test execution.
- Improved error message clarity, particularly for streaming and API operations, to support quicker troubleshooting.

## Documentation
- Revised documentation to reflect the new streaming features and comprehensive parameter changes. This includes adding examples that illustrate the new functionalities.
- Clarified existing documentation, including links and examples related to SSO and streaming operations, enhancing user comprehension.

## Code Quality
- Performed extensive code refactoring to improve readability and efficiency, particularly in the handling of streaming and API call functions.
- Updated unit tests to align with new functionalities, ensuring the robustness of both legacy and new features while adhering to best practices.

## User Experience
- Enhanced feedback mechanisms during API interactions, providing clearer guidance and insights to users for various operations.
- Implemented multiple performance enhancements that contribute to a smoother and more responsive user experience, particularly when handling large datasets and service responses.

# paws 0.7.0

## Enhancements
- Added user-agent strings to all API calls, improving tracking and identification of requests made from the package to AWS services.
- Introduced caching for container credentials, ensuring more efficient retrieval and use of these credentials during API calls.
- Enhanced the handling of copy_source parameters in S3 operations to prevent issues when handling redirects, ensuring smoother operations during file management tasks.
- Improved error messaging for API calls, providing clearer feedback for failures and redirections, supporting faster troubleshooting.

## Bug Fixes
- Fixed multiple broken links in documentation and code, ensuring that users have accurate references to resources and endpoints.
- Resolved issues with handling different types of credentials, particularly for anonymous and refreshed credentials, allowing for improved flexibility in authentication.
- Tidied code by addressing formatting issues, ensuring cleaner and more readable code throughout the package.

## Documentation
- Updated R documentation to reflect the latest parameter changes and functionalities across various operations, enhancing user comprehension.
- Enhanced documentation with more examples and scenarios to illustrate the functionality of new features and configurations.

## Code Quality
- Performed extensive code refactoring to enhance performance and readability, including the simplification of methods and removal of deprecated functions.
- Updated unit tests to be aligned with the latest changes, ensuring that quality is maintained and bugs are caught early in the development process.
- Introduced performance optimizations in various functions, particularly those related to API interactions and data parsing.

## User Experience
- Improved the overall clarity of error messages and responses, thereby providing users with better insight during API interactions.
- Implemented various optimizations that contribute to a more responsive and efficient experience when using the package with AWS services.

# paws 0.6.0

## Enhancements
- Enhanced the performance of key functions such as restxml_unmarshal and json_convert_string by migrating parts of the logic to C++ for faster execution.
- Introduced the locate_credentials functionality, allowing for more efficient retrieval and management of AWS credentials.
- Improved the construction of the user agent string, ensuring compatibility with various AWS services and APIs.

## Bug Fixes
- Fixed issues related to Unicode character handling, ensuring proper encoding and decoding across various package functionalities.
- Corrected old links in the documentation and code, ensuring accurate references to AWS services and endpoints.
- Resolved issues with custom endpoint configurations, enhancing flexibility for users who require non-standard AWS endpoints.

## Documentation
- Clarified and updated numerous aspects of the R documentation to enhance user comprehension, especially around credential management and service usage.
- Revised URLs within the documentation to point to the correct resources, improving user navigation.
- Enhanced examples and comments throughout the codebase, making it easier for users to understand the functionalities provided by the package.

## Code Quality
- Conducted comprehensive code refactoring to streamline the package structure and enhance readability.
- Removed deprecated functions and unnecessary code constructs, leading to a cleaner and more maintainable codebase.
- Updated unit tests to align with the latest changes, ensuring continued reliability and performance.

## User Experience
- Enhanced the feedback mechanisms in the code, particularly during API interactions, to facilitate quicker troubleshooting and debugging.
- Ensured that functions, especially those related to parsing and credential handling, perform more efficiently, contributing to overall user satisfaction.

# paws 0.5.0

## Enhancements
- Improved performance of build functions through optimization of loop structures.
- Introduced a mechanism to prevent unnecessary writes to files when no changes have occurred, optimizing resource usage.
- Implemented support for the AWS_CONTAINER_CREDENTIALS_FULL_URI environmental variable to facilitate easier access to AWS container credentials.
## Bug Fixes
- Resolved a CRAN documentation issue, ensuring accurate and clear presentation of package functionalities.
- Fixed errors related to handling Unicode characters, specifically addressing the inputenc error for the character ﬁ.
- Corrected issues that arose from incorrect handling of certain CRAN notes, enhancing the overall compliance of the package.

## Documentation
- Updated the documentation to clarify the usage of the StopOnSameToken parameter in the paginator functionality, offering better guidance.
- Enhanced clarity in the descriptions of credentials handling in environmental configurations, improving user understanding.
- Streamlined the documentation process by updating comments to accurately reflect changes made in the package.

## Code Quality
- Conducted extensive refactoring to streamline how various functions handle configuration and error processes, leading to improved maintainability.
- Implemented extensive unit testing, particularly around the paginator implementations and new environmental variables handling to ensure robustness.
- Improved code readability and standards compliance through formatting adjustments and consistent styling.

## User Experience
- Enhanced error messaging during API interactions, providing clearer feedback to users in case of failures.
- Ensured that the overall response time from API calls has been optimized through enhanced coding practices, significantly elevating user satisfaction.

# paws 0.4.0

## Enhancements
- Introduced a standard retry handling mechanism, allowing for configurable retries on failed API calls, with support for exponential backoff on initial retriable errors.
- Added support for nested lists and structures in XML parsing, enhancing the ability to handle complex responses.
- Implemented a paginator helper function to simplify listing all available paginators within a client, improving data retrieval efficiency.

## Bug Fixes
- Corrected URL redirection issues, ensuring all service calls have the accurate endpoints.
- Fixed a response tag leak issue that prevented proper data handling in API responses, enhancing data integrity during processing.
- Resolved issues related to handling non-standard configuration options, ensuring that service parameters are more robust.

## Documentation
- Updated documentation to include a new example for the Rekognition image label service, enhancing user guidance on functionality.
- Improved clarity in the description of the retry mechanism and pagination functionality, ensuring that users understand how to utilize these features effectively.
- Removed unnecessary tags from the default interface output in documentation, streamlining user examples.

## Code Quality
- Implemented extensive unit tests for both retry logic and paginators, ensuring reliability and performance across various scenarios.
- Enhanced formatting throughout the codebase for better readability, adhering to coding standards.
- Conducted code refactoring to streamline how error handling and configuration merging are approached, improving overall code maintainability.

## User Experience
- Improved feedback mechanisms during API call failures with clearer error messages, aiding users in identifying and resolving issues.
- Ensured that the system's response time is improved through optimized code structures and streamlined API interactions, enhancing overall user satisfaction.

# paws 0.3.0

## Enhancements
- Introduced improvements to manage HTML span elements in documentation by implementing formatting helper functions.
- Enabled the functionality to list only active packages, simplifying the management of available services.
- Enhanced unit tests to align with new behaviors and ensure consistency in output logging during code execution.

## Bug Fixes
- Resolved issues with nested HTML emphasis that triggered warnings in documentation, improving the overall clarity of API references.
- Fixed multiple URL issues that previously resulted in broken links, and ensured proper redirects for all services.

## Documentation
- Updated current service offerings and improvements.
- Improved accessibility of URLs pointing to new documentation sites, enhancing user navigation.
- Streamlined the formatting of special LaTeX characters in documentation for clarity and correctness.

## Code Quality
- Implemented micro performance updates throughout key functions, optimizing both speed and efficiency.
- Refactor of API grouping logic to split operations based on their number, improving manageability and performance during code generation.
- Enhanced readability and maintainability of code through better structuring and clear documentation.

## User Experience
- Enhanced logging capabilities to provide real-time output during processing, aiding in debugging and performance monitoring.
- Improved error messages to enhance user understanding of issues and potential resolutions, fostering a better development experience.


# paws 0.2.0

## Enhancements
- Added an interactive parameter to improve user interaction during functionality checks.
- Improved SSO functionality by updating the `sso_credential_process` to allow for the latest SSO token provider configuration.
- Enhanced unit tests, including new SSO unit tests for better reliability.
  
## Bug Fixes
- Resolved issues with URL handling, including the removal of broken links and the addition of proper redirects.
- Fixed problems with escaped LaTeX characters, ensuring smoother document management and correctness.
- Addressed issues that prevented certain package rebuilds and package mix-ups during development.

## Documentation
- Updated URLs within the documentation to better guide users.
- Streamlined documentation to clarify configurations related to AWS services, particularly for S3 operations.
- Improved clarity in usage notes surrounding AWS services' functionality, specifically in the context of newly introduced methods and parameters.

## Code Quality
- Implemented code refactoring to enhance performance, particularly within key functions that handle AWS interactions.
- Applied improved practices in function structuring to enhance code readability and maintainability.
- Enhanced error handling with clearer messages to assist developers during debugging.

## User Experience
- Added features for easier credential management and cache refresh upon expiration, improving overall user experience with AWS interactions.
- Streamlined functions to reduce memory usage, leading to a more efficient user experience when executing AWS commands.

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
