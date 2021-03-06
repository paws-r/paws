% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticache_operations.R
\name{elasticache_create_cache_parameter_group}
\alias{elasticache_create_cache_parameter_group}
\title{Creates a new Amazon ElastiCache cache parameter group}
\usage{
elasticache_create_cache_parameter_group(CacheParameterGroupName,
  CacheParameterGroupFamily, Description)
}
\arguments{
\item{CacheParameterGroupName}{[required] A user-specified name for the cache parameter group.}

\item{CacheParameterGroupFamily}{[required] The name of the cache parameter group family that the cache parameter
group can be used with.

Valid values are: \code{memcached1.4} | \code{memcached1.5} | \code{memcached1.6} |
\code{redis2.6} | \code{redis2.8} | \code{redis3.2} | \code{redis4.0} | \code{redis5.0} |
\code{redis6.x} |}

\item{Description}{[required] A user-specified description for the cache parameter group.}
}
\value{
A list with the following syntax:\preformatted{list(
  CacheParameterGroup = list(
    CacheParameterGroupName = "string",
    CacheParameterGroupFamily = "string",
    Description = "string",
    IsGlobal = TRUE|FALSE,
    ARN = "string"
  )
)
}
}
\description{
Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
cache parameter group is a collection of parameters and their values
that are applied to all of the nodes in any cluster or replication group
using the CacheParameterGroup.

A newly created CacheParameterGroup is an exact duplicate of the default
parameter group for the CacheParameterGroupFamily. To customize the
newly created CacheParameterGroup you can change the values of specific
parameters. For more information, see:
\itemize{
\item \code{\link[=elasticache_modify_cache_parameter_group]{modify_cache_parameter_group}}
in the ElastiCache API Reference.
\item \href{https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html}{Parameters and Parameter Groups}
in the ElastiCache User Guide.
}
}
\section{Request syntax}{
\preformatted{svc$create_cache_parameter_group(
  CacheParameterGroupName = "string",
  CacheParameterGroupFamily = "string",
  Description = "string"
)
}
}

\keyword{internal}
