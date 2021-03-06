% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elbv2_operations.R
\name{elbv2_delete_target_group}
\alias{elbv2_delete_target_group}
\title{Deletes the specified target group}
\usage{
elbv2_delete_target_group(TargetGroupArn)
}
\arguments{
\item{TargetGroupArn}{[required] The Amazon Resource Name (ARN) of the target group.}
}
\value{
An empty list.
}
\description{
Deletes the specified target group.

You can delete a target group if it is not referenced by any actions.
Deleting a target group also deletes any associated health checks.
Deleting a target group does not affect its registered targets. For
example, any EC2 instances continue to run until you stop or terminate
them.
}
\section{Request syntax}{
\preformatted{svc$delete_target_group(
  TargetGroupArn = "string"
)
}
}

\examples{
\dontrun{
# This example deletes the specified target group.
svc$delete_target_group(
  TargetGroupArn = "arn:aws:elasticloadbalancing:us-west-2:123456789012:tar..."
)
}

}
\keyword{internal}
