% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_update_domain_name}
\alias{apigateway_update_domain_name}
\title{Changes information about the DomainName resource}
\usage{
apigateway_update_domain_name(domainName, patchOperations)
}
\arguments{
\item{domainName}{[required] [Required] The name of the DomainName resource to be changed.}

\item{patchOperations}{A list of update operations to be applied to the specified resource and
in the order specified in this list.}
}
\description{
Changes information about the DomainName resource.
}
\section{Request syntax}{
\preformatted{svc$update_domain_name(
  domainName = "string",
  patchOperations = list(
    list(
      op = "add"|"remove"|"replace"|"move"|"copy"|"test",
      path = "string",
      value = "string",
      from = "string"
    )
  )
)
}
}

\keyword{internal}