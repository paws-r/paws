context("Make documentation")

test_that("make_doc_title", {
  operation <- list(name = "FooOperation")
  expected <- "#' Foo operation"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(documentation = "<body><p>Foo. Bar.</p></body>")
  expected <- "#' Foo"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(documentation = "<body><p>Foo <a href='baz'>bar</a>.</p></body>")
  expected <- "#' Foo bar"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(documentation = "<body><p>[In brackets] Outside brackets.</p></body>")
  expected <- "#' &#91;In brackets&#93; Outside brackets"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(documentation = "<p>A really long description which is over 80 characters wide and will get cut off by the automatic line wrapping when converted from HTML to Markdown. Here is another sentence.</p>")
  expected <- "#' A really long description which is over 80 characters wide and will get\n#' cut off by the automatic line wrapping when converted from HTML to\n#' Markdown"
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

test_that("make_doc_desc with special characters", {
  operation <- list(documentation = "<body><p>Foo%</p><p>Bar{</p><p>}Baz</p><p>\\Qux</p></body>")
  expected <- paste(
    "#' Foo\\%",
    "#' ",
    "#' Bar\\{",
    "#' ",
    "#' \\}Baz",
    "#' ",
    "#' \\\\Qux",
    sep = "\n"
  )
  expect_equal(make_doc_desc(operation), expected)
})

test_that("make_doc_request", {
  operation <- list(
    name = "operation",
    input = list(
      shape = "OperationShape"
    )
  )
  api <- list(
    metadata = list(
      serviceAbbreviation = "api"
    ),
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

  actual <- make_doc_request(operation, api)
  expected <- paste(
    "#' @section Request syntax:",
    "#' ```",
    "#' api$operation(",
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
  api <- list(
    metadata = list(
      serviceAbbreviation = "api"
    )
  )
  operation <- list(
    name = "Operation"
  )
  actual <- make_doc_examples(operation, api)
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
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' # Description",
    "#' \\donttest{api$operation(",
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
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' # Description1",
    "#' \\donttest{api$operation()}",
    "#' ",
    "#' # Description2",
    "#' \\donttest{api$operation(",
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
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' # Description, with a comma",
    "#' \\donttest{api$operation(",
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
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' # Description, with a comma",
    "#' \\donttest{api$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = \"a,b,c\"",
    "#'   )",
    "#' )}",
    sep = "\n"
  )
  expect_equal(actual, expected)
})

test_that("clean_markdown", {
  text <- ""
  expect_equal(clean_markdown(text), text)

  text <- "foo"
  expect_equal(clean_markdown(text), text)

  text <- "\\[foo\\]"
  expected <- "&#91;foo&#93;"
  expect_equal(clean_markdown(text), expected)

  text <- "[foo]"
  expect_equal(clean_markdown(text), text)

  lines <- ""
  expect_equal(clean_markdown(lines), lines)

  lines <- c("foo", "bar", "baz")
  expect_equal(clean_markdown(lines), lines)

  lines <- c("foo", "bar", "<!-- -->", "baz")
  expected <- c("foo", "bar", "baz")
  expect_equal(clean_markdown(lines), expected)

  lines <- c("\\[foo\\]", "bar", "baz")
  expected <- c("&#91;foo&#93;", "bar", "baz")
  expect_equal(clean_markdown(lines), expected)
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

  text <- "`foo`"
  expect_equal(convert(text), text)

  text <- "<body><code>'foo</code></body>"
  expected <- "`\\'foo`"
  expect_equal(convert(text), expected)

  text <- "<body>\\'{</body>"
  expected <- "\\\\\\'\\{"
  expect_equal(convert(text), expected)

  text <- "<body>%{}\\</body>"
  expected <- "\\%\\{\\}\\\\"
  expect_equal(convert(text), expected)

  text <- "<body>123%{}</body>"
  expected <- "123\\%\\{\\}"
  expect_equal(convert(text), expected)

  text <- "<body>foo \\bar { \\u0123 <code>baz'</code></body>"
  expected <- "foo \\\\bar \\{ \\\\u0123 `baz\\'`"
  expect_equal(convert(text), expected)

  text <- '<p> <code>{ "actors": {}, "title": {"format": "text","max_phrases": 2,"pre_tag": "<b>","post_tag": "</b>"} }</code></p>'
  expected <- "`\\{ \"actors\": \\{\\}, \"title\": \\{\"format\": \"text\",\"max_phrases\": 2,\"pre_tag\": \"<b>\",\"post_tag\": \"</b>\"\\} \\}`"
  expect_equal(convert(text), expected)

  text <- "<body><p>foo</p><p>bar<code>'baz</code></p></body>"
  expected <- c("foo", "", "bar`\\'baz`")
  expect_equal(convert(text), expected)
})

test_that("first_sentence", {
  expect_equal(first_sentence(""), "")
  expect_equal(first_sentence("foo."), "foo")
  expect_equal(first_sentence("foo. bar."), "foo")
})

test_that("escape_unmatched_quotes", {
  expect_equal(escape_unmatched_quotes("'foo'"), "'foo'")
  expect_equal(escape_unmatched_quotes("'foo"), "\\'foo")
  expect_equal(escape_unmatched_quotes("foo'"), "foo\\'")
  expect_equal(escape_unmatched_quotes("foo"), "foo")
  expect_equal(escape_unmatched_quotes(""), "")
})

test_that("clean_markdown", {
  text <- ""
  expect_equal(clean_markdown(text), text)

  text <- "foo"
  expect_equal(clean_markdown(text), text)

  text <- "\\[foo\\]"
  expected <- "&#91;foo&#93;"
  expect_equal(clean_markdown(text), expected)

  text <- "[foo]"
  expect_equal(clean_markdown(text), text)

  lines <- c("foo", "bar", "baz")
  expect_equal(clean_markdown(lines), lines)

  lines <- c("foo", "bar", "<!-- -->", "baz")
  expected <- c("foo", "bar", "baz")
  expect_equal(clean_markdown(lines), expected)
})
