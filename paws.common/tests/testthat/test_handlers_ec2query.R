#-------------------------------------------------------------------------------

# Build tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$client_info$api_version <- "2014-01-01"
svc$handlers$build <- HandlerList(ec2query_build)
options(idempotency_rand_fn = function() {
  0
})

op_input1 <- function(Foo = NULL, Bar = NULL, Yuck = NULL) {
  args <- list(Foo = Foo, Bar = Bar, Yuck = Yuck)
  interface <- Structure(
    Foo = Scalar(type = "string"),
    Bar = Scalar(type = "string"),
    Yuck = Scalar(type = "string")
  )
  return(populate(args, interface))
}

test_that("build scalar members", {
  input <- op_input1(
    Bar = "val2",
    Foo = "val1"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Bar=val2&Foo=val1&Version=2014-01-01")
})

op_input2 <- function(Foo = NULL, Bar = NULL, Yuck = NULL) {
  args <- list(Foo = Foo, Bar = Bar, Yuck = Yuck)
  interface <- Structure(
    Foo = Scalar(),
    Bar = Scalar(.tags = list(locationName = "barLocationName")),
    Yuck = Scalar(.tags = list(locationName = "yuckLocationName", queryName = "yuckQueryName"))
  )
  return(populate(args, interface))
}

test_that("build location name and query name", {
  input <- op_input2(
    Bar = "val2",
    Foo = "val1",
    Yuck = "val3"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&BarLocationName=val2&Foo=val1&Version=2014-01-01&yuckQueryName=val3")
})

op_input3 <- function(Struct) {
  args <- list(Struct = Struct)
  interface <- Structure(
    Struct = Structure(
      Scalar = Scalar()
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure members", {
  input <- op_input3(
    Struct = list(Scalar = "foo")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Struct.Scalar=foo&Version=2014-01-01")
})

op_input4 <- function(ListBools, ListFloats, ListIntegers, ListStrings) {
  args <- list(
    ListBools = ListBools,
    ListFloats = ListFloats,
    ListIntegers = ListIntegers,
    ListStrings = ListStrings
  )
  interface <- Structure(
    ListBools = List(Bool()),
    ListFloats = List(Scalar()),
    ListIntegers = List(Scalar()),
    ListStrings = List(Scalar())
  )
  return(populate(args, interface))
}

test_that("build list types", {
  input <- op_input4(
    ListBools = c(TRUE, FALSE, FALSE),
    ListFloats = c(1.1, 2.718, 3.14),
    ListIntegers = c(0, 1, 2),
    ListStrings = c("foo", "bar", "baz")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListBools.1=true&ListBools.2=false&ListBools.3=false&ListFloats.1=1.1&ListFloats.2=2.718&ListFloats.3=3.14&ListIntegers.1=0&ListIntegers.2=1&ListIntegers.3=2&ListStrings.1=foo&ListStrings.2=bar&ListStrings.3=baz&Version=2014-01-01")
})

op_input5 <- function(ListArg) {
  args <- list(ListArg = ListArg)
  interface <- Structure(
    ListArg = List(Scalar(), .tags = list(locationName = "ListMemberName", locationNameList = "item"))
  )
  return(populate(args, interface))
}

test_that("build location name list", {
  input <- op_input5(
    ListArg = c("a", "b", "c")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListMemberName.1=a&ListMemberName.2=b&ListMemberName.3=c&Version=2014-01-01")
})

op_input6 <- function(ListArg) {
  args <- list(ListArg = ListArg)
  interface <- Structure(
    ListArg = List(Scalar(), .tags = list(locationName = "ListMemberName", queryName = "ListQueryName", locationNameList = "item"))
  )
  return(populate(args, interface))
}

test_that("build query name list", {
  input <- op_input6(
    ListArg = c("a", "b", "c")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListQueryName.1=a&ListQueryName.2=b&ListQueryName.3=c&Version=2014-01-01")
})

op_input7 <- function(BlobArg) {
  args <- list(BlobArg = BlobArg)
  interface <- Structure(
    BlobArg = Scalar(type = "blob")
  )
  return(populate(args, interface))
}

test_that("build blob argument", {
  input <- op_input7(
    BlobArg = charToRaw("foo")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&BlobArg=Zm9v&Version=2014-01-01")
})

op_input8 <- function(TimeArg) {
  args <- list(TimeArg = TimeArg)
  interface <- Structure(
    TimeArg = Scalar(type = "timestamp")
  )
  return(populate(args, interface))
}

test_that("build time argument", {
  input <- op_input8(
    TimeArg = unix_time(1422172800)
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&TimeArg=2015-01-25T08%3A00%3A00Z&Version=2014-01-01")
})

op_input9 <- function(Token = NULL) {
  args <- list(Token = Token)
  interface <- Structure(
    Token = Scalar(.tags = list(idempotencyToken = TRUE))
  )
  return(populate(args, interface))
}

test_that("build idempotency token", {
  input <- op_input9(
    Token = "abc123"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Token=abc123&Version=2014-01-01")
})

test_that("build idempotency token", {
  input <- op_input9()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Token=00000000-0000-4000-8000-000000000000&Version=2014-01-01")
})

op_input10 <- function(ListEnums = NULL) {
  args <- list(ListEnums = ListEnums)
  interface <- Structure(
    ListEnums = List(
      Scalar(.tags = list(enum = "InputService10TestShapeEnumType"))
    )
  )
  return(populate(args, interface))
}

test_that("build list enums", {
  input <- op_input10(
    ListEnums = list("foo", "", "bar")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListEnums.1=foo&ListEnums.2=&ListEnums.3=bar&Version=2014-01-01")
})

test_that("build empty list enums", {
  input <- op_input10()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Version=2014-01-01")
})

#-------------------------------------------------------------------------------

# Unmarshal tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal <- HandlerList(ec2query_unmarshal)
svc$handlers$unmarshal_error <- HandlerList(ec2query_unmarshal_error)

op_output1 <- Structure(
  Char = Scalar(type = "character"),
  Double = Scalar(type = "double"),
  FalseBool = Scalar(type = "boolean"),
  Float = Scalar(type = "float"),
  Long = Scalar(type = "long"),
  Num = Scalar(type = "integer", .tags = list(locationName = "FooNum")),
  Str = Scalar(type = "string"),
  TrueBool = Scalar(type = "boolean")
)

test_that("unmarshal scalar members", {
  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Str>myname</Str><FooNum>123</FooNum><FalseBool>false</FalseBool><TrueBool>true</TrueBool><Float>1.2</Float><Double>1.3</Double><Long>200</Long><Char>a</Char><RequestId>request-id</RequestId></OperationNameResponse>")
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
  Blob = Scalar(type = "blob")
)

test_that("unmarshal blob", {
  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Blob>dmFsdWU=</Blob><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(rawToChar(out$Blob), "value")
})

op_output3 <- Structure(
  ListMember = List(Scalar(type = "string"))
)

test_that("unmarshal list", {
  req <- new_request(svc, op, NULL, op_output3)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><ListMember><member>abc</member><member>123</member></ListMember><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[1], "abc")
  expect_equal(out$ListMember[2], "123")
})

op_output4 <- Structure(
  ListMember = List(Scalar(type = "string"))
)

test_that("unmarshal list", {
  req <- new_request(svc, op, NULL, op_output4)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><ListMember><item>abc</item><item>123</item></ListMember><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[1], "abc")
  expect_equal(out$ListMember[2], "123")
})

op_output5 <- Structure(
  ListMember = List(Scalar(type = "string"), .tags = list(flattened = TRUE))
)

test_that("unmarshal flattened list", {
  req <- new_request(svc, op, NULL, op_output5)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><ListMember>abc</ListMember><ListMember>123</ListMember><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[1], "abc")
  expect_equal(out$ListMember[2], "123")
})

op_output6 <- Structure(
  Map = Map(Structure(Foo = Scalar(.tags = list(locationName = "foo"))))
)

test_that("unmarshal map", {
  req <- new_request(svc, op, NULL, op_output6)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Map><entry><key>qux</key><value><foo>bar</foo></value></entry><entry><key>baz</key><value><foo>bam</foo></value></entry></Map><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map$baz$Foo, "bam")
  expect_equal(out$Map$qux$Foo, "bar")
})

op_output7 <- Structure(
  Map = Map(Scalar(), .tags = list(flattened = TRUE))
)

test_that("unmarshal flattened map", {
  req <- new_request(svc, op, NULL, op_output7)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Map><key>qux</key><value>bar</value></Map><Map><key>baz</key><value>bam</value></Map><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map$baz, "bam")
  expect_equal(out$Map$qux, "bar")
})

op_output8 <- Structure(
  Map = Map(Scalar(), .tags = list(locationNameKey = "foo", locationNameValue = "bar", flattened = TRUE))
)

test_that("unmarshal flattened named map", {
  req <- new_request(svc, op, NULL, op_output8)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Map><foo>qux</foo><bar>bar</bar></Map><Map><foo>baz</foo><bar>bam</bar></Map><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map$baz, "bam")
  expect_equal(out$Map$qux, "bar")
})

op_output9 <- Structure(
  Foo = Scalar(type = "string")
)

test_that("unmarshal empty string", {
  skip("skip")
  req <- new_request(svc, op, NULL, op_output9)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Foo/><RequestId>requestid</RequestId></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Foo, "")
})

op_output10 <- Structure(
  FooEnum = Scalar(type = "string", .tags = list(enum = "OutputService10TestShapeEC2EnumType")),
  ListEnums = List(Scalar(type = "string"))
)

test_that("unmarshal enum", {
  req <- new_request(svc, op, NULL, op_output10)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><FooEnum>foo</FooEnum><ListEnums><member>foo</member><member>bar</member></ListEnums></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$FooEnum, "foo")
  expect_equal(out$ListEnums[1], "foo")
  expect_equal(out$ListEnums[2], "bar")
})

test_that("unmarshal timestamp", {
  op_output11 <- Structure(
    Timestamp = Scalar(type = "timestamp")
  )
  req <- new_request(svc, op, NULL, op_output11)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Timestamp>1970-01-01T00:00:00.000Z</Timestamp></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Timestamp, unix_time(0))
})

test_that("unmarshal error", {
  req <- new_request(svc, op, NULL, op_output10)
  req$http_response <- HttpResponse(
    status_code = 404,
    body = charToRaw("<Response><Errors><Error><Code>Foo</Code><Message>Bar</Message><RequestID>Baz</RequestID></Error></Errors></Response>")
  )

  req <- unmarshal_error(req)
  err <- req$error
  expect_equal(err$message, "Bar")
  expect_equal(err$code, "Foo")
  expect_equal(err$status_code, 404)
  expect_equal(err$error_response$RequestID, "Baz")
})
