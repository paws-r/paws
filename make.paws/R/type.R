# Determine what type an object is so we can parse it appropriately.
type <- function(object) {
  type_attr <- get_tag(object, "type")
  if (type_attr != "") {
    t <- switch(
      type_attr,
      structure = "structure",
      list = "list",
      map = "map",
      "scalar"
    )
  } else {
    t <- ""
  }
  return(t)
}

# Get a tag from an object, and return "" if the tag is not present.
get_tag <- function(field, tag) {
  t <- attr(field, tag, exact = TRUE)
  if (is.null(t)) t <- ""
  return(t)
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
