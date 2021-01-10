#' @importFrom paws.common tag_get tag_has type
NULL

# Make an operation's Roxygen documentation.
make_docs <- function(operation, api) {
  title <- make_doc_title(operation)
  description <- make_doc_desc(operation)
  usage <- make_doc_usage(operation, api)
  params <- make_doc_params(operation, api)
  request <- make_doc_request(operation, api)
  response <- make_doc_response(operation, api)
  examples <- make_doc_examples(operation, api)
  rdname <- make_doc_rdname(operation, api)
  docs <- glue::glue_collapse(
    c(title,
      description,
      usage,
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
  title <- get_operation_title(operation)
  title <- comment(break_lines(title), "#'")
  return(as.character(title))
}

# Make the description and details documentation.
make_doc_desc <- function(operation) {
  docs <- convert(operation$documentation)
  description <- glue::glue("#' {docs}")
  description <- glue::glue_collapse(description, sep = "\n")
  description <- paste("#' @description", description, sep = "\n")
  return(as.character(description))
}

# Make the usage section.
# Ensure that there are no lines over 100 characters.
make_doc_usage <- function(operation, api) {
  if (!is.null(operation$input$shape)) {
    shape <- api$shapes[[operation$input$shape]]
    params <- names(shape$members)
  } else {
    params <- c()
  }
  service_name <- package_name(api)
  operation_name <- get_operation_name(operation)
  args <- paste(params, collapse = ", ")
  usage <- glue::glue("{service_name}_{operation_name}({args})")
  usage <- break_lines(usage, at = c("\\s", "\\("))
  usage <- gsub("\n *$", "", usage) # delete empty lines
  usage <- gsub("\n", "\n  ", usage) # indent subsequent lines
  usage <- comment(usage, "#'")
  usage <- paste("#' @usage", usage, sep = "\n")
  usage
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
  func <- sprintf("svc$%s", get_operation_name(operation))
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

  # Truncate long lines to avoid R CMD check warnings.
  # For strings containing quotes, e.g. JSON, keep an even number of quotes
  # to avoid further warnings from R CMD check about unmatched quotes.
  lines <- strsplit(call, "\n")[[1]]
  truncated <- lapply(lines, function(x) {
    trunc <- gsub('^(.{92})(.*)"(.)?$', '\\1..."\\3', x)
    # Delete extra unmatched quotation marks.
    if (stringr::str_count(trunc, '\"') %% 2 != 0) {
      trunc <- gsub('\\\\"[^"]*"(,)?$', '..."\\1', trunc)
    }
    # Fix special case \..." -> ..." (extra backslash)
    trunc <- gsub('\\\\+(\\.){3}"(,)?$', '..."\\2', trunc)
    # Escape braces.
    trunc <- gsub("{", "\\{", trunc, fixed = TRUE)
    trunc <- gsub("}", "\\}", trunc, fixed = TRUE)
    trunc
  })
  call <- paste(truncated, collapse = "\n")

  desc <- comment(break_lines(example$description))
  # Replace exactly double backticks with single backtick
  desc <- gsub("(?<!`)`{2}(?!`)", "`", desc, perl = T)
  result <- paste(desc, call, sep = "\n")
  return(result)
}

# Make all operation examples provided in the operation object.
make_doc_examples <- function(operation, api) {
  func <- sprintf("svc$%s", get_operation_name(operation))
  examples <- lapply(operation$examples, make_doc_example, op_name = func)
  if (length(examples) == 0) return(NULL)
  result <- paste(examples, collapse = "\n\n")
  result <- paste(c("@examples", "\\dontrun{", result, "}"), collapse = "\n")
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
break_lines <- function(s, chars = 72, at = "\\s") {
  regex <- sprintf("(.{1,%i})(%s|$)", chars, paste(at, collapse = "|"))
  result <- gsub(regex, "\\1\\2\n", s)
  result <- gsub(" +\n", "\n", result)
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
#
# The conversion pipeline goes
# 1. raw html
# 2. escape unmatched quotes in code snippets
# 3. check whether links are valid and delete dead links
# 4. convert html to markdown with Pandoc
# 5. escape special characters
# 6. finished documentation added to generated R code
#
# Unmatched quotes are escaped while still in html because it is easier to
# identify code snippets as they are all in <code></code> nodes.
#
# Likewise, we check the validity of links while in html because it is easy
# to find all <a> nodes.
#
# Special characters % { } \ are escaped after converting to html because
# this avoids any changes that would otherwise be made by Pandoc.
convert <- function(docs) {
  if (is.null(docs) || docs == "") return("")
  cached_expr(list("convert", docs = docs), {
    if (grepl("^<", docs)) {
      html <- clean_html(docs)
      result <- html_to_markdown(html)
    } else {
      result <- strsplit(docs, "\n")[[1]]
    }
    result <- escape_special_chars(result)
    result
  })
}

# Clean an HTML string to avoid issues that result in invalid Rd
# R documentation files.
clean_html <- function(text) {
  if (length(text) == 1 && text == "") return("")
  html <- xml2::read_html(text)
  as.character(clean_html_node(html))
}

# Clean an HTML node.
# Note: This function, and all the clean_html functions, modify their inputs.
clean_html_node <- function(node) {
  switch(
    xml2::xml_name(node),
    code = clean_html_code(node),
    a = clean_html_a(node),
    dt = clean_html_dt(node),
    dd = clean_html_dd(node)
  )
  for (child in xml2::xml_children(node)) {
    child <- clean_html_node(child)
  }
  node
}

# Escape unmatched quotes in code snippets, which are invalid in Rd files.
# See https://developer.r-project.org/parseRd.pdf.
clean_html_code <- function(node) {
  text <- as.character(node)
  text <- gsub("^<code>(.*)</code>$", "\\1", text)
  text <- escape_unmatched_quotes(text)

  # R's Rd generator inserts garbage when it sees some un-escaped brackets
  # within code snippets. To avoid, add escaping backslashes. We need two
  # backslashes instead of one, since Pandoc converts "\[" to "[".
  text <- mask(text, c("[" = "\\\\[", "]" = "\\\\]"))

  new_node <- xml2::xml_new_root("code")
  xml2::xml_text(new_node) <- text
  xml2::xml_replace(node, new_node)
}

# Check that links are valid, and if not replace them with the link text.
clean_html_a <- function(node) {
  url <- xml2::xml_attr(node, "href")
  if (length(url) == 0 || is.na(url)) return()

  if (startsWith(url, "mailto:")) return()

  # Add hostname to relative AWS documentation links.
  if (grepl("^[a-zA-Z0-9\\-]+/", url)) {
    url <- sprintf("https://docs.aws.amazon.com/%s", url)
    xml2::xml_attr(node, "href") <- url
  }

  if (!startsWith(url, "http")) {
    url <- sprintf("https://%s", url)
    xml2::xml_attr(node, "href") <- url
  }

  # Decode encoded ? and & in URLs.
  if (grepl("%", url, fixed = TRUE)) {
    url <- gsub("%3F", "?", url, fixed = TRUE)
    url <- gsub("%26", "&", url, fixed = TRUE)
    xml2::xml_attr(node, "href") <- url
  }

  # Get the URL, if available.
  # Delete URLs when the page is unreachable or explicitly missing.
  xml2::xml_attr(node, "href") <- get_url(url)
}

# Replace definition title nodes with header nodes.
clean_html_dt <- function(node) {
  xml2::xml_name(node) <- "h3"
}

# Replace definition list nodes with paragraph nodes.
clean_html_dd <- function(node) {
  xml2::xml_name(node) <- "p"
}

# Escape special characters % { }, and single \ not followed by another special
# character. These cause problems in R documentation Rd files.
# Do not escape \ when followed by:
#   1. % { } \ ' " ` -- escaped special Rd or LaTeX characters
#   2. * [ ] -- escaped markdown characters
#   3. ~ -- ???
# See https://developer.r-project.org/parseRd.pdf.
escape_special_chars <- function(text) {
  result <- text

  # Single \ -- not following another \ and not preceding a special character
  result <- gsub("(?<!\\\\)\\\\(?![\\\\%{}'\"`\\*~\\[\\]])", "\\\\\\\\", result, perl = TRUE)

  # Special case: `\`
  result <- gsub("`\\`", "`\\\\`", result, fixed = TRUE)

  # Special characters -- not already escaped
  for (char in c("{", "}")) {
    result <- gsub(paste0("(?<!\\\\)", char), paste0("\\\\", char), result, perl = TRUE)
  }

  # Unicode character codes: \\uxxxx to `U+xxxx`
  result <- gsub("\\\\\\\\u([0-9a-fA-F]{4})", "`U+\\1`", result)

  # Control character codes: e.g. \n to `\\n`
  result <- gsub("(\\\\)+([a-zA-Z])\\b", "`\\\\\\\\\\2`", result)

  # @ symbol, escaped for Roxygen.
  # See http://r-pkgs.had.co.nz/man.html#roxygen-comments.
  result <- gsub("@", "@@", result)

  result
}

# Escape unmatched characters.
# R documentation will fail if there are unmatched quotes in code snippets.
# See https://developer.r-project.org/parseRd.pdf.
escape_unmatched_quotes <- function(x) {
  result <- x
  for (char in c("'", '"', "`")) {
    if (stringr::str_count(result, stringr::fixed(char)) %% 2 != 0) {
      result <- gsub(char, paste0("\\", char), result, fixed = TRUE)
    }
  }
  result
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

# Returns the title of an operation (the first sentence of its description).
get_operation_title <- function(operation) {
  docs <- paste(html_to_text(operation$documentation), collapse = " ")
  docs <- gsub(" +", " ", docs)
  title <- first_sentence(docs)
  title <- mask(title, c("[" = "&#91;", "]" = "&#93;"))
  if (length(title) == 0 || title == "") {
    title <- gsub("_", " ", get_operation_name(operation))
    substr(title, 1, 1) <- toupper(substr(title, 1, 1))
  }
  title
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
