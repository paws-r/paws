% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_get_operation_detail}
\alias{route53domains_get_operation_detail}
\title{This operation returns the current status of an operation that is not
completed}
\usage{
route53domains_get_operation_detail(OperationId)
}
\arguments{
\item{OperationId}{[required] The identifier for the operation for which you want to get the status.
Route 53 returned the identifier in the response to the original
request.}
}
\value{
A list with the following syntax:\preformatted{list(
  OperationId = "string",
  Status = "SUBMITTED"|"IN_PROGRESS"|"ERROR"|"SUCCESSFUL"|"FAILED",
  Message = "string",
  DomainName = "string",
  Type = "REGISTER_DOMAIN"|"DELETE_DOMAIN"|"TRANSFER_IN_DOMAIN"|"UPDATE_DOMAIN_CONTACT"|"UPDATE_NAMESERVER"|"CHANGE_PRIVACY_PROTECTION"|"DOMAIN_LOCK"|"ENABLE_AUTORENEW"|"DISABLE_AUTORENEW"|"ADD_DNSSEC"|"REMOVE_DNSSEC"|"EXPIRE_DOMAIN"|"TRANSFER_OUT_DOMAIN"|"CHANGE_DOMAIN_OWNER"|"RENEW_DOMAIN"|"PUSH_DOMAIN"|"INTERNAL_TRANSFER_OUT_DOMAIN"|"INTERNAL_TRANSFER_IN_DOMAIN",
  SubmittedDate = as.POSIXct(
    "2015-01-01"
  )
)
}
}
\description{
This operation returns the current status of an operation that is not
completed.
}
\section{Request syntax}{
\preformatted{svc$get_operation_detail(
  OperationId = "string"
)
}
}

\keyword{internal}
