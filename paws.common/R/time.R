# Returns a date value, given the number of seconds since Jan 1, 1970.
unix_time <- function(sec, nsec = 0) {
  # origin: 1970-01-01 00:00:00
  return(.POSIXct(as.numeric(sec), tz = "GMT"))
}
