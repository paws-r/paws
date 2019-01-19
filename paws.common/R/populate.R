# Sometimes the locationName is different from the interface name
check_location_name <- function(name, interface){
  location_names <- sapply(interface, function(x) tag_get(x, "locationName"))

  in_location_names <- name %in% location_names
  if (!in_location_names) return(in_location_names)

  location_index <- which(name == location_names)

  return(location_index)
}

# Populate the interface for a given API operation with the parameters
# that the user submitted.
populate_structure <- function(input, interface) {
  for (name in names(input)) {
    if (!(name) %in% names(interface)) {
      check_location <- check_location_name(name, interface)
      if (!check_location)
        stop(sprintf("invalid name: %s", name))

      interface[[check_location]] <- populate(input[[name]],
                                              interface[[check_location]])
    } else {
      interface[[name]] <- populate(input[[name]], interface[[name]])
    }
  }
  return(interface)
}

populate_list <- function(input, interface) {
  attrs <- attributes(interface)
  interface <- lapply(input, function(x) populate(x, interface[[1]]))
  attributes(interface) <- attrs
  return(interface)
}

populate_map <- function(input, interface) {
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

populate <- function(input, interface) {
  t <- tag_get(interface, "type")
  populate_fn <- switch(
    t,
    structure = populate_structure,
    list = populate_list,
    map = populate_map,
    populate_scalar
  )
  interface <- populate_fn(input, interface)
  return(interface)
}
