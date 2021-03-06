% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasync_operations.R
\name{datasync_describe_location_nfs}
\alias{datasync_describe_location_nfs}
\title{Returns metadata, such as the path information, about an NFS location}
\usage{
datasync_describe_location_nfs(LocationArn)
}
\arguments{
\item{LocationArn}{[required] The Amazon Resource Name (ARN) of the NFS location to describe.}
}
\value{
A list with the following syntax:\preformatted{list(
  LocationArn = "string",
  LocationUri = "string",
  OnPremConfig = list(
    AgentArns = list(
      "string"
    )
  ),
  MountOptions = list(
    Version = "AUTOMATIC"|"NFS3"|"NFS4_0"|"NFS4_1"
  ),
  CreationTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
Returns metadata, such as the path information, about an NFS location.
}
\section{Request syntax}{
\preformatted{svc$describe_location_nfs(
  LocationArn = "string"
)
}
}

\keyword{internal}
