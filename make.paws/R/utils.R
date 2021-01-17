# Return a call defining the structure of the given object x.
get_structure <- function(x) {
  result <- paste(deparse(x, width.cutoff = 500), collapse = "")
  result <- gsub(" *, *", ", ", result)
  result <- gsub(" *= *", " = ", result)
  result <- gsub("\\( +", "(", result)
  result
}

# Return a list of operations and documentation found in the given text
# representing code read from an R code file.
parse_operations <- function(text) {
  ids <- rep(NA, length(text))
  id <- 1
  for (i in seq_along(text)) {
    if (i > 1 && startsWith(text[i], "#'") && !startsWith(text[i-1], "#'")) {
      id <- id + 1
    }
    ids[i] <- id
  }
  operations <- list()
  for (op_text in split(text, ids)) {
    operation <- parse_operation(op_text)
    if (is.null(operation$name) || operation$name == "NULL") {
      next
    }
    operations[[operation$name]] <- operation
  }
  return(operations)
}

# Parse a Roxygen-commented function and return something resembling an AWS API
# specification.
parse_operation <- function(text) {
  comment_lines <- startsWith(text, "#'")
  comment <- text[comment_lines]
  code <- text[!comment_lines]
  func <- strsplit(code[1], " ")[[1]][1]
  name <- substring(func, regexpr("_", func)+1)
  operation <- list(
    name = name,
    http = list(),
    input = list(),
    output = list(),
    documentation = sprintf("<p>%s</p>", gsub("^#' ", "", comment[1]))
  )
  return(operation)
}

# Returns a quoted string, e.g. "foo" -> '"foo"'.
quoted <- function(string) {
  return(shQuote(string, type = "cmd"))
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

# Returns the URL if valid. If invalid, returns NULL. If redirected, return
# the new URL.
get_url <- function(url, tries = 3) {
  if (length(url) == 0 || url == "" || tries <= 0) {
    return(NULL)
  }

  update_url <- function(old, new) {
    old_parsed <- httr::parse_url(old)
    new_parsed <- httr::parse_url(new)
    for (name in names(old_parsed)) {
      if (!is.null(new_parsed[[name]])) {
        old_parsed[[name]] <- new_parsed[[name]]
      }
    }
    return(httr::build_url(old_parsed))
  }

  cached_expr(list("get_url", url = url), function() {
    try <- 0
    while (try < tries) {
      resp <- tryCatch(
        httr::HEAD(url, httr::timeout(1)),
        error = function(e) NULL
      )
      if (!is.null(resp)) {
        if (resp$status_code >= 400) {
          return(NULL)
        } else if (300 <= resp$status_code && resp$status_code < 400) {
          # Check whether the redirect is valid.
          return(get_url(update_url(url, resp$url), tries = tries - 1))
        } else {
          return(update_url(url, resp$url))
        }
      }
      try <- try + 1
    }
    return(NULL)
  })
}
