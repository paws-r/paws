% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafka_operations.R
\name{kafka_update_broker_storage}
\alias{kafka_update_broker_storage}
\title{Updates the EBS storage associated with MSK brokers}
\usage{
kafka_update_broker_storage(ClusterArn, CurrentVersion,
  TargetBrokerEBSVolumeInfo)
}
\arguments{
\item{ClusterArn}{[required] The Amazon Resource Name (ARN) that uniquely identifies the cluster.}

\item{CurrentVersion}{[required] The version of cluster to update from. A successful operation will then
generate a new version.}

\item{TargetBrokerEBSVolumeInfo}{[required] Describes the target volume size and the ID of the broker to apply the
update to.}
}
\value{
A list with the following syntax:\preformatted{list(
  ClusterArn = "string",
  ClusterOperationArn = "string"
)
}
}
\description{
Updates the EBS storage associated with MSK brokers.
}
\section{Request syntax}{
\preformatted{svc$update_broker_storage(
  ClusterArn = "string",
  CurrentVersion = "string",
  TargetBrokerEBSVolumeInfo = list(
    list(
      KafkaBrokerNodeId = "string",
      VolumeSizeGB = 123
    )
  )
)
}
}

\keyword{internal}
