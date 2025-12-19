#' @include util.R

# Sometimes the locationName is different from the interface name
check_location_name <- function(name, interface) {
  location_names <- vapply(
    interface,
    function(x) tag_get(x, "locationName"),
    FUN.VALUE = character(1)
  )
  in_location_names <- name %in% location_names
  if (!in_location_names) {
    return(in_location_names)
  }
  location_index <- which(name == location_names)
  return(location_index)
}

# Empty template interfaces
empty_struct_interface <- structure(list(), tags = list(type = "structure"))
empty_list_interface <- structure(list(), tags = list(type = "list"))

infer_empty_interface <- function(elem) {
  # Determine interface type based on element type
  if (is.list(elem) && !is.null(names(elem))) {
    # Named list -> structure
    empty_struct_interface
  } else if (is.list(elem)) {
    # Unnamed list -> list
    empty_list_interface
  } else {
    # Scalar
    list()
  }
}

# Helper function to find the parent structure for recursive interfaces
# This is used when we encounter an empty structure placeholder in a map or list,
# indicating that the structure is recursive (e.g., DynamoDB AttributeValue).
find_recursive_parent <- function(parent_interface) {
  # If parent_interface is a structure with fields, it's the recursive parent
  if (tag_get(parent_interface, "type") == "structure" && length(parent_interface) > 0) {
    return(parent_interface)
  }
  return(NULL)
}


# Populate the interface for a given API operation with the parameters
# that the user submitted.
populate_structure <- function(input, interface, parent = NULL) {
  # If interface is empty (input shape is incomplete), recursively populate
  # to ensure type tags are inferred and added. Only needed because input shapes
  # have fixed depth, and some services, e.g. DynamoDB, can accept data of arbitrary depth.
  if (length(interface) == 0) {
    if (length(input) == 0) {
      return(input)
    }
    # Recursively populate each element with appropriate interface type
    result <- lapply(input, function(elem) {
      populate(elem, infer_empty_interface(elem), parent = interface)
    })
    # Preserve structure type tag from interface if present, otherwise add it
    attrs <- attributes(interface)
    if (is.null(attrs$tags$type)) {
      if (is.null(attrs$tags)) {
        attrs$tags <- list(type = "structure")
      } else {
        attrs$tags$type <- "structure"
      }
    }
    # Preserve the names attribute when setting other attributes
    attrs$names <- names(result)
    attributes(result) <- attrs
    return(result)
  }
  for (name in names(input)) {
    if (!(name) %in% names(interface)) {
      check_location <- check_location_name(name, interface)
      if (!check_location) {
        stopf("invalid name: %s", name)
      }
      interface[[check_location]] <- populate(
        input[[name]],
        interface[[check_location]],
        parent = interface
      )
    } else {
      interface[[name]] <- populate(input[[name]], interface[[name]], parent = interface)
    }
  }
  return(interface)
}

populate_list <- function(input, interface, parent = NULL) {
  # If interface is empty (input shape is incomplete), recursively populate
  # to ensure type tags are inferred and added. Only needed because input shapes
  # have fixed depth, and some services, e.g. DynamoDB, can accept data of arbitrary depth.
  if (length(interface) == 0) {
    if (length(input) == 0) {
      return(input)
    }
    # Recursively populate each element with appropriate interface type
    result <- lapply(input, function(elem) {
      populate(elem, infer_empty_interface(elem), parent = interface)
    })

    # Preserve list type tag from interface if present, otherwise add it
    attrs <- attributes(interface)
    if (is.null(attrs$tags$type)) {
      if (is.null(attrs$tags)) {
        attrs$tags <- list(type = "list")
      } else {
        attrs$tags$type <- "list"
      }
    }
    attributes(result) <- attrs
    return(result)
  }
  attrs <- attributes(interface)
  element_interface <- interface[[1]]

  # If element_interface is an empty structure and we have a parent structure,
  # this indicates a recursive interface (e.g., DynamoDB AttributeValue where
  # L contains more AttributeValues). Reuse the parent structure instead.
  if (
    tag_get(element_interface, "type") == "structure" &&
      length(element_interface) == 0 &&
      !is.null(parent)
  ) {
    recursive_parent <- find_recursive_parent(parent)
    if (!is.null(recursive_parent)) {
      element_interface <- recursive_parent
    }
  }

  interface <- lapply(input, populate, interface = element_interface, parent = interface)
  attributes(interface) <- attrs
  return(interface)
}

populate_map <- function(input, interface, parent = NULL) {
  # If interface is empty (input shape is incomplete), recursively populate
  # to ensure type tags are inferred and added. Only needed because input shapes
  # have fixed depth, and some services, e.g. DynamoDB, can accept data of arbitrary depth.
  if (length(interface) == 0) {
    # Recursively populate each element with appropriate interface type
    result <- lapply(input, function(elem) {
      populate(elem, infer_empty_interface(elem), parent = interface)
    })
    names(result) <- names(input)

    # Preserve map type tag from interface if present, otherwise add it
    attrs <- attributes(interface)
    if (is.null(attrs$tags$type)) {
      if (is.null(attrs$tags)) {
        attrs$tags <- list(type = "map")
      } else {
        attrs$tags$type <- "map"
      }
    }
    # Preserve the names attribute when setting other attributes
    attrs$names <- names(result)
    attributes(result) <- attrs
    return(result)
  }

  value_interface <- interface[[1]]

  # If value_interface is an empty structure and we have a parent structure,
  # this indicates a recursive interface (e.g., DynamoDB AttributeValue where
  # M contains more AttributeValues). Reuse the parent structure instead.
  if (
    tag_get(value_interface, "type") == "structure" &&
      length(value_interface) == 0 &&
      !is.null(parent)
  ) {
    recursive_parent <- find_recursive_parent(parent)
    if (!is.null(recursive_parent)) {
      value_interface <- recursive_parent
    }
  }

  result <- lapply(input, populate, interface = value_interface, parent = interface)
  names(result) <- names(input)
  attributes(result) <- c(attributes(result), attributes(interface))
  return(result)
}

populate_scalar <- function(input, interface, parent = NULL) {
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
#' @param parent Internal parameter used to track parent interface for recursive structures.
#'
#' @examples
#' # Make an interface with metadata, e.g. type.
#' interface <- tag_add(list(foo = c(), bar = c()), list(type = "structure"))
#'
#' # Combine data and the metadata from the interface.
#' populate(list(foo = 1, bar = 2), interface)
#'
#' @export
populate <- function(input, interface, parent = NULL) {
  t <- tag_get(interface, "type")
  populate_fn <- switch(
    t,
    structure = populate_structure,
    list = populate_list,
    map = populate_map,
    populate_scalar
  )
  interface <- populate_fn(input, interface, parent = parent)
  return(interface)
}
