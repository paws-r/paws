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

  input <- J()
  expected <- "{}"
  expect_equal(json_build(input), expected)

  input <- J(
    S = "str",
    SS = list("A", "B", "C"),
    D = 123,
    `F` = 4.56,
    `T` = unix_time(987)
  )
  expected <- '{"S":"str","SS":["A","B","C"],"D":123,"F":4.56,"T":987}'
  expect_equal(json_build(input), expected)

  input <- J(S = "\"''\"")
  expected <- '{"S":"\\"\'\'\\""}'
  expect_equal(json_build(input), expected)

  input <- J(S = "foo\u00F8\u00F8\u00FF\n\\\"\r\t\b\f")
  expected <- '{"S":"fooøøÿ\\n\\\\\\"\\r\\t\\b\\f"}'
  expect_equal(json_build(input), expected)
})
