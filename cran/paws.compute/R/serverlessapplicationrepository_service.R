# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service
NULL

#' AWSServerlessApplicationRepository
#'
#' @description
#' The AWS Serverless Application Repository makes it easy for developers
#' and enterprises to quickly find and deploy serverless applications in
#' the AWS Cloud. For more information about serverless applications, see
#' Serverless Computing and Applications on the AWS website.
#' 
#' The AWS Serverless Application Repository is deeply integrated with the
#' AWS Lambda console, so that developers of all levels can get started
#' with serverless computing without needing to learn anything new. You can
#' use category keywords to browse for applications such as web and mobile
#' backends, data processing applications, or chatbots. You can also search
#' for applications by name, publisher, or event source. To use an
#' application, you simply choose it, configure any required fields, and
#' deploy it with a few clicks.
#' 
#' You can also easily publish applications, sharing them publicly with the
#' community at large, or privately within your team or across your
#' organization. To publish a serverless application (or app), you can use
#' the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS
#' SDKs to upload the code. Along with the code, you upload a simple
#' manifest file, also known as the AWS Serverless Application Model (AWS
#' SAM) template. For more information about AWS SAM, see AWS Serverless
#' Application Model (AWS SAM) on the AWS Labs GitHub repository.
#' 
#' The AWS Serverless Application Repository Developer Guide contains more
#' information about the two developer experiences available:
#' 
#' -   Consuming Applications -- Browse for applications and view
#'     information about them, including source code and readme files. Also
#'     install, configure, and deploy applications of your choosing.
#' 
#'     Publishing Applications -- Configure and upload applications to make
#'     them available to other developers, and publish new versions of
#'     applications.
#'
#' @examples
#' \donttest{svc <- serverlessapplicationrepository()
#' svc$create_application(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=serverlessapplicationrepository_create_application]{create_application} \tab Creates an application, optionally including an AWS SAM file to create the first application version in the same call\cr
#'  \link[=serverlessapplicationrepository_create_application_version]{create_application_version} \tab Creates an application version \cr
#'  \link[=serverlessapplicationrepository_create_cloud_formation_change_set]{create_cloud_formation_change_set} \tab Creates an AWS CloudFormation change set for the given application \cr
#'  \link[=serverlessapplicationrepository_create_cloud_formation_template]{create_cloud_formation_template} \tab Creates an AWS CloudFormation template \cr
#'  \link[=serverlessapplicationrepository_delete_application]{delete_application} \tab Deletes the specified application \cr
#'  \link[=serverlessapplicationrepository_get_application]{get_application} \tab Gets the specified application \cr
#'  \link[=serverlessapplicationrepository_get_application_policy]{get_application_policy} \tab Retrieves the policy for the application \cr
#'  \link[=serverlessapplicationrepository_get_cloud_formation_template]{get_cloud_formation_template} \tab Gets the specified AWS CloudFormation template \cr
#'  \link[=serverlessapplicationrepository_list_application_dependencies]{list_application_dependencies} \tab Retrieves the list of applications nested in the containing application \cr
#'  \link[=serverlessapplicationrepository_list_application_versions]{list_application_versions} \tab Lists versions for the specified application \cr
#'  \link[=serverlessapplicationrepository_list_applications]{list_applications} \tab Lists applications owned by the requester \cr
#'  \link[=serverlessapplicationrepository_put_application_policy]{put_application_policy} \tab Sets the permission policy for an application \cr
#'  \link[=serverlessapplicationrepository_update_application]{update_application} \tab Updates the specified application 
#' }
#'
#' @rdname serverlessapplicationrepository
#' @export
serverlessapplicationrepository <- function() {
  .serverlessapplicationrepository$operations
}

# Private API objects: metadata, handlers, interfaces, etc.
.serverlessapplicationrepository <- list()

.serverlessapplicationrepository$operations <- list()

.serverlessapplicationrepository$metadata <- list(
  service_name = "serverlessrepo",
  endpoints = list("*" = "serverlessrepo.{region}.amazonaws.com", "cn-*" = "serverlessrepo.{region}.amazonaws.com.cn"),
  service_id = "ServerlessApplicationRepository",
  api_version = "2017-09-08",
  signing_name = "serverlessrepo",
  json_version = "1.1",
  target_prefix = ""
)

.serverlessapplicationrepository$handlers <- new_handlers("restjson", "v4")

.serverlessapplicationrepository$service <- function() {
  new_service(.serverlessapplicationrepository$metadata, .serverlessapplicationrepository$handlers)
}