% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_update_subscription_definition}
\alias{greengrass_update_subscription_definition}
\title{Updates a subscription definition}
\usage{
greengrass_update_subscription_definition(Name,
  SubscriptionDefinitionId)
}
\arguments{
\item{Name}{The name of the definition.}

\item{SubscriptionDefinitionId}{[required] The ID of the subscription definition.}
}
\value{
An empty list.
}
\description{
Updates a subscription definition.
}
\section{Request syntax}{
\preformatted{svc$update_subscription_definition(
  Name = "string",
  SubscriptionDefinitionId = "string"
)
}
}

\keyword{internal}
