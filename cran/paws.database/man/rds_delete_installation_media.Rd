% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_delete_installation_media}
\alias{rds_delete_installation_media}
\title{Deletes the installation medium for a DB engine that requires an
on-premises customer provided license, such as Microsoft SQL Server}
\usage{
rds_delete_installation_media(InstallationMediaId)
}
\arguments{
\item{InstallationMediaId}{[required] The installation medium ID.}
}
\value{
A list with the following syntax:\preformatted{list(
  InstallationMediaId = "string",
  CustomAvailabilityZoneId = "string",
  Engine = "string",
  EngineVersion = "string",
  EngineInstallationMediaPath = "string",
  OSInstallationMediaPath = "string",
  Status = "string",
  FailureCause = list(
    Message = "string"
  )
)
}
}
\description{
Deletes the installation medium for a DB engine that requires an
on-premises customer provided license, such as Microsoft SQL Server.
}
\section{Request syntax}{
\preformatted{svc$delete_installation_media(
  InstallationMediaId = "string"
)
}
}

\keyword{internal}
