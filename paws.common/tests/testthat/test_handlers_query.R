#-------------------------------------------------------------------------------

# Build tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$client_info$api_version <- "2014-01-01"
svc$handlers$build <- HandlerList(query_build)
UUID_V4_PATTERN <- "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"

op_input1 <- function(Foo = NULL, Bar = NULL, Baz = NULL) {
  args <- list(Foo = Foo, Bar = Bar, Baz = Baz)
  interface <- Structure(
    Foo = Scalar(type = "string"),
    Bar = Scalar(type = "string"),
    Baz = Scalar(type = "boolean")
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

test_that("build scalar members", {
  input <- op_input1(
    Baz = TRUE
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Baz=true&Version=2014-01-01")
})

test_that("build scalar members", {
  input <- op_input1(
    Baz = FALSE
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Baz=false&Version=2014-01-01")
})

op_input2 <- function(StructArg) {
  args <- list(StructArg = StructArg)
  interface <- Structure(
    StructArg = Structure(
      ScalarArg = Scalar(type = "string")
    )
  )
  return(populate(args, interface))
}

test_that("build nested structure members", {
  input <- op_input2(
    StructArg = list(
      ScalarArg = "foo"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&StructArg.ScalarArg=foo&Version=2014-01-01")
})

op_input3 <- function(ListArg) {
  args <- list(ListArg = ListArg)
  interface <- Structure(
    ListArg = List(Scalar(type = "string"))
  )
  return(populate(args, interface))
}

test_that("build list members", {
  input <- op_input3(
    ListArg = c("foo", "bar", "baz")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListArg.member.1=foo&ListArg.member.2=bar&ListArg.member.3=baz&Version=2014-01-01")
})

# TODO: Fix?
test_that("build empty list", {
  skip("")
  input <- op_input3(
    ListArg = c()
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListArg=&Version=2014-01-01")
})

op_input4 <- function(ListArg = NULL, NamedListArg = NULL, ScalarArg = NULL) {
  args <- list(ListArg = ListArg, NamedListArg = NamedListArg, ScalarArg = ScalarArg)
  interface <- Structure(
    ListArg = List(Scalar(type = "string"), .tags = list(flattened = TRUE)),
    NamedListArg = List(Scalar(type = "string"), .tags = list(flattened = TRUE, locationNameList = "Foo")),
    ScalarArg = Scalar(type = "string")
  )
  return(populate(args, interface))
}

test_that("build flattened list", {
  input <- op_input4(
    ListArg = c("a", "b", "c"),
    ScalarArg = "foo"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListArg.1=a&ListArg.2=b&ListArg.3=c&ScalarArg=foo&Version=2014-01-01")
})

test_that("build flattened named list", {
  input <- op_input4(
    NamedListArg = c("a")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Foo.1=a&Version=2014-01-01")
})

op_input5 <- function(MapArg) {
  args <- list(MapArg = MapArg)
  interface <- Structure(
    MapArg = Map(Scalar(type = "string"), .tags = list(flattened = TRUE))
  )
  return(populate(args, interface))
}

test_that("build flattened map", {
  input <- op_input5(
    MapArg = list(
      key1 = "val1",
      key2 = "val2"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&MapArg.1.key=key1&MapArg.1.value=val1&MapArg.2.key=key2&MapArg.2.value=val2&Version=2014-01-01")
})

op_input6 <- function(ListArg) {
  args <- list(ListArg = ListArg)
  interface <- Structure(
    ListArg = List(Scalar(type = "string"), .tags = list(locationNameList = "item"))
  )
  return(populate(args, interface))
}

test_that("build non-flattened list with location name", {
  input <- op_input6(
    ListArg = list(
      "a",
      "b",
      "c"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListArg.item.1=a&ListArg.item.2=b&ListArg.item.3=c&Version=2014-01-01")
})

op_input7 <- function(ListArg, ScalarArg) {
  args <- list(ListArg = ListArg, ScalarArg = ScalarArg)
  interface <- Structure(
    ListArg = List(Scalar(type = "string"), .tags = list(flattened = TRUE, locationNameList = "ListArgLocation")),
    ScalarArg = Scalar(type = "string")
  )
  return(populate(args, interface))
}

test_that("build flattened list with location name", {
  input <- op_input7(
    ListArg = list(
      "a",
      "b",
      "c"
    ),
    ScalarArg = "foo"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&ListArgLocation.1=a&ListArgLocation.2=b&ListArgLocation.3=c&ScalarArg=foo&Version=2014-01-01")
})

op_input8 <- function(MapArg) {
  args <- list(MapArg = MapArg)
  interface <- Structure(
    MapArg = Map(Scalar(type = "string"))
  )
  return(populate(args, interface))
}

test_that("build map", {
  input <- op_input8(
    MapArg = list(
      key1 = "val1",
      key2 = "val2"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&MapArg.entry.1.key=key1&MapArg.entry.1.value=val1&MapArg.entry.2.key=key2&MapArg.entry.2.value=val2&Version=2014-01-01")
})

op_input9 <- function(MapArg) {
  args <- list(MapArg = MapArg)
  interface <- Structure(
    MapArg = Map(Scalar(type = "string"), .tags = list(locationNameKey = "TheKey", locationNameValue = "TheValue"))
  )
  return(populate(args, interface))
}

test_that("build map with location name", {
  input <- op_input9(
    MapArg = list(
      key1 = "val1",
      key2 = "val2"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&MapArg.entry.1.TheKey=key1&MapArg.entry.1.TheValue=val1&MapArg.entry.2.TheKey=key2&MapArg.entry.2.TheValue=val2&Version=2014-01-01")
})

op_input10 <- function(BlobArg) {
  args <- list(BlobArg = BlobArg)
  interface <- Structure(
    BlobArg = Scalar(type = "blob")
  )
  return(populate(args, interface))
}

test_that("build blob argument", {
  input <- op_input10(
    BlobArg = charToRaw("foo")
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&BlobArg=Zm9v&Version=2014-01-01")
})

op_input11 <- function(BlobArgs) {
  args <- list(BlobArgs = BlobArgs)
  interface <- Structure(
    BlobArgs = List(Scalar(type = "blob"), .tags = list(flattened = TRUE))
  )
  return(populate(args, interface))
}

test_that("build blob argument", {
  input <- op_input11(
    BlobArgs = list(charToRaw("foo"))
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&BlobArgs.1=Zm9v&Version=2014-01-01")
})

op_input12 <- function(TimeArg) {
  args <- list(TimeArg = TimeArg)
  interface <- Structure(
    TimeArg = Scalar(type = "timestamp")
  )
  return(populate(args, interface))
}

test_that("build timestamp values", {
  input <- op_input12(
    TimeArg = unix_time(1422172800)
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&TimeArg=2015-01-25T08%3A00%3A00Z&Version=2014-01-01")
})

op_input13 <- function(RecursiveStruct) {
  args <- list(RecursiveStruct = RecursiveStruct)
  interface <- Structure(
    RecursiveStruct = Structure(
      NoRecurse = Scalar(type = "string"),
      RecursiveList = List(
        Structure(
          RecursiveStruct = Structure(
            NoRecurse = Scalar(type = "string")
          ),
          NoRecurse = Scalar(type = "string")
        )
      ),
      RecursiveMap = Map(
        Structure(
          NoRecurse = Scalar(type = "string")
        )
      )
    )
  )
  return(populate(args, interface))
}

test_that("build nested shapes", {
  input <- op_input13(
    RecursiveStruct = list(
      RecursiveList = list(
        list(
          NoRecurse = "foo"
        ),
        list(
          RecursiveStruct = list(
            NoRecurse = "bar"
          )
        )
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&RecursiveStruct.RecursiveList.member.1.NoRecurse=foo&RecursiveStruct.RecursiveList.member.2.RecursiveStruct.NoRecurse=bar&Version=2014-01-01")
})

test_that("build nested shapes", {
  input <- op_input13(
    RecursiveStruct = list(
      RecursiveMap = list(
        bar = list(
          NoRecurse = "bar"
        ),
        foo = list(
          NoRecurse = "foo"
        )
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&RecursiveStruct.RecursiveMap.entry.1.key=bar&RecursiveStruct.RecursiveMap.entry.1.value.NoRecurse=bar&RecursiveStruct.RecursiveMap.entry.2.key=foo&RecursiveStruct.RecursiveMap.entry.2.value.NoRecurse=foo&Version=2014-01-01")
})

op_input14 <- function(Token = NULL) {
  args <- list(Token = Token)
  interface <- Structure(
    Token = Scalar(type = "string", .tags = list(idempotencyToken = TRUE))
  )
  return(populate(args, interface))
}

test_that("build idempotency token", {
  input <- op_input14(
    Token = "abc123"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Token=abc123&Version=2014-01-01")
})

test_that("build idempotency token auto-fill", {
  input <- op_input14()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_true(grepl(sprintf("Action=OperationName&Token=%s&Version=2014-01-01", UUID_V4_PATTERN), req$body))
})

op_input15 <- function(FooEnum = NULL, ListEnums = NULL) {
  args <- list(FooEnum = FooEnum, ListEnums = ListEnums)
  interface <- Structure(
    FooEnum = Scalar(type = "string", .tags = list(enum = "InputService15TestShapeEnumType")),
    ListEnums = List(Scalar(type = "string"))
  )
  return(populate(args, interface))
}

test_that("build enum", {
  input <- op_input15(
    FooEnum = "foo",
    ListEnum = list(
      "foo",
      "",
      "bar"
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&FooEnum=foo&ListEnums.member.1=foo&ListEnums.member.2=&ListEnums.member.3=bar&Version=2014-01-01")
})

test_that("build enum", {
  input <- op_input15(
    FooEnum = "foo"
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&FooEnum=foo&Version=2014-01-01")
})

test_that("build enum", {
  input <- op_input15()
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  expect_equal(req$body, "Action=OperationName&Version=2014-01-01")
})

#-------------------------------------------------------------------------------

# Unmarshal tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal <- HandlerList(query_unmarshal)

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
    body = charToRaw("<OperationNameResponse><OperationNameResult><Str>myname</Str><FooNum>123</FooNum><FalseBool>false</FalseBool><TrueBool>true</TrueBool><Float>1.2</Float><Double>1.3</Double><Long>200</Long><Char>a</Char><Timestamp>2015-01-25T08:00:00Z</Timestamp></OperationNameResult><ResponseMetadata><RequestId>request-id</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Char, "a")
  expect_equal(out$Double, 1.3)
  expect_false(out$FalseBool)
  expect_equal(out$Float, 1.2)
  expect_equal(out$Long, 200L)
  expect_equal(out$Num, 123L)
  expect_equal(out$Str, "myname")
  expect_true(out$TrueBool)
})

test_that("unmarshal scalar members", {
  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><Str>myname</Str></OperationNameResult><ResponseMetadata><RequestId>request-id</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Char, character(0))
  expect_equal(out$Double, numeric(0))
  expect_equal(out$FalseBool, logical(0))
  expect_equal(out$Float, numeric(0))
  expect_equal(out$Long, integer(0))
  expect_equal(out$Num, integer(0))
  expect_equal(out$Str, "myname")
  expect_equal(out$TrueBool, logical(0))
})

op_output2 <- Structure(
  Blob = Scalar(type = "blob")
)

test_that("unmarshal blob", {
  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><Blob>dmFsdWU=</Blob></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
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
    body = charToRaw("<OperationNameResponse><OperationNameResult><ListMember><member>abc</member><member>123</member></ListMember></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember, c("abc", "123"))
})

op_output4 <- Structure(
  ListMember = List(Scalar(type = "string"), .tags = list(locationNameList = "item"))
)

test_that("unmarshal list with custom member name", {
  req <- new_request(svc, op, NULL, op_output4)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><ListMember><item>abc</item><item>123</item></ListMember></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember, c("abc", "123"))
})

op_output5 <- Structure(
  ListMember = List(Scalar(type = "string"), .tags = list(flattened = TRUE))
)

test_that("unmarshal flattened list", {
  req <- new_request(svc, op, NULL, op_output5)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><ListMember>abc</ListMember><ListMember>123</ListMember></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember, c("abc", "123"))
})

test_that("unmarshal flattened single-element list", {
  req <- new_request(svc, op, NULL, op_output5)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><ListMember>abc</ListMember></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember, c("abc"))
})

op_output6 <- Structure(
  List = List(
    Structure(
      Bar = Scalar(type = "string"),
      Baz = Scalar(type = "string"),
      Foo = Scalar(type = "string")
    )
  )
)

test_that("unmarshal list of structures", {
  req <- new_request(svc, op, NULL, op_output6)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse xmlns=\"https://service.amazonaws.com/doc/2010-05-08/\"><OperationNameResult><List><member><Foo>firstfoo</Foo><Bar>firstbar</Bar><Baz>firstbaz</Baz></member><member><Foo>secondfoo</Foo><Bar>secondbar</Bar><Baz>secondbaz</Baz></member></List></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$List[[1]], list(Bar = "firstbar", Baz = "firstbaz", Foo = "firstfoo"), ignore_attr = TRUE)
  expect_equal(out$List[[2]], list(Bar = "secondbar", Baz = "secondbaz", Foo = "secondfoo"), ignore_attr = TRUE)
})

op_output7 <- Structure(
  List = List(
    Structure(
      Bar = Scalar(type = "string"),
      Baz = Scalar(type = "string"),
      Foo = Scalar(type = "string")
    ),
    .tags = list(flattened = TRUE)
  )
)

test_that("unmarshal flattened list of structures", {
  req <- new_request(svc, op, NULL, op_output7)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse xmlns=\"https://service.amazonaws.com/doc/2010-05-08/\"><OperationNameResult><List><Foo>firstfoo</Foo><Bar>firstbar</Bar><Baz>firstbaz</Baz></List><List><Foo>secondfoo</Foo><Bar>secondbar</Bar><Baz>secondbaz</Baz></List></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$List[[1]], list(Bar = "firstbar", Baz = "firstbaz", Foo = "firstfoo"), ignore_attr = TRUE)
  expect_equal(out$List[[2]], list(Bar = "secondbar", Baz = "secondbaz", Foo = "secondfoo"), ignore_attr = TRUE)
})

op_output8 <- Structure(
  List = List(
    Scalar(type = "string"),
    .tags = list(flattened = TRUE, locationNameList = "NamedList")
  )
)

test_that("unmarshal flattened list with location name", {
  req <- new_request(svc, op, NULL, op_output8)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse xmlns=\"https://service.amazonaws.com/doc/2010-05-08/\"><OperationNameResult><NamedList>a</NamedList><NamedList>b</NamedList></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$List, c("a", "b"))
})

op_output9 <- Structure(
  Map = Map(
    Structure(
      Foo = Scalar(type = "string", .tags = list(locationName = "foo"))
    )
  )
)

test_that("unmarshal map", {
  req <- new_request(svc, op, NULL, op_output9)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse xmlns=\"https://service.amazonaws.com/doc/2010-05-08\"><OperationNameResult><Map><entry><key>qux</key><value><foo>bar</foo></value></entry><entry><key>baz</key><value><foo>bam</foo></value></entry></Map></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map[["baz"]]$Foo, "bam")
  expect_equal(out$Map[["qux"]]$Foo, "bar")
})

op_output10 <- Structure(
  Map = Map(Scalar(type = "string"), .tags = list(flattened = TRUE))
)

test_that("unmarshal flattened map", {
  req <- new_request(svc, op, NULL, op_output10)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><Map><key>qux</key><value>bar</value></Map><Map><key>baz</key><value>bam</value></Map></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map[["baz"]], "bam")
  expect_equal(out$Map[["qux"]], "bar")
})

op_output11 <- Structure(
  Map = Map(
    Scalar(type = "string"),
    .tags = list(
      flattened = TRUE,
      locationName = "Attribute",
      locationNameKey = "Name",
      locationNameValue = "Value"
    )
  )
)

test_that("unmarshal flattened map", {
  req <- new_request(svc, op, NULL, op_output11)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><Attribute><Name>qux</Name><Value>bar</Value></Attribute></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map[["qux"]], "bar")
})

op_output12 <- Structure(
  Map = Map(Scalar(type = "string"), .tags = list(locationNameKey = "foo", locationNameValue = "bar", flattened = TRUE))
)

test_that("unmarshal named map", {
  req <- new_request(svc, op, NULL, op_output12)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><Map><foo>qux</foo><bar>bar</bar></Map><Map><foo>baz</foo><bar>bam</bar></Map></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Map[["baz"]], "bam")
  expect_equal(out$Map[["qux"]], "bar")
})

op_output13 <- Structure(
  Foo = Scalar(type = "string")
)

test_that("unmarshal empty string", {
  req <- new_request(svc, op, NULL, op_output13)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><Foo/></OperationNameResult><ResponseMetadata><RequestId>requestid</RequestId></ResponseMetadata></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Foo, character(0))
})

op_output14 <- Structure(
  FooEnum = Scalar(type = "string"),
  ListEnums = List(Scalar(type = "string"))
)

# NOTE: This is only unmarshalling a list.
test_that("unmarshal enums", {
  req <- new_request(svc, op, NULL, op_output14)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><FooEnum>foo</FooEnum><ListEnums><member>foo</member><member>bar</member></ListEnums></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$FooEnum, "foo")
  expect_equal(out$ListEnums, c("foo", "bar"))
})

op_output15 <- list()

test_that("unmarshal empty output shape", {
  req <- new_request(svc, op, NULL, op_output15)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationResponse xmlns=\"http://monitoring.amazonaws.com/doc/2010-08-01/\">\n  <ResponseMetadata>\n    <RequestId>123</RequestId>\n  </ResponseMetadata>\n</OperationResponse>\n")
  )
  expect_error(unmarshal(req), NA)
})

op_output16 <- Structure(
  FooStr = Structure(
    Foo = Scalar(type = "string"),
    Bar = Scalar(type = "double")
  ),
  ChoStr = Structure(
    Cho = Scalar(type = "string"),
    Zar = Scalar(type = "double")
  ),
  Zoo = Scalar(type = "string")
)

test_that("unmarshal nested structures", {
  req <- new_request(svc, op, NULL, op_output16)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><OperationNameResult><FooStr><Foo>Hello</Foo><Bar>1234</Bar></FooStr><ChoStr><Cho>World</Cho><Zar>5678</Zar></ChoStr><Zoo>From R</Zoo></OperationNameResult></OperationNameResponse>")
  )
  resp <- unmarshal(req)$data
  expect_equal(resp$FooStr, list(Foo = "Hello", Bar = 1234))
  expect_equal(resp$ChoStr, list(Cho = "World", Zar = 5678))
  expect_equal(resp$Zoo, "From R")
})

#-------------------------------------------------------------------------------

# Unmarshal Error Tests

request <- list(retry_count = 0)

test_that("unmarshal error", {
  data <- "<ErrorResponse><Error><Code>FooError</Code><Message>Foo</Message><RequestId>123</RequestId><HostId>ABC</HostId></Error></ErrorResponse>"
  request$http_response$body <- charToRaw(data)
  request$http_response$status_code <- 400
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "FooError")
  expect_equal(out$message, "Foo")
  expect_equal(out$status_code, 400)
  expect_equal(out$error_response$RequestId, "123")
})

test_that("unmarshal error with an empty message", {
  data <- "<ErrorResponse><Error><Code>FooError</Code><Message></Message><RequestId>123</RequestId><HostId>ABC</HostId></Error></ErrorResponse>"
  request$http_response$body <- charToRaw(data)
  request$http_response$status_code <- 400
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "FooError")
  expect_equal(out$status_code, 400)
  expect_equal(out$error_response$RequestId, "123")
})

test_that("unmarshal error with invalid XML", {
  data <- "abc"
  request$http_response$body <- charToRaw(data)
  request$http_response$status_code <- 400
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "SerializationError")
  expect_equal(out$status_code, 400)
})

test_that("unmarshal error with the wrong shape", {
  data <- "<Foo><Code>FooError</Code><Message>Foo</Message><RequestId>123</RequestId><HostId>ABC</HostId></Foo>"
  request$http_response$body <- charToRaw(data)
  request$http_response$status_code <- 400
  request <- query_unmarshal_error(request)
  out <- request$error
  expect_equal(out$code, "SerializationError")
  expect_equal(out$status_code, 400)
})
