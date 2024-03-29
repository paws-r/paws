% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_batch_put_scheduled_update_group_action}
\alias{autoscaling_batch_put_scheduled_update_group_action}
\title{Creates or updates one or more scheduled scaling actions for an Auto
Scaling group}
\usage{
autoscaling_batch_put_scheduled_update_group_action(
  AutoScalingGroupName,
  ScheduledUpdateGroupActions
)
}
\arguments{
\item{AutoScalingGroupName}{[required] The name of the Auto Scaling group.}

\item{ScheduledUpdateGroupActions}{[required] One or more scheduled actions. The maximum number allowed is 50.}
}
\description{
Creates or updates one or more scheduled scaling actions for an Auto Scaling group.

See \url{https://www.paws-r-sdk.com/docs/autoscaling_batch_put_scheduled_update_group_action/} for full documentation.
}
\keyword{internal}
