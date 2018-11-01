context("JSON-RPC")

#-------------------------------------------------------------------------------

# Build tests

op <- Operation(name = "OperationName")
svc <- Client(
  client_info = ClientInfo(
    json_version = "1.1",
    target_prefix = "com.amazonaws.foo"
  )
)
svc$handlers$build <- HandlerList(jsonrpc_build)
options(idempotency_rand_fn = function() {0})

op_input1 <- function(Name) {
  args <- list(Name = Name)
  interface <- Structure(
    Name = Scalar()
  )
  return(populate(args, interface))
}

test_that("build scalar members", {
  input <- op_input1(
    Name = "myname"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(r$body, '{"Name":"myname"}')
  expect_equal(r$header[["Content-Type"]], "application/x-amz-json-1.1")
  expect_equal(r$header[["X-Amz-Target"]], "com.amazonaws.foo.OperationName")
})

op_input2 <- function(TimeArg) {
  args <- list(TimeArg = TimeArg)
  interface <- Structure(
    TimeArg = Scalar(type = "timestamp", .attrs = list(timestampFormat = "unix"))
  )
  return(populate(args, interface))
}

test_that("build timestamp value", {
  input <- op_input2(
    TimeArg = unix_time(1422172800)
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"TimeArg":1422172800}')
})

op_input3 <- function(BlobArg = NULL, BlobMap = NULL) {
  args <- list(BlobArg = BlobArg, BlobMap = BlobMap)
  interface <- Structure(
    BlobArg = Scalar(type = "blob"),
    BlobMap = Map(Scalar(type = "blob"))
  )
  return(populate(args, interface))
}

test_that("build blob value", {
  input <- op_input3(
    BlobArg = charToRaw("foo")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"BlobArg":"Zm9v"}')
})

test_that("build blob map", {
  input <- op_input3(
    BlobMap = list(
      key1 = charToRaw("foo"),
      key2 = charToRaw("bar")
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"BlobMap":{"key1":"Zm9v","key2":"YmFy"}}')
})

op_input4 <- function(ListParam) {
  args <- list(ListParam = ListParam)
  interface <- Structure(
    ListParam = List(Scalar(type = "blob"))
  )
  return(populate(args, interface))
}

test_that("build blob list", {
  input <- op_input4(
    ListParam = list(
      charToRaw("foo"),
      charToRaw("bar")
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"ListParam":["Zm9v","YmFy"]}')
})

op_input5 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      NoRecurse = Scalar(type = "string"))
  )
  return(populate(args, interface))
}

test_that("build nested structure", {
  input <- op_input5(
    RecursiveStruct = list(
      NoRecurse = "foo"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"RecursiveStruct":{"NoRecurse":"foo"}}')
})

op_input6 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      RecursiveStruct = Structure(
        NoRecurse = Scalar(type = "string"))
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure", {
  input <- op_input6(
    RecursiveStruct = list(
      RecursiveStruct = list(
        NoRecurse = "foo"
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"RecursiveStruct":{"RecursiveStruct":{"NoRecurse":"foo"}}}')
})

op_input7 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      RecursiveStruct = Structure(
        RecursiveStruct = Structure(
          RecursiveStruct = Structure(
            NoRecurse = Scalar(type = "string")
          )
        )
      )
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure", {
  input <- op_input7(
    RecursiveStruct = list(
      RecursiveStruct = list(
        RecursiveStruct = list(
          RecursiveStruct = list(
            NoRecurse = "foo"
          )
        )
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"RecursiveStruct":{"RecursiveStruct":{"RecursiveStruct":{"RecursiveStruct":{"NoRecurse":"foo"}}}}}')
})

op_input8 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      RecursiveList = List(
        Structure(
          NoRecurse = Scalar(type = "string")
        )
      )
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure", {
  input <- op_input8(
    RecursiveStruct = list(
      RecursiveList = list(
        list(NoRecurse = "foo"),
        list(NoRecurse = "bar")
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"RecursiveStruct":{"RecursiveList":[{"NoRecurse":"foo"},{"NoRecurse":"bar"}]}}')
})

op_input9 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      RecursiveList = List(
        Structure(
          NoRecurse = Scalar(type = "string"),
          RecursiveStruct = Structure(
            NoRecurse = Scalar(type = "string")
          )
        )
      )
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure", {
  input <- op_input9(
    RecursiveStruct = list(
      RecursiveList = list(
        list(NoRecurse = "foo"),
        list(RecursiveStruct = list(
          NoRecurse = "bar")
        )
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"RecursiveStruct":{"RecursiveList":[{"NoRecurse":"foo"},{"RecursiveStruct":{"NoRecurse":"bar"}}]}}')
})

op_input10 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      RecursiveMap = Map(
        Structure(
          NoRecurse = Scalar(type = "string")
        )
      )
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure", {
  input <- op_input10(
    RecursiveStruct = list(
      RecursiveMap = list(
        bar = list(NoRecurse = "bar"),
        foo = list(NoRecurse = "foo")
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"RecursiveStruct":{"RecursiveMap":{"bar":{"NoRecurse":"bar"},"foo":{"NoRecurse":"foo"}}}}')
})

op_input11 <- function(Map) {
  args <- list(Map = Map)
  interface <- Structure(
    Map = Map(Scalar(type = "string"))
  )
  return(populate(args, interface))
}

test_that("build empty map", {
  skip("skip")
  input <- op_input11(
    Map = list()
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"Map":{}}')
})

op_input12 <- function(Token = NULL) {
  args <- list(Token = Token)
  interface <- Structure(
    Token = Scalar(type = "string", .attrs = list(idempotencyToken = TRUE))
  )
  return(populate(args, interface))
}

test_that("build idempotency token", {
  input <- op_input12(
    Token = "abc123"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"Token":"abc123"}')
})

test_that("build idempotency token", {
  input <- op_input12()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"Token":"00000000-0000-4000-8000-000000000000"}')
})

op_input13 <- function(FooEnum, ListEnums) {
  args <- list(FooEnum = FooEnum, ListEnums = ListEnums)
  interface <- Structure(
    FooEnum = Scalar(type = "string", .attrs = list(enum = "InputService8TestShapeEnumType")),
    ListEnums = List(Scalar(type = "string", .attrs = list(enum = "InputService8TestShapeEnumType")))
  )
  return(populate(args, interface))
}

test_that("build enums", {
  input <- op_input13(
    FooEnum = "foo",
    ListEnums = list(
      "foo",
      "",
      "bar"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, '{"FooEnum":"foo","ListEnums":["foo","","bar"]}')
})

#-------------------------------------------------------------------------------

# Build with no target prefix

op <- Operation(name = "OperationName")
svc <- Client(
  client_info = ClientInfo(
    json_version = "1.1",
    target_prefix = NULL
  )
)
svc$handlers$build <- HandlerList(jsonrpc_build)

op_input1 <- function(Name) {
  args <- list(Name = Name)
  interface <- Structure(
    Name = Scalar()
  )
  return(populate(args, interface))
}

test_that("build scalar members", {
  input <- op_input1(
    Name = "myname"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(r$body, '{"Name":"myname"}')
})

#-------------------------------------------------------------------------------

# Unmarshal tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal <- HandlerList(jsonrpc_unmarshal)
svc$handlers$unmarshal_error <- HandlerList(jsonrpc_unmarshal_error)

op_output1 <- Structure(
  Char = Scalar(type = "character"),
  Double = Scalar(type = "double"),
  FalseBool = Scalar(type = "boolean"),
  Float = Scalar(type = "float"),
  Long = Scalar(type = "long"),
  Num = Scalar(type = "integer"),
  Str = Scalar(type = "string"),
  TrueBool = Scalar(type = "boolean")
)

test_that("unmarshal scalar members", {
  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"Str\": \"myname\", \"Num\": 123, \"FalseBool\": false, \"TrueBool\": true, \"Float\": 1.2, \"Double\": 1.3, \"Long\": 200, \"Char\": \"a\"}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Char, "a")
  expect_equal(out$Double, 1.3)
  expect_equal(out$FalseBool, FALSE)
  expect_equal(out$Float, 1.2)
  expect_equal(out$Long, 200L)
  expect_equal(out$Num, 123L)
  expect_equal(out$Str, "myname")
  expect_equal(out$TrueBool, TRUE)
})

op_output2 <- Structure(
  BlobMember = Scalar(type = "blob"),
  StructMember = Structure(
    Foo = Scalar(type = "blob", .attrs = list(locationName = "foo"))
  )
)

test_that("unmarshal blobs", {
  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"BlobMember\": \"aGkh\", \"StructMember\": {\"foo\": \"dGhlcmUh\"}}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$BlobMember, "hi!")
  expect_equal(out$StructMember$Foo, "there!")
})

op_output3 <- Structure(
  TimeMember = Scalar(type = "timestamp", .attrs = list(timestampFormat = "unix")),
  StructMember = Structure(
    Foo = Scalar(type = "timestamp", .attrs = list(locationName = "foo", timestampFormat = "unix"))
  )
)

test_that("unmarshal timestamps", {
  req <- new_request(svc, op, NULL, op_output3)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"TimeMember\": 1398796238, \"StructMember\": {\"foo\": 1398796238}}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$TimeMember, unix_time(1.398796238e+09))
  expect_equal(out$StructMember$Foo, unix_time(1.398796238e+09))
})

op_output4 <- Structure(
  ListMember = List(Scalar(type = "string")),
  ListMemberMap = List(Map(Scalar(type = "string"))),
  ListMemberStruct = List(Structure(Foo = Scalar()))
)

test_that("unmarshal list", {
  req <- new_request(svc, op, NULL, op_output4)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"ListMember\": [\"a\", \"b\"]}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[1], "a")
  expect_equal(out$ListMember[2], "b")
})

test_that("unmarshal list", {
  skip("skip")
  req <- new_request(svc, op, NULL, op_output4)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"ListMember\": [\"a\", null], \"ListMemberMap\": [{}, null, null, {}], \"ListMemberStruct\": [{}, null, null, {}]}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[1], "a")
  expect_equal(out$ListMember[2], NA_character_)
  expect_equal(out$ListMemberMap[[1]], NULL)
  expect_equal(out$ListMemberMap[[2]], NULL)
  expect_equal(out$ListMemberMap[[3]], NULL)
  expect_equal(out$ListMemberMap[[4]], NULL)
  expect_equal(out$ListMemberStruct[[1]], NULL)
  expect_equal(out$ListMemberStruct[[2]], NULL)
  expect_equal(out$ListMemberStruct[[3]], NULL)
  expect_equal(out$ListMemberStruct[[4]], NULL)
})

op_output5 <- Structure(
  MapMember = Map(List(Scalar(type = "integer")))
)

test_that("unmarshal map", {
  req <- new_request(svc, op, NULL, op_output5)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"MapMember\": {\"a\": [1, 2], \"b\": [3, 4]}}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$MapMember[["a"]][1], 1)
  expect_equal(out$MapMember[["a"]][2], 2)
  expect_equal(out$MapMember[["b"]][1], 3)
  expect_equal(out$MapMember[["b"]][2], 4)
})

op_output6 <- Structure(
  StrType = Scalar(type = "string")
)

test_that("unmarshal ignores extra data", {
  req <- new_request(svc, op, NULL, op_output6)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"foo\": \"bar\"}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out, list(StrType = character(0)))
})

op_output7 <- Structure(
  FooEnum = Scalar(type = "string", .attrs = list(enum = "OutputService7TestShapeJSONEnumType")),
  ListEnums = List(Scalar(type = "string", .attrs = list(enum = "OutputService7TestShapeJSONEnumType")))
)

test_that("unmarshal enums", {
  req <- new_request(svc, op, NULL, op_output7)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = "{\"FooEnum\": \"foo\", \"ListEnums\": [\"foo\", \"bar\"]}"
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$FooEnum, "foo")
  expect_equal(out$ListEnums[1], "foo")
  expect_equal(out$ListEnums[2], "bar")
})

test_that("unmarshal error with message in 'Message'", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = "{\"__type\":\"FooException\",\"Message\":\"Foo\"}"
  )
  req <- unmarshal_error(req)
  out <- req$error
  expect_equal(out$code, "FooException")
  expect_equal(out$message, "Foo")
})

test_that("unmarshal error with message in 'message'", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = "{\"message\":\"Foo\",\"__type\":\"FooException\"}"
  )
  req <- unmarshal_error(req)
  out <- req$error
  expect_equal(out$code, "FooException")
  expect_equal(out$message, "Foo")
})

test_that("unmarshal error with no message", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = "{\"__type\":\"FooException\"}"
  )
  req <- unmarshal_error(req)
  out <- req$error
  expect_equal(out$code, "FooException")
  expect_equal(out$message, "")
})
