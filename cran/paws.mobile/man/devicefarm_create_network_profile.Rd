% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_create_network_profile}
\alias{devicefarm_create_network_profile}
\title{Creates a network profile}
\usage{
devicefarm_create_network_profile(projectArn, name, description, type,
  uplinkBandwidthBits, downlinkBandwidthBits, uplinkDelayMs,
  downlinkDelayMs, uplinkJitterMs, downlinkJitterMs, uplinkLossPercent,
  downlinkLossPercent)
}
\arguments{
\item{projectArn}{[required] The Amazon Resource Name (ARN) of the project for which you want to
create a network profile.}

\item{name}{[required] The name for the new network profile.}

\item{description}{The description of the network profile.}

\item{type}{The type of network profile to create. Valid values are listed here.}

\item{uplinkBandwidthBits}{The data throughput rate in bits per second, as an integer from 0 to
104857600.}

\item{downlinkBandwidthBits}{The data throughput rate in bits per second, as an integer from 0 to
104857600.}

\item{uplinkDelayMs}{Delay time for all packets to destination in milliseconds as an integer
from 0 to 2000.}

\item{downlinkDelayMs}{Delay time for all packets to destination in milliseconds as an integer
from 0 to 2000.}

\item{uplinkJitterMs}{Time variation in the delay of received packets in milliseconds as an
integer from 0 to 2000.}

\item{downlinkJitterMs}{Time variation in the delay of received packets in milliseconds as an
integer from 0 to 2000.}

\item{uplinkLossPercent}{Proportion of transmitted packets that fail to arrive from 0 to 100
percent.}

\item{downlinkLossPercent}{Proportion of received packets that fail to arrive from 0 to 100
percent.}
}
\value{
A list with the following syntax:\preformatted{list(
  networkProfile = list(
    arn = "string",
    name = "string",
    description = "string",
    type = "CURATED"|"PRIVATE",
    uplinkBandwidthBits = 123,
    downlinkBandwidthBits = 123,
    uplinkDelayMs = 123,
    downlinkDelayMs = 123,
    uplinkJitterMs = 123,
    downlinkJitterMs = 123,
    uplinkLossPercent = 123,
    downlinkLossPercent = 123
  )
)
}
}
\description{
Creates a network profile.
}
\section{Request syntax}{
\preformatted{svc$create_network_profile(
  projectArn = "string",
  name = "string",
  description = "string",
  type = "CURATED"|"PRIVATE",
  uplinkBandwidthBits = 123,
  downlinkBandwidthBits = 123,
  uplinkDelayMs = 123,
  downlinkDelayMs = 123,
  uplinkJitterMs = 123,
  downlinkJitterMs = 123,
  uplinkLossPercent = 123,
  downlinkLossPercent = 123
)
}
}

\keyword{internal}
