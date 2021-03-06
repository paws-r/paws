% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_fleet_events}
\alias{gamelift_describe_fleet_events}
\title{Retrieves entries from the specified fleet's event log}
\usage{
gamelift_describe_fleet_events(FleetId, StartTime, EndTime, Limit,
  NextToken)
}
\arguments{
\item{FleetId}{[required] A unique identifier for a fleet to get event logs for. You can use
either the fleet ID or ARN value.}

\item{StartTime}{Earliest date to retrieve event logs for. If no start time is specified,
this call returns entries starting from when the fleet was created to
the specified end time. Format is a number expressed in Unix time as
milliseconds (ex: "1469498468.057").}

\item{EndTime}{Most recent date to retrieve event logs for. If no end time is
specified, this call returns entries from the specified start time up to
the present. Format is a number expressed in Unix time as milliseconds
(ex: "1469498468.057").}

\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this operation.
To start at the beginning of the result set, do not specify a value.}
}
\value{
A list with the following syntax:\preformatted{list(
  Events = list(
    list(
      EventId = "string",
      ResourceId = "string",
      EventCode = "GENERIC_EVENT"|"FLEET_CREATED"|"FLEET_DELETED"|"FLEET_SCALING_EVENT"|"FLEET_STATE_DOWNLOADING"|"FLEET_STATE_VALIDATING"|"FLEET_STATE_BUILDING"|"FLEET_STATE_ACTIVATING"|"FLEET_STATE_ACTIVE"|"FLEET_STATE_ERROR"|"FLEET_INITIALIZATION_FAILED"|"FLEET_BINARY_DOWNLOAD_FAILED"|"FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND"|"FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE"|"FLEET_VALIDATION_TIMED_OUT"|"FLEET_ACTIVATION_FAILED"|"FLEET_ACTIVATION_FAILED_NO_INSTANCES"|"FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED"|"SERVER_PROCESS_INVALID_PATH"|"SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT"|"SERVER_PROCESS_PROCESS_READY_TIMEOUT"|"SERVER_PROCESS_CRASHED"|"SERVER_PROCESS_TERMINATED_UNHEALTHY"|"SERVER_PROCESS_FORCE_TERMINATED"|"SERVER_PROCESS_PROCESS_EXIT_TIMEOUT"|"GAME_SESSION_ACTIVATION_TIMEOUT"|"FLEET_CREATION_EXTRACTING_BUILD"|"FLEET_CREATION_RUNNING_INSTALLER"|"FLEET_CREATION_VALIDATING_RUNTIME_CONFIG"|"FLEET_VPC_PEERING_SUCCEEDED"|"FLEET_VPC_PEERING_FAILED"|"FLEET_VPC_PEERING_DELETED"|"INSTANCE_INTERRUPTED",
      Message = "string",
      EventTime = as.POSIXct(
        "2015-01-01"
      ),
      PreSignedLogUrl = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Retrieves entries from the specified fleet's event log. You can specify
a time range to limit the result set. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
collection of event log entries matching the request are returned.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html}{Setting up GameLift Fleets}

\strong{Related operations}
\itemize{
\item \code{\link[=gamelift_create_fleet]{create_fleet}}
\item \code{\link[=gamelift_list_fleets]{list_fleets}}
\item \code{\link[=gamelift_delete_fleet]{delete_fleet}}
\item Describe fleets:
\itemize{
\item \code{\link[=gamelift_describe_fleet_attributes]{describe_fleet_attributes}}
\item \code{\link[=gamelift_describe_fleet_capacity]{describe_fleet_capacity}}
\item \code{\link[=gamelift_describe_fleet_port_settings]{describe_fleet_port_settings}}
\item \code{\link[=gamelift_describe_fleet_utilization]{describe_fleet_utilization}}
\item \code{\link[=gamelift_describe_runtime_configuration]{describe_runtime_configuration}}
\item \code{\link[=gamelift_describe_ec2_instance_limits]{describe_ec2_instance_limits}}
\item \code{\link[=gamelift_describe_fleet_events]{describe_fleet_events}}
}
\item \code{\link[=gamelift_update_fleet_attributes]{update_fleet_attributes}}
\item \code{\link[=gamelift_start_fleet_actions]{start_fleet_actions}} or
\code{\link[=gamelift_stop_fleet_actions]{stop_fleet_actions}}
}
}
\section{Request syntax}{
\preformatted{svc$describe_fleet_events(
  FleetId = "string",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
