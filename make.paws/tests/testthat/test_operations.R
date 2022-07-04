test_that("make_operation", {
  operation <- list(
    name = "Operation",
    http = list(
      method = "POST",
      requestUri = "/abc"
    ),
    input = list(
      shape = "InputShape"
    ),
    output = list(
      shape = "OutputShape"
    ),
    documentation = "Foo."
  )
  api <- list(
    metadata = list(
      serviceAbbreviation = "api"
    ),
    shapes = list(
      InputShape = list(
        required = list(),
        members = list(
          Input1 = list(shape = "Input1"),
          Input2 = list(shape = "Input2"),
          Input3 = list(shape = "Input3")
        ),
        type = "structure"
      ),
      Input1 = list(type = "string"),
      Input2 = list(type = "string"),
      Input3 = list(type = "integer"),
      OutputShape = list(
        required = list(),
        members = list(
          Output1 = list(shape = "Output1"),
          Output2 = list(shape = "Output2"),
          Output3 = list(shape = "Output3")
        ),
        type = "structure"
      ),
      Output1 = list(type = "string"),
      Output2 = list(type = "string"),
      Output3 = list(type = "integer")
    )
  )
  a <- make_operation(operation, api)
  a <- gsub(" +\n", "\n", a)

  e <- gsub("\n {4}", "\n",
   "#' Foo
    #'
    #' @description
    #' Foo.
    #'
    #' @usage
    #' api_operation(Input1, Input2, Input3)
    #'
    #' @param Input1
    #' @param Input2
    #' @param Input3
    #'
    #' @return
    #' A list with the following syntax:
    #' ```
    #' list(
    #'   Output1 = \"string\",
    #'   Output2 = \"string\",
    #'   Output3 = 123
    #' )
    #' ```
    #'
    #' @section Request syntax:
    #' ```
    #' svc$operation(
    #'   Input1 = \"string\",
    #'   Input2 = \"string\",
    #'   Input3 = 123
    #' )
    #' ```
    #'
    #' @keywords internal
    #'
    #' @rdname api_operation
    api_operation <- function(Input1 = NULL, Input2 = NULL, Input3 = NULL) {
      op <- new_operation(
        name = \"Operation\",
        http_method = \"POST\",
        http_path = \"/abc\",
        paginator = list()
      )
      input <- .api$operation_input(Input1 = Input1, Input2 = Input2, Input3 = Input3)
      output <- .api$operation_output()
      config <- get_config()
      svc <- .api$service(config)
      request <- new_request(svc, op, input, output)
      response <- send_request(request)
      return(response)
    }
    .api$operations$operation <- api_operation")

  actual <- formatR::tidy_source(text = a, output = FALSE)
  expected <- formatR::tidy_source(text = e, output = FALSE)

  expect_equal(actual, expected)
})

test_that("operation name with override", {
  op_name <- operation_name_override("UploadPartCopy")
  expect_equal(op_name, quoted("CopyPart"))
})

test_that("operation name with no override", {
  op_name <- operation_name_override("Dummy")
  expect_equal(op_name, quoted("Dummy"))
})
