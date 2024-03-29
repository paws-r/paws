% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_delete_resolver_rule}
\alias{route53resolver_delete_resolver_rule}
\title{Deletes a Resolver rule}
\usage{
route53resolver_delete_resolver_rule(ResolverRuleId)
}
\arguments{
\item{ResolverRuleId}{[required] The ID of the Resolver rule that you want to delete.}
}
\description{
Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you associated the Resolver rule with. For more information, see \code{\link[=route53resolver_disassociate_resolver_rule]{disassociate_resolver_rule}}.

See \url{https://www.paws-r-sdk.com/docs/route53resolver_delete_resolver_rule/} for full documentation.
}
\keyword{internal}
