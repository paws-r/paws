test_that("html_to_markdown", {
  text <- NULL
  expect_equal(html_to_markdown(text), "")

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

  text <- "<body>\u201Ctext with unicode\u201D</body>"
  expected <- "\u201Ctext with unicode\u201D"
  expect_equal(html_to_markdown(text), expected)
})

test_that("mask", {
  foo <- list(a = list("abc", "xyz", 123))
  masks <- list("b" = "&#98;", "z" = "&#122;")
  result <- mask(foo, masks)
  expect_equal(result$a[[1]], "a&#98;c")
  expect_equal(result$a[[2]], "xy&#122;")
  expect_equal(result$a[[3]], foo$a[[3]])
  expect_equal(foo, unmask(mask(foo, masks), masks))
})

test_that("tabular", {
  text <- data.frame(x = "\u201Ctext with unicode\u201D")
  expected <- "\\tabular{l}{\n  \u201Ctext with unicode\u201D\n}\n"
  expect_equal(tabular(text), expected)
})
