% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_list_stack_instances_for_provisioned_product}
\alias{servicecatalog_list_stack_instances_for_provisioned_product}
\title{Returns summary information about stack instances that are associated
with the specified CFN_STACKSET type provisioned product}
\usage{
servicecatalog_list_stack_instances_for_provisioned_product(
  AcceptLanguage, ProvisionedProductId, PageToken, PageSize)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{ProvisionedProductId}{[required] The identifier of the provisioned product.}

\item{PageToken}{The page token for the next set of results. To retrieve the first set of
results, use null.}

\item{PageSize}{The maximum number of items to return with this call.}
}
\value{
A list with the following syntax:\preformatted{list(
  StackInstances = list(
    list(
      Account = "string",
      Region = "string",
      StackInstanceStatus = "CURRENT"|"OUTDATED"|"INOPERABLE"
    )
  ),
  NextPageToken = "string"
)
}
}
\description{
Returns summary information about stack instances that are associated
with the specified \code{CFN_STACKSET} type provisioned product. You can
filter for stack instances that are associated with a specific AWS
account name or region.
}
\section{Request syntax}{
\preformatted{svc$list_stack_instances_for_provisioned_product(
  AcceptLanguage = "string",
  ProvisionedProductId = "string",
  PageToken = "string",
  PageSize = 123
)
}
}

\keyword{internal}
