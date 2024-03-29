% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces_operations.R
\name{workspaces_update_workspace_image_permission}
\alias{workspaces_update_workspace_image_permission}
\title{Shares or unshares an image with one account in the same Amazon Web
Services Region by specifying whether that account has permission to
copy the image}
\usage{
workspaces_update_workspace_image_permission(
  ImageId,
  AllowCopyImage,
  SharedAccountId
)
}
\arguments{
\item{ImageId}{[required] The identifier of the image.}

\item{AllowCopyImage}{[required] The permission to copy the image. This permission can be revoked only
after an image has been shared.}

\item{SharedAccountId}{[required] The identifier of the Amazon Web Services account to share or unshare
the image with.

Before sharing the image, confirm that you are sharing to the correct
Amazon Web Services account ID.}
}
\description{
Shares or unshares an image with one account in the same Amazon Web Services Region by specifying whether that account has permission to copy the image. If the copy image permission is granted, the image is shared with that account. If the copy image permission is revoked, the image is unshared with the account.

See \url{https://www.paws-r-sdk.com/docs/workspaces_update_workspace_image_permission/} for full documentation.
}
\keyword{internal}
