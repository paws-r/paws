% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/panorama_operations.R
\name{panorama_describe_package_version}
\alias{panorama_describe_package_version}
\title{Returns information about a package version}
\usage{
panorama_describe_package_version(
  OwnerAccount = NULL,
  PackageId,
  PackageVersion,
  PatchVersion = NULL
)
}
\arguments{
\item{OwnerAccount}{The version's owner account.}

\item{PackageId}{[required] The version's ID.}

\item{PackageVersion}{[required] The version's version.}

\item{PatchVersion}{The version's patch version.}
}
\description{
Returns information about a package version.

See \url{https://www.paws-r-sdk.com/docs/panorama_describe_package_version/} for full documentation.
}
\keyword{internal}
