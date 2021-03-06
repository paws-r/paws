% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_get_host_reservation_purchase_preview}
\alias{ec2_get_host_reservation_purchase_preview}
\title{Preview a reservation purchase with configurations that match those of
your Dedicated Host}
\usage{
ec2_get_host_reservation_purchase_preview(HostIdSet, OfferingId)
}
\arguments{
\item{HostIdSet}{[required] The IDs of the Dedicated Hosts with which the reservation is associated.}

\item{OfferingId}{[required] The offering ID of the reservation.}
}
\value{
A list with the following syntax:\preformatted{list(
  CurrencyCode = "USD",
  Purchase = list(
    list(
      CurrencyCode = "USD",
      Duration = 123,
      HostIdSet = list(
        "string"
      ),
      HostReservationId = "string",
      HourlyPrice = "string",
      InstanceFamily = "string",
      PaymentOption = "AllUpfront"|"PartialUpfront"|"NoUpfront",
      UpfrontPrice = "string"
    )
  ),
  TotalHourlyPrice = "string",
  TotalUpfrontPrice = "string"
)
}
}
\description{
Preview a reservation purchase with configurations that match those of
your Dedicated Host. You must have active Dedicated Hosts in your
account before you purchase a reservation.

This is a preview of the
\code{\link[=ec2_purchase_host_reservation]{purchase_host_reservation}} action and
does not result in the offering being purchased.
}
\section{Request syntax}{
\preformatted{svc$get_host_reservation_purchase_preview(
  HostIdSet = list(
    "string"
  ),
  OfferingId = "string"
)
}
}

\keyword{internal}
