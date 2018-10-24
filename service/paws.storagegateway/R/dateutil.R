# Return a POSIXct timestamp given a string and a format.
# TODO: Allow setting time zone.
as_timestamp <- function(x, format, tz = "GMT") {
  if (length(x) == 0) {
    return(structure(numeric(0), class = c("POSIXct", "POSIXt")))
  }
  lookup <- c(
    "iso8601" = "%Y-%m-%dT%H:%M:%S",
    "rfc822" = "%a, %d %b %Y %H:%M:%S"
  )
  result <- as.POSIXct(x, tz = tz, format = lookup[format])
  return(result)
}
