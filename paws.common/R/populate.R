#' @include util.R

# Sometimes the locationName is different from the interface name
check_location_name <- function(name, interface) {
  location_names <- sapply(interface, function(x) tag_get(x, "locationName"))

  in_location_names <- name %in% location_names
  if (!in_location_names) {
    return(in_location_names)
  }

  location_index <- which(name == location_names)

  return(location_index)
}

# Populate the interface for a given API operation with the parameters
# that the user submitted.
populate_structure <- function(input, interface) {
  # If interface is empty (input shape is incomplete), return the input data.
  # Only needed because input shapes have fixed depth, and some services,
  # e.g. DynamoDB, can accept data of arbitrary depth.
  if (length(interface) == 0) {
    return(input)
  }
  for (name in names(input)) {
    if (!(name) %in% names(interface)) {
      check_location <- check_location_name(name, interface)
      if (!check_location) {
        stopf("invalid name: %s", name)
      }

      interface[[check_location]] <- populate(
        input[[name]],
        interface[[check_location]]
      )
    } else {
      interface[[name]] <- populate(input[[name]], interface[[name]])
    }
  }
  return(interface)
}

populate_list <- function(input, interface) {
  # If interface is empty (input shape is incomplete), return the input data.
  # Only needed because input shapes have fixed depth, and some services,
  # e.g. DynamoDB, can accept data of arbitrary depth.
  if (length(interface) == 0) {
    return(input)
  }
  attrs <- attributes(interface)
  interface <- lapply(input, function(x) populate(x, interface[[1]]))
  attributes(interface) <- attrs
  return(interface)
}

populate_map <- function(input, interface) {
  # If interface is empty (input shape is incomplete), return the input data.
  # Only needed because input shapes have fixed depth, and some services,
  # e.g. DynamoDB, can accept data of arbitrary depth.
  if (length(interface) == 0) {
    return(input)
  }
  result <- list()
  for (name in names(input)) {
    result[[name]] <- populate(input[[name]], interface[[1]])
  }
  attributes(result) <- c(attributes(result), attributes(interface))
  return(result)
}

populate_scalar <- function(input, interface) {
  attrs <- c(attributes(input), attributes(interface))
  interface <- input
  attributes(interface) <- attrs
  return(interface)
}

#' Populate a list with data from another list
#'
#' `populate` copies data from a list (e.g. input by a user) to another list
#' with a similar shape. The second list, called the `interface`, will generally
#' also contain extra metadata for making API requests, such as names or types.
#'
#' @param input A list with data to copy.
#' @param interface A list of a similar shape to copy data into.
#'
#' @examples
#' # Make an interface with metadata, e.g. type.
#' interface <- tag_add(list(foo = c(), bar = c()), list(type = "structure"))
#'
#' # Combine data and the metadata from the interface.
#' populate(list(foo = 1, bar = 2), interface)
#'
#' @export
populate <- function(input, interface) {
  t <- tag_get(interface, "type")
  populate_fn <- switch(t,
    structure = populate_structure,
    list = populate_list,
    map = populate_map,
    populate_scalar
  )
  interface <- populate_fn(input, interface)
  return(interface)
}
