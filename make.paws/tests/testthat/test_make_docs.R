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

test_that("mask", {
  foo <- list(
    a = list(
      "abc",
      "xyz",
      123
    )
  )
  masks <- list("b" = "&#98;", "z" = "&#122;")
  result <- mask(foo, masks)
  expect_equal(result$a[[1]], "a&#98;c")
  expect_equal(result$a[[2]], "xy&#122;")
  expect_equal(result$a[[3]], foo$a[[3]])
  expect_equal(foo, unmask(mask(foo, masks), masks))
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

  operation <- list(documentation = "<body><p>Foo <a href='baz'>bar</a>.</p></body>")
  expected <- "#' Foo bar"
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

test_that("make_doc_desc with percent sign", {
  operation <- list(documentation = "<body><p>Foo%</p><p>Bar</p></body>")
  expected <- paste(
    "#' Foo\\%",
    "#' ",
    "#' Bar",
    sep = "\n"
  )
  expect_equal(make_doc_desc(operation), expected)
})

test_that("make_doc_usage", {
  operation <- list(
    name = "operation",
    input = list(
      shape = "OperationShape"
    )
  )
  api <- list(
    shapes = list(
      OperationShape = list(
        type = "structure",
        members = list(
          Foo = list(
            shape = "FooShape"
          ),
          Bar = list(
            shape = "BarShape"
          )
        )
      ),
      FooShape = list(
        type = "string"
      ),
      BarShape = list(
        type = "structure",
        members = list(
          Baz = list(
            shape = "BazShape"
          ),
          Qux = list(
            shape = "QuxShape"
          ),
          Quux = list(
            shape = "QuuxShape"
          ),
          Quuz = list(
            shape = "QuuzShape"
          )
        )
      ),
      BazShape = list(
        type = "integer"
      ),
      QuxShape = list(
        type = "double"
      ),
      QuuxShape = list(
        type = "boolean"
      ),
      QuuzShape = list(
        type = "enum",
        enum = list(
          "a", "b", "c"
        )
      )
    )
  )

  actual <- make_doc_accepted_params(operation, api)
  expected <- paste(
    "#' @section Accepted Parameters:",
    "#' ```",
    "#' operation(",
    "#'   Foo = \"string\",",
    "#'   Bar = list(",
    "#'     Baz = 123,",
    "#'     Qux = 123.0,",
    "#'     Quux = TRUE|FALSE,",
    "#'     Quuz = \"a\"|\"b\"|\"c\"",
    "#'   )",
    "#' )",
    "#' ```",
    sep = "\n"
  )
  expect_equal(actual, expected)
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
        required = list(
          "Member2"
        ),
        members = list(
          Member1 = list(
            documentation = "Documentation1"
          ),
          Member2 = list(
            documentation = "Documentation2"
          )
        )
      )
    )
  )
  expected <- paste(
    "#' @param Member1 Documentation1",
    "#' @param Member2 &#91;required&#93; Documentation2",
    sep = "\n"
  )
  expect_equal(make_doc_params(operation, api), expected)
})

test_that("make_doc_examples", {

  operation <- list(
    name = "Operation"
  )
  actual <- make_doc_examples(operation)
  expect_null(actual)

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
    "#' \\donttest{operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )}",
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
    "#' \\donttest{operation()}",
    "#' ",
    "#' # Description2",
    "#' \\donttest{operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )}",
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
    "#' \\donttest{operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )}",
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
    "#' \\donttest{operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = \"a,b,c\"",
    "#'   )",
    "#' )}",
    sep = "\n"
  )
  expect_equal(actual, expected)
})
