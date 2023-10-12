#' @include util.R

# Get a parameter and its value
extract_ini_parameter <- function(item) {
  item <- gsub("^[ \t\r\n]+|[ \t\r\n]+$", "", item, perl = T)
  parameter <- list(item[2])
  names(parameter) <- item[1]
  return(parameter)
}

read_ini <- function(file_name) {
  if (!file.exists(file_name)) {
    stopf("Unable to find file: %s", file_name)
  }
  content <- sub(
    "[ \t\r\n]+$", "",
    scan(file_name, what = "", sep = "\n", quiet = T),
    perl = TRUE
  )
  # An empty credentials file is valid when using SSO
  # In that case, length(content) is 0.  Don't loop
  # in such a case, since 'grepl(..., content[i])'
  # will return logical(0), causing the 'if' to error out
  if (length(content) == 0) {
    return(list())
  }

  # Get the profile name from an ini file
  rm_els <- grep("(^;)|(^\\s+;)|(^#)|(^\\s+#)", content, perl = TRUE)
  if (length(rm_els) > 0) content <- content[-rm_els]

  found <- grep("^\\[.*\\]", content, perl = TRUE)

  profile_nms <- gsub("\\[|\\]", "", content[found])
  profiles <- vector("list", length = length(profile_nms))
  names(profiles) <- profile_nms

  start <- (found + 1)
  end <- c(found[-1] - 1, length(content))
  split_content <- strsplit(sub("=", "\n", content, fixed = T), "\n", fixed = T)
  nested_contents <- lengths(split_content) == 1

  for (i in which(start <= end)) {
    items <- seq.int(start[i], end[i])
    found_nested_content <- nested_contents[items]
    if (any(found_nested_content)) {
      profiles[[i]] <- nested_ini_content(split_content[items], found_nested_content)
    } else {
      profiles[[i]] <- unlist(lapply(
        split_content[items], extract_ini_parameter
      ), recursive = F)
    }
  }
  return(profiles)
}

nested_ini_content <- function(sub_content, found_nested_content) {
  position <- which(found_nested_content)
  start <- (position + 1)
  end <- c(position[-1] - 1, length(sub_content))

  profile_nms <- gsub("^[ \t\r\n]+|[ \t\r\n]+$", "", unlist(sub_content[position]), perl = T)

  sub_grp <- which(!vapply(sub_content, function(x) grepl("^[ ]+", x[1]), logical(1)))
  non_nest <- sub_grp[!sub_grp %in% position]

  profiles <- unlist(lapply(
    sub_content[non_nest], extract_ini_parameter
  ), recursive = F)
  for (i in seq_along(position)) {
    els <- seq.int(start[i], end[i])
    nest_content <- sub_content[els[!(els %in% sub_grp)]]
    profiles[[profile_nms[i]]] <- unlist(lapply(
      nest_content, extract_ini_parameter
    ), recursive = F)
  }
  return(profiles)
}
