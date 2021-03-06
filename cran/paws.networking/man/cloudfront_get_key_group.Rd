% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_get_key_group}
\alias{cloudfront_get_key_group}
\title{Gets a key group, including the date and time when the key group was
last modified}
\usage{
cloudfront_get_key_group(Id)
}
\arguments{
\item{Id}{[required] The identifier of the key group that you are getting. To get the
identifier, use \code{\link[=cloudfront_list_key_groups]{list_key_groups}}.}
}
\value{
A list with the following syntax:\preformatted{list(
  KeyGroup = list(
    Id = "string",
    LastModifiedTime = as.POSIXct(
      "2015-01-01"
    ),
    KeyGroupConfig = list(
      Name = "string",
      Items = list(
        "string"
      ),
      Comment = "string"
    )
  ),
  ETag = "string"
)
}
}
\description{
Gets a key group, including the date and time when the key group was
last modified.

To get a key group, you must provide the key group’s identifier. If the
key group is referenced in a distribution’s cache behavior, you can get
the key group’s identifier using
\code{\link[=cloudfront_list_distributions]{list_distributions}} or
\code{\link[=cloudfront_get_distribution]{get_distribution}}. If the key group is
not referenced in a cache behavior, you can get the identifier using
\code{\link[=cloudfront_list_key_groups]{list_key_groups}}.
}
\section{Request syntax}{
\preformatted{svc$get_key_group(
  Id = "string"
)
}
}

\keyword{internal}
