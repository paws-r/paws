# Returns a date value, given the number of seconds since Jan 1, 1970.
unix_time <- function(sec, nsec = 0) {
  time <- ISOdatetime(1970, 1, 1, 0, 0, 0, tz = "GMT") + sec
  return(time)
}
