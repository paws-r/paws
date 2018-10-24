context("JSON")

test_that("JSON tests", {
  J <- function(...) {
    args <- list(...)
    interface <- Structure(
      S = Scalar(type = "string"),
      SS = List(Scalar(type = "string")),
      D = Scalar(type = "double"),
      `F` = Scalar(type = "float"),
      `T` = Scalar(type = "timestamp")
    )
    return(populate(args, interface))
  }
  tests <- list(
    list(
      input = J(),
      expected = "{}",
      err = ""
    ),
    list(
      input = J(
        S = "str",
        SS = list("A", "B", "C"),
        D = 123,
        `F` = 4.56,
        `T` = unix_time(987)
      ),
      expected = '{"S":"str","SS":["A","B","C"],"D":123,"F":4.56,"T":987}',
      err = ""
    ),
    list(
      input = J(S = "\"''\""),
      expected = '{"S":""\'\'""}',
      err = ""
    ),
    list(
      input = J(S = "føø\u00FF\n\\\"\r\t\b\f"),
      expected = '{"S":"føø\u00FF\n\\\"\r\t\b\f"}',
      err = ""
    )
  )
  for (test in tests) {
    expect_equal(json_build(test$input), test$expected)
  }
})
