% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directoryservice_operations.R
\name{directoryservice_verify_trust}
\alias{directoryservice_verify_trust}
\title{AWS Directory Service for Microsoft Active Directory allows you to
configure and verify trust relationships}
\usage{
directoryservice_verify_trust(TrustId)
}
\arguments{
\item{TrustId}{[required] The unique Trust ID of the trust relationship to verify.}
}
\description{
AWS Directory Service for Microsoft Active Directory allows you to
configure and verify trust relationships.
}
\details{
This action verifies a trust relationship between your AWS Managed
Microsoft AD directory and an external domain.
}
\section{Request syntax}{
\preformatted{svc$verify_trust(
  TrustId = "string"
)
}
}

\keyword{internal}