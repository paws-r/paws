% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_purchase_reserved_db_instances_offering}
\alias{rds_purchase_reserved_db_instances_offering}
\title{Purchases a reserved DB instance offering}
\usage{
rds_purchase_reserved_db_instances_offering(
  ReservedDBInstancesOfferingId, ReservedDBInstanceId, DBInstanceCount,
  Tags)
}
\arguments{
\item{ReservedDBInstancesOfferingId}{[required] The ID of the Reserved DB instance offering to purchase.

Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706}

\item{ReservedDBInstanceId}{Customer-specified identifier to track this reservation.

Example: myreservationID}

\item{DBInstanceCount}{The number of instances to reserve.

Default: \code{1}}

\item{Tags}{}
}
\value{
A list with the following syntax:\preformatted{list(
  ReservedDBInstance = list(
    ReservedDBInstanceId = "string",
    ReservedDBInstancesOfferingId = "string",
    DBInstanceClass = "string",
    StartTime = as.POSIXct(
      "2015-01-01"
    ),
    Duration = 123,
    FixedPrice = 123.0,
    UsagePrice = 123.0,
    CurrencyCode = "string",
    DBInstanceCount = 123,
    ProductDescription = "string",
    OfferingType = "string",
    MultiAZ = TRUE|FALSE,
    State = "string",
    RecurringCharges = list(
      list(
        RecurringChargeAmount = 123.0,
        RecurringChargeFrequency = "string"
      )
    ),
    ReservedDBInstanceArn = "string",
    LeaseId = "string"
  )
)
}
}
\description{
Purchases a reserved DB instance offering.
}
\section{Request syntax}{
\preformatted{svc$purchase_reserved_db_instances_offering(
  ReservedDBInstancesOfferingId = "string",
  ReservedDBInstanceId = "string",
  DBInstanceCount = 123,
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
