% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_create_traffic_policy_instance}
\alias{route53_create_traffic_policy_instance}
\title{Creates resource record sets in a specified hosted zone based on the
settings in a specified traffic policy version}
\usage{
route53_create_traffic_policy_instance(
  HostedZoneId,
  Name,
  TTL,
  TrafficPolicyId,
  TrafficPolicyVersion
)
}
\arguments{
\item{HostedZoneId}{[required] The ID of the hosted zone that you want Amazon Route 53 to create
resource record sets in by using the configuration in a traffic policy.}

\item{Name}{[required] The domain name (such as example.com) or subdomain name (such as
www.example.com) for which Amazon Route 53 responds to DNS queries by
using the resource record sets that Route 53 creates for this traffic
policy instance.}

\item{TTL}{[required] (Optional) The TTL that you want Amazon Route 53 to assign to all of the
resource record sets that it creates in the specified hosted zone.}

\item{TrafficPolicyId}{[required] The ID of the traffic policy that you want to use to create resource
record sets in the specified hosted zone.}

\item{TrafficPolicyVersion}{[required] The version of the traffic policy that you want to use to create
resource record sets in the specified hosted zone.}
}
\description{
Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version. In addition, \code{\link[=route53_create_traffic_policy_instance]{create_traffic_policy_instance}} associates the resource record sets with a specified domain name (such as example.com) or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for the domain or subdomain name by using the resource record sets that \code{\link[=route53_create_traffic_policy_instance]{create_traffic_policy_instance}} created.

See \url{https://www.paws-r-sdk.com/docs/route53_create_traffic_policy_instance/} for full documentation.
}
\keyword{internal}
