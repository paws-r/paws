# Returns an Error object.
Error <- struct(
  code = "",
  message = "",
  orig_err = ""
)

# Creates a string for printing for a given Error object.
format_error <- function(e) {
  s <- e$code
  if (!is.null(e$message) && e$message != "") {
    s <- sprintf("%s: %s", e$code, e$message)
  }
  return(s)
}
