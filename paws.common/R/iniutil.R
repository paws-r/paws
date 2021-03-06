# Get the profile name from an ini file
extract_ini_profile <- function(item) {
  profile <- gsub("\\[|\\]", "", item)
  return(profile)
}

# Get a parameter and its value
extract_ini_parameter <- function(item) {
    item_split <- strsplit(item, "=")[[1]]
    parameter <- list()
    parameter[[trimws(item_split[1])]] <- trimws(item_split[2])
    return(parameter)
}

# Read in values from an ini file
read_ini <- function(file_name) {
  if (!file.exists(file_name)) {
    stop(sprintf("Unable to find file: %s", file_name))
  }
  content <- scan(file_name, what = "", sep = "\n", quiet = T)
  profiles <- list()
  current_profile <- ""
  for (i in 1:length(content)) {
    if (grepl("\\[.*\\]", content[i])) {
      current_profile <- extract_ini_profile(content[i])
      profiles[[current_profile]] <- c()
      next
    }
    parameter <- extract_ini_parameter(content[i])
    profiles[[current_profile]] <- c(profiles[[current_profile]], parameter)
  }
  return(profiles)
}
