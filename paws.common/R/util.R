#' Check whether an object is empty
#'
#' Check whether an object is empty, e.g. has no sub-elements, is NA, or is the
#' empty string.
#'
#' @param x An object.
#'
#' @examples
#' is_empty(NA) # TRUE
#' is_empty("") # TRUE
#' is_empty(list()) # TRUE
#' is_empty(list(list())) # TRUE
#'
#' is_empty(1) # FALSE
#' is_empty(list(1)) # FALSE
#' is_empty(list(list(1))) # FALSE
#'
#' @export
is_empty <- function(x) {
  if (is.null(x) || length(x) == 0) {
    return(TRUE)
  }
  UseMethod("is_empty")
}

#' @export
is_empty.character <- function(x) {
  return(is.na(x) || x == "")
}

#' @export
is_empty.raw <- function(x) {
  return(length(x) == 0)
}

# Check if a list of values is empty. If the list is recursive, search the list.
#' @export
is_empty.list <- function(x) {
  return(all(vapply(x, is_empty, FUN.VALUE = logical(1))))
}

#' @export
is_empty.default <- function(x) {
  return(is.na(x))
}

#' Check whether an object is empty for xml builds
#'
#' Check whether an object is empty, e.g. has no sub-elements, is NA
#'
#' @param x An object.
#'
#' @examples
#' is_empty_xml(NA) # TRUE
#' is_empty_xml(list()) # TRUE
#' is_empty_xml(list(list())) # TRUE
#'
#' is_empty_xml(1) # FALSE
#' is_empty_xml("") # FALSE
#' is_empty_xml(list(1)) # FALSE
#' is_empty_xml(list(list(1))) # FALSE
#'
#' @export
is_empty_xml <- function(x) {
  if (is.null(x) || is_empty_logical(x) || is_empty_character(x)) {
    return(TRUE)
  }
  UseMethod("is_empty_xml")
}

#' @export
is_empty_xml.character <- function(x) {
  return(is.na(x))
}

#' @export
is_empty_xml.raw <- is_empty.raw

#' @export
is_empty_xml.list <- function(x) {
  # keep empty lists when parsed from parameters
  # issue: https://github.com/paws-r/paws/issues/537
  if (length(x) == 0) {
    return(FALSE)
  }
  return(all(vapply(x, is_empty_xml, FUN.VALUE = logical(1))))
}

#' @export
is_empty_xml.default <- is_empty.default

is_empty_logical <- function(x) {
  length(x) == 0 & is.logical(x)
}

is_empty_character <- function(x) {
  length(x) == 0 & is.character(x)
}

# Call a function `f` with arguments taken from elements in `data`, including
# only those data elements that correspond to parameters.
# For example:
# f <- function(a) {}
# data <- list(a = "1", b = "2")
# call_with_args(f, data) == f("1")
call_with_args <- function(f, data) {
  args <- methods::formalArgs(f)
  if (is.null(args)) {
    return(f())
  }
  if (!all(args %in% names(data))) {
    stop("A parameter has no corresponding element in `data`.")
  }
  return(do.call(f, as.list(data)[args]))
}

# helper function to make it easy to replace NULLs with default value
`%||%` <- function(x, y) if (is.null(x)) y else x

sort_list <- function(x) {
  if (length(x) == 0) {
    return(x)
  }
  x[char_sort(names(x))]
}

str_match_all <- function(text, pattern) {
  match_loc <- gregexpr(pattern, text, perl = TRUE)[[1]]
  cap_len <- attr(match_loc, "capture.length")
  cap_start <- attr(match_loc, "capture.start")
  cap_end <- cap_start + cap_len - 1
  cap_end[cap_end == -1] <- 0
  substring(text, cap_start, cap_end)
}

str_match <- function(char, pattern) {
  match_loc <- regexpr(pattern, char, perl = TRUE)
  cap_len <- attr(match_loc, "capture.length")
  cap_start <- attr(match_loc, "capture.start")
  cap_end <- cap_start + cap_len - 1
  cap_end[cap_end == -1] <- 0
  pieces <- as.list(substring(char, cap_start, cap_end))
  pieces[pieces == ""] <- list(NULL)
  pieces
}

# convert http_path template to sprintf format:
# /{Bucket} -> /%s
# /{Bucket}/{Key+} -> /%s/%s
sprintf_template <- function(template) {
  temp_split <- unlist(strsplit(template, "\\?"))
  auth_temp <- temp_split[grepl("\\{.*\\}", temp_split)]
  gsub("\\{(.*?)}", "%s", auth_temp)
}

# Developed from:
# https://github.com/boto/botocore/blob/481523259d919e7a74331bc5828ab15ecc19d44b/botocore/serialize.py#L496-L513

# render params into http_path template
# for example:
# /{Bucket}/{Key+} -> /demo_bucket/path/to/file
render_template <- function(request) {
  template <- request$operation$http_path
  template_params <- str_match_all(template, "\\{(.*?)}")
  found <- grepl("\\+", template_params, perl = TRUE)
  template_params <- gsub("\\+", "", template_params, perl = TRUE)
  encoded_params <- as.character(request[["params"]][template_params])
  encoded_params[found] <- paws_url_encoder(encoded_params[found], safe = "/~")
  encoded_params[!found] <- curl::curl_escape(encoded_params[!found])
  mod_temp <- sprintf_template(template)
  return(do.call(sprintf, c(fmt = mod_temp, as.list(encoded_params))))
}

LABEL_RE <- "[a-z0-9][a-z0-9\\-]*[a-z0-9]"

# Developed from:
# https://github.com/boto/botocore/blob/cc3f1c22f55ba50ca792eb73e7a6f721abdcc5ee/botocore/utils.py#L1275-L1295
check_dns_name <- function(bucket_name) {
  if (grepl("\\.", bucket_name, perl = TRUE)) {
    return(FALSE)
  }
  n <- nchar(bucket_name)
  if (n < 3 || n > 63) {
    return(FALSE)
  }
  m <- regexpr(LABEL_RE, bucket_name, perl = TRUE)
  match <- regmatches(bucket_name, m)
  if (identical(match, character(0)) || nchar(match) != n) {
    return(FALSE)
  }
  return(TRUE)
}

# modified from:
# https://github.com/boto/botocore/blob/cc3f1c22f55ba50ca792eb73e7a6f721abdcc5ee/botocore/utils.py#L1327-L1388
# set auth_path for sign_v1_auth_query
get_auth <- function(request) {
  auth_path <- render_template(request)
  path_parts <- unlist(strsplit(auth_path, "/"))
  if (length(path_parts) > 1) {
    bucket_name <- path_parts[2]
    if (check_dns_name(bucket_name)) {
      # If the operation is on a bucket, the auth_path must be
      # terminated with a '/' character.
      if (length(path_parts) == 2) {
        if (substring(auth_path, nchar(auth_path)) != "/") {
          auth_path <- paste0(auth_path, "/")
        }
      }
    }
  }
  return(auth_path)
}

stopf <- function(fmt, ...) {
  stop(sprintf(fmt, ...), call. = FALSE)
}

# Support R-4.4.0+ changes to `is.atomic`
# https://stat.ethz.ch/pipermail/r-devel/2023-September/082892.html
is_atomic <- function(x) {
  return(is.atomic(x) || is.null(x))
}

# fast method to parse strings in half
# https://gist.github.com/hadley/2fd32cdc053099d62d56f5f28898ec95
parse_in_half <- function(x, char = "=") {
  match_loc <- regexpr(char, x, fixed = TRUE)
  match_len <- attr(match_loc, "match.length")

  left_end <- match_loc - 1
  right_start <- match_loc + match_len
  right_end <- nchar(x)

  no_match <- match_loc == -1
  left_end[no_match] <- right_end[no_match]
  right_start[no_match] <- 0
  right_end[no_match] <- 0

  cbind(
    substr(x, 1, left_end),
    substr(x, right_start, right_end)
  )
}

set_user_agent <- function(pkgname) {
  paws_version <- .__NAMESPACE__.[["spec"]]["version"] %||% packageVersion(pkgname)
  user_agent <- sprintf(
    "paws/%s (R%s; %s; %s)",
    paws_version, getRversion(), R.version$os, R.version$arch
  )
  assign("PAWS_USER_AGENT", user_agent, envir = getNamespace(pkgname))
}
