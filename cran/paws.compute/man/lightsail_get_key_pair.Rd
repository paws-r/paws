% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_key_pair}
\alias{lightsail_get_key_pair}
\title{Returns information about a specific key pair}
\usage{
lightsail_get_key_pair(keyPairName)
}
\arguments{
\item{keyPairName}{[required] The name of the key pair for which you are requesting information.}
}
\value{
A list with the following syntax:\preformatted{list(
  keyPair = list(
    name = "string",
    arn = "string",
    supportCode = "string",
    createdAt = as.POSIXct(
      "2015-01-01"
    ),
    location = list(
      availabilityZone = "string",
      regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"
    ),
    resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate",
    tags = list(
      list(
        key = "string",
        value = "string"
      )
    ),
    fingerprint = "string"
  )
)
}
}
\description{
Returns information about a specific key pair.
}
\section{Request syntax}{
\preformatted{svc$get_key_pair(
  keyPairName = "string"
)
}
}

\keyword{internal}
