#' @importFrom paws.common tag_get tag_has type
NULL

# Make an operation's Roxygen documentation.
make_docs_long <- function(operation, api) {
  title <- make_doc_title(operation)
  description <- make_doc_desc(operation, api)
  usage <- make_doc_usage(operation, api)
  params <- make_doc_params(operation, api)
  value <- make_doc_value(operation, api)
  request <- make_doc_request(operation, api)
  examples <- make_doc_examples(operation, api)
  rdname <- make_doc_rdname(operation, api)
  alias <- make_doc_alias(operation, api)
  docs <- glue::glue_collapse(
    c(title,
      description,
      usage,
      params,
      value,
      request,
      examples,
      "#' @keywords internal",
      rdname,
      alias),
    sep = "\n#'\n"
  )
  return(as.character(docs))
}

# Make a short version of the documentation for CRAN.
make_docs_short <- function(operation, api) {
  title <- make_doc_title(operation)
  description <- make_doc_desc_short(operation, api)
  link_to_web_docs <- make_doc_link_to_web_docs(operation, api)
  params <- make_doc_params(operation, api)
  rdname <- make_doc_rdname(operation, api)
  docs <- glue::glue_collapse(
    c(title,
      description,
      link_to_web_docs,
      params,
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

# Make the description documentation.
make_doc_desc <- function(operation, api) {
  docs <- convert(operation$documentation, package_name(api), links = get_links(api))
  if (length(docs) == 1 && docs == "") docs <- get_operation_title(operation)
  description <- glue::glue("#' {docs}")
  description <- glue::glue_collapse(description, sep = "\n")
  description <- paste("#' @description", description, sep = "\n")
  return(as.character(description))
}

# Make a short description of the operation with only the first paragraph.
make_doc_desc_short <- function(operation, api) {
  docs <- convert(operation$documentation, package_name(api), links = get_links(api))
  if (length(docs) == 1 && docs == "") docs <- get_operation_title(operation)
  else docs <- first_paragraph(docs)
  description <- glue::glue("#' {docs}")
  description <- glue::glue_collapse(description, sep = "\n")
  description <- paste("#' @description", description, sep = "\n")
  return(as.character(description))
}

# Make a link to the web documentation.
make_doc_link_to_web_docs <- function(operation, api) {
  service <- package_name(api)
  operation <- get_operation_name(operation)
  url <- sprintf("https://www.paws-r-sdk.com/docs/%s_%s/", service, operation)
  result <- sprintf("See [%s](%s) for full documentation.", url, url)
  result <- comment(result, "#'")
  return(result)
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
    params <- lapply(inputs, function(input) {
      param <- input$member_name
      required <- input$required
      documentation <- convert(input$documentation, package_name(api), links = get_links(api))
      documentation <- convert_headings_to_bold(documentation)
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
make_doc_value <- function(operation, api) {
  section <- function(x) comment(paste(c("@return", x), collapse = "\n"), "#'")

  shape_name <- operation$output$shape
  if (is.null(shape_name)) {
    return(section("An empty list."))
  }
  shape <- make_shape(list(shape = shape_name), api)
  if (length(shape) == 0) {
    return(section("An empty list."))
  }
  args <- add_example_values(shape)
  masks <- list("\\(" = "&#40;", "\\)" = "&#41;")
  args <- mask(args, masks)
  call <- list_to_string(args, quote = FALSE)
  call <- unmask(clean_example(call), masks)
  call <- paste("```", call, "```", sep = "\n")
  overview <- "A list with the following syntax:"
  return(section(c(overview, call)))
}

# Return a string with an operation example's arguments.
make_doc_example_args <- function(input) {
  if (length(input) == 0) return("")
  args <- paste(trimws(utils::capture.output(dput(input))), collapse = "")
  result <- gsub("^list\\((.*)\\)$", "\\1", args)
  result <- gsub('\\\\+"', '"', result) # Delete escapes before quotes.
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
    if (nchar(x) <= 95) {
      x <- escape_unmatched_chars(x, '"')
      x <- escape_unmatched_pairs(x, c("{" = "}"))
      return(x)
    }
    quotes <- stringr::str_locate_all(x, '"')[[1]][, 1]
    first_quote <- quotes[1]
    last_quote <- quotes[length(quotes)]
    first <- substr(x, 1, first_quote)
    middle <- substr(x, first_quote+1, nchar(x)-1)
    middle <- paste0(substr(middle, 1, 80-nchar(first)-5), "...")
    middle <- escape_unmatched_chars(middle, '"')
    middle <- escape_unmatched_pairs(middle, c("{" = "}"))
    last <- substr(x, last_quote, nchar(x))
    trunc <- paste0(first, middle, last)
    return(trunc)
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

make_doc_rdname <- function(operation, api, len = 60) {
  svc_name <- package_name(api)
  op_name <- get_operation_name(operation)
  rd_name <- sprintf("%s_%s", svc_name, op_name)
  if (nchar(rd_name) > len) {
    rd_name <- shorten_rdname(svc_name, op_name, len)
  }
  sprintf("#' @rdname %s", rd_name)
}

make_doc_alias <- function(operation, api) {
  svc_name <- package_name(api)
  op_name <- get_operation_name(operation)
  result <- sprintf("#' @aliases %s_%s", svc_name, op_name)
}

#-------------------------------------------------------------------------------

# Get the first paragraph from a block of text.
first_paragraph <- function(x) {
  blank_line <- which(x == "")
  first_paragraph <- ifelse(length(blank_line) >= 1, blank_line[1] - 1, length(x))
  paragraph <- paste(x[1:first_paragraph], collapse = " ")
  paragraph <- gsub(" +", " ", paragraph)
  return(paragraph)
}

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

# Convert headings (the # at the beginning of lines) to bold.
# This is done because R CMD check gives warnings when there are headings
# without bodies, and the easiest way of removing these is to convert them to
# bold.
convert_headings_to_bold <- function(s) {
  result <- gsub("^#+ (.*)", "\\*\\*\\1\\*\\*", s)
  return(result)
}

# Add comment characters at the beginning of each line of the given string.
comment <- function(s, char = "#") {
  if (length(s) == 0) return(char)
  lines <- strsplit(s, "\n", fixed = TRUE)[[1]]
  result <- paste(char, lines, sep = " ", collapse = "\n")
  return(result)
}

comment_bold <- function(x){
  sprintf("\\strong{%s}", x)
}

# create roxygen2 list from list
comment_list_item <- function(items = list()){
  items_names <- names(items)
  items_list <- ""
  for (i in items_names) {
    if (is.list(items[[i]])) {
      items_list[i] <- sprintf("\\item{%s:} {%s}", comment_bold(i), comment_list_itemize(items[[i]]))
    } else {
      items_list[i] <- sprintf("\\item{%s:} {%s}", comment_bold(i), items[[i]])
    }
  }
  return(paste(items_list, collapse = "\n"))
}

comment_list_itemize <- function(items){
  paste(
    "\\itemize{",
    comment_list_item(items),
    "}", sep = "\n"
  )
}

#' Convert documentation to Markdown.
#'
#' The conversion pipeline goes
#' 1. raw html
#' 2. escape unmatched quotes in code snippets
#' 3. check whether links are valid and delete dead links
#' 4. convert html to markdown with Pandoc
#' 5. escape special characters
#' 6. fix within-package links
#'
#' Unmatched quotes are escaped while still in html because it is easier to
#' identify code snippets as they are all in <code></code> nodes.
#'
#' Likewise, we check the validity of links while in html because it is easy
#' to find all <a> nodes.
#'
#' @param docs An HTML string to be converted to Roxygen markdown.
#' @param service An optional service name which is currently only used to
#'   distinguish converted text between services in the cache. On rare
#'   occasions, two services have identical inputs to `convert` but have
#'   different outputs due to internal links with different targets,
#'   e.g. "[foo][svc1_foo]" vs "[foo][svc2_foo]".
#' @param links An optional list of operation names, made with `get_links`.
#'   If any links in the provided document have link text that matches one of
#'   the operation names, the link will be changed to point to the operation's
#'   R help topic.
#'
#' @noRd
convert <- function(docs, service = "", links = c()) {
  if (is.null(docs) || docs == "") return("")
  docs <- trimws(docs)
  cached_expr(list("convert", docs = docs, service = service), {
    if (!grepl("^<", docs)) {
      docs <- sprintf("<body>%s</body>", docs)
    }
    result <- clean_html(docs, links)
    result <- html_to_markdown(result)
    result <- clean_markdown(result)
    result
  })
}

# Clean an HTML string to avoid issues that result in invalid Rd
# R documentation files.
clean_html <- function(text, links = c()) {
  if (length(text) == 1 && text == "") return("")
  html <- xml2::read_html(text)
  as.character(clean_html_node(html, links))
}

# Clean an HTML node.
# Note: This function, and all the clean_html functions, modify their inputs.
clean_html_node <- function(node, links = c()) {
  switch(
    xml2::xml_name(node),
    a = clean_html_a(node, links),
    code = clean_html_code(node, links),
    dt = clean_html_dt(node),
    dd = clean_html_dd(node),
    i = clean_html_i(node),
    text = clean_html_text(node)
  )
  for (child in xml2::xml_contents(node)) {
    clean_html_node(child, links)
  }
  node
}

# Clean code elements.
clean_html_code <- function(node, links = c()) {
  text <- xml2::xml_text(node)

  # Replace API operation names with links to corresponding R function names.
  internal_link <- links[[trimws(text)]]
  if (!is.null(internal_link)) {

    # Don't add a link if this node is already within a link.
    parent <- xml2::xml_parent(node)
    if (xml2::xml_name(parent) == "a") {
      xml2::xml_text(node) <- internal_link$r_name
      return(NULL)
    }

    # Do add a link if this node is not within a link, or if the link is
    # a child of this node.
    link <- xml2::xml_new_root("a")
    xml2::xml_attr(link, "href") <- internal_link$internal_r_name
    code <- xml2::xml_new_root("code")
    xml2::xml_text(code) <- internal_link$r_name
    xml2::xml_add_child(link, code)
    xml2::xml_replace(node, link)
    return(NULL)
  }

  # Escape unmatched quotes and curly braces in code fragments, which are
  # invalid in Rd files. See https://developer.r-project.org/parseRd.pdf.
  text <- escape_unmatched_chars(text, c('"', "'", "`"))
  text <- escape_unmatched_pairs(text, c("{" = "}"))

  # Keep only the text of the code node, and not any children, e.g. <i> nodes.
  code <- xml2::xml_new_root("code")
  xml2::xml_text(code) <- text
  xml2::xml_replace(node, code)
}

# Clean link elements.
# Use package documentation for links to other operations.
# Check that external links are valid, and if not replace them with the link text.
clean_html_a <- function(node, links = c()) {

  # If the link appears to be to another operation, make it point to the
  # package's documentation for the operation.
  text <- xml2::xml_text(node)
  internal_link <- links[[text]]
  if (!is.null(internal_link)) {
    link <- xml2::xml_new_root("a")
    xml2::xml_attr(link, "href") <- internal_link$internal_r_name
    code <- xml2::xml_new_root("code")
    xml2::xml_text(code) <- internal_link$r_name
    xml2::xml_add_child(link, code)
    xml2::xml_replace(node, link)
    return(NULL)
  }

  url <- xml2::xml_attr(node, "href")
  if (length(url) == 0 || is.na(url)) return(NULL)

  if (startsWith(url, "mailto:")) return(NULL)

  # Add hostname to relative AWS documentation links.
  if (!is.null(url) && grepl("^[a-zA-Z0-9\\-]+/", url)) {
    url <- sprintf("https://docs.aws.amazon.com/%s", url)
  }

  if (!is.null(url) && !startsWith(url, "http")) {
    url <- sprintf("https://%s", url)
  }

  # Check that the URL is valid.
  # Get the new URL if redirected.
  # Delete the URL if unreachable or not found.
  url <- get_url(url)

  # Decode encoded ?, &, and / in URLs.
  if (!is.null(url) && grepl("%", url, fixed = TRUE)) {
    url <- gsub("%3F", "?", url, fixed = TRUE)
    url <- gsub("%26", "&", url, fixed = TRUE)
    url <- gsub("%2F", "/", url, fixed = TRUE)
  }

  xml2::xml_attr(node, "href") <- url
}

# Replace definition title nodes with header nodes.
clean_html_dt <- function(node) {
  xml2::xml_name(node) <- "h3"
}

# Replace definition list nodes with paragraph nodes.
clean_html_dd <- function(node) {
  xml2::xml_name(node) <- "p"
}

# Remove all nested <i> nodes, by changing them to nodes with no formatting.
# CRAN does not allow nested <i> in R documentation.
# We arbitrarily remove all the inner <i> nodes because it's easier.
clean_html_i <- function(node) {
  remove_html_i <- function(x) {
    xml2::xml_name(x) <- "span" # Use node type that gets no formatting.
    for (child in xml2::xml_contents(x)) {
      remove_html_i(child)
    }
  }
  for (child in xml2::xml_contents(node)) {
    remove_html_i(child)
  }
}

clean_html_text <- function(node) {
  # Mask { and } to avoid problems in Roxygen LaTeX.
  text <- xml2::xml_text(node)
  xml2::xml_text(node) <- mask(text, c("{" = "\\{", "}" = "\\}"))
}

# Escape unmatched characters.
# R documentation will fail if there are unmatched quotes in code snippets.
# See https://developer.r-project.org/parseRd.pdf.
escape_unmatched_chars <- function(x, chars) {
  result <- x
  for (char in chars) {
    if (stringr::str_count(result, stringr::fixed(char)) %% 2 != 0) {
      result <- gsub(char, paste0("\\", char), result, fixed = TRUE)
    }
  }
  result
}

escape_unmatched_pairs <- function(x, pairs) {
  result <- x
  count <- function(string, char) stringr::str_count(string, stringr::fixed(char))
  for (i in seq_along(pairs)) {
    a <- names(pairs)[i]
    b <- pairs[i]
    if (count(result, a) != count(result, b)) {
      result <- gsub(a, paste0("\\", a), result, fixed = TRUE)
      result <- gsub(b, paste0("\\", b), result, fixed = TRUE)
    }
  }
  result
}

# Fix misc issues with markdown that are not addressable by Pandoc.
clean_markdown <- function(markdown) {
  # Delete HTML comments leftover.
  keep <- markdown != "<!-- -->"
  result <- markdown[keep]

  # Unicode character codes: \\uxxxx to `U+xxxx`
  result <- gsub("\\\\u([0-9a-fA-F]{4})", "`U+\\1`", result)

  # Escape backslashes followed by characters so LaTeX doesn't interpret them
  # as escape sequences.
  result <- gsub("\\\\([a-zA-Z])", "\\\\\\\\\\1", result)

  # Remove certain characters not allowed by LaTeX.
  result <- gsub("\U2028", "", result)

  # Translate greek phrases:
  result <- gsub(
    "`\U0391\U03B8\U03AE\U03BD\U03B1, \U0395\U03BB\U03BB\U03AC\U03B4\U03B1`",
    r"(\\eqn{A\\Theta\\eta\\nu\\sigma, E\\lambda\\lambda\\alpha\\delta})",
    result,
    perl = TRUE
  )
  result <- gsub(
    "`\U0391\U03B8\U03AE\U03BD\U03B1`",
    r"(\\eqn{A\\Theta\\eta\\nu\\alpha})",
    result,
    perl = TRUE
  )

  # @ symbol, escaped for Roxygen.
  # See http://r-pkgs.had.co.nz/man.html#roxygen-comments.
  result <- gsub("@", "@@", result)

  # Convert \\{ and \\} back to \{ and \}. Pandoc adds an extra \.
  result <- unmask(result, c("\\{" = "\\\\{", "\\}" = "\\\\}"))

  # Convert \_ to _. Pandoc adds an \.
  result <- gsub("\\_", "_", result, fixed = TRUE)

  # Convert 2+ backslashes to \\.
  result <- gsub("\\\\{2,}", "\\\\\\\\", result, perl = TRUE)

  result <- fix_internal_links(result)

  return(result)
}

# Pandoc cannot create reference links (e.g. [foo][help_url]) from HTML. To do
# that, we search for what look like package reference links, e.g.
# [foo](help_url), and change them to [foo][help_url].
fix_internal_links <- function(x) {
  link_text <- "(\\[[^\\]]+\\])"
  link_url <- "\\(([a-z0-9_]+)\\)"
  result <- gsub(paste0(link_text, link_url), "\\1[\\2]", x, perl = TRUE)
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
  docs <- html_to_text(operation$documentation)
  paragraph <- first_paragraph(docs)
  title <- first_sentence(paragraph)
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
  cleaned <- vector("character",nchar(s))

  for (i in 1:nchar(s)){
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
      cleaned[[i]] <- current_character

    } else if (current_character == '"') {
      # If there is a quotation mark format next characters normally
      open_quotes <- TRUE
      cleaned[[i]] <- current_character

    } else if (current_character == "(" & next_character != ")") {
      # Start a new line after each open peren and increase indent

      # For open perens, add to stack and indent next line
      open_perens <- c(open_perens, "(")
      indents <- paste0(rep(tab_string, length(open_perens)), collapse = "")
      cleaned[[i]] <- paste0("(\n", indents)

    } else if (current_character == ")" & prev_character != "(") {
      # Reduce tab and start new line after each closing peren

      # Remove item from open_perens stack
      if (length(open_perens) > 1) {
        open_perens <- open_perens[1:(length(open_perens) - 1)]
      } else {
        open_perens <- c()
      }
      indents <- paste0(rep(tab_string, length(open_perens)), collapse = "")
      cleaned[[i]] <- paste0("\n", indents, ")")

    } else if (current_character == ",") {
      # Add new line after every comma

      indents <- paste0(rep(tab_string, max(length(open_perens) - 1, 0)), collapse = "")
      space_number <- (if(substr(s, i + 1, i + 1) == " ") num_spaces - 1 else num_spaces)
      final_tab = paste0(rep(" ", space_number), collapse = "")
      cleaned[[i]] <- paste0(",\n", indents, final_tab)

    } else {
      # Add other characters to new output string
      cleaned[[i]] <- current_character
    }
  }
  paste(cleaned, collapse = "")
}

# Create a list of an API's operations and the corresponding R function names.
get_links <- function(api) {
  links <- list()
  for (operation in api$operations) {
    operation_name <- get_operation_name(operation)
    links[[operation$name]] <- list(
      r_name = sprintf("%s", operation_name),
      internal_r_name = sprintf("%s_%s", package_name(api), operation_name)
    )
  }
  return(links)
}

shorten_rdname <- function(svc_name, op_name, len) {
  prts <- strsplit(op_name, "_")[[1]]
  len_svc <- nchar(svc_name) + len %/% length(prts)
  cut_off <- floor((len - len_svc) / length(prts))
  op_name <- paste(
    paste0(substr(prts, 1, cut_off)),
    collapse = "_"
  )
  return(sprintf("%s_%s", svc_name, op_name))
}
