# Return a POSIXct timestamp given a string and a format.
as_timestamp <- function(x, format, tz = "GMT") {
  if (length(x) == 0) {
    result <- numeric(0)
    class(result) <- c("POSIXct", "POSIXt")
    attr(result, "tzone") <- tz
    return(result)
  }
  if (length(x) == 1 && nchar(x) == 0) {
    result <- NA_integer_
    class(result) <- c("POSIXct", "POSIXt")
    attr(result, "tzone") <- tz
    return(result)
  }
  lookup <- c(
    "iso8601" = "%Y-%m-%dT%H:%M:%S",
    "rfc822" = "%a, %d %b %Y %H:%M:%S"
  )
  result <- as.POSIXct(x, tz = tz, format = lookup[format])
  return(result)
}
