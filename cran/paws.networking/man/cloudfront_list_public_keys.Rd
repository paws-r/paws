% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_list_public_keys}
\alias{cloudfront_list_public_keys}
\title{List all public keys that have been added to CloudFront for this account}
\usage{
cloudfront_list_public_keys(Marker = NULL, MaxItems = NULL)
}
\arguments{
\item{Marker}{Use this when paginating results to indicate where to begin in your list
of public keys. The results include public keys in the list that occur
after the marker. To get the next page of results, set the \code{Marker} to
the value of the \code{NextMarker} from the current page's response (which is
also the ID of the last public key on that page).}

\item{MaxItems}{The maximum number of public keys you want in the response body.}
}
\description{
List all public keys that have been added to CloudFront for this account.

See \url{https://www.paws-r-sdk.com/docs/cloudfront_list_public_keys/} for full documentation.
}
\keyword{internal}
