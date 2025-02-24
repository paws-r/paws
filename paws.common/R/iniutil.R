#' @include cache.R
#' @include util.R

# Get a parameter and its value
extract_ini_parameter <- function(items) {
  parameter <- as.list.default(items[, 2])
  names(parameter) <- items[, 1]
  return(parameter)
}

read_ini <- function(file_name) {
  if (!is.null(profiles <- ini_cache[[file_name]])) {
    return(profiles)
  }

  content <- scan_ini_file(file_name)

  # Return empty list for empty files
  if (length(content) == 0) {
    ini_cache[[file_name]] <- list()
    return(ini_cache[[file_name]])
  }

  # Get Profile names
  found <- which(startsWith(content, "[") + endsWith(content, "]") == 2)
  profile_nms <- process_profile_name(content[found])
  profiles <- vector("list", length = length(profile_nms))
  names(profiles) <- profile_nms

  start <- (found + 1)
  end <- c(found[-1] - 1, length(content))
  split_content <- parse_in_half(content)
  nested_contents <- split_content[, 2] == ""

  sub_grps <- !startsWith(split_content[, 1], " ")
  split_content <- sub("[ \t\r\n]+$", "", split_content, perl = TRUE)
  split_content <- sub("^[ \t\r]+", "", split_content, perl = TRUE)
  for (i in which(start <= end)) {
    items <- seq.int(start[i], end[i])
    found_nested_content <- nested_contents[items]
    if (any(found_nested_content)) {
      profiles[[i]] <- nested_ini_content(
        split_content[items, , drop = FALSE],
        found_nested_content,
        which(sub_grps[items])
      )
    } else {
      profiles[[i]] <- extract_ini_parameter(split_content[items, , drop = FALSE])
    }
  }
  ini_cache[[file_name]] <- profiles
  return(profiles)
}

nested_ini_content <- function(sub_content, found_nested_content, sub_grp) {
  profile_nms <- sub_content[sub_grp]
  profiles <- vector("list", length(profile_nms))
  names(profiles) <- profile_nms

  position <- which(found_nested_content)
  non_nest <- !(sub_grp %in% position)
  profiles[non_nest] <- sub_content[sub_grp[non_nest], 2, drop = TRUE]

  start <- (sub_grp + 1)
  end <- c(sub_grp[-1] - 1, nrow(sub_content))
  for (i in which(start <= end)) {
    items <- seq.int(start[i], end[i])
    profiles[[profile_nms[i]]] <- extract_ini_parameter(sub_content[
      items,
      ,
      drop = FALSE
    ])
  }
  return(profiles)
}
