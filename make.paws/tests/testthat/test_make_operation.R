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
    metadata = list(
      serviceAbbreviation = "api"
    ),
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

  e <- code({
    api_operation <- function(Input1 = NULL, Input2 = NULL, Input3 = NULL) {
      op <- new_operation(
        name = "Operation",
        http_method = "POST",
        http_path = "/abc",
        paginator = list()
      )
      input <- .api$operation_input(
        Input1 = Input1,
        Input2 = Input2,
        Input3 = Input3
      )
      output <- .api$operation_output()
      svc <- .api$service()
      request <- new_request(svc, op, input, output)
      response <- send_request(request)
      return(response)
    }
    api$operation <- api_operation
  })

  actual <- formatR::tidy_source(text = a, output = FALSE)
  expected <- formatR::tidy_source(text = e, output = FALSE)

  expect_equal(actual, expected)
})
