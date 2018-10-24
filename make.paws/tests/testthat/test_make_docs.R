context("Make documentation")

test_that("fix_unmatched_char", {
  expect_equal(fix_unmatched_char("(foo)", "()"), "(foo)")
  expect_equal(fix_unmatched_char("(foo", "()"), "\\(foo")
  expect_equal(fix_unmatched_char("foo)", "()"), "foo\\)")
  expect_equal(fix_unmatched_char("foo", "()"), "foo")
  expect_equal(fix_unmatched_char("'foo'", "''"), "'foo'")
  expect_equal(fix_unmatched_char("'foo", "''"), "\\'foo")
  expect_equal(fix_unmatched_char("foo'", "''"), "foo\\'")
  expect_equal(fix_unmatched_char("foo", "''"), "foo")
  expect_equal(fix_unmatched_char("", "''"), "")
})

test_that("fix_markdown_chars", {
  text <- ""
  expect_equal(fix_markdown_chars(text), text)

  text <- "foo"
  expect_equal(fix_markdown_chars(text), text)

  text <- "\\[foo\\]"
  expected <- "&#91;foo&#93;"
  expect_equal(fix_markdown_chars(text), expected)

  text <- "[foo]"
  expect_equal(fix_markdown_chars(text), text)
})

test_that("preprocess", {
  text <- ""
  expect_equal(preprocess(text), text)

  text <- "<body></body>"
  expect_equal(preprocess(text), text)

  text <- "<body>foo</body>"
  expect_equal(preprocess(text), text)

  text <- "<body><code>foo</code></body>"
  expect_equal(preprocess(text), text)

  text <- "<body><code>'foo</code></body>"
  expected <- "<body><code>\\'foo</code></body>"
  expect_equal(preprocess(text), expected)
})

test_that("postprocess", {
  lines <- ""
  expect_equal(postprocess(lines), lines)

  lines <- c("foo", "bar", "baz")
  expect_equal(postprocess(lines), lines)

  lines <- c("foo", "bar", "<!-- -->", "baz")
  expected <- c("foo", "bar", "baz")
  expect_equal(postprocess(lines), expected)

  lines <- c("\\[foo\\]", "bar", "baz")
  expected <- c("&#91;foo&#93;", "bar", "baz")
  expect_equal(postprocess(lines), expected)
})

test_that("html_to_markdown", {
  text <- ""
  expect_equal(html_to_markdown(text), text)

  text <- "<body>foo</body>"
  expected <- "foo"
  expect_equal(html_to_markdown(text), expected)

  text <- "<body><code>bar</code></body>"
  expected <- "`bar`"
  expect_equal(html_to_markdown(text), expected)

  text <- "<body><p>foo</p><p>bar</p></body>"
  expected <- c("foo", "", "bar")
  expect_equal(html_to_markdown(text), expected)
})

test_that("convert", {
  text <- NULL
  expected <- ""
  expect_equal(convert(text), expected)

  text <- ""
  expect_equal(convert(text), text)

  text <- "foo"
  expect_equal(convert(text), text)

  text <- "<body>foo</body>"
  expected <- "foo"
  expect_equal(convert(text), expected)

  text <- "<body><p>foo</p><p>bar</p></body>"
  expected <- c("foo", "", "bar")
  expect_equal(convert(text), expected)
})

test_that("first_sentence", {
  expect_equal(first_sentence(""), "")
  expect_equal(first_sentence("foo."), "foo")
  expect_equal(first_sentence("foo. bar."), "foo")
})

test_that("make_doc_title", {
  operation <- list(documentation = "<body><p>Foo. Bar.</p></body>")
  expected <- "#' Foo"
  expect_equal(make_doc_title(operation), expected)
})

test_that("make_doc_desc", {
  operation <- list(documentation = "<body><p>Foo.</p><p>Bar.</p></body>")
  expected <- paste(
    "#' Foo.",
    "#' ",
    "#' Bar.",
    sep = "\n"
  )
  expect_equal(make_doc_desc(operation), expected)
})

test_that("make_doc_params", {
  # Operation with no parameters.
  operation <- list()
  api <- list()
  expect_equal(make_doc_params(operation, api), "")

  # Operation with parameters.
  operation <- list(
    input = list(
      shape = "Foo"
    )
  )
  api <- list(
    shapes = list(
      Foo = list(
        members = list(
          Member1 = list(
            documentation = "Documentation1"
          ),
          Member2 = list(
            documentation = "Documentation2"
          )
        )
      )
    ),
    required = list(
    )
  )
  expected <- paste(
    "#' @param Member1 Documentation1",
    "#' @param Member2 Documentation2",
    sep = "\n"
  )
  expect_equal(make_doc_params(operation, api), expected)
})

test_that("make_doc_examples", {
  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list(
          "Foo" = "bar",
          "Baz" = list(
            "Qux" = 123
          )
        ),
        description = "Description"
      )
    )
  )
  actual <- make_doc_examples(operation)
  expected <- paste(
    "#' @examples",
    "#' # Description",
    "#' operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list(),
        description = "Description1"
      ),
      list(
        input = list(
          "Foo" = "bar",
          "Baz" = list(
            "Qux" = 123
          )
        ),
        description = "Description2"
      )
    )
  )
  actual <- make_doc_examples(operation)
  expected <- paste(
    "#' @examples",
    "#' # Description1",
    "#' operation()",
    "#' ",
    "#' # Description2",
    "#' operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list(
          "Foo" = "bar",
          "Baz" = list(
            "Qux" = 123
          )
        ),
        description = "Description, with a comma"
      )
    )
  )
  actual <- make_doc_examples(operation)
  expected <- paste(
    "#' @examples",
    "#' # Description, with a comma",
    "#' operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list(
          "Foo" = "bar",
          "Baz" = list(
            "Qux" = "a,b,c"
          )
        ),
        description = "Description, with a comma"
      )
    )
  )
  actual <- make_doc_examples(operation)
  expected <- paste(
    "#' @examples",
    "#' # Description, with a comma",
    "#' operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = \"a,b,c\"",
    "#'   )",
    "#' )",
    sep = "\n"
  )
  expect_equal(actual, expected)
})
