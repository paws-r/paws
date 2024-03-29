% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mturk_operations.R
\name{mturk_notify_workers}
\alias{mturk_notify_workers}
\title{The NotifyWorkers operation sends an email to one or more Workers that
you specify with the Worker ID}
\usage{
mturk_notify_workers(Subject, MessageText, WorkerIds)
}
\arguments{
\item{Subject}{[required] The subject line of the email message to send. Can include up to 200
characters.}

\item{MessageText}{[required] The text of the email message to send. Can include up to 4,096
characters}

\item{WorkerIds}{[required] A list of Worker IDs you wish to notify. You can notify upto 100 Workers
at a time.}
}
\description{
The \code{\link[=mturk_notify_workers]{notify_workers}} operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker.

See \url{https://www.paws-r-sdk.com/docs/mturk_notify_workers/} for full documentation.
}
\keyword{internal}
