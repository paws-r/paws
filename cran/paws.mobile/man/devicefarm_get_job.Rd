% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_get_job}
\alias{devicefarm_get_job}
\title{Gets information about a job}
\usage{
devicefarm_get_job(arn)
}
\arguments{
\item{arn}{[required] The job's ARN.}
}
\description{
Gets information about a job.
}
\section{Request syntax}{
\preformatted{svc$get_job(
  arn = "string"
)
}
}

\examples{
# The following example returns information about a specific job.
\donttest{svc$get_job(
  arn = "arn:aws:devicefarm:us-west-2::job:123-456-EXAMPLE-GUID"
)}

}
\keyword{internal}