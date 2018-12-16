# Get a tag from an object, and return "" if the tag is not present.
tag_get <- function(object, tag) {
  tags <- attr(object, "tags", exact = TRUE)
  if (tag %in% names(tags)) {
    return(tags[[tag]])
  }
  return("")
}

# Add a tag to an object, which we can access later using e.g.
# `tag_get(object, "locationName")`. This is used to store metadata about an
# API shape, such as its location or type.
tag_add <- function(object, tags) {
  keys_to_ignore <- c("documentation")

  keys_to_add <- setdiff(names(tags), keys_to_ignore)
  tags_to_add <- tags[keys_to_add]

  existing_tags <- attr(object, "tags")
  tags_to_keep <- existing_tags[setdiff(names(existing_tags), keys_to_add)]

  attr(object, "tags") <- c(tags_to_keep, tags_to_add)
  return(object)
}

# Remove all tags from an object.
tag_del <- function(object) {
  result <- object
  attr(result, "tags") <- NULL
  if (is.atomic(result)) return(result)
  for (i in seq_along(result)) {
    result[[i]] <- tag_del(result[[i]])
  }
  return(result)
}

#-------------------------------------------------------------------------------

# Determine broadly what type an object is. Used to parse appropriately.
type <- function(object) {
  type_tag <- tag_get(object, "type")
  if (type_tag != "") {
    t <- switch(
      type_tag,
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
