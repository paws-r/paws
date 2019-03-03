#' @importFrom paws.common tag_get tag_has type
NULL

# Make an operation's Roxygen documentation.
make_docs <- function(operation, api) {
  title <- make_doc_title(operation)
  description <- make_doc_desc(operation)
  params <- make_doc_params(operation, api)
  request <- make_doc_request(operation, api)
  response <- make_doc_response(operation, api)
  examples <- make_doc_examples(operation, api)
  rdname <- make_doc_rdname(operation, api)
  docs <- glue::glue_collapse(
    c(title,
      description,
      params,
      request,
      examples,
      "#' @keywords internal",
      rdname),
    sep = "\n#'\n"
  )
  return(as.character(docs))
}

# Make the documentation title.
make_doc_title <- function(operation) {
  docs <- paste(html_to_text(operation$documentation), collapse = " ")
  docs <- gsub(" +", " ", docs)
  title <- first_sentence(docs)
  title <- mask(title, c("[" = "&#91;", "]" = "&#93;"))
  title <- comment(break_lines(title), "#'")
  return(as.character(title))
}

# Make the description and details documentation.
make_doc_desc <- function(operation) {
  docs <- convert(operation$documentation)
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
      documentation <- convert(input$documentation)
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

# Return a string showing the operation's request syntax,
# including all parameters.
make_doc_request <- function(operation, api) {
  func <- sprintf("%s$%s", package_name(api), get_operation_name(operation))
  shape_name <- operation$input$shape
  if (!is.null(shape_name)) {
    shape <- make_shape(list(shape = shape_name), api)
    args <- add_example_values(shape)
    masks <- list("\\(" = "&#40;", "\\)" = "&#41;")
    args <- mask(args, masks)
    call <- gsub("^list", func, list_to_string(args, quote = FALSE))
    call <- unmask(clean_example(call), masks)
    call <- paste("```", call, "```", sep = "\n")
    accepted_params <- comment(paste(c("@section Request syntax:", call),
                                     collapse = "\n"), "#'")
    return(accepted_params)
  }
  return("")
}

# Return a string with a description of the operation's response.
# TODO: Implement.
make_doc_response <- function(operation, api) {
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
  call <- paste0("\\donttest{", call, "}")
  desc <- comment(break_lines(example$description))
  result <- paste(desc, call, sep = "\n")
  return(result)
}

# Make all operation examples provided in the operation object.
make_doc_examples <- function(operation, api) {
  func <- sprintf("%s$%s", package_name(api), get_operation_name(operation))
  examples <- lapply(operation$examples, make_doc_example, op_name = func)
  if (length(examples) == 0) return(NULL)
  result <- paste(examples, collapse = "\n\n")
  result <- paste(c("@examples", result), collapse = "\n")
  result <- comment(result, "#'")
  return(result)
}

make_doc_rdname <- function(operation, api) {
  svc_name <- package_name(api)
  op_name <- get_operation_name(operation)
  result <- sprintf("#' @rdname %s_%s", svc_name, op_name)
}

#-------------------------------------------------------------------------------

# Get the first sentence from a block of text.
first_sentence <- function(x) {
  if (is.list(x)) x <- as.character(x)
  if (length(x) == 1 && x == "") return("")
  first <- strsplit(x, "\\.")[[1]][[1]]
  return(first)
}

# Break a string into lines that are at most `chars` characters long.
break_lines <- function(s, chars = 72) {
  regex <- sprintf("(.{1,%i})(\\s|$)", chars)
  result <- gsub(regex, "\\1\n", s)
  return(result)
}

# Add comment characters at the beginning of each line of the given string.
comment <- function(s, char = "#") {
  if (length(s) == 0) return(char)
  lines <- strsplit(s, "\n", fixed = TRUE)[[1]]
  result <- paste(char, lines, sep = " ", collapse = "\n")
  return(result)
}

# Convert documentation to Markdown.
convert <- function(docs) {
  if (is.null(docs) || docs == "") return("")
  if (grepl("^<", docs)) {
    html <- clean_html(docs)
    result <- html_to_markdown(html)
  } else {
    result <- strsplit(docs, "\n")[[1]]
  }
  result <- escape_special_chars(result)
  result
}

# Clean text to escape special characters that will go into Rd files.
escape_special_chars <- function(text) {
  gsub("([%{}])", "\\\\\\1", text)
}

# Clean HTML to escape special characters that will go into Rd files.
# See https://developer.r-project.org/parseRd.pdf.
clean_html <- function(text) {
  if (length(text) == 1 && text == "") return("")
  html <- xml2::read_html(text)
  code_nodes <- xml2::xml_find_all(html, ".//code")
  xml2::xml_text(code_nodes) <- sapply(xml2::xml_text(code_nodes), clean_code)
  as.character(xml2::xml_children(html))
}

# Escape unmatched characters. Assumes
# R documentation will fail if there are unmatched quotes in code snippets.
# See https://developer.r-project.org/parseRd.pdf.
escape_unmatched_quotes <- function(x) {
  result <- x
  for (char in c("'", '"', "`")) {
    if (stringr::str_count(result, char) %% 2 != 0) {
      result <- gsub(char, paste0("\\", char), result, fixed = TRUE)
    }
  }
  result
}

clean_code <- function(text) {
  escape_unmatched_quotes(text)
}

# Remove extra lines that break roxygen2.
# Preserve square brackets by converting to HTML character codes.
clean_markdown <- function(markdown) {
  keep <- markdown != "<!-- -->"
  result <- markdown[keep]
  result <- mask(result, c("\\[" = "&#91;", "\\]" = "&#93;"))
  result
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

      indents <- paste0(rep(tab_string, max(length(open_perens) - 1, 0)), collapse = "")
      space_number <- ifelse(substr(s, i + 1, i + 1) == " ",
                             num_spaces - 1, num_spaces)
      final_tab = paste0(rep(" ", space_number), collapse = "")
      cleaned <- paste0(cleaned, ",\n", indents, final_tab)

    } else {
      # Add other characters to new output string
      cleaned <- paste0(cleaned, current_character)
    }
  }

  cleaned
}
