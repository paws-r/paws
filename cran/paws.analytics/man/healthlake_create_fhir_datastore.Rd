% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/healthlake_operations.R
\name{healthlake_create_fhir_datastore}
\alias{healthlake_create_fhir_datastore}
\title{Creates a Data Store that can ingest and export FHIR formatted data}
\usage{
healthlake_create_fhir_datastore(
  DatastoreName = NULL,
  DatastoreTypeVersion,
  SseConfiguration = NULL,
  PreloadDataConfig = NULL,
  ClientToken = NULL,
  Tags = NULL
)
}
\arguments{
\item{DatastoreName}{The user generated name for the Data Store.}

\item{DatastoreTypeVersion}{[required] The FHIR version of the Data Store. The only supported version is R4.}

\item{SseConfiguration}{The server-side encryption key configuration for a customer provided
encryption key specified for creating a Data Store.}

\item{PreloadDataConfig}{Optional parameter to preload data upon creation of the Data Store.
Currently, the only supported preloaded data is synthetic data generated
from Synthea.}

\item{ClientToken}{Optional user provided token used for ensuring idempotency.}

\item{Tags}{Resource tags that are applied to a Data Store when it is created.}
}
\description{
Creates a Data Store that can ingest and export FHIR formatted data.

See \url{https://paws-r.github.io/docs/healthlake/create_fhir_datastore.html} for full documentation.
}
\keyword{internal}