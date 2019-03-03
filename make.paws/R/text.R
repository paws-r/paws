# Write a UTF-8 encoded file
# Use `writeLines(..., useBytes = TRUE)` to write UTF-8 on Windows. Otherwise
# Pandoc will occasionally fail with errors like `pandoc.exe: Cannot decode
# byte '\x97': Data.Text.Internal.Encoding.decodeUtf8: Invalid UTF-8 stream`.
write_utf8 <- function(x, file) {
  writeLines(rlang::as_utf8_string(x), con = file, useBytes = TRUE)
}

# Convert HTML to other formats using Pandoc.
html_to <- function(html, to) {
  if (is.null(html)) return("")
  temp_in <- tempfile()
  write_utf8(html, temp_in)
  temp_out <- tempfile()
  rmarkdown::pandoc_convert(temp_in, output = temp_out,
                            from = "html", to = to)
  result <- readLines(temp_out)
  result
}

# Convert HTML to markdown
html_to_markdown <- function(html) {
  html_to(html, "markdown")
}

html_to_text <- function(html) {
  html_to(html, "plain")
}

# Return the object with all strings masked according to `masks`, e.g.
# `mask("foobar", list("b" = "&#98;"))` --> "foo&#98;ar"
mask <- function(object, masks, regexp = FALSE) {
  if (is.atomic(object)) {
    if (is.character(object)) {
      result <- object
      for (i in seq_along(masks)) {
        from <- names(masks)[i]
        to <- masks[[i]]
        result <- gsub(from, to, result, fixed = !regexp, perl = regexp)
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

# Do the opposite of mask. `unmask(mask(foo, bar), bar)` == `foo`
unmask <- function(object, masks) {
  unmasks <- list()
  for (i in seq_along(masks)) {
    from <- masks[[i]]
    to <- names(masks)[i]
    unmasks[[from]] <- to
  }
  return(mask(object, unmasks))
}
