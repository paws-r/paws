% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_delete_capacity_reservation}
\alias{athena_delete_capacity_reservation}
\title{Deletes a cancelled capacity reservation}
\usage{
athena_delete_capacity_reservation(Name)
}
\arguments{
\item{Name}{[required] The name of the capacity reservation to delete.}
}
\description{
Deletes a cancelled capacity reservation. A reservation must be cancelled before it can be deleted. A deleted reservation is immediately removed from your account and can no longer be referenced, including by its ARN. A deleted reservation cannot be called by \code{\link[=athena_get_capacity_reservation]{get_capacity_reservation}}, and deleted reservations do not appear in the output of \code{\link[=athena_list_capacity_reservations]{list_capacity_reservations}}.

See \url{https://www.paws-r-sdk.com/docs/athena_delete_capacity_reservation/} for full documentation.
}
\keyword{internal}
