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
  p <- paws_url_parse(url)
  if (is.null(p$hostname)) p$hostname <- ""
  if (!is.null(p$port)) p$hostname <- paste0(p$hostname, ":", p$port)
  raw_path <- p$path
  if (is.null(raw_path)) {
    raw_path <- "/"
  } else if (substr(raw_path, 1, 1) != "/") raw_path <- paste0("/", raw_path)
  path <- unescape(raw_path)
  escaped_path <- escape(raw_path, "encodePath")
  if (escaped_path == raw_path) raw_path <- ""
  u <- Url(
    scheme = p$scheme %||% "",
    host = p$hostname,
    path = path,
    raw_path = raw_path,
    raw_query = build_query_string(p$query),
  )
  return(u)
}

# Developed from httr2:
# https://github.com/r-lib/httr2/blob/main/R/url.R#L26-L67
paws_url_parse <- function(url) {
  pieces <- str_match(url, "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?")
  scheme <- pieces[[2]]
  authority <- pieces[[4]]
  path <- pieces[[5]]
  query <- pieces[[7]]
  if (!is.null(query)) {
    query <- parse_query_string(query)
  }
  fragment <- pieces[[9]]
  pieces <- str_match(authority %||% "", "^(([^@]+)@)?([^:]+)?(:([^#]+))?")
  userinfo <- pieces[[2]]
  if (!is.null(userinfo)) {
    if (grepl(":", userinfo)) {
      userinfo <- parse_in_half(userinfo, ":")
    } else {
      userinfo <- list(userinfo, NULL)
    }
  }
  hostname <- pieces[[3]]
  port <- pieces[[5]]
  return(
    list(
      scheme = scheme,
      hostname = hostname,
      port = port,
      path = path,
      query = query,
      fragment = fragment,
      username = userinfo[[1]],
      password = userinfo[[2]]
    )
  )
}

# Build a URL from a Url object.
# <scheme>://<net_loc>/<path>;<params>?<query>#<fragment>
build_url <- function(url) {
  if (nzchar(url$scheme) && nzchar(url$host)) {
    l <- paste0(url$scheme, "://", url$host)
  } else {
    return("")
  }
  prefix <- function(prefix, x) {
    if (nzchar(x)) paste0(prefix, x)
  }
  l <- paste0(
    l, if (nzchar(url$raw_path)) url$raw_path else url$path,
    prefix("?", url$raw_query), prefix("#", url$fragment)
  )
  return(l)
}

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
    param_names[found_multi], function(nm) {
      paste(nm, curl::curl_escape(params[[nm]]), sep = "=", collapse = "&")
    },
    FUN.VALUE = ""
  )
  params[!found_multi] <- paste(
    param_names[!found_multi], curl::curl_escape(params[!found_multi]),
    sep = "="
  )
  return(paste(params[char_sort(param_names)], collapse = "&"))
}

# Decode a query string into a list.
# e.g. `parse_query_string("bar=baz&foo=qux")` -> `list(bar = "baz", foo = "qux")`
parse_query_string <- function(query) {
  query <- gsub("^\\?", "", query)
  params <- parse_in_half(strsplit(query, "&")[[1]], "=")
  if (length(params) == 0) {
    return(NULL)
  }
  out <- as.list(curl::curl_unescape(params[, 2]))
  names(out) <- curl::curl_unescape(params[, 1])
  return(out)
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
  # Ensure anything going to paws_url_encoder is a string
  string <- as.character(string)
  # base characters that won't be encoded
  if (mode == "encodeHost" || mode == "encodeZone") {
    # host and zone characters that won't be encoded
    host_zone_pattern <- "][!$&'()*+,;=:<>\""
    return(
      paws_url_encoder(string, host_zone_pattern)
    )
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
