########################################################################
# get_tokens
########################################################################

test_that("check token is correctly retrieved", {
  jmes_path_token <- NULL
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
  actual <- get_tokens(resp, output_tokens, environment())
  expect_equal(actual, expected)
})

test_that("check empty token is returned", {
  jmes_path_token <- NULL
  output_tokens <- list(
    "NextToken",
    "Contents[-1].Id"
  )
  resp <- list(
    NextToken = character(0),
    Contents = list()
  )
  expected <- setNames(list(character(0), character(0)), output_tokens)
  actual <- get_tokens(resp, output_tokens, environment())
  expect_equal(actual, expected)
})

########################################################################
# paginate_update_fn
########################################################################

test_that("check paginate_update_fn", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }

  mock_environmentName <- mock2("paws.storage")
  mockery::stub(paginate_update_fn, "environmentName", mock_environmentName)
  actual <- paginate_update_fn(substitute(dummy_op(x = "hi")), PageSize = 10, StartingToken = "token1")
  expect_fn <- substitute(dummy_op(x = "hi", NextToken = "token1", MaxKey = 10))
  expect_paginator <- list(
    input_token = "NextToken",
    output_token = "NextToken",
    limit_key = "MaxKey",
    result_key = "Contents"
  )

  expect_equal(actual$fn, expect_fn)
  expect_equal(actual$paginator, expect_paginator)
})

test_that("check paginate_update_fn non paws operation", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }

  expect_error(
    paginate_update_fn(
      substitute(dummy_op(x = "hi")),
      PageSize = 10, StartingToken = "token1"
    ),
    "Unknown method:.*. Please check service methods and try again."
  )
})

test_that("check paginate_update_fn unable to paginate", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list())
    list(NextToken = NextToken, MaxKey = MaxKey)
  }

  mock_environmentName <- mock2("paws.storage")
  mockery::stub(paginate_update_fn, "environmentName", mock_environmentName)
  expect_error(
    paginate_update_fn(
      substitute(dummy_op(x = "hi")),
      PageSize = 10, StartingToken = "token1"
    ),
    "Method:.*is unable to paginate"
  )
})

########################################################################
# paginate
########################################################################

test_that("check paginate", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_paginate_update_fn <- mock2(
    list(
      fn = substitute(dummy_op(x = "hi")),
      paginator = list(
        input_token = "NextToken",
        output_token = "NextToken",
        limit_key = "MaxKey",
        result_key = "Contents"
      )
    )
  )
  mock_eval <- mock2(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list("zoo"), NextToken = character())
  )

  expected <- list(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list("zoo"), NextToken = character())
  )

  mockery::stub(paginate, "substitute", mock_substitute)
  mockery::stub(paginate, "paginate_update_fn", mock_paginate_update_fn)
  mockery::stub(paginate, "eval", mock_eval)

  actual <- paginate("dummy")
  actual_args <- mockery::mock_args(mock_eval)
  expect_equal(lapply(actual_args, function(x) as.list(x[[1]][-1])), list(
    list(x = "hi"),
    list(x = "hi", NextToken = "token1"),
    list(x = "hi", NextToken = "token2")
  ))
  expect_equal(actual, expected)
})

test_that("check paginate stop on same token", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_paginate_update_fn <- mock2(
    list(
      fn = substitute(dummy_op(x = "hi")),
      paginator = list(
        input_token = "NextToken",
        output_token = "NextToken",
        limit_key = "MaxKey",
        result_key = "Contents"
      )
    )
  )
  mock_eval <- mock2(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list(), NextToken = "token2")
  )

  expected <- list(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2")
  )

  mockery::stub(paginate, "substitute", mock_substitute)
  mockery::stub(paginate, "paginate_update_fn", mock_paginate_update_fn)
  mockery::stub(paginate, "eval", mock_eval)

  actual <- paginate("dummy", StopOnSameToken = TRUE)
  actual_args <- mockery::mock_args(mock_eval)
  expect_equal(lapply(actual_args, function(x) as.list(x[[1]][-1])), list(
    list(x = "hi"),
    list(x = "hi", NextToken = "token1"),
    list(x = "hi", NextToken = "token2")
  ))
  expect_equal(actual, expected)
})

########################################################################
# paginate_xapply
########################################################################

test_that("check paginate_xapply", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }

  mock_eval <- mock2(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list("zoo"), NextToken = character())
  )

  expected <- list(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list("zoo"), NextToken = character())
  )

  mockery::stub(paginate_xapply, "eval", mock_eval)

  actual <- paginate_xapply(
    substitute(dummy_op(x = "hi")),
    paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ),
    FUN = function(resp) {
      resp
    },
    MaxItems = NULL
  )
  actual_args <- mockery::mock_args(mock_eval)

  expect_equal(lapply(actual_args, function(x) as.list(x[[1]][-1])), list(
    list(x = "hi"),
    list(x = "hi", NextToken = "token1"),
    list(x = "hi", NextToken = "token2")
  ))
  expect_equal(actual, expected)
})

test_that("check paginate_xapply restrict MaxItems", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }

  mock_eval <- mock2(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list("zoo"), NextToken = character())
  )

  expected <- list(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2")
  )

  mockery::stub(paginate_xapply, "eval", mock_eval)

  actual <- paginate_xapply(
    substitute(dummy_op(x = "hi")),
    paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ),
    FUN = function(resp) {
      resp
    },
    MaxItems = 2
  )
  actual_args <- mockery::mock_args(mock_eval)
  expect_equal(lapply(actual_args, function(x) as.list(x[[1]][-1])), list(
    list(x = "hi"),
    list(x = "hi", NextToken = "token1")
  ))
  expect_equal(actual, expected)
})

test_that("check paginate stop on same token", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }

  mock_eval <- mock2(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2"),
    list(Contents = list(), NextToken = "token2")
  )

  expected <- list(
    list(Contents = list("foo"), NextToken = "token1"),
    list(Contents = list("bar"), NextToken = "token2")
  )

  mockery::stub(paginate_xapply, "eval", mock_eval)

  actual <- paginate_xapply(
    substitute(dummy_op(x = "hi")),
    paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ),
    FUN = function(resp) {
      resp
    },
    MaxItems = NULL,
    StopOnSameToken = TRUE
  )
  actual_args <- mockery::mock_args(mock_eval)
  expect_equal(lapply(actual_args, function(x) as.list(x[[1]][-1])), list(
    list(x = "hi"),
    list(x = "hi", NextToken = "token1"),
    list(x = "hi", NextToken = "token2")
  ))
  expect_equal(actual, expected)
})

########################################################################
# paginate_lapply
########################################################################
test_that("check paginate_lapply", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_paginate_update_fn <- mock2(side_effect = function(fn, ...) {
    list(
      fn = fn,
      paginator = list(
        input_token = "NextToken",
        output_token = "NextToken",
        limit_key = "MaxKey",
        result_key = "Contents"
      )
    )
  })
  mock_paginate_xapply <- mock2()

  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  mockery::stub(paginate_lapply, "paginate_update_fn", mock_paginate_update_fn)
  mockery::stub(paginate_lapply, "paginate_xapply", mock_paginate_xapply)

  actual <- paginate_lapply("dummy", \(resp) {
    resp
  })
  actual_fn <- mock_arg(mock_paginate_update_fn)[[1]]

  expect_equal(actual_fn, substitute(dummy_op(x = "hi")))
})

test_that("check paginate_lapply do.call modified operation", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }
  mock_substitute <- mock2(substitute(do.call(dummy_op, list(x = "hi"))))

  mock_paginate_update_fn <- mock2(side_effect = function(fn, ...) {
    list(
      fn = fn,
      paginator = list(
        input_token = "NextToken",
        output_token = "NextToken",
        limit_key = "MaxKey",
        result_key = "Contents"
      )
    )
  })
  mock_paginate_xapply <- mock2()

  mockery::stub(paginate_lapply, "substitute", mock_substitute)
  mockery::stub(paginate_lapply, "paginate_update_fn", mock_paginate_update_fn)
  mockery::stub(paginate_lapply, "paginate_xapply", mock_paginate_xapply)

  actual <- paginate_lapply("dummy", \(resp) {
    resp
  })
  actual_fn <- mock_arg(mock_paginate_update_fn)[[1]]

  expect_equal(actual_fn, substitute(dummy_op(x = "hi")))
})

########################################################################
# paginate_sapply
########################################################################
test_that("check paginate_sapply", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }
  mock_substitute <- mock2(substitute(dummy_op(x = "hi")))

  mock_paginate_update_fn <- mock2(side_effect = function(fn, ...) {
    list(
      fn = fn,
      paginator = list(
        input_token = "NextToken",
        output_token = "NextToken",
        limit_key = "MaxKey",
        result_key = "Contents"
      )
    )
  })
  mock_paginate_xapply <- mock2()

  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  mockery::stub(paginate_sapply, "paginate_update_fn", mock_paginate_update_fn)
  mockery::stub(paginate_sapply, "paginate_xapply", mock_paginate_xapply)

  actual <- paginate_sapply("dummy", \(resp) {
    resp
  })
  actual_fn <- mock_arg(mock_paginate_update_fn)[[1]]

  expect_equal(actual_fn, substitute(dummy_op(x = "hi")))
})

test_that("check paginate_sapply do.call modified operation", {
  dummy_internal <- function(paginator) {
    paginator
  }
  dummy_op <- function(x, NextToken = NULL, MaxKey = NULL) {
    op <- dummy_internal(paginator = list(
      input_token = "NextToken",
      output_token = "NextToken",
      limit_key = "MaxKey",
      result_key = "Contents"
    ))
    list(NextToken = NextToken, MaxKey = MaxKey)
  }
  mock_substitute <- mock2(substitute(do.call(dummy_op, list(x = "hi"))))

  mock_paginate_update_fn <- mock2(side_effect = function(fn, ...) {
    list(
      fn = fn,
      paginator = list(
        input_token = "NextToken",
        output_token = "NextToken",
        limit_key = "MaxKey",
        result_key = "Contents"
      )
    )
  })
  mock_paginate_xapply <- mock2()

  mockery::stub(paginate_sapply, "substitute", mock_substitute)
  mockery::stub(paginate_sapply, "paginate_update_fn", mock_paginate_update_fn)
  mockery::stub(paginate_sapply, "paginate_xapply", mock_paginate_xapply)

  actual <- paginate_sapply("dummy", \(resp) {
    resp
  })
  actual_fn <- mock_arg(mock_paginate_update_fn)[[1]]

  expect_equal(actual_fn, substitute(dummy_op(x = "hi")))
})

########################################################################
# list_paginators
########################################################################

test_that("check list_paginator", {
  dummy_fn <- function(paginator) {
    return(paginator)
  }

  svc <- list(
    fun1 = function() {
      op <- dummy_fn(
        paginator = list(input_token = "hi", output_token = "bob")
      )
    },
    fun2 = function() {
      op <- dummy_fn()
    },
    .internal = list()
  )

  expect_equal(list_paginators(svc), "fun1")
})

test_that("check list_paginator for non paws functions", {
  svc <- list(
    alarm = utils::alarm,
    names = base::names
  )
  expect_equal(list_paginators(svc), character())
})

test_that("check list_paginator empty list", {
  expect_equal(list_paginators(list()), character())
})
