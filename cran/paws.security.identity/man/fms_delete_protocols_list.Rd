% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fms_operations.R
\name{fms_delete_protocols_list}
\alias{fms_delete_protocols_list}
\title{Permanently deletes an Firewall Manager protocols list}
\usage{
fms_delete_protocols_list(ListId)
}
\arguments{
\item{ListId}{[required] The ID of the protocols list that you want to delete. You can retrieve
this ID from \code{\link[=fms_put_protocols_list]{put_protocols_list}},
\code{\link[=fms_list_protocols_lists]{list_protocols_lists}}, and
\code{GetProtocolsLost}.}
}
\description{
Permanently deletes an Firewall Manager protocols list.

See \url{https://www.paws-r-sdk.com/docs/fms_delete_protocols_list/} for full documentation.
}
\keyword{internal}
