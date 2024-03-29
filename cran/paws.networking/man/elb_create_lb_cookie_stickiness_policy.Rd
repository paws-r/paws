% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elb_operations.R
\name{elb_create_lb_cookie_stickiness_policy}
\alias{elb_create_lb_cookie_stickiness_policy}
\title{Generates a stickiness policy with sticky session lifetimes controlled
by the lifetime of the browser (user-agent) or a specified expiration
period}
\usage{
elb_create_lb_cookie_stickiness_policy(
  LoadBalancerName,
  PolicyName,
  CookieExpirationPeriod = NULL
)
}
\arguments{
\item{LoadBalancerName}{[required] The name of the load balancer.}

\item{PolicyName}{[required] The name of the policy being created. Policy names must consist of
alphanumeric characters and dashes (-). This name must be unique within
the set of policies for this load balancer.}

\item{CookieExpirationPeriod}{The time period, in seconds, after which the cookie should be considered
stale. If you do not specify this parameter, the default value is 0,
which indicates that the sticky session should last for the duration of
the browser session.}
}
\description{
Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.

See \url{https://www.paws-r-sdk.com/docs/elb_create_lb_cookie_stickiness_policy/} for full documentation.
}
\keyword{internal}
