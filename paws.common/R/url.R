#' @include struct.R
NULL

#' @importFrom curl curl_unescape

# A Url object stores a parse URL.
Url <- struct(
  scheme = "",
  opaque = "",
  user = "",
  host = "",
  path = "",
  raw_path = "",
  force_query = FALSE,
  raw_query = "",
  fragment = ""
)

# Parse a URL into a Url object.
# TODO: Finish.
parse_url <- function(url) {
  p <- httr::parse_url(url)
  if (is.null(p$scheme)) p$scheme <- ""
  if (is.null(p$hostname)) p$hostname <- ""
  if (!is.null(p$port)) p$hostname <- paste0(p$hostname, ":", p$port)
  raw_path <- p$path
  if (raw_path == "") raw_path <- "/"
  else if (substr(raw_path, 1, 1) != "/") raw_path <- paste0("/", raw_path)
  path <- unescape(raw_path)
  escaped_path <- escape(raw_path, "encodePath")
  if (escaped_path == raw_path) raw_path <- ""
  u <- Url(
    scheme = p$scheme,
    host = p$hostname,
    path = path,
    raw_path = raw_path,
    raw_query = build_query_string(p$query),
  )
  return(u)
}

# Build a URL from a Url object.
# <scheme>://<net_loc>/<path>;<params>?<query>#<fragment>
build_url <- function(url) {
  if (nzchar(url$scheme) && nzchar(url$host)) {
    l <- paste0(url$scheme, "://", url$host)
  } else {
    return("")
  }
  prefix <- function(prefix, x) {if (nzchar(x)) paste0(prefix, x)}
  l <- paste0(l, if (nzchar(url$raw_path)) url$raw_path else url$path,
    prefix("?", url$raw_query), prefix("#", url$fragment)
  )
  return(l)
}

# helper function to filter out empty elements within build_query_string
query_empty <- function(params) {(is.null(params) || length(params) == 0)}

# Encode a list into a query string.
# e.g. `list(bar = "baz", foo = "qux")` -> "bar=baz&foo=qux".
build_query_string <- function(params){
  # Remove empty elements from params
  params_filter <- Filter(Negate(query_empty), params)

  # Exit function if params_filter is empty to prevent Warning message:
  # In is.na(x) : is.na() applied to non-(list or vector) of type 'NULL'
  # in older versions of R
  if (query_empty(params_filter)) return("")

  # convert query elements and escape them
  params_filter <- lapply(
    params_filter, function(element) {query_escape(query_convert(element))}
  )

  # Build query string for each element
  params <- lapply(
    sort(names(params_filter)), function(name) {
      paste(name, params_filter[[name]], sep = "=", collapse = "&")
  })

  # build query string
  return(paste(params, collapse = "&"))
}

# Decode a query string into a list.
# e.g. `parse_query_string("bar=baz&foo=qux")` -> `list(bar = "baz", foo = "qux")`
parse_query_string <- function(query) {
  result <- list()
  for (el in strsplit(query, "&")[[1]]) {
    pair <- strsplit(el, "=")[[1]]
    key <- pair[1]
    value <- if(length(pair)>1){pair[2]}else{""}
    result[[key]] <- c(result[[key]], query_unescape(value))
  }
  return(result)
}

# Add the key/value pairs in `params` to a query string in `query_string`,
# and return a new query string. Keys in the query string that are also in
# params will be overwritten with the new value from params.
# e.g. `update_query_string("a=1&b=2", list(b = 3, c = 4))` -> "a=1&b=3&c=4"
update_query_string <- function(query_string, params) {
  result <- parse_query_string(query_string)
  for (key in names(params)) {
    result[[key]] <- params[[key]]
  }
  return(build_query_string(result))
}

# Escape strings so they can be safely included in a URL query.
query_escape <- function(string) {
  return(escape(string, "encodeQueryComponent"))
}

# Escape strings so they can be safely included in a URL.
escape <- function(string, mode){
  # Ensure anything going to paws_url_encoder is a string
  string <- as.character(string)
  # base characters that won't be encoded
  if (mode == "encodeHost" || mode == "encodeZone") {
    # host and zone characters that won't be encoded
    host_zone_pattern <- "][!$&'()*+,;=:<>\""
    return(
      paws_url_encoder(string, host_zone_pattern))
  }
  # path and path segment characters that won't be encoded
  path_pattern <- "$&+,/;:=?@"

  if (mode == "encodePath") {
    # remove character ? from pattern so that it can be encoded
    rm_pattern <- "[?]"
    pattern <- gsub(rm_pattern, "", path_pattern)
    return(paws_url_encoder(string, pattern))
  }
  if (mode == "encodePathSegment") {
    # remove character /;,? from pattern so that it can be encoded
    rm_pattern <- "[/;,?]"
    pattern <- gsub(rm_pattern, "", path_pattern)
    return(paws_url_encoder(string, pattern))
  }
  if (mode == "encodeQueryComponent") {
    # escape string using base_url_encode
    return(paws_url_encoder(string))
  }
  if (mode == "encodeFragment") {
    return(paws_url_encoder(string, path_pattern))
  }
  return(paws_url_encoder(string))
}

# Un-escape a string.
# TODO: Complete.
unescape <- function(string) {
  return(curl_unescape(string))
}

# The inverse of query_escape: convert the encoded string back to the original,
# e.g. "%20" -> " ".
# TODO: Complete.
query_unescape <- function(string) {
  return(unescape(string))
}

#
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

# Convert a value to be used in a query string.
query_convert <- function(value) {
  # find elements that are logical
  found <- as.logical(unlist(lapply(value, is.logical)))
  # convert logical elements
  value[which(found)] <- tolower(value[which(found)])
  # convert non-logical elements
  value[which(!found)] <- as.character(value[which(!found)])
  return(value)
}
