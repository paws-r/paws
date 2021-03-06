% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_cloud_formation_stack_records}
\alias{lightsail_get_cloud_formation_stack_records}
\title{Returns the CloudFormation stack record created as a result of the
create cloud formation stack operation}
\usage{
lightsail_get_cloud_formation_stack_records(pageToken)
}
\arguments{
\item{pageToken}{The token to advance to the next page of results from your request.

To get a page token, perform an initial \code{GetClouFormationStackRecords}
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.}
}
\value{
A list with the following syntax:\preformatted{list(
  cloudFormationStackRecords = list(
    list(
      name = "string",
      arn = "string",
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      location = list(
        availabilityZone = "string",
        regionName = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"ca-central-1"|"ap-south-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"ap-northeast-2"
      ),
      resourceType = "ContainerService"|"Instance"|"StaticIp"|"KeyPair"|"InstanceSnapshot"|"Domain"|"PeeredVpc"|"LoadBalancer"|"LoadBalancerTlsCertificate"|"Disk"|"DiskSnapshot"|"RelationalDatabase"|"RelationalDatabaseSnapshot"|"ExportSnapshotRecord"|"CloudFormationStackRecord"|"Alarm"|"ContactMethod"|"Distribution"|"Certificate",
      state = "Started"|"Succeeded"|"Failed",
      sourceInfo = list(
        list(
          resourceType = "ExportSnapshotRecord",
          name = "string",
          arn = "string"
        )
      ),
      destinationInfo = list(
        id = "string",
        service = "string"
      )
    )
  ),
  nextPageToken = "string"
)
}
}
\description{
Returns the CloudFormation stack record created as a result of the
\verb{create cloud formation stack} operation.

An AWS CloudFormation stack is used to create a new Amazon EC2 instance
from an exported Lightsail snapshot.
}
\section{Request syntax}{
\preformatted{svc$get_cloud_formation_stack_records(
  pageToken = "string"
)
}
}

\keyword{internal}
