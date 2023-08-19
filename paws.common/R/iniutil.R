#' @include util.R

# Get the profile name from an ini file
extract_ini_profile <- function(item) {
  profile <- gsub("\\[|\\]", "", item)
  return(profile)
}

# Get a parameter and its value
extract_ini_parameter <- function(item) {
  split_index <- regexpr("=", item)
  parameter <- list()
  key <- trimws(substring(item, 1, split_index - 1))
  value <- trimws(substring(item, split_index + 1))
  parameter[[key]] <- value
  return(parameter)
}

# Read in values from an ini file
read_ini <- function(file_name) {
  if (!file.exists(file_name)) {
    stopf("Unable to find file: %s", file_name)
  }
  content <- scan(file_name, what = "", sep = "\n", quiet = T)
  profiles <- list()
  current_profile <- ""
  # An empty credentials file is valid when using SSO
  # In that case, length(content) is 0.  Don't loop
  # in such a case, since 'grepl(..., content[i])'
  # will return logical(0), causing the 'if' to error out
  for (i in seq_len(length(content))) {
    if (grepl("(^;)|(^#)", content[i])) {
      next
    } else if (grepl("^\\[.*\\]", content[i])) {
      current_profile <- extract_ini_profile(content[i])
      profiles[[current_profile]] <- c()
      next
    }
    parameter <- extract_ini_parameter(content[i])
    profiles[[current_profile]] <- c(profiles[[current_profile]], parameter)
  }
  return(profiles)
}
