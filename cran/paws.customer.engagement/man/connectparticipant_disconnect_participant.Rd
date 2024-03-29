% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connectparticipant_operations.R
\name{connectparticipant_disconnect_participant}
\alias{connectparticipant_disconnect_participant}
\title{Disconnects a participant}
\usage{
connectparticipant_disconnect_participant(ClientToken = NULL, ConnectionToken)
}
\arguments{
\item{ClientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services SDK
populates this field. For more information about idempotency, see
\href{https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/}{Making retries safe with idempotent APIs}.}

\item{ConnectionToken}{[required] The authentication token associated with the participant's connection.}
}
\description{
Disconnects a participant.

See \url{https://www.paws-r-sdk.com/docs/connectparticipant_disconnect_participant/} for full documentation.
}
\keyword{internal}
