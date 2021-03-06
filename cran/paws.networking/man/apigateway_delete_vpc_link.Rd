% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_delete_vpc_link}
\alias{apigateway_delete_vpc_link}
\title{Deletes an existing VpcLink of a specified identifier}
\usage{
apigateway_delete_vpc_link(vpcLinkId)
}
\arguments{
\item{vpcLinkId}{[required] [Required] The identifier of the VpcLink. It is used in an Integration
to reference this VpcLink.}
}
\value{
An empty list.
}
\description{
Deletes an existing VpcLink of a specified identifier.
}
\section{Request syntax}{
\preformatted{svc$delete_vpc_link(
  vpcLinkId = "string"
)
}
}

\keyword{internal}
