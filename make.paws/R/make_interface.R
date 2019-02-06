#' @include make_function.R
#' @importFrom paws.common is_empty tag_add

# Returns a function which translates an R object into a given API input/output
# shape.
make_interface <- function(name, shape_name, api) {
  if (is.null(shape_name)) return(make_empty_interface(name))
  interface_template <- function(...) {
    args <- c(as.list(environment()), list(...))
    shape <- .SHAPE
    return(populate(args, shape))
  }
  shape <- make_shape(list(shape = shape_name), api)
  params <- c("..." = bquote())
  interface <- make_function_from_template(
    name = name,
    template = interface_template,
    subs = list(.SHAPE = get_structure(shape)),
    params = params
  )
  return(interface)
}

# Avoid R check notes.
utils::globalVariables(c(
  ".SHAPE",
  "populate"
))

make_empty_interface <- function(name) {
  interface <- make_function_from_template(
    name = name,
    template = function() {return(list())},
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
  interfaces <- add_roxygen_directive(
    interfaces,
    "@importFrom paws.common populate"
  )
  return(interfaces)
}

# Make an API shape, including metadata about types and names.
# Usage: `make_shape(list(shape = SHAPE), api)`
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

  proto <- tag_add(proto, make_tags(x))
  proto <- tag_add(proto, make_tags(shape))
  return(proto)
}

make_shape_structure <- function(shape, api, path) {
  proto <- list()
  members <- shape$members
  for (member_name in names(members)) {
    member <- members[[member_name]]
    interface <- make_shape(member, api, path)
    proto[[member_name]] <- interface
  }
  return(proto)
}

make_shape_list <- function(shape, api, path) {
  member <- shape$member
  proto <- list(make_shape(member, api, path))

  if (!is_empty(member$locationName)) {
    proto <- tag_add(proto, list(locationNameList = member$locationName))
  }

  return(proto)
}

make_shape_map <- function(shape, api, path) {
  key <- shape$key
  value <- shape$value
  proto <- list(make_shape(value, api, path))
  if (!is_empty(key$locationName)) {
    proto <- tag_add(proto, list(locationNameKey = key$locationName))
  }
  if (!is_empty(value$locationName)) {
    proto <- tag_add(proto, list(locationNameValue = value$locationName))
  }
  return(proto)
}

make_shape_scalar <- function(shape, api, path) {
  proto <- placeholder()
  return(proto)
}

# Convert a parameter name from an API-facing name (e.g. fooBar) to an
# SDK-facing name (e.g. FooBar).
make_export_name <- function(name) {
  export_name <- paste0(toupper(substring(name, 1, 1)), substring(name, 2))
  return(export_name)
}

# Return a list of a shape's elements that should be kept as tags, e.g. type.
make_tags <- function(shape) {
  if ("enum" %in% names(shape)) {
    shape$enum <- unlist(shape$enum)
  }
  taggable <- sapply(shape, is.atomic)
  ignore <- c("documentation", "shape")
  keep <- !(names(shape) %in% ignore)
  tags <- shape[taggable & keep]
  return(tags)
}

# A placeholder for data values in an AWS API shape.
placeholder <- function() {
  return(logical(0))
}

# Return a call defining the structure of the given object x.
get_structure <- function(x) {
  return(parse(text = deparse(x))[[1]])
}
