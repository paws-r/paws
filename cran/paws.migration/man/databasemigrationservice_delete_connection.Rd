% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databasemigrationservice_operations.R
\name{databasemigrationservice_delete_connection}
\alias{databasemigrationservice_delete_connection}
\title{Deletes the connection between a replication instance and an endpoint}
\usage{
databasemigrationservice_delete_connection(EndpointArn,
  ReplicationInstanceArn)
}
\arguments{
\item{EndpointArn}{[required] The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.}

\item{ReplicationInstanceArn}{[required] The Amazon Resource Name (ARN) of the replication instance.}
}
\value{
A list with the following syntax:\preformatted{list(
  Connection = list(
    ReplicationInstanceArn = "string",
    EndpointArn = "string",
    Status = "string",
    LastFailureMessage = "string",
    EndpointIdentifier = "string",
    ReplicationInstanceIdentifier = "string"
  )
)
}
}
\description{
Deletes the connection between a replication instance and an endpoint.
}
\section{Request syntax}{
\preformatted{svc$delete_connection(
  EndpointArn = "string",
  ReplicationInstanceArn = "string"
)
}
}

\examples{
\dontrun{
# Deletes the connection between the replication instance and the
# endpoint.
svc$delete_connection(
  EndpointArn = "arn:aws:dms:us-east-1:123456789012:endpoint:RAAR3R22XSH46S3PWLC3NJAWKM",
  ReplicationInstanceArn = "arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ"
)
}

}
\keyword{internal}
