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

# Add metadata ("tags") about an API shape to an R object. Tags store e.g.
# field names and types. We can access a tag with the corresponding `get_tag()`
# function.
add_tags <- function(tags, object) {
  keys_to_ignore <- c("documentation")

  keys_to_add <- setdiff(names(tags), keys_to_ignore)
  tags_to_add <- tags[keys_to_add]

  existing_tags <- attr(object, "tags")
  tags_to_keep <- existing_tags[setdiff(names(existing_tags), keys_to_add)]

  attr(object, "tags") <- c(tags_to_keep, tags_to_add)
  return(object)
}

# Get a tag from an object, and return "" if the tag is not present.
get_tag <- function(object, tag) {
  tags <- attr(object, "tags", exact = TRUE)
  if (tag %in% names(tags)) {
    return(tags[[tag]])
  }
  return("")
}
