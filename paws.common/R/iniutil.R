#' @include util.R

# Get a parameter and its value
extract_ini_parameter <- function(items) {
  ii <- gsub("^[ \t\r\n]+|[ \t\r\n]+$", "", do.call(rbind, items), perl = T)
  parameter <- as.list(ii[, 2])
  names(parameter) <- ii[, 1]
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

  # Return empty list for empty files
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
      profiles[[i]] <- extract_ini_parameter(split_content[items])
    }
  }
  return(profiles)
}

nested_ini_content <- function(sub_content, found_nested_content) {
  position <- which(found_nested_content)
  sub_grp <- grep("^[ ]+", do.call(rbind, sub_content)[, 1], invert = T)
  profile_nms <- gsub(
    "^[ \t\r\n]+|[ \t\r\n]+$", "",
    do.call(rbind, sub_content[sub_grp])[, 1],
    perl = T
  )
  profiles <- vector("list", length(profile_nms))
  names(profiles) <- profile_nms

  non_nest <- !(sub_grp %in% position)
  profiles[non_nest] <- gsub(
    "^[ \t\r\n]+|[ \t\r\n]+$", "",
    do.call(rbind, sub_content[sub_grp[non_nest]])[, 2],
    perl = T
  )

  start <- (sub_grp + 1)
  end <- c(sub_grp[-1] - 1, length(sub_content))
  for (i in which(start <= end)) {
    items <- seq.int(start[i], end[i])
    profiles[[profile_nms[i]]] <- extract_ini_parameter(sub_content[items])
  }
  return(profiles)
}
