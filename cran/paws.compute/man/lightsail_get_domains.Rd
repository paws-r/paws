% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_domains}
\alias{lightsail_get_domains}
\title{Returns a list of all domains in the user's account}
\usage{
lightsail_get_domains(pageToken)
}
\arguments{
\item{pageToken}{The token to advance to the next page of results from your request.

To get a page token, perform an initial
\code{\link[=lightsail_get_domains]{get_domains}} request. If your results are
paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.}
}
\value{
A list with the following syntax:\preformatted{list(
  domains = list(
    list(
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
      domainEntries = list(
        list(
          id = "string",
          name = "string",
          target = "string",
          isAlias = TRUE|FALSE,
          type = "string",
          options = list(
            "string"
          )
        )
      )
    )
  ),
  nextPageToken = "string"
)
}
}
\description{
Returns a list of all domains in the user's account.
}
\section{Request syntax}{
\preformatted{svc$get_domains(
  pageToken = "string"
)
}
}

\keyword{internal}
