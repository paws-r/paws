# Return a string where all whole word elements in `translations` have been
# translated to the corresponding value, e.g.
# translate("foo bar barqux", list("bar" = "baz")) -> "foo baz barqux"
translate <- function(x, translations) {
  escape <- function(x) gsub("([[:punct:]])", "\\\\\\1", x)
  whole_word <- function(x) {
    if (startsWith(x, "\\")) return(sprintf("%s\\b", x))
    if (grepl("\\\\.$", x)) return(sprintf("\\b%s", x))
    return(sprintf("\\b%s\\b", x))
  }
  result <- x
  for (from in names(translations)) {
    to <- translations[[from]]
    if (!is.character(to)) to <- paste(deparse(to, width.cutoff = 500), collapse = "")
    from <- escape(from) # escape special characters.
    from <- whole_word(from) # find whole words only.
    result <- gsub(from, to, result)
  }
  return(result)
}

# Returns a quoted string, e.g. "foo" -> '"foo"'.
quoted <- function(string) {
  quoted_string <- sprintf('"%s"', string)
  return(quoted_string)
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
