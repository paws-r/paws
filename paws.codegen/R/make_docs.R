#' @importFrom paws.common tag_get
#' @importFrom paws.common tag_has
#' @importFrom paws.common type

# Make an operation's Roxygen documentation.
make_docs <- function(operation, api) {
  title <- make_doc_title(operation)
  description <- make_doc_desc(operation)
  usage <- make_doc_usage(operation, api)
  params <- make_doc_params(operation, api)
  return <- make_doc_return(operation)
  examples <- make_doc_examples(operation)
  export <- "#' @export"
  docs <- glue::glue_collapse(
    c(title,
      description,
      usage,
      params,
      # return,
      examples,
      export),
    sep = "\n#'\n"
  )
  return(as.character(docs))
}

# Make the documentation title.
make_doc_title <- function(operation) {
  docs <- convert(operation$documentation, wrap = FALSE)
  title <- first_sentence(docs)
  title <- glue::glue("#' {title}")
  return(as.character(title))
}

# Make the description and details documentation.
make_doc_desc <- function(operation) {
  docs <- convert(operation$documentation, wrap = FALSE)
  docs <- escape_special_characters(docs)
  description <- glue::glue("#' {docs}")
  description <- glue::glue_collapse(description, sep = "\n")
  return(as.character(description))
}

# Make the parameter documentation.
make_doc_params <- function(operation, api) {
  if (!is.null(operation$input$shape)) {
    shapes <- api$shapes
    shape <- shapes[[operation$input$shape]]
    inputs <- get_inputs(shape)
    params <- sapply(inputs, function(input) {
      param <- input$member_name
      required <- input$required
      documentation <- convert(input$documentation, wrap = FALSE)
      documentation <- glue::glue_collapse(documentation, sep = "\n")
      if (required) {
        documentation <- glue::glue("&#91;required&#93; {documentation}")
      }
      documentation <- glue::glue("@param {param} {documentation}")
      lines <- strsplit(documentation, "\n")[[1]]
      lines <- glue::glue("#' {lines}")
      lines
    })
    params <- glue::glue_collapse(unlist(params), sep = "\n")
  } else {
    params <- ""
  }
  return(as.character(params))
}

# Return a string showing the operation's usage, including all parameters.
make_doc_usage <- function(operation, api) {
  op_name <- get_operation_name(operation)
  shape_name <- operation$input$shape
  if (!is.null(shape_name)) {
    shape <- make_shape(list(shape = shape_name), api)
    args <- add_example_values(shape)
    masks <- list("(" = "&#40;", ")" = "&#41;")
    args <- mask(args, masks)
    call <- gsub("^list", op_name, list_to_string(args, quote = FALSE))
    call <- unmask(clean_example(call), masks)
    usage <- comment(paste(c("@usage", call), collapse = "\n"), "#'")
    return(usage)
  }
  return("")
}

# Return a string with a description of the operation's return value.
# TODO: Implement.
make_doc_return <- function(operation, api) {
  output <- operation$output
  "#' @return"
}

# Return a string with an operation example's arguments.
make_doc_example_args <- function(input) {
  if (length(input) == 0) return("")
  args <- paste(trimws(utils::capture.output(dput(input))), collapse = "")
  result <- gsub("^list\\((.*)\\)$", "\\1", args)
  return(result)
}

# Make an operation example.
make_doc_example <- function(example, op_name) {
  args <- make_doc_example_args(example$input)
  call <- glue::glue("{op_name}({args})")
  call <- clean_example(call)
  desc <- comment(break_lines(example$description))
  result <- paste(desc, call, sep = "\n")
  return(result)
}

# Make all operation examples provided in the operation object.
make_doc_examples <- function(operation) {
  func <- get_operation_name(operation)
  examples <- lapply(operation$examples, make_doc_example, op_name = func)
  result <- paste(examples, collapse = "\n\n")
  result <- paste(c("@examples", result), collapse = "\n")
  result <- comment(result, "#'")
  return(result)
}

#-------------------------------------------------------------------------------

# Write a UTF-8 encoded file
# Use `writeLines(..., useBytes = TRUE)` to write UTF-8 on Windows. Otherwise
# Pandoc will occasionally fail with errors like `pandoc.exe: Cannot decode
# byte '\x97': Data.Text.Internal.Encoding.decodeUtf8: Invalid UTF-8 stream`.
write_utf8 <- function(x, file) {
  writeLines(rlang::as_utf8_string(x), con = file, useBytes = TRUE)
}

# Escape unmatched characters
#
# Check whether there are an equal number of each of a pair of characters, and
# if not, escape all such characters. Escape all such characters since it is
# hard to determine which particular characters have no match.
#
# We need to escape unmatched characters because R will not install packages
# whose documentation includes code snippets with unmatched quotes or
# parentheses.
fix_unmatched_char <- function(x, pair) {
  start <- substr(pair, 1, 1)
  stop <- substr(pair, 2, 2)
  ret <- unlist(lapply(x, function(string) {
    count_start <- stringr::str_count(string, stringr::coll(start))
    count_stop <- stringr::str_count(string, stringr::coll(stop))
    result <- string
    if (start == stop) {
      unmatched <- count_start %% 2 != 0
      if (unmatched) {
        result <- gsub(start, paste0("\\", start), result, fixed = TRUE)
      }
    } else {
      unmatched <- count_start != count_stop
      if (unmatched) {
        result <- gsub(start, paste0("\\", start), result, fixed = TRUE)
        result <- gsub(stop, paste0("\\", stop), result, fixed = TRUE)
      }
    }
    result
  }))
  return(ret)
}

# Escape unmatched characters for multiple pairs of characters
fix_unmatched_chars <- function(x, pairs = c("''", '""', "()")) {
  result <- x
  for (pair in pairs) {
    result <- fix_unmatched_char(result, pair)
  }
  return(result)
}

# Replace special markdown characters with HTML character codes.
fix_markdown_chars <- function(x, translate = c("\\[" = "&#91;", "\\]" = "&#93;")) {
  result <- x
  for (i in seq_along(translate)) {
    from <- names(translate)[i]
    to <- translate[i]
    result <- gsub(from, to, result, fixed = TRUE)
  }
  return(result)
}

# Convert an R list to a string.
# The resulting string will not be valid for lists whose names are invalid.
list_to_string <- function(x, quote = TRUE) {

  if (is.atomic(x) && length(x) == 1 && is.null(names(x))) {
    if (quote && is.character(x)) s <- sprintf('"%s"', x)
    else s <- as.character(x)
    return(s)
  }

  result <- "list("
  for (i in seq_along(x)) {
    key <- names(x)[i]
    value <- list_to_string(x[[i]], quote)
    if (!is.null(key) && key != "") s <- sprintf("%s = %s", key, value)
    else s <- value
    if (i > 1) s <- paste0(", ", s)
    result <- paste0(result, s)
  }
  result <- paste0(result, ")")

  return(result)
}

# Break a string into lines that are at most `chars` characters long.
break_lines <- function(s, chars = 72) {
  regex <- sprintf("(.{1,%i})(\\s|$)", chars)
  result <- gsub(regex, "\\1\n", s)
  return(result)
}

# Format code given as a string -- add indentation, etc.
format_code <- function(s) {
  result <- formatR::tidy_source(text = s)
  return(result)
}

# Format examples
clean_example <- function(s) {

  # If empty return an empty string
  if (!nchar(s)) return("")

  # A stack to hold open perens
  open_perens <- c()

  # A stack to hold open quotes
  open_quotes <- FALSE

  # Define tabs as 2 spaces
  num_spaces <- 2
  tab_string <- paste0(rep(" ", num_spaces), collapse = "")

  # The output string
  cleaned <- ""

  for (i in 1:nchar(s)) {

    # Get the next character
    prev_character <- substr(s, i - 1, i - 1)
    current_character <- substr(s, i, i)
    next_character <- substr(s, i + 1, i + 1)

    if (open_quotes) {
      # If within quotes format normally

      if (current_character == '"') {
        # Check for end quotes
        open_quotes <- FALSE
      }
      cleaned <- paste0(cleaned, current_character)

    } else if (current_character == '"') {
      # If there is a quotation mark format next characters normally
      open_quotes <- TRUE
      cleaned <- paste0(cleaned, current_character)

    } else if (current_character == "(" & next_character != ")") {
      # Start a new line after each open peren and increase indent

      # For open perens, add to stack and indent next line
      open_perens <- c(open_perens, "(")

      indents <- paste0(rep(tab_string, length(open_perens)), collapse = "")

      cleaned <- paste0(cleaned, "(\n", indents)

    } else if (current_character == ")" & prev_character != "(") {
      # Reduce tab and start new line after each closing peren

      # Remove item from open_perens stack
      if (length(open_perens) > 1) {
        open_perens <- open_perens[1:(length(open_perens) - 1)]
      } else {
        open_perens <- c()
      }

      indents <- paste0(rep(tab_string, length(open_perens)), collapse = "")

      cleaned <- paste0(cleaned, "\n", indents, ")")

    } else if (current_character == ",") {
      # Add new line after every comma

      indents <- paste0(rep(tab_string,
                            max(length(open_perens) - 1, 0)
      ),
      collapse = "")

      space_number <- ifelse(substr(s, i + 1, i + 1) == " ",
                             num_spaces - 1, num_spaces)
      final_tab = paste0(rep(" ", space_number), collapse = "")
      cleaned <- paste0(cleaned, ",\n", indents, final_tab)

    } else{
      # Add other characters to new output string
      cleaned <- paste0(cleaned, current_character)
    }
  }

  cleaned
}

# Escapes special characters in documentation
escape_special_characters <- function(text) {
  result <- gsub("%", "\\\\%", text)
  return(result)
}

# Add comment characters at the beginning of each line of the given string.
comment <- function(s, char = "#") {
  if (length(s) == 0) return(char)
  lines <- strsplit(s, "\n", fixed = TRUE)[[1]]
  result <- paste(char, lines, sep = " ", collapse = "\n")
  return(result)
}

# Preprocess HTML to fix issues that R flags when installing packages.
preprocess <- function(text) {
  if (length(text) == 1 && text == "") return("")
  html <- xml2::read_html(text)
  code <- xml2::xml_find_all(html, ".//code")
  if (length(code) > 0) {
    code_text <- xml2::xml_text(code)
    xml2::xml_text(code) <- fix_unmatched_chars(code_text)
    result <- as.character(xml2::xml_children(html))
  } else {
    result <- text
  }
  result
}

# Remove extra lines that break roxygen2.
postprocess <- function(markdown) {
  keep <- markdown != "<!-- -->"
  result <- markdown[keep]

  # Fix brackets after converting to HTML because if we do it before converting
  # to HTML, Pandoc just converts HTML codes back to the original brackets.
  # TODO: Fix the extra space inserted by Pandoc.
  result <- fix_markdown_chars(result)
  result
}

# Convert HTML to markdown
html_to_markdown <- function(html, wrap = TRUE) {
  preprocessed <- preprocess(html)
  temp_in <- tempfile()
  write_utf8(preprocessed, temp_in)
  temp_out <- tempfile()
  if (wrap) {
    options <- c()
  } else {
    options <- c("--wrap=none")
  }
  rmarkdown::pandoc_convert(temp_in, output = temp_out,
                            from = "html", to = "markdown",
                            options = options)
  markdown <- readLines(temp_out)
  result <- postprocess(markdown)
  result
}

# Convert documentation to Markdown.
convert <- function(docs, wrap = TRUE) {
  if (is.null(docs) || docs == "") return("")
  if (grepl("^<", docs)) {
    html_to_markdown(docs, wrap)
  } else {
    strsplit(docs, "\n")[[1]]
  }
}

# Get the first sentence from a block of text.
first_sentence <- function(x) {
  if (is.list(x)) x <- as.character(x)
  if (length(x) == 1 && x == "") return("")
  first <- strsplit(x, "\\.")[[1]][[1]]
  return(first)
}

# Add example values, e.g. "string" for strings, to an input or output shape.
add_example_values <- function(shape) {
  if (type(shape) == "scalar") {
    t <- tag_get(shape, "type")
    if (tag_has(shape, "enum")) {
      t <- "enum"
      enum <- tag_get(shape, "enum")
    }
    result <- switch(
      t,
      blob = "raw",
      boolean = "TRUE|FALSE",
      double = "123.0",
      enum = paste0(sprintf('"%s"', enum), collapse = "|"),
      float = "123.0",
      integer = "123",
      long = "123",
      string = '"string"',
      timestamp = 'as.POSIXct("2015-01-01")',
      t
    )
  } else {
    result <- shape
    for (i in seq_along(result)) {
      result[[i]] <- add_example_values(result[[i]])
    }
  }
  return(result)
}

# Return the object with all strings masked according to `masks`, e.g.
# `mask("foobar", list("b" = "&#98;"))` --> "foo&#98;ar"
mask <- function(object, masks) {
  if (is.atomic(object)) {
    if (is.character(object)) {
      result <- object
      for (i in seq_along(masks)) {
        from <- names(masks)[i]
        to <- masks[[i]]
        result <- gsub(from, to, result, fixed = TRUE)
      }
      return(result)
    }
    return(object)
  }
  result <- object
  for (i in seq_along(object)) {
    result[[i]] <- mask(result[[i]], masks)
  }
  return(result)
}

unmask <- function(object, masks) {
  unmasks <- list()
  for (i in seq_along(masks)) {
    from <- masks[[i]]
    to <- names(masks)[i]
    unmasks[[from]] <- to
  }
  return(mask(object, unmasks))
}
