#' @include struct.R
NULL

#' @importFrom curl curl_unescape

# A Url object stores a parse URL.
Url <- struct(
  scheme = "",
  opaque = "",
  user = "",
  password = "",
  host = "",
  path = "",
  raw_path = "",
  force_query = FALSE,
  raw_query = "",
  fragment = ""
)

# helper function to filter out empty elements within build_query_string
query_empty <- function(params) {
  (is.null(params) || length(params) == 0)
}

# Encode a list into a query string.
# e.g. `list(bar = "baz", foo = "qux")` -> "bar=baz&foo=qux".
build_query_string <- function(params) {
  if (query_empty(params)) {
    return("")
  }
  found_lgl <- vapply(params, is.logical, logical(1))
  params[found_lgl] <- tolower(params[found_lgl])

  # remove nulls
  params <- params[lengths(params) > 0]
  found_multi <- lengths(params) > 1
  param_names <- names(params)

  params[found_multi] <- vapply(
    param_names[found_multi],
    function(nm) {
      paste(nm, paws_url_encoder(as.character(params[[nm]])), sep = "=", collapse = "&")
    },
    FUN.VALUE = ""
  )
  params[!found_multi] <- paste(
    param_names[!found_multi],
    paws_url_encoder(as.character(params[!found_multi])),
    sep = "="
  )
  return(paste(params[char_sort(param_names)], collapse = "&"))
}

# Add the key/value pairs in `params` to a query string in `query_string`,
# and return a new query string. Keys in the query string that are also in
# params will be overwritten with the new value from params.
# e.g. `update_query_string("a=1&b=2", list(b = 3, c = 4))` -> "a=1&b=3&c=4"
update_query_string <- function(query_string, params) {
  result <- parse_query_string(query_string)
  result[names(params)] <- params
  return(build_query_string(result))
}

# Escape strings so they can be safely included in a URL.
escape <- function(string, mode) {
  safe_pattern <- switch(
    mode,
    "encodeHost" = "][!$&'()*+,;=:<>\"",
    "encodeZone" = "][!$&'()*+,;=:<>\"",
    "encodeFragment" = "$&+,/;:=?@",
    "encodePath" = "$&+,/;:=@",
    "encodePathSegment" = "$&+:=@",
    "encodeQueryComponent" = "",
    ""
  )
  return(paws_url_encoder(as.character(string), safe_pattern))
}

# Un-escape a string.
# TODO: Complete.
unescape <- function(string) {
  return(curl_unescape(string))
}

escaped_path <- function(url) {
  if (url$raw_path != "" && valid_encoded_path(url$raw_path)) {
    if (unescape(url$raw_path) == url$path) {
      return(url$raw_path)
    }
  }
  if (url$path == "*") {
    return("*")
  }
  return(escape(url$path, "encodePath"))
}

# Return whether a given path is a valid encoded path, i.e. without characters
# that require escaping.
# TODO: Implement.
valid_encoded_path <- function(path) {
  return(TRUE)
}
