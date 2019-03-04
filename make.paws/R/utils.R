# Return a call defining the structure of the given object x.
get_structure <- function(x) {
  result <- paste(deparse(x), collapse = "")
  result <- gsub(" *, *", ", ", result)
  result <- gsub(" *= *", " = ", result)
  result
}

# Returns a quoted string, e.g. "foo" -> '"foo"'.
quoted <- function(string) {
  return(shQuote(string))
}

# Find the path to files in R packages.
# This is a replacement for system.file that works with unit tests for this
# package. In this package, the source package has a different directory
# structure than the installed package ("R" vs "src"), which means that
# system.file cannot find our files when run under devtools::test().
system_file <- function(..., package = "base") {
  if (!(package %in% devtools::dev_packages())) {
    base::system.file(..., package = package)
  } else {
    pkg_path <- find.package(package)
    subfolder <- list(...)
    if (length(subfolder) > 0) {
      if (subfolder[[1]] == "src")
        subfolder[[1]] <- "R"
      else
        subfolder <- c("inst", subfolder)
    }
    path <- do.call(file.path, c(pkg_path, subfolder))
    if (file.exists(path)) return(path)
    else return("")
  }
}

# Run an expression without printing messages.
quietly <- function(expr) {
  utils::capture.output(
    suppressMessages(
      expr
    )
  )
}
