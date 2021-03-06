% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_list_key_groups}
\alias{cloudfront_list_key_groups}
\title{Gets a list of key groups}
\usage{
cloudfront_list_key_groups(Marker, MaxItems)
}
\arguments{
\item{Marker}{Use this field when paginating results to indicate where to begin in
your list of key groups. The response includes key groups in the list
that occur after the marker. To get the next page of the list, set this
field’s value to the value of \code{NextMarker} from the current page’s
response.}

\item{MaxItems}{The maximum number of key groups that you want in the response.}
}
\value{
A list with the following syntax:\preformatted{list(
  KeyGroupList = list(
    NextMarker = "string",
    MaxItems = 123,
    Quantity = 123,
    Items = list(
      list(
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
        )
      )
    )
  )
)
}
}
\description{
Gets a list of key groups.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
\code{NextMarker} value from the current response as the \code{Marker} value in
the subsequent request.
}
\section{Request syntax}{
\preformatted{svc$list_key_groups(
  Marker = "string",
  MaxItems = "string"
)
}
}

\keyword{internal}
