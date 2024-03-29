% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sms_service.R
\name{sms}
\alias{sms}
\title{AWS Server Migration Service}
\usage{
sms(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
AWS Server Migration Service (AWS SMS) makes it easier and faster for
you to migrate your on-premises workloads to AWS. To learn more about
AWS SMS, see the following resources:
\itemize{
\item \href{https://aws.amazon.com/server-migration-service/}{AWS Server Migration Service product page}
\item \href{https://docs.aws.amazon.com/server-migration-service/latest/userguide/}{AWS Server Migration Service User Guide}
}
}
\section{Service syntax}{
\preformatted{svc <- sms(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=sms_create_app]{create_app} \tab Creates an application\cr
\link[=sms_create_replication_job]{create_replication_job} \tab Creates a replication job\cr
\link[=sms_delete_app]{delete_app} \tab Deletes the specified application\cr
\link[=sms_delete_app_launch_configuration]{delete_app_launch_configuration} \tab Deletes the launch configuration for the specified application\cr
\link[=sms_delete_app_replication_configuration]{delete_app_replication_configuration} \tab Deletes the replication configuration for the specified application\cr
\link[=sms_delete_app_validation_configuration]{delete_app_validation_configuration} \tab Deletes the validation configuration for the specified application\cr
\link[=sms_delete_replication_job]{delete_replication_job} \tab Deletes the specified replication job\cr
\link[=sms_delete_server_catalog]{delete_server_catalog} \tab Deletes all servers from your server catalog\cr
\link[=sms_disassociate_connector]{disassociate_connector} \tab Disassociates the specified connector from AWS SMS\cr
\link[=sms_generate_change_set]{generate_change_set} \tab Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket\cr
\link[=sms_generate_template]{generate_template} \tab Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket\cr
\link[=sms_get_app]{get_app} \tab Retrieve information about the specified application\cr
\link[=sms_get_app_launch_configuration]{get_app_launch_configuration} \tab Retrieves the application launch configuration associated with the specified application\cr
\link[=sms_get_app_replication_configuration]{get_app_replication_configuration} \tab Retrieves the application replication configuration associated with the specified application\cr
\link[=sms_get_app_validation_configuration]{get_app_validation_configuration} \tab Retrieves information about a configuration for validating an application\cr
\link[=sms_get_app_validation_output]{get_app_validation_output} \tab Retrieves output from validating an application\cr
\link[=sms_get_connectors]{get_connectors} \tab Describes the connectors registered with the AWS SMS\cr
\link[=sms_get_replication_jobs]{get_replication_jobs} \tab Describes the specified replication job or all of your replication jobs\cr
\link[=sms_get_replication_runs]{get_replication_runs} \tab Describes the replication runs for the specified replication job\cr
\link[=sms_get_servers]{get_servers} \tab Describes the servers in your server catalog\cr
\link[=sms_import_app_catalog]{import_app_catalog} \tab Allows application import from AWS Migration Hub\cr
\link[=sms_import_server_catalog]{import_server_catalog} \tab Gathers a complete list of on-premises servers\cr
\link[=sms_launch_app]{launch_app} \tab Launches the specified application as a stack in AWS CloudFormation\cr
\link[=sms_list_apps]{list_apps} \tab Retrieves summaries for all applications\cr
\link[=sms_notify_app_validation_output]{notify_app_validation_output} \tab Provides information to AWS SMS about whether application validation is successful\cr
\link[=sms_put_app_launch_configuration]{put_app_launch_configuration} \tab Creates or updates the launch configuration for the specified application\cr
\link[=sms_put_app_replication_configuration]{put_app_replication_configuration} \tab Creates or updates the replication configuration for the specified application\cr
\link[=sms_put_app_validation_configuration]{put_app_validation_configuration} \tab Creates or updates a validation configuration for the specified application\cr
\link[=sms_start_app_replication]{start_app_replication} \tab Starts replicating the specified application by creating replication jobs for each server in the application\cr
\link[=sms_start_on_demand_app_replication]{start_on_demand_app_replication} \tab Starts an on-demand replication run for the specified application\cr
\link[=sms_start_on_demand_replication_run]{start_on_demand_replication_run} \tab Starts an on-demand replication run for the specified replication job\cr
\link[=sms_stop_app_replication]{stop_app_replication} \tab Stops replicating the specified application by deleting the replication job for each server in the application\cr
\link[=sms_terminate_app]{terminate_app} \tab Terminates the stack for the specified application\cr
\link[=sms_update_app]{update_app} \tab Updates the specified application\cr
\link[=sms_update_replication_job]{update_replication_job} \tab Updates the specified settings for the specified replication job
}
}

\examples{
\dontrun{
svc <- sms()
svc$create_app(
  Foo = 123
)
}

}
