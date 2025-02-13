#-------------------------------------------------------------------------------

# Build tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$client_info$api_version <- "2014-01-01"
svc$handlers$build <- HandlerList(sse_md5_build)

op_input1 <- function(SSECustomerKey = NULL, SSECustomerKeyMD5 = NULL) {
  args <- list(SSECustomerKey = SSECustomerKey, SSECustomerKeyMD5 = SSECustomerKeyMD5)
  interface <- Structure(
    SSECustomerKey = Scalar(type = "blob"),
    SSECustomerKeyMD5 = Scalar(type = "string")
  )
  return(populate(args, interface))
}

test_that("build empty SSECustomer md5", {
  input <- op_input1()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$params$SSECustomerKeyMD5, list(), ignore_attr = TRUE)
})

test_that("build SSECustomer md5", {
  input <- op_input1(SSECustomerKey = charToRaw("foobar"))
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(
    req$params$SSECustomerKeyMD5,
    "OFj2IjCsPJFfMAxmQxLGPw==",
    ignore_attr = TRUE
  )
})

test_that("build skip SSECustomer md5", {
  input <- op_input1(SSECustomerKey = charToRaw("foobar"), SSECustomerKeyMD5 = "made-up")
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$params$SSECustomerKeyMD5, "made-up", ignore_attr = TRUE)
})

test_that("build skip SSECustomer md5", {
  input <- op_input1(SSECustomerKeyMD5 = "made-up")
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$params$SSECustomerKey, list(), ignore_attr = TRUE)
  expect_equal(req$params$SSECustomerKeyMD5, "made-up", ignore_attr = TRUE)
})

#-------------------------------------------------------------------------------
op_input2 <- function(
  CopySourceSSECustomerKey = NULL,
  CopySourceSSECustomerKeyMD5 = NULL
) {
  args <- list(
    CopySourceSSECustomerKey = CopySourceSSECustomerKey,
    CopySourceSSECustomerKeyMD5 = CopySourceSSECustomerKeyMD5
  )
  interface <- Structure(
    CopySourceSSECustomerKey = Scalar(type = "blob"),
    CopySourceSSECustomerKeyMD5 = Scalar(type = "string")
  )
  return(populate(args, interface))
}

test_that("build empty CopySourceSSECustomer md5", {
  input <- op_input2()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$params$CopySourceSSECustomerKeyMD5, list(), ignore_attr = TRUE)
})

test_that("build CopySourceSSECustomer md5", {
  input <- op_input2(CopySourceSSECustomerKey = charToRaw("foobar"))
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(
    req$params$CopySourceSSECustomerKeyMD5,
    "OFj2IjCsPJFfMAxmQxLGPw==",
    ignore_attr = TRUE
  )
})

test_that("build skip CopySourceSSECustomer md5", {
  input <- op_input2(
    CopySourceSSECustomerKey = charToRaw("foobar"),
    CopySourceSSECustomerKeyMD5 = "made-up"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$params$CopySourceSSECustomerKeyMD5, "made-up", ignore_attr = TRUE)
})

test_that("build skip CopySourceSSECustomer md5", {
  input <- op_input2(CopySourceSSECustomerKeyMD5 = "made-up")
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$params$CopySourceSSECustomerKey, list(), ignore_attr = TRUE)
  expect_equal(req$params$CopySourceSSECustomerKeyMD5, "made-up", ignore_attr = TRUE)
})
