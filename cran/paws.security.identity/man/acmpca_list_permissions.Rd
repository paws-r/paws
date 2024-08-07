% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acmpca_operations.R
\name{acmpca_list_permissions}
\alias{acmpca_list_permissions}
\title{List all permissions on a private CA, if any, granted to the Certificate
Manager (ACM) service principal (acm}
\usage{
acmpca_list_permissions(
  MaxResults = NULL,
  NextToken = NULL,
  CertificateAuthorityArn
)
}
\arguments{
\item{MaxResults}{When paginating results, use this parameter to specify the maximum
number of items to return in the response. If additional items exist
beyond the number you specify, the \strong{NextToken} element is sent in the
response. Use this \strong{NextToken} value in a subsequent request to
retrieve additional items.}

\item{NextToken}{When paginating results, use this parameter in a subsequent request
after you receive a response with truncated results. Set it to the value
of \strong{NextToken} from the response you just received.}

\item{CertificateAuthorityArn}{[required] The Amazon Resource Number (ARN) of the private CA to inspect. You can
find the ARN by calling the
\code{\link[=acmpca_list_certificate_authorities]{list_certificate_authorities}}
action. This must be of the form:
\code{arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012}
You can get a private CA's ARN by running the
\code{\link[=acmpca_list_certificate_authorities]{list_certificate_authorities}}
action.}
}
\description{
List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service principal (acm.amazonaws.com).

See \url{https://www.paws-r-sdk.com/docs/acmpca_list_permissions/} for full documentation.
}
\keyword{internal}
