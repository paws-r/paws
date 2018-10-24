#' @include make_function.R

# Returns a function which translates an R object into a given API input/output
# shape.
make_interface <- function(name, shape_name, api) {
  if (is.null(shape_name)) return(make_empty_interface(name))
  interface_template <- make_function_template({
    args <- c(as.list(environment()), list(...))
    shape <- .SHAPE
    return(populate(args, shape))
  })
  shape <- make_shape(list(shape = shape_name), api)
  input_shape <- api$shapes[[shape_name]]
  params <- c("..." = bquote())
  interface <- make_function_from_template(
    name = name,
    template = interface_template,
    subs = list(.SHAPE = get_structure(shape)),
    params = params
  )
  return(interface)
}

make_empty_interface <- function(name) {
  interface <- make_function_from_template(
    name = name,
    template = make_function_template({return(list())}),
    subs = list(),
    params = list()
  )
  return(interface)
}

# Return a list of interfaces for an API.
make_interfaces <- function(api) {
  interfaces <- list()
  for (operation in api$operations) {
    name <- get_operation_name(operation)

    input_shape <- operation$input$shape
    input_name <- paste0(name, "_input")
    input <- make_interface(input_name, input_shape, api)
    interfaces <- c(interfaces, input)

    output_shape <- operation$output$shape
    output_name <- paste0(name, "_output")
    output <- make_interface(output_name, output_shape, api)
    interfaces <- c(interfaces, output)
  }
  return(interfaces)
}

# Make an API shape, including metadata about types and names.
# Usage: `make_shape(list(shape = SHAPE), api)`
# TODO: enums
make_shape <- function(x, api, path = character(0)) {

  shape <- api$shapes[[x$shape]]

  loop <- x$shape %in% path
  path <- c(path, x$shape)

  maker <- switch(
    shape$type,
    structure = make_shape_structure,
    list = make_shape_list,
    map = make_shape_map,
    make_shape_scalar
  )

  if (!loop) {
    proto <- maker(shape, api, path)
  } else {
    proto <- placeholder()
  }

  proto <- add_tags(x, proto)
  proto <- add_tags(shape, proto)
  return(proto)
}

make_shape_structure <- function(shape, api, path) {
  proto <- list()
  members <- shape$members
  for (member_name in names(members)) {
    member <- members[[member_name]]
    export_name <- make_export_name(member_name)
    interface <- make_shape(member, api, path)
    if (export_name != member_name) {
      attr(interface, "locationName") <- member_name
    }
    proto[[export_name]] <- interface
  }
  return(proto)
}

make_shape_list <- function(shape, api, path) {
  member <- shape$member
  proto <- list(make_shape(member, api, path))
  return(proto)
}

make_shape_map <- function(shape, api, path) {
  key <- shape$key
  value <- shape$value
  proto <- list(make_shape(value, api, path))
  return(proto)
}

make_shape_scalar <- function(shape, api, path) {
  proto <- placeholder()
  return(proto)
}

# Add metadata about an API shape as R attributes to the corresponding R object,
# so we can access them later as in `attr(obj, "locationName")`.
# TODO: Add tags with more than one value, e.g. enums.
add_tags <- function(member, proto) {
  ignore_keys <- c("documentation")
  for (key in names(member)) {
    value <- member[[key]]
    if (is.atomic(value) && length(value) == 1 && !(key %in% ignore_keys)) {
      attr(proto, key) <- value
    }
  }
  return(proto)
}

# Convert a parameter name from an API-facing name (e.g. fooBar) to an
# SDK-facing name (e.g. FooBar).
make_export_name <- function(name) {
  export_name <- paste0(toupper(substring(name, 1, 1)), substring(name, 2))
  return(export_name)
}

# A placeholder for data values in an AWS API shape.
placeholder <- function() {
  return(logical(0))
}

# Return a call defining the structure of the given object x.
get_structure <- function(x) {
  return(parse(text = deparse(x))[[1]])
}
