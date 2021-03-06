% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_instance_event_start_time}
\alias{ec2_modify_instance_event_start_time}
\title{Modifies the start time for a scheduled Amazon EC2 instance event}
\usage{
ec2_modify_instance_event_start_time(DryRun, InstanceId,
  InstanceEventId, NotBefore)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{InstanceId}{[required] The ID of the instance with the scheduled event.}

\item{InstanceEventId}{[required] The ID of the event whose date and time you are modifying.}

\item{NotBefore}{[required] The new date and time when the event will take place.}
}
\value{
A list with the following syntax:\preformatted{list(
  Event = list(
    InstanceEventId = "string",
    Code = "instance-reboot"|"system-reboot"|"system-maintenance"|"instance-retirement"|"instance-stop",
    Description = "string",
    NotAfter = as.POSIXct(
      "2015-01-01"
    ),
    NotBefore = as.POSIXct(
      "2015-01-01"
    ),
    NotBeforeDeadline = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Modifies the start time for a scheduled Amazon EC2 instance event.
}
\section{Request syntax}{
\preformatted{svc$modify_instance_event_start_time(
  DryRun = TRUE|FALSE,
  InstanceId = "string",
  InstanceEventId = "string",
  NotBefore = as.POSIXct(
    "2015-01-01"
  )
)
}
}

\keyword{internal}
