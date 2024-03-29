% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connectcases_operations.R
\name{connectcases_update_layout}
\alias{connectcases_update_layout}
\title{Updates the attributes of an existing layout}
\usage{
connectcases_update_layout(content = NULL, domainId, layoutId, name = NULL)
}
\arguments{
\item{content}{Information about which fields will be present in the layout, the order
of the fields.}

\item{domainId}{[required] The unique identifier of the Cases domain.}

\item{layoutId}{[required] The unique identifier of the layout.}

\item{name}{The name of the layout. It must be unique per domain.}
}
\description{
Updates the attributes of an existing layout.

See \url{https://www.paws-r-sdk.com/docs/connectcases_update_layout/} for full documentation.
}
\keyword{internal}
