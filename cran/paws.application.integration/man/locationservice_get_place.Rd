% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locationservice_operations.R
\name{locationservice_get_place}
\alias{locationservice_get_place}
\title{Finds a place by its unique ID}
\usage{
locationservice_get_place(IndexName, Key = NULL, Language = NULL, PlaceId)
}
\arguments{
\item{IndexName}{[required] The name of the place index resource that you want to use for the
search.}

\item{Key}{The optional \href{https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html}{API key}
to authorize the request.}

\item{Language}{The preferred language used to return results. The value must be a valid
BCP 47 language tag, for example, \code{en} for English.

This setting affects the languages used in the results, but not the
results themselves. If no language is specified, or not supported for a
particular result, the partner automatically chooses a language for the
result.

For an example, we'll use the Greek language. You search for a location
around Athens, Greece, with the \code{language} parameter set to \code{en}. The
\code{city} in the results will most likely be returned as \code{Athens}.

If you set the \code{language} parameter to \code{el}, for Greek, then the \code{city}
in the results will more likely be returned as \eqn{A\Theta\eta\nu\alpha}.

If the data provider does not have a value for Greek, the result will be
in a language that the provider does support.}

\item{PlaceId}{[required] The identifier of the place to find.

While you can use PlaceID in subsequent requests, PlaceID is not
intended to be a permanent identifier and the ID can change between
consecutive API calls. Please see the following PlaceID behaviour for
each data provider:
\itemize{
\item Esri: Place IDs will change every quarter at a minimum. The typical
time period for these changes would be March, June, September, and
December. Place IDs might also change between the typical quarterly
change but that will be much less frequent.
\item HERE: We recommend that you cache data for no longer than a week to
keep your data data fresh. You can assume that less than 1\% ID
shifts will release over release which is approximately 1 - 2 times
per week.
\item Grab: Place IDs can expire or become invalid in the following
situations.
\itemize{
\item Data operations: The POI may be removed from Grab POI database
by Grab Map Ops based on the ground-truth, such as being closed
in the real world, being detected as a duplicate POI, or having
incorrect information. Grab will synchronize data to the
Waypoint environment on weekly basis.
\item Interpolated POI: Interpolated POI is a temporary POI generated
in real time when serving a request, and it will be marked as
derived in the \code{place.result_type} field in the response. The
information of interpolated POIs will be retained for at least
30 days, which means that within 30 days, you are able to obtain
POI details by Place ID from Place Details API. After 30 days,
the interpolated POIs(both Place ID and details) may expire and
inaccessible from the Places Details API.
}
}}
}
\description{
Finds a place by its unique ID. A \code{PlaceId} is returned by other search operations.

See \url{https://www.paws-r-sdk.com/docs/locationservice_get_place/} for full documentation.
}
\keyword{internal}
