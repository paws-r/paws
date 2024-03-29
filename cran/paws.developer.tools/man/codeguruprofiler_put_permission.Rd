% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeguruprofiler_operations.R
\name{codeguruprofiler_put_permission}
\alias{codeguruprofiler_put_permission}
\title{Adds permissions to a profiling group's resource-based policy that are
provided using an action group}
\usage{
codeguruprofiler_put_permission(
  actionGroup,
  principals,
  profilingGroupName,
  revisionId = NULL
)
}
\arguments{
\item{actionGroup}{[required] Specifies an action group that contains permissions to add to a
profiling group resource. One action group is supported,
\code{agentPermissions}, which grants permission to perform actions required
by the profiling agent,
\code{\link[=codeguruprofiler_configure_agent]{configure_agent}} and
\code{\link[=codeguruprofiler_post_agent_profile]{post_agent_profile}} permissions.}

\item{principals}{[required] A list ARNs for the roles and users you want to grant access to the
profiling group. Wildcards are not are supported in the ARNs.}

\item{profilingGroupName}{[required] The name of the profiling group to grant access to.}

\item{revisionId}{A universally unique identifier (UUID) for the revision of the policy
you are adding to the profiling group. Do not specify this when you add
permissions to a profiling group for the first time. If a policy already
exists on the profiling group, you must specify the \code{revisionId}.}
}
\description{
Adds permissions to a profiling group's resource-based policy that are provided using an action group. If a profiling group doesn't have a resource-based policy, one is created for it using the permissions in the action group and the roles and users in the \code{principals} parameter.

See \url{https://www.paws-r-sdk.com/docs/codeguruprofiler_put_permission/} for full documentation.
}
\keyword{internal}
