#' @include struct.R
NULL

# Create a list of request handlers.
#
# A handler list is a list of functions to apply to a request at a given stage
# of a service request (e.g. validate, build, etc.).
HandlerList <- function(..., after_each_fn = NULL) {
  args <- list(...)
  arg_refs <- substitute(list(...))[-1]

  handlers <- lapply(seq_along(args), function(i) {
    arg <- args[[i]]
    arg_ref <- arg_refs[[i]]
    Handler(arg, ifelse(is.name(arg_ref), deparse(arg_ref), "anonymous"))
  })

  if (!is.null(after_each_fn)) {
    after_each_fn <- Handler(after_each_fn)
  }

  l <- list(
    list = handlers,
    after_each_fn = after_each_fn
  )
  return(l)
}

# Return a wrapped request handler.
Handler <- function(fn, name = NULL) {
  handler <- list(
    fn = fn,
    name = name
  )
  return(handler)
}

# Create the list of request handlers for each stage of a request.
#
# A handlers object stores the handler lists for each stage of handling a
# service request.
Handlers <- struct(
  validate = HandlerList(),
  build = HandlerList(),
  sign = HandlerList(),
  send = HandlerList(),
  validate_response = HandlerList(),
  unmarshal = HandlerList(),
  unmarshal_meta = HandlerList(),
  unmarshal_error = HandlerList(),
  retry = HandlerList(),
  after_retry = HandlerList(),
  complete = HandlerList()
)

#-------------------------------------------------------------------------------

#' Set or add to handler lists
#'
#' Set or add to a list of request-handling functions. Request-handling
#' functions must take a request and return a request.
#'
#' @param existing An existing request handler list.
#' @param ... One or more request-handling functions to add.
#'
#' @examples
#' \dontrun{
#' # Replace a handler list with a new handler list.
#' handlers$build <- handlers_set(restxml_build)
#'
#' # Add a new handler onto the end of an existing handler list.
#' handlers$build <- handlers_add_back(handlers$build, restxml_build)
#'
#' # Add a new handler at the beginning of an existing handler list.
#' handlers$build <- handlers_add_front(handlers$build, restxml_build)
#' }
#'
#' @name handlers
#' @keywords internal
NULL

#' @rdname handlers
handlers_set <- function(...) {
  h <- HandlerList(...)
  return(h)
}

# Add a list of functions to an existing HandlerList.
#' @rdname handlers
handlers_add_back <- function(existing, ...) {
  h <- existing
  n <- HandlerList(...)
  h$list <- c(h$list, n$list)
  return(h)
}

#' @rdname handlers
handlers_add_front <- function(existing, ...) {
  h <- existing
  n <- HandlerList(...)
  h$list <- c(n$list, h$list)
  return(h)
}

#-------------------------------------------------------------------------------

# Run all request handlers of the given handler type (e.g. build) with a given
# request object.
run <- function(request, handler_type) {
  handler_type <- deparse(substitute(handler_type))
  handler_list <- request$handlers[[handler_type]]
  for (handler in handler_list$list) {
    request <- handler$fn(request)
    if (!is.null(handler_list$after_each_fn)) {
      if (handler_list$after_each_fn(request)) {
        next
      }
    }
  }
  return(request)
}

# Validate a request.
validate <- function(request) {
  request <- run(request, validate)
  return(request)
}

# Build the request's object so it can be signed and sent to the service.
build <- function(request) {
  if (!request$built) {
    request <- run(request, validate)
    request <- run(request, build)
    request$built <- TRUE
  }
  return(request)
}

# Sign a request.
sign <- function(request) {
  request <- build(request)
  request <- run(request, sign)
  return(request)
}

send <- function(request) {
  request <- run(request, send)
  return(request)
}

validate_response <- function(request) {
  request <- run(request, validate_response)
  return(request)
}

unmarshal <- function(request) {
  if (length(request$data) == 0) {
    return(request)
  }
  request <- run(request, unmarshal)
  return(request)
}

unmarshal_meta <- function(request) {
  request <- run(request, unmarshal_meta)
  return(request)
}

unmarshal_error <- function(request) {
  request <- run(request, unmarshal_error)
  return(request)
}

retry <- function(request) {
  request <- run(request, retry)
  return(request)
}

after_retry <- function(request) {
  request <- run(request, after_retry)
  return(request)
}

complete <- function(request) {
  request <- run(request, complete)
  return(request)
}
