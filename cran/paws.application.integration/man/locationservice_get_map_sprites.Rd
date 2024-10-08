% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locationservice_operations.R
\name{locationservice_get_map_sprites}
\alias{locationservice_get_map_sprites}
\title{Retrieves the sprite sheet corresponding to a map resource}
\usage{
locationservice_get_map_sprites(MapName, FileName, Key = NULL)
}
\arguments{
\item{MapName}{[required] The map resource associated with the sprite file.}

\item{FileName}{[required] The name of the sprite file. Use the following file names for the sprite
sheet:
\itemize{
\item \code{sprites.png}
\item \verb{sprites@2x.png} for high pixel density displays
}

For the JSON document containing image offsets. Use the following file
names:
\itemize{
\item \code{sprites.json}
\item \verb{sprites@2x.json} for high pixel density displays
}}

\item{Key}{The optional \href{https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html}{API key}
to authorize the request.}
}
\description{
Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is a PNG image paired with a JSON document describing the offsets of individual icons that will be displayed on a rendered map.

See \url{https://www.paws-r-sdk.com/docs/locationservice_get_map_sprites/} for full documentation.
}
\keyword{internal}
