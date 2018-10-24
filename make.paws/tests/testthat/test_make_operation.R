context("Make operations")

code <- function(x) paste(deparse(substitute(x)), collapse = "\n")

test_that("make_operation_function with parameters", {
  operation <- list(
    name = "Operation",
    http = list(
      method = "POST",
      requestUri = "/abc"
    ),
    input = list(
      shape = "InputShape"
    )
  )
  api <- list(
    shapes = list(
      InputShape = list(
        required = list(),
        members = list(
          Input1 = list(),
          Input2 = list(),
          Input3 = list()
        )
      )
    )
  )
  a <- make_operation_function(operation, api)

  e <- code(
    operation <- function(Input1 = NULL, Input2 = NULL, Input3 = NULL) {
      op <- Operation(
        name = "Operation",
        http_method = "POST",
        http_path = "/abc",
        paginator = list()
      )
      input <- operation_input(
        Input1 = Input1,
        Input2 = Input2,
        Input3 = Input3
      )
      output <- operation_output()
      svc <- service()
      request <- new_request(svc, op, input, output)
      response <- send_request(request)
      return(response)
    }
  )

  actual <- formatR::tidy_source(text = a, output = FALSE)
  expected <- formatR::tidy_source(text = e, output = FALSE)

  expect_equal(actual, expected)
})
