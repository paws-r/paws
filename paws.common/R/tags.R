#' Get, set, and delete object tags
#'
#' @description
#' Tags are metadata stored in an object's attributes, used to store types and
#' names needed to make AWS API requests.
#'
#' `tag_get` returns the value of the given `tag`, or `""` if the tag doesn't
#' exist.
#'
#' `tag_has` returns whether the object has the given `tag`.
#'
#' `tag_add` returns the object after adding the given list of tags and values.
#'
#' `tag_del` returns the object after deleting all tags.
#'
#' `type` returns broadly what type an object is, based on its `type` tag.
#'
#' @param object An object.
#' @param tag A tag name.
#' @param tags A named list with tag names and their values.
#'
#' @examples
#' foo <- list()
#' foo <- tag_add(foo, list(tag_name = "tag_value"))
#' tag_has(foo, "tag_name") # TRUE
#' tag_get(foo, "tag_name") # "tag_value"
#' tag_get(foo, "not_exist") # ""
#' foo <- tag_del(foo)
#' tag_has(foo, "tag_name") # FALSE
#'
#' @name tags
NULL

#' @rdname tags
#' @export
tag_get <- function(object, tag) {
  tags <- attr(object, "tags", exact = TRUE)
  if (tag %in% names(tags)) {
    return(tags[[tag]])
  }
  return("")
}

# Returns whether the object has the given tag.
#' @rdname tags
#' @export
tag_has <- function(object, tag) {
  tags <- attr(object, "tags", exact = TRUE)
  return(tag %in% names(tags))
}

# Add a tag to an object.
#
# Add a tag to an object, which we can access later using e.g.
# `tag_get(object, "locationName")`. This is used to store metadata about an
# API shape, such as its location or type.
#' @rdname tags
#' @export
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
#' @rdname tags
#' @export
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
#' @rdname tags
#' @export
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
