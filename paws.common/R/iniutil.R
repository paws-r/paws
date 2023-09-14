#' @include util.R

# Get a parameter and its value
extract_ini_parameter <- function(item) {
  item <- trimws(item)
  parameter <- list(item[2])
  names(parameter) <- item[1]
  return(parameter)
}

# Read in values from an ini file
read_ini <- function(file_name) {
  if (!file.exists(file_name)) {
    stopf("Unable to find file: %s", file_name)
  }
  content <- scan(file_name, what = "", sep = "\n", quiet = T)

  # An empty credentials file is valid when using SSO
  # In that case, length(content) is 0.  Don't loop
  # in such a case, since 'grepl(..., content[i])'
  # will return logical(0), causing the 'if' to error out
  if (length(content) == 0) return(list())

  # Get the profile name from an ini file
  found <- grep("^\\[.*\\]", content)
  rm_els <- grep("(^;)|(^#)", content)

  profile_nms <- gsub("\\[|\\]", "", content[found])
  profiles <- vector("list", length = length(profile_nms))
  names(profiles) <- profile_nms

  start <- (found + 1)
  end <- c(found[-1]-1,  length(content))
  split_content <- strsplit(sub("=", "\n", content, fixed = T), "\n", fixed = T)
  for (i in seq_along(profiles)) {
    els <- seq.int(start[i], end[i])
    sub_content <- split_content[els[!(els %in% rm_els)]]
    found_nested_content <- lengths(sub_content) == 1

    if (any(found_nested_content)) {
      profiles[[i]] <- nested_ini_content(sub_content, found_nested_content)
    } else {
      profiles[[i]] <- unlist(lapply(
        sub_content, extract_ini_parameter
      ), recursive = F
      )
    }
  }
  return(profiles)
}

nested_ini_content <- function(sub_content, found_nested_content) {
  position <- which(found_nested_content)
  start <- (position + 1)
  end <- c(position[-1]-1,  length(sub_content))

  profile_nms <- trimws(unlist(sub_content[position]))

  sub_grp <- which(!vapply(sub_content, function(x) grepl("^[ ]+", x[1]), logical(1)))
  non_nest <- sub_grp[!sub_grp%in% position]

  profiles <- unlist(lapply(
    sub_content[non_nest], extract_ini_parameter
  ), recursive = F
  )
  for (i in seq_along(position)) {
    els <- seq.int(start[i], end[i])
    nest_content <- sub_content[els[!(els %in% sub_grp)]]
    profiles[[profile_nms[i]]] <- unlist(lapply(
      nest_content, extract_ini_parameter
    ), recursive = F
    )
  }
  return(profiles)
}
