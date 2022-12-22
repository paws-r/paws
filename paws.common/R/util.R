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
  if (is.null(x) || length(x) == 0) return(TRUE)
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
  return(all(sapply(x, is_empty)))
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
  if (is.null(x) || is_empty_logical(x) || is_empty_character(x)) return(TRUE)
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
  if(length(x) == 0) return (FALSE)
  return(all(sapply(x, is_empty_xml)))
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
`%||%` <- function(x,y) if(is.null(x)) y else x

sort_list <- function(x) {
  if (length(x) == 0) {
    return(x)
  }
  x[sort(names(x))]
}

# Get parameter names from http_path template:
find_params <- function(str) {
  m <- gregexec('\\{(.*?)}', str, perl = T)
  out <- regmatches(str, m)
  return(unlist(out)[grep("\\{.*\\}", unlist(out), invert = T, perl = T)])
}

# convert http_path template to sprintf format:
# /{Bucket} -> /%s
# /{Bucket}/{Key+} -> /%s/%s
sprintf_template <- function(template) {
  temp_split <- unlist(strsplit(template, "\\?"))
  auth_temp <- temp_split[grepl("\\{.*\\}", temp_split)]

  # set template to sprintf format
  m <- gregexpr('\\{(.*?)}', auth_temp, perl = T)
  regmatches(auth_temp, m) <- "%s"
  return(auth_temp)
}

# Developed from:
# https://github.com/boto/botocore/blob/481523259d919e7a74331bc5828ab15ecc19d44b/botocore/serialize.py#L496-L513

# render params into http_path template
# for example:
# /{Bucket}/{Key+} -> /demo_bucket/path/to/file
render_template <- function(request){
  template <- remove_bucket_from_url_paths_from_model(
    request$operation$http_path
  )
  Params <- find_params(template)
  encoded_params <- vector("list", length(Params))
  names(encoded_params) <- Params
  for (p in Params) {
    if (grepl("\\+", request$params[[p]], perl = TRUE)) {
      encoded_params[[p]] <- paws.common:::paws_url_encoder(
        gsub("+", "", request$params[[p]], perl = TRUE), safe = "/~"
      )
    } else {
      encoded_params[[p]] <- paws.common:::paws_url_encoder(
        request$params[[p]]
      )
    }
  }
  mod_temp <- sprintf_template(template)
  return(do.call(sprintf, c(fmt = mod_temp, encoded_params)))
}


# Developed from:
# https://github.com/boto/botocore/blob/cc3f1c22f55ba50ca792eb73e7a6f721abdcc5ee/botocore/handlers.py#L1030-L1057

# Strips leading `{Bucket}/` from any operations that have it.
# The original value is retained in a separate "authPath" field. This is
# used in the sign_v1_auth_query.
remove_bucket_from_url_paths_from_model <- function(http_path) {
  bucket_path = '/{Bucket}'
  needs_slash <- http_path == bucket_path
  auth_path <- if (needs_slash) paste0(http_path, "/") else http_path
  return(auth_path)
}
