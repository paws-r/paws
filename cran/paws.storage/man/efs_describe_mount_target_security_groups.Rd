% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/efs_operations.R
\name{efs_describe_mount_target_security_groups}
\alias{efs_describe_mount_target_security_groups}
\title{Returns the security groups currently in effect for a mount target}
\usage{
efs_describe_mount_target_security_groups(MountTargetId)
}
\arguments{
\item{MountTargetId}{[required] The ID of the mount target whose security groups you want to retrieve.}
}
\description{
Returns the security groups currently in effect for a mount target. This
operation requires that the network interface of the mount target has
been created and the lifecycle state of the mount target is not
\code{deleted}.
}
\details{
This operation requires permissions for the following actions:
\itemize{
\item \code{elasticfilesystem:DescribeMountTargetSecurityGroups} action on the
mount target's file system.
\item \code{ec2:DescribeNetworkInterfaceAttribute} action on the mount
target's network interface.
}
}
\section{Request syntax}{
\preformatted{svc$describe_mount_target_security_groups(
  MountTargetId = "string"
)
}
}

\examples{
# This operation describes all of the security groups for a file system's
# mount target.
\donttest{svc$describe_mount_target_security_groups(
  MountTargetId = "fsmt-12340abc"
)}

}
\keyword{internal}