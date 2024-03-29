% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_update_stack}
\alias{appstream_update_stack}
\title{Updates the specified fields for the specified stack}
\usage{
appstream_update_stack(
  DisplayName = NULL,
  Description = NULL,
  Name,
  StorageConnectors = NULL,
  DeleteStorageConnectors = NULL,
  RedirectURL = NULL,
  FeedbackURL = NULL,
  AttributesToDelete = NULL,
  UserSettings = NULL,
  ApplicationSettings = NULL,
  AccessEndpoints = NULL,
  EmbedHostDomains = NULL,
  StreamingExperienceSettings = NULL
)
}
\arguments{
\item{DisplayName}{The stack name to display.}

\item{Description}{The description to display.}

\item{Name}{[required] The name of the stack.}

\item{StorageConnectors}{The storage connectors to enable.}

\item{DeleteStorageConnectors}{Deletes the storage connectors currently enabled for the stack.}

\item{RedirectURL}{The URL that users are redirected to after their streaming session ends.}

\item{FeedbackURL}{The URL that users are redirected to after they choose the Send Feedback
link. If no URL is specified, no Send Feedback link is displayed.}

\item{AttributesToDelete}{The stack attributes to delete.}

\item{UserSettings}{The actions that are enabled or disabled for users during their
streaming sessions. By default, these actions are enabled.}

\item{ApplicationSettings}{The persistent application settings for users of a stack. When these
settings are enabled, changes that users make to applications and
Windows settings are automatically saved after each session and applied
to the next session.}

\item{AccessEndpoints}{The list of interface VPC endpoint (interface endpoint) objects. Users
of the stack can connect to AppStream 2.0 only through the specified
endpoints.}

\item{EmbedHostDomains}{The domains where AppStream 2.0 streaming sessions can be embedded in an
iframe. You must approve the domains that you want to host embedded
AppStream 2.0 streaming sessions.}

\item{StreamingExperienceSettings}{The streaming protocol you want your stack to prefer. This can be UDP or
TCP. Currently, UDP is only supported in the Windows native client.}
}
\description{
Updates the specified fields for the specified stack.

See \url{https://www.paws-r-sdk.com/docs/appstream_update_stack/} for full documentation.
}
\keyword{internal}
