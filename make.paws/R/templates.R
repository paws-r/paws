# Returns a string representing a template for given R code.
template <- function(x) {
  expr <- substitute(x)
  if (inherits(expr, "{")) {
    expr <- expr[-1]
  }
  template <- as.character(expr)
  clean_template(template)
}

# Returns a string by rendering a template, replacing variables enclosed with
# ${} with corresponding named argument values in `...`.
render <- function(template, ...) {

  # makes str_interp much faster, due to underlying call to
  # parse(keep.source=getOption("keep.source"))
  op <- options(keep.source = FALSE)
  on.exit(options(op), add = TRUE)

  as.character(stringr::str_interp(template, env = list(...)))
}

clean_template <- function(template) {
  # Delete leading newline.
  if (grepl("^\n", template)) {
    template <- gsub("^\n", "", template)
  }
  # Delete trailing newlines and spaces.
  if (grepl("[\n ]*$", template)) {
    template <- gsub("[\n ]*$", "", template)
  }
  # Delete leading spaces.
  if (grepl("^ +", template)) {
    spaces <- gsub("^( +).*", "\\1", template)
    template <- gsub(paste0("^", spaces), "", template, perl = TRUE)
    template <- gsub(paste0("(?<=\n)", spaces), "", template, perl = TRUE)
  }
  template
}

# Declare variables to avoid R CMD check notes about templates.
utils::globalVariables(
  "${function_name}(${args})"
)

make_call <- function(function_name, args) {
  args_fmt <- c()
  for (i in seq_along(args)) {
    key <- names(args)[i]
    value <- args[[i]]
    if (!is.null(key) && key != "") el <- sprintf("%s = %s", key, value)
    else el <- value
    args_fmt <- c(args_fmt, el)
  }
  args_fmt <- paste(args_fmt, collapse = ", ")
  t <- template(`${function_name}(${args})`)
  render(t, function_name = function_name, args = args_fmt)
}
