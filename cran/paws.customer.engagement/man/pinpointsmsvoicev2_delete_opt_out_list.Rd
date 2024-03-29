% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointsmsvoicev2_operations.R
\name{pinpointsmsvoicev2_delete_opt_out_list}
\alias{pinpointsmsvoicev2_delete_opt_out_list}
\title{Deletes an existing opt-out list}
\usage{
pinpointsmsvoicev2_delete_opt_out_list(OptOutListName)
}
\arguments{
\item{OptOutListName}{[required] The OptOutListName or OptOutListArn of the OptOutList to delete. You can
use
\code{\link[=pinpointsmsvoicev2_describe_opt_out_lists]{describe_opt_out_lists}} to
find the values for OptOutListName and OptOutListArn.}
}
\description{
Deletes an existing opt-out list. All opted out phone numbers in the opt-out list are deleted.

See \url{https://www.paws-r-sdk.com/docs/pinpointsmsvoicev2_delete_opt_out_list/} for full documentation.
}
\keyword{internal}
