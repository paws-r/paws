test_that("JSON tests", {
  J <- function(...) {
    args <- list(...)
    interface <- Structure(
      S = Scalar(type = "string"),
      SS = List(Scalar(type = "string")),
      D = Scalar(type = "double"),
      `F` = Scalar(type = "float"),
      `T` = Scalar(type = "timestamp"),
      B = Scalar(type = "blob")
    )
    return(populate(args, interface))
  }

  J2 <- function(...) {
    args <- list(...)
    interface <- Structure(B = Scalar(type = "blob"), M = Map(Scalar(type = "blob")))
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

  input <- J(B = charToRaw("helloworld"))
  expected <- "{\"B\":\"aGVsbG93b3JsZA==\"}"
  expect_equal(json_build(input), expected)

  input <- Structure(I = Scalar(.tags = list(idempotencyToken = T), type = "string"))
  expected <- '^\\{"I":"[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}"\\}$'
  expect_true(grepl(expected, json_build(input)))

  input <- list(
    foo = list(
      bar = "cho",
      yo = 123.123,
      hi = 123L,
      zoo = charToRaw("helloworld"),
      cho = TRUE
    )
  )
  expected <- "{\"foo\":{\"bar\":\"cho\",\"yo\":123.123,\"hi\":123,\"zoo\":\"aGVsbG93b3JsZA==\",\"cho\":true}}"
  expect_equal(json_build(input), expected)

  input <- J2(M = list(key1 = charToRaw("foo"), key2 = charToRaw("bar")))
  expected <- "{\"M\":{\"key1\":\"Zm9v\",\"key2\":\"YmFy\"}}"
  expect_equal(json_build(input), expected)
})
