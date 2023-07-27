
test_that("check token is correctly retrieved", {
  output_tokens <- list(
    "NextToken",
    "Contents.Keys[-1].Id",
    "Mark.NextToken"
  )
  resp <- list(
    NextToken = "token1",
    Contents = list(Keys = list(list(Id = "wrong_token"), list(Id = "token2"))),
    Mark = list(NextToken = "token3")
  )
  expected <- setNames(list("token1", "token2", "token3"), output_tokens)
  actual <- get_tokens(resp, output_tokens)
  expect_equal(actual, expected)
})

test_that("check if retry_api_call retries correctly", {
  mock_exp_back_off <- mock2(side_effect = exp_back_off)
  mockery::stub(retry_api_call, "exp_back_off", mock_exp_back_off)

  expect_error(retry_api_call(stop("rate exceeded"), 2))
  expect_equal(mock_call_no(mock_exp_back_off), 3)
})

test_that("check if retry_api_call doesn't retry", {
  mock_exp_back_off <- mock2(side_effect = exp_back_off)
  mockery::stub(retry_api_call, "exp_back_off", mock_exp_back_off)

  expect_error(retry_api_call(stop("error"), 2))
  expect_equal(mock_call_no(mock_exp_back_off), 0)
})

########################################################################
# paginate
########################################################################

test_that("check paginate", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken"
    )
    )
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = "token2"),
    list(NextToken = character())
  )

  expected <- list(
    list(NextToken = "token1"),
    list(NextToken = "token2"),
    list(NextToken = character())
  )

  mockery::stub(paginate, "substitute", mock_substitute)
  mockery::stub(paginate, "environmentName", mock_environmentName)
  mockery::stub(paginate, "retry_api_call", mock_retry_api_call)

  actual <- paginate("dummy")

  expect_equal(actual, expected)
})

test_that("check paginate all parameters and operation", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken=NULL, MaxKey=NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey"
      )
    )
    list(NextToken=NextToken, MaxKey=MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi", MaxKey = 100, NextToken = "abc")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  expected <- list(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  mockery::stub(paginate, "substitute", mock_substitute)
  mockery::stub(paginate, "environmentName", mock_environmentName)
  mockery::stub(paginate, "retry_api_call", mock_retry_api_call)

  actual <- paginate("dummy", MaxItems = 1, StartingToken = "123")

  inputs <- mockery::mock_args(mock_retry_api_call)

  expect_equal(inputs, list(
    list(
      list(
        NextToken = "abc",
        MaxKey = 100
      ),
      retries = 5
    ),
    list(
      list(
        NextToken = "token1",
        MaxKey = 100
      ),
      retries = 5
    )
  ))
  expect_equal(actual, expected)
})

test_that("check paginate all parameters", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken=NULL, MaxKey=NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey"
    )
    )
    list(NextToken=NextToken, MaxKey=MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  expected <- list(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  mockery::stub(paginate, "substitute", mock_substitute)
  mockery::stub(paginate, "environmentName", mock_environmentName)
  mockery::stub(paginate, "retry_api_call", mock_retry_api_call)

  actual <- paginate("dummy", MaxItems = 5, StartingToken = "123")

  inputs <- mockery::mock_args(mock_retry_api_call)

  expect_equal(inputs, list(
    list(
      list(
        NextToken = "123",
        MaxKey = 5
      ),
      retries = 5
    ),
    list(
      list(
        NextToken = "token1",
        MaxKey = 5
      ),
      retries = 5
    )
  ))
  expect_equal(actual, expected)
})

test_that("check paginate error if not paws function", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken"
    )
    )
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))
  mockery::stub(paginate, "substitute", mock_substitute)
  expect_error(
    paginate("dummy"),
    "Unknown method"
  )
})

test_that("check paginate error if not paginator", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL) {
    op <- dummy_internal(paginator = list())
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))
  mock_environmentName <- mock2("paws.storage")
  mockery::stub(paginate, "substitute", mock_substitute)
  mockery::stub(paginate, "environmentName", mock_environmentName)

  expect_error(
    paginate("dummy"),
    "unable to paginate"
  )
})

########################################################################
# paginate_lapply
########################################################################

test_that("check paginate_lapply", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken"
    )
    )
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = "token2"),
    list(NextToken = character())
  )

  expected <- list(
    list(NextToken = "token1"),
    list(NextToken = "token2"),
    list(NextToken = character())
  )

  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  mockery::stub(paginate_lapply, "environmentName", mock_environmentName)
  mockery::stub(paginate_lapply, "retry_api_call", mock_retry_api_call)

  actual <- paginate_lapply("dummy", function(resp) resp)

  expect_equal(actual, expected)
})

test_that("check paginate_lapply all parameters and operation", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken=NULL, MaxKey=NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey"
    )
    )
    list(NextToken=NextToken, MaxKey=MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi", MaxKey = 100, NextToken = "abc")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  expected <- list(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  mockery::stub(paginate_lapply, "environmentName", mock_environmentName)
  mockery::stub(paginate_lapply, "retry_api_call", mock_retry_api_call)

  actual <- paginate_lapply("dummy", function(resp){resp}, MaxItems = 1, StartingToken = "123")

  inputs <- mockery::mock_args(mock_retry_api_call)

  expect_equal(inputs, list(
    list(
      list(
        NextToken = "abc",
        MaxKey = 100
      ),
      retries = 5
    ),
    list(
      list(
        NextToken = "token1",
        MaxKey = 100
      ),
      retries = 5
    )
  ))
  expect_equal(actual, expected)
})

test_that("check paginate_lapply all parameters", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken=NULL, MaxKey=NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey"
    )
    )
    list(NextToken=NextToken, MaxKey=MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  expected <- list(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  mockery::stub(paginate_lapply, "environmentName", mock_environmentName)
  mockery::stub(paginate_lapply, "retry_api_call", mock_retry_api_call)

  actual <- paginate_lapply("dummy", function(resp){resp}, MaxItems = 5, StartingToken = "123")

  inputs <- mockery::mock_args(mock_retry_api_call)

  expect_equal(inputs, list(
    list(
      list(
        NextToken = "123",
        MaxKey = 5
      ),
      retries = 5
    ),
    list(
      list(
        NextToken = "token1",
        MaxKey = 5
      ),
      retries = 5
    )
  ))
  expect_equal(actual, expected)
})

test_that("check paginate_lapply error if not paws function", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken"
    )
    )
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))
  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  expect_error(
    paginate_lapply("dummy", function(resp) {resp}),
    "Unknown method"
  )
})

test_that("check paginate_lapply error if not paginator", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL) {
    op <- dummy_internal(paginator = list())
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))
  mock_environmentName <- mock2("paws.storage")
  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  mockery::stub(paginate_lapply, "environmentName", mock_environmentName)

  expect_error(
    paginate_lapply("dummy", function(resp){resp}),
    "unable to paginate"
  )
})


########################################################################
# paginate_sapply
########################################################################

test_that("check paginate_sapply", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken"
    )
    )
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = "token2"),
    list(NextToken = character())
  )

  expected <- list(
    NextToken = "token1",
    NextToken = "token2",
    NextToken = character()
  )

  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  mockery::stub(paginate_sapply, "environmentName", mock_environmentName)
  mockery::stub(paginate_sapply, "retry_api_call", mock_retry_api_call)

  actual <- paginate_sapply("dummy", function(resp) resp)

  expect_equal(actual, expected)
})

test_that("check paginate_sapply all parameters and operation", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken=NULL, MaxKey=NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey"
    )
    )
    list(NextToken=NextToken, MaxKey=MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi", MaxKey = 100, NextToken = "abc")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  expected <- list(
    NextToken = "token1",
    NextToken = character()
  )

  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  mockery::stub(paginate_sapply, "environmentName", mock_environmentName)
  mockery::stub(paginate_sapply, "retry_api_call", mock_retry_api_call)

  actual <- paginate_sapply("dummy", function(resp){resp}, MaxItems = 1, StartingToken = "123")

  inputs <- mockery::mock_args(mock_retry_api_call)

  expect_equal(inputs, list(
    list(
      list(
        NextToken = "abc",
        MaxKey = 100
      ),
      retries = 5
    ),
    list(
      list(
        NextToken = "token1",
        MaxKey = 100
      ),
      retries = 5
    )
  ))
  expect_equal(actual, expected)
})

test_that("check paginate_sapply all parameters", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken=NULL, MaxKey=NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey"
    )
    )
    list(NextToken=NextToken, MaxKey=MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_environmentName <- mock2("paws.storage")
  mock_retry_api_call <- mock2(
    list(NextToken = "token1"),
    list(NextToken = character())
  )

  expected <- list(
    NextToken = "token1",
    NextToken = character()
  )

  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  mockery::stub(paginate_sapply, "environmentName", mock_environmentName)
  mockery::stub(paginate_sapply, "retry_api_call", mock_retry_api_call)

  actual <- paginate_sapply("dummy", function(resp){resp}, MaxItems = 5, StartingToken = "123")

  inputs <- mockery::mock_args(mock_retry_api_call)

  expect_equal(inputs, list(
    list(
      list(
        NextToken = "123",
        MaxKey = 5
      ),
      retries = 5
    ),
    list(
      list(
        NextToken = "token1",
        MaxKey = 5
      ),
      retries = 5
    )
  ))
  expect_equal(actual, expected)
})

test_that("check paginate_sapply error if not paws function", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken"
    )
    )
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))
  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  expect_error(
    paginate_sapply("dummy", function(resp) {resp}),
    "Unknown method"
  )
})

test_that("check paginate_sapply error if not paginator", {

  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL) {
    op <- dummy_internal(paginator = list())
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))
  mock_environmentName <- mock2("paws.storage")
  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  mockery::stub(paginate_sapply, "environmentName", mock_environmentName)

  expect_error(
    paginate_sapply("dummy", function(resp){resp}),
    "unable to paginate"
  )
})

