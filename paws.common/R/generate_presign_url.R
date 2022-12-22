#' @include handlers.R
#' @include signer_query.R
#' @include request.R
#' @include config.R
#' @include url.R

#' @importFrom utils modifyList packageName

#' @title Generate a presigned url given a client, its method, and arguments
#' @param client_method (character_: The client method to presign for
#' @param params (list): The parameters normally passed to ``client_method``.
#' @param expires_in: The number of seconds the presigned url is valid
#' for. By default it expires in an hour (3600 seconds)
#' @return The presigned url character
generate_signed_url <- function(client_method,
                                params = list(),
                                expires_in = 3600) {
  stopifnot(
    "`client_method` must to be a character" = is.character(client_method),
    "`params` must be a list of parameters for client_method" = is.list(params),
    "`expires` must be numeric" = is.numeric(expires_in),
    "`expires_in` must be greater than 0" = expires_in > 0L
  )
  pkg_name <- packageName()
  # get package private api objects: metadata, handlers, interfaces, etc.
  pkg_api <- get_pkg_api()
  .pkg_api <- paste0(".", pkg_api)

  tryCatch(
    {
      operation_fun <- get(
        sprintf("%s_%s", pkg_api, client_method),
        envir = getNamespace(pkg_name)
      )
    },
    error = function(err) {
      stop(
        sprintf("Client does not have method: %s", client_method),
        call. = FALSE
      )
    }
  )
  operation_body <- body(operation_fun)

  # create: new_operation from client_method
  op <- eval(operation_body[[2]][[3]], envir = getNamespace("paws.common"))

  original_params <- formals(operation_fun) %||% list()
  # create: input from client_method
  kwargs <- as.list(modifyList(original_params, params))
  input <- do.call(
    get(
      .pkg_api,
      envir = getNamespace(pkg_name)
    )[[sprintf("%s_input", client_method)]],
    kwargs
  )

  # create: output from client_method
  output <- get(
    .pkg_api,
    envir = getNamespace(pkg_name)
  )[[sprintf("%s_input", client_method)]]()

  # get config
  config <- get_config()

  # get service
  svc <- get(.pkg_api, envir = getNamespace(pkg_name))[["service"]](config)

  # create new request
  request <- new_request(svc, op, input, output)

  request$expire_time <- expires_in

  # build request
  request <- build(request)
  # sign request
  request <- sign_v1_auth_query(request)

  return(build_url(request$http_request$url))
}

get_pkg_api <- function() {
  call <- sys.call(-1)[[1]]
  # Ensure we correctly identify the service object (e.g. `svc`) when the
  # operation is called through `do.call`, e.g. `do.call(svc$operation, args)`.
  if (is.function(call)) {
    call <- sys.call(-2)[[2]]
  }
  return(as.character(call[[2]]))
}
