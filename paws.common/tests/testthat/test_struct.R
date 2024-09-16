test_that("struct constructors", {
  Foo <- struct(a = "", b = NULL)
  bar <- Foo()
  expect_named(bar, c("a", "b"))
})

test_that("struct extract", {
  Foo <- struct(a = "1", b = NULL)
  bar <- Foo()

  # In struct.
  expect_equal(bar$a, "1")
  expect_equal(bar["a"], "1")

  # In struct and null.
  expect_null(bar$b)
  expect_null(bar["b"])

  # Not in struct.
  expect_error(bar$c)
  expect_error(bar["c"])
})

test_that("struct replacement", {
  Foo <- struct(a = "1", b = NULL)
  bar <- Foo()

  expect_equal(bar$a, "1")
  bar$a <- "2"
  expect_equal(bar$a, "2")
  bar$a <- NULL
  expect_null(bar$a)

  expect_null(bar$b)
  bar$b <- 1
  expect_equal(bar$b, 1)

  expect_error(bar$c <- 3)
})

test_that("struct as list", {
  Foo <- struct(a = "1", b = "2")
  bar <- Foo()
  foobar <- as.list(bar)

  expect_equal(foobar$a, "1")
  expect_equal(foobar$b, "2")
  expect_equal(class(foobar), "list")
})
