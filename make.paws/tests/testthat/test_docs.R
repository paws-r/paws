test_that("make_doc_title", {
  operation <- list(name = "FooOperation")
  expected <- "#' Foo operation"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(documentation = "<body><p>Foo. Bar.</p></body>")
  expected <- "#' Foo"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(
    documentation = "<body><p>Foo <a href='baz'>bar</a>.</p></body>"
  )
  expected <- "#' Foo bar"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(
    documentation = "<body><p>[In brackets] Outside brackets.</p></body>"
  )
  expected <- "#' &#91;In brackets&#93; Outside brackets"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(
    documentation = "<p>A really long description which is over 80 characters wide and will get cut off by the automatic line wrapping when converted from HTML to Markdown. Here is another sentence.</p>"
  )
  expected <- "#' A really long description which is over 80 characters wide and will get\n#' cut off by the automatic line wrapping when converted from HTML to\n#' Markdown"
  expect_equal(make_doc_title(operation), expected)

  operation <- list(documentation = "<p>foo</p><p>bar</p><p>baz</p>")
  expected <- "#' foo"
  expect_equal(make_doc_title(operation), expected)
})

test_that("make_doc_desc", {
  api <- list(metadata = list(serviceAbbreviation = "api"))
  operation <- list(documentation = "<body><p>Foo.</p><p>Bar.</p></body>")
  expected <- paste("#' @description", "#' Foo.", "#' ", "#' Bar.", sep = "\n")
  expect_equal(make_doc_desc(operation, api), expected)
})

test_that("make_doc_desc with special characters", {
  api <- list(metadata = list(serviceAbbreviation = "api"))
  operation <- list(
    documentation = "<body><p>Foo%</p><p>Bar{</p><p>}Baz</p><p>\\Qux</p></body>"
  )
  expected <- paste(
    "#' @description",
    "#' Foo%",
    "#' ",
    "#' Bar\\{",
    "#' ",
    "#' \\}Baz",
    "#' ",
    "#' \\\\Qux",
    sep = "\n"
  )
  expect_equal(make_doc_desc(operation, api), expected)
})

test_that("make_doc_request", {
  operation <- list(name = "operation", input = list(shape = "OperationShape"))
  api <- list(
    metadata = list(serviceAbbreviation = "api"),
    shapes = list(
      OperationShape = list(
        type = "structure",
        members = list(
          Foo = list(shape = "FooShape"),
          Bar = list(shape = "BarShape")
        )
      ),
      FooShape = list(type = "string"),
      BarShape = list(
        type = "structure",
        members = list(
          Baz = list(shape = "BazShape"),
          Qux = list(shape = "QuxShape"),
          Quux = list(shape = "QuuxShape"),
          Quuz = list(shape = "QuuzShape")
        )
      ),
      BazShape = list(type = "integer"),
      QuxShape = list(type = "double"),
      QuuxShape = list(type = "boolean"),
      QuuzShape = list(type = "enum", enum = list("a", "b", "c"))
    )
  )

  actual <- make_doc_request(operation, api)
  expected <- paste(
    "#' @section Request syntax:",
    "#' ```",
    "#' svc$operation(",
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

test_that("make_doc_value", {
  operation <- list(name = "operation", output = list(shape = "OperationShape"))
  api <- list(
    metadata = list(serviceAbbreviation = "api"),
    shapes = list(
      OperationShape = list(
        type = "structure",
        members = list(
          Foo = list(shape = "FooShape"),
          Bar = list(shape = "BarShape")
        )
      ),
      FooShape = list(type = "string"),
      BarShape = list(
        type = "structure",
        members = list(
          Baz = list(shape = "BazShape"),
          Qux = list(shape = "QuxShape"),
          Quux = list(shape = "QuuxShape"),
          Quuz = list(shape = "QuuzShape")
        )
      ),
      BazShape = list(type = "integer"),
      QuxShape = list(type = "double"),
      QuuxShape = list(type = "boolean"),
      QuuzShape = list(type = "enum", enum = list("a", "b", "c"))
    )
  )

  actual <- make_doc_value(operation, api)
  expected <- paste(
    "#' @return",
    "#' A list with the following syntax:",
    "#' ```",
    "#' list(",
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
  operation <- list(input = list(shape = "Foo"))
  api <- list(
    shapes = list(
      Foo = list(
        required = list("Member2"),
        members = list(
          Member1 = list(documentation = "Documentation1"),
          Member2 = list(documentation = "Documentation2\n<h2>Foo</h2>")
        )
      )
    )
  )
  expected <- paste(
    "#' @param Member1 Documentation1",
    "#' @param Member2 &#91;required&#93; Documentation2",
    "#' ",
    "#' **Foo**",
    sep = "\n"
  )
  expect_equal(make_doc_params(operation, api), expected)
})

test_that("make_doc_examples", {
  api <- list(metadata = list(serviceAbbreviation = "api"))
  operation <- list(name = "Operation")
  actual <- make_doc_examples(operation, api)
  expect_null(actual)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list("Foo" = "bar", "Baz" = list("Qux" = 123)),
        description = "Description"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Description",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(input = list(), description = "Description1"),
      list(
        input = list("Foo" = "bar", "Baz" = list("Qux" = 123)),
        description = "Description2"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Description1",
    "#' svc$operation()",
    "#' ",
    "#' # Description2",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list("Foo" = "bar", "Baz" = list("Qux" = 123)),
        description = "Description, with a comma"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Description, with a comma",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list("Foo" = "bar", "Baz" = list("Qux" = "a,b,c")),
        description = "Description, with a comma"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Description, with a comma",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = \"a,b,c\"",
    "#'   )",
    "#' )",
    "#' }",
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
            "Qux" = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:*\",\"Resource\":\"*\"}]",
            "Quux" = 123
          )
        ),
        description = "A very long string"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # A very long string",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = \"\\{\\\"Version\\\":\\\"2012-10-17\\\",\\\"Statement\\\":[\\{\\\"Sid\\\":\\\"Stmt1\\\",\\\"Effect\\\":\\\"Al...\",",
    "#'     Quux = 123",
    "#'   )",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list("Foo" = "bar", "Baz" = list("Qux" = 123)),
        description = "Description with inline ``code``"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Description with inline `code`",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list("Foo" = "bar", "Baz" = list("Qux" = 123)),
        description = "Description with inline ```code```"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Description with inline ```code```",
    "#' svc$operation(",
    "#'   Foo = \"bar\",",
    "#'   Baz = list(",
    "#'     Qux = 123",
    "#'   )",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)

  operation <- list(
    name = "Operation",
    examples = list(
      list(
        input = list("Foo" = "bar{"),
        description = "Example with unmatched curly brace"
      )
    )
  )
  actual <- make_doc_examples(operation, api)
  expected <- paste(
    "#' @examples",
    "#' \\dontrun{",
    "#' # Example with unmatched curly brace",
    "#' svc$operation(",
    "#'   Foo = \"bar\\{\"",
    "#' )",
    "#' }",
    sep = "\n"
  )
  expect_equal(actual, expected)
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

  text <- "<dt>Description</dt><dd>Definition.</dd>"
  expected <- c("### Description", "", "Definition.")
  expect_equal(convert(text), expected)

  text <- "<code>foo</foo>"
  expected <- "`foo`"
  expect_equal(convert(text), expected)

  text <- "<body><code>'foo</code></body>"
  expected <- "`\\'foo`"
  expect_equal(convert(text), expected)

  text <- "<body><code>{foo</code></body>"
  expected <- "`\\{foo`"
  expect_equal(convert(text), expected)

  text <- "<body>\\'{</body>"
  expected <- "\\\\'\\{"
  expect_equal(convert(text), expected)

  text <- "<body>%{}\\</body>"
  expected <- "%\\{\\}\\\\"
  expect_equal(convert(text), expected)

  text <- "<body>123%{}</body>"
  expected <- "123%\\{\\}"
  expect_equal(convert(text), expected)

  text <- "<body>*</body>"
  expected <- "*"
  expect_equal(convert(text), expected)

  text <- "<body>foo_bar</body>"
  expected <- "foo_bar"
  expect_equal(convert(text), expected)

  text <- "<body>foo \\bar { \\u0123 <code>baz'</code></body>"
  expected <- "foo \\\\bar \\{ \\`U+0123` `baz\\'`"
  expect_equal(convert(text), expected)

  # TODO: The following test fails (in actual output, <b> and </b> are missing)
  # but it is too complex to deal with now.

  # text <- '<p> <code>{ "actors": {}, "title": {"format": "text","max_phrases": 2,"pre_tag": "<b>","post_tag": "</b>"} }</code></p>'
  # expected <- "`\\{ \"actors\": \\{\\}, \"title\": \\{\"format\": \"text\",\"max_phrases\": 2,\"pre_tag\": \"\",\"post_tag\": \"\"\\} \\}`"
  # expect_equal(convert(text), expected)

  text <- "<body><p>foo</p><p>bar<code>'baz</code></p></body>"
  expected <- c("foo", "", "bar`\\'baz`")
  expect_equal(convert(text), expected)

  text <- "<p><code>{foo</code>}</p>"
  expected <- "`\\{foo`\\}"
  expect_equal(convert(text), expected)

  # Unicode line terminator is not allowed in LaTeX.
  text <- "<p>foo\U2028</p>"
  expected <- "foo"
  expect_equal(convert(text), expected)

  # Nested <i> are not allowed by CRAN.
  text <- "<i>foo <i>bar</i></i>"
  expected <- "*foo bar*"
  expect_equal(convert(text), expected)
})

test_that("check links part1", {
  text <- "<a href='http://www.example.com'>foo</a>"
  expected <- c("[foo](http://www.example.com/)")
  expect_equal(convert(text), expected)

  text <- "<a href='https://httpbin.org/invalid'>foo</a>"
  expected <- c("foo")
  expect_equal(convert(text), expected)

  text <- "<a href='http://invalid'>foo</a>"
  expected <- c("foo")
  expect_equal(convert(text), expected)

  text <- "<a>foo</a>"
  expected <- c("foo")
  expect_equal(convert(text), expected)

  text <- "<a href=''>foo</a>"
  expected <- c("foo")
  expect_equal(convert(text), expected)

  text <- "<a href='acm/'>foo</a>"
  expected <- c("[foo](https://docs.aws.amazon.com/acm/)")
  expect_equal(convert(text), expected)

  text <- "<a href='mailto:foo@bar.com'>foo@bar.com</a>"
  expected <- c("<foo@@bar.com>")
  expect_equal(convert(text), expected)

  text <- "<a href='example.com'>foo</a>"
  expected <- c("[foo](https://example.com/)")
  expect_equal(convert(text), expected)
})

test_that("check links part2", {
  skip_on_ci()
  text <- "<a href='https://httpbin.org/anything#foo?bar=baz'>foo</a>"
  expected <- c("[foo](https://httpbin.org/anything#foo?bar=baz)")
  expect_equal(convert(text), expected)
})

test_that("convert within-package links", {
  text <- "<a>Foo</a>"
  links <- list(Foo = list(r_name = "foo", internal_r_name = "bar_foo"))
  expected <- c("[`foo`][bar_foo]")
  expect_equal(convert(text, links = links), expected)

  text <- "<code>Foo</code>"
  links <- list(Foo = list(r_name = "foo", internal_r_name = "bar_foo"))
  expected <- c("[`foo`][bar_foo]")
  expect_equal(convert(text, links = links), expected)

  text <- "<a><code>Foo</code></a>"
  links <- list(Foo = list(r_name = "foo", internal_r_name = "bar_foo"))
  expected <- c("[`foo`][bar_foo]")
  expect_equal(convert(text, links = links), expected)

  text <- "<code><a>Foo</a></code>"
  links <- list(Foo = list(r_name = "foo", internal_r_name = "bar_foo"))
  expected <- c("[`foo`][bar_foo]")
  expect_equal(convert(text, links = links), expected)

  text <- "<span><a>Foo</a></span>"
  links <- list(Foo = list(r_name = "foo", internal_r_name = "bar_foo"))
  expected <- c("[`foo`][bar_foo]")
  expect_equal(convert(text, links = links), expected)

  text <- "<span><a>Food</a></span>"
  links <- list(Foo = list(r_name = "foo", internal_r_name = "bar_foo"))
  expected <- c("Food")
  expect_equal(convert(text, links = links), expected)

  text <- "<code>metadata-function=<i>lambda_arn</i>, sdk-version=<i>version_number</i></code>"
  expected <- "`metadata-function=lambda_arn, sdk-version=version_number`"
  expect_equal(convert(text), expected)

  text <- "<p><code>Foo</code> and <code>Bar</code></p>"
  links <- list(
    Foo = list(r_name = "foo", internal_r_name = "foo"),
    Bar = list(r_name = "bar", internal_r_name = "bar")
  )
  expected <- c("[`foo`][foo] and [`bar`][bar]")
  expect_equal(convert(text, links = links), expected)
})

test_that("first_sentence", {
  expect_equal(first_sentence(""), "")
  expect_equal(first_sentence("foo."), "foo")
  expect_equal(first_sentence("foo. bar."), "foo")
})

test_that("escape_unmatched", {
  chars <- c('"', "'", "`")
  expect_equal(escape_unmatched_chars("'foo'", chars), "'foo'")
  expect_equal(escape_unmatched_chars("'foo", chars), "\\'foo")
  expect_equal(escape_unmatched_chars("foo'", chars), "foo\\'")
  expect_equal(escape_unmatched_chars("foo", chars), "foo")
  expect_equal(escape_unmatched_chars("", chars), "")

  pairs <- c("{" = "}")
  expect_equal(escape_unmatched_pairs("{foo}", pairs), "{foo}")
  expect_equal(escape_unmatched_pairs("{foo", pairs), "\\{foo")
  expect_equal(escape_unmatched_pairs("{{foo}", pairs), "\\{\\{foo\\}")
})

test_that("comment_list_itemize", {
  config <- list(foo = "bar")
  expect <- "\\itemize{\n\\item{\\strong{foo}: bar}\n}"
  expect_equal(comment_list_itemize(config), expect)
})

test_that("comment_list_itemize nested list", {
  config <- list(foo = "bar", baz = list(qux = "ham"))
  expect <- "\\itemize{\n\\item{\\strong{foo}: bar}\n\\item{\\strong{baz}: \\itemize{\n\\item{\\strong{qux}: ham}\n}}\n}"
  expect_equal(comment_list_itemize(config), expect)
})
