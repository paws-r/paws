#' @include struct.R
NULL

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
  if (url$scheme != "" && url$host != "") {
    l <- paste0(url$scheme, "://", url$host)
  } else {
    return("")
  }
  if (url$raw_path != "") l <- paste0(l, url$raw_path)
  else if (url$path != "") l <- paste0(l, url$path)
  if (url$raw_query != "") l <- paste(l, url$raw_query, sep = "?")
  if (url$fragment != "") l <- paste0(l, "#", url$fragment)
  return(l)
}

# Encode a list into a query string.
# e.g. `list(bar = "baz", foo = "qux")` -> "bar=baz&foo=qux".
build_query_string <- function(params) {
  string = ""
  if (is.null(params) || length(params) == 0) return(string)
  for (key in sort(names(params))) {
    k <- query_escape(key)
    values <- params[[key]]
    for (value in values) {
      v <- query_escape(query_convert(value))
      el <- paste0(k, "=", v)
      if (string != "") {
        string <- paste0(string, "&")
      }
      string <- paste0(string, el)
    }
  }
  return(string)
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
  base_url_encode = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._~-"
  if (mode == "encodeHost" || mode == "encodeZone") {
    ignore_pattern = "][!$&'()*+,;=:<>\""
    pattern = paste0(ignore_pattern, base_url_encode)
    return(
      paws_url_encode(
        string, paste0("[^", pattern, "]")
      ))
  }

  ignore_pattern = "$&+,/;:=?@"
  pattern = paste0(ignore_pattern, base_url_encode)

  if (mode == "encodePath") {
    rm_pattern = "[?]"
    pattern = gsub(rm_pattern, "", pattern)
    return(paws_url_encode(string, paste0("[^", pattern, "]")))
  }
  if (mode == "encodePathSegment") {
    rm_pattern = "[/;,?]"
    pattern = gsub(rm_pattern, "", pattern)
    return(paws_url_encode(string, paste0("[^", pattern, "]")))
  }
  if (mode == "encodeQueryComponent") {
    return(paws_url_encode(gsub(" ", "+", string), paste0("[^", base_url_encode, "]")))
  }
  if (mode == "encodeFragment") {
    return(paws_url_encode(string, paste0("[^", pattern, "]")))
  }
  return(utils::URLencode(string, reserved = TRUE))
}

# Escape characters given a pattern
paws_url_encode = function(string, pattern){
  vapply(string, function(string){
    x <- strsplit(string, "")[[1L]]
    z <- grep(pattern, x)
    if (length(z)) {
      y <- vapply(x[z], function(x) {
        paste0("%", toupper(as.character(charToRaw(x))),collapse = "")
      }, "")
      x[z] <- y
    }
    paste(x, collapse = "")
  }, character(1), USE.NAMES = FALSE)
}

# Un-escape a string.
# TODO: Complete.
unescape <- function(string) {
  return(utils::URLdecode(string))
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
  convert_fn <- as.character
  if (is.logical(value)) {
    convert_fn <- convert_boolean
  }
  string <- convert_fn(value)
  return(string)
}
