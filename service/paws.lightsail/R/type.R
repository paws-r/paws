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
