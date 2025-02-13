#' @include util.R

#' @title Get, set, and delete object tags
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
#' `tag_del` returns the object after recursively deleting tags in `tags`, or
#' all tags if `NULL`.
#'
#' `type` returns broadly what type an object is, based on its `type` tag.
#'
#' @param object An object.
#' @param tag A tag name.
#' @param tags A list of tags.
#' * `tag_add`: A named vector with tag names and their values.
#' * `tag_del`: A character vector of tags to delete.
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

# Returns the given tag on an object, or "" if not present.
#' @rdname tags
#' @export
tag_get <- function(object, tag) {
  tags <- attr(object, "tags", exact = TRUE)
  if (tag %in% names(tags)) {
    return(tags[[tag]])
  }
  return("")
}

# Returns all tags on an object as a list.
#' @rdname tags
#' @export
tag_get_all <- function(object) {
  tags <- attr(object, "tags", exact = TRUE)
  return(tags)
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

# Remove all tags recursively from an object. If no `tags` argument is provided,
# delete all tags.
#' @rdname tags
#' @export
tag_del <- function(object, tags = NULL) {
  result <- object
  if (is.null(tags)) {
    attr(result, "tags") <- NULL
  } else {
    this_tags <- attr(object, "tags", exact = TRUE)
    for (tag in tags) {
      this_tags[[tag]] <- NULL
    }
    attr(result, "tags") <- this_tags
  }
  if (is_atomic(result)) {
    return(result)
  }
  for (i in seq_along(result)) {
    result[[i]] <- tag_del(result[[i]], tags)
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
    t <- switch(type_tag, structure = "structure", list = "list", map = "map", "scalar")
  } else {
    t <- guess_type(object)
  }
  return(t)
}

# If an object has no tag information, guess the type of the object based
# on its properties.
guess_type <- function(object) {
  if (!is.null(names(object))) {
    t <- "structure"
  } else {
    if (is_atomic(object) && length(object) == 1) {
      t <- "scalar"
    } else {
      t <- "list"
    }
  }
  return(t)
}

#-------------------------------------------------------------------------------

# Add type tags to an existing object, so it can be used in `populate`.
tag_annotate <- function(x) {
  if (is.null(x)) {
    return(tag_add(logical(0), list(type = "scalar")))
  }
  if (is.null(names(x))) {
    if (length(x) == 1) {
      return(tag_add(x, list(type = "scalar")))
    }
    x <- tag_add(x, list(type = "list"))
  } else {
    x <- tag_add(x, list(type = "structure"))
  }
  for (i in seq_along(x)) {
    x[[i]] <- tag_annotate(x[[i]])
  }
  return(x)
}
