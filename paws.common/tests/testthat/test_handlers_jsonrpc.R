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
options(idempotency_rand_fn = function(len) {
  rep(0, len)
})

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
    TimeArg = Scalar(type = "timestamp")
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
      NoRecurse = Scalar(type = "string")
    )
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
        NoRecurse = Scalar(type = "string")
      )
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
          NoRecurse = "bar"
        ))
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
    Token = Scalar(type = "string", .tags = list(idempotencyToken = TRUE))
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
    FooEnum = Scalar(type = "string", .tags = list(enum = "InputService8TestShapeEnumType")),
    ListEnums = List(Scalar(type = "string", .tags = list(enum = "InputService8TestShapeEnumType")))
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

op_input14 <- function(TableName, Item) {
  args <- list(TableName = TableName, Item = Item)
  interface <- Structure(
    TableName = Scalar(type = "string"),
    Item = Map(Structure(
      S = Scalar(type = "string"),
      N = Scalar(type = "string"),
      B = Scalar(type = "blob"),
      SS = List(Scalar(type = "string")),
      NS = List(Scalar(type = "string")),
      BS = List(Scalar(type = "blob")),
      M = Map(),
      L = List(),
      `NULL` = Scalar(type = "boolean"),
      BOOL = Scalar(type = "boolean")
    ))
  )
  return(populate(args, interface))
}

test_that("build nested structure with incomplete input shape", {
  input <- op_input14(
    TableName = "myname",
    Item = list(
      UserId = list(
        S = "1"
      ),
      Day = list(
        N = 1
      ),
      HourMap = list(
        M = list(
          "1" = list(
            N = "1"
          ),
          "2" = list(
            N = "2"
          ),
          "3" = list(
            N = "3"
          )
        )
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(r$body, '{"TableName":"myname","Item":{"Day":{"N":"1"},"HourMap":{"M":{"1":{"N":"1"},"2":{"N":"2"},"3":{"N":"3"}}},"UserId":{"S":"1"}}}')

  input <- op_input14(
    TableName = "myname",
    Item = list(
      UserId = list(
        S = "2"
      ),
      Day = list(
        N = 1
      ),
      Foo = list(
        L = list(
          list(
            M = list(
              FooBar = list(
                N = "1"
              )
            )
          ),
          list(
            M = list(
              FooBar = list(
                N = "2"
              )
            )
          )
        )
      ),
      Bar = list(
        NS = list("1", "2", "3")
      )
    )
  )
  req <- new_request(svc, op, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(r$body, '{"TableName":"myname","Item":{"Bar":{"NS":["1","2","3"]},"Day":{"N":"1"},"Foo":{"L":[{"M":{"FooBar":{"N":"1"}}},{"M":{"FooBar":{"N":"2"}}}]},"UserId":{"S":"2"}}}')
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
    body = charToRaw("{\"Str\": \"myname\", \"Num\": 123, \"FalseBool\": false, \"TrueBool\": true, \"Float\": 1.2, \"Double\": 1.3, \"Long\": 200, \"Char\": \"a\"}")
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
    Foo = Scalar(type = "blob", .tags = list(locationName = "foo"))
  )
)

test_that("unmarshal blobs", {
  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"BlobMember\": \"aGkh\", \"StructMember\": {\"foo\": \"dGhlcmUh\"}}")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(rawToChar(out$BlobMember), "hi!")
  expect_equal(rawToChar(out$StructMember$Foo), "there!")
})

op_output3 <- Structure(
  TimeMember = Scalar(type = "timestamp"),
  StructMember = Structure(
    Foo = Scalar(type = "timestamp", .tags = list(locationName = "foo"))
  )
)

test_that("unmarshal timestamps", {
  req <- new_request(svc, op, NULL, op_output3)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"TimeMember\": 1398796238, \"StructMember\": {\"foo\": 1398796238}}")
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
    body = charToRaw("{\"ListMember\": [\"a\", \"b\"]}")
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
    body = charToRaw("{\"ListMember\": [\"a\", null], \"ListMemberMap\": [{}, null, null, {}], \"ListMemberStruct\": [{}, null, null, {}]}")
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
    body = charToRaw("{\"MapMember\": {\"a\": [1, 2], \"b\": [3, 4]}}")
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
    body = charToRaw("{\"foo\": \"bar\"}")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(names(out), "StrType")
  expect_equal(out$StrType, character(0), ignore_attr = TRUE)
})

op_output7 <- Structure(
  FooEnum = Scalar(type = "string", .tags = list(enum = "OutputService7TestShapeJSONEnumType")),
  ListEnums = List(Scalar(type = "string", .tags = list(enum = "OutputService7TestShapeJSONEnumType")))
)

test_that("unmarshal enums", {
  req <- new_request(svc, op, NULL, op_output7)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"FooEnum\": \"foo\", \"ListEnums\": [\"foo\", \"bar\"]}")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$FooEnum, "foo")
  expect_equal(out$ListEnums[1], "foo")
  expect_equal(out$ListEnums[2], "bar")
})

op_output8 <- Structure(
  Count = Scalar(type = "integer"),
  Items = List(Map(Structure(
    S = Scalar(type = "string"),
    N = Scalar(type = "string"),
    B = Scalar(type = "blob"),
    SS = List(Scalar(type = "string")),
    NS = List(Scalar(type = "string")),
    BS = List(Scalar(type = "blob")),
    M = Map(),
    L = List(),
    `NULL` = Scalar(type = "boolean"),
    BOOL = Scalar(type = "boolean")
  ))),
  ScannedCount = Scalar(type = "integer")
)

test_that("unmarshal nested structure with incomplete output shape", {
  req <- new_request(svc, op, NULL, op_output8)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw('{"Count":1,"Items":[{"UserId":{"S":"1"},"HourMap":{"M":{"1":{"N":"1"},"2":{"N":"2"},"3":{"N":"3"}}},"Day":{"N":"1"}}],"ScannedCount":1}')
  )
  req <- unmarshal(req)
  out <- req$data
  expect_length(out$Items, 1)
  expect_equal(out$Items[[1]]$UserId$S, "1")
  expect_length(out$Items[[1]]$HourMap$M, 3)
  expect_equal(out$Items[[1]]$HourMap$M$`1`$N, "1")
  expect_equal(out$Items[[1]]$HourMap$M$`2`$N, "2")
  expect_equal(out$Items[[1]]$HourMap$M$`3`$N, "3")

  req <- new_request(svc, op, NULL, op_output8)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw('{"Count":1,"Items":[{"UserId":{"S":"4"},"Day":{"N":"1"},"Bar":{"NS":["3","2","1"]},"Foo":{"L":[{"M":{"FooBar":{"N":"1"}}},{"M":{"FooBar":{"N":"2"}}}]}}],"ScannedCount":1}')
  )
  req <- unmarshal(req)
  out <- req$data
  expect_length(out$Items, 1)
  expect_equal(out$Items[[1]]$Bar$NS, c("3", "2", "1"))
  expect_equal(out$Items[[1]]$Foo$L[[1]], list(M = list(FooBar = list(N = "1"))))
  expect_equal(out$Items[[1]]$Foo$L[[2]], list(M = list(FooBar = list(N = "2"))))
})

test_that("unmarshal UTF-8 text", {
  op_output9 <- Structure(
    TranslatedText = Scalar(type = "string"),
    SourceLanguageCode = Scalar(type = "string"),
    TargetLanguageCode = Scalar(type = "string")
  )
  req <- new_request(svc, op, NULL, op_output9)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw('{\"SourceLanguageCode\":\"en\",\"TargetLanguageCode\":\"es\",\"TranslatedText\":\"Me voy a casa mañana.\"}')
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$TranslatedText, "Me voy a casa mañana.")
})

test_that("unmarshal error with message in 'Message'", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("{\"__type\":\"FooException\",\"Message\":\"Foo\"}")
  )
  req <- unmarshal_error(req)
  out <- req$error
  expect_equal(out$code, "FooException")
  expect_equal(out$message, "Foo")
  expect_equal(out$status_code, 400)
  expect_equal(out$error_response$Message, "Foo")
})

test_that("unmarshal error with message in 'message'", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("{\"message\":\"Foo\",\"__type\":\"FooException\"}")
  )
  req <- unmarshal_error(req)
  out <- req$error
  expect_equal(out$code, "FooException")
  expect_equal(out$message, "Foo")
  expect_equal(out$status_code, 400)
  expect_equal(out$error_response$message, "Foo")
})

test_that("unmarshal error with no message", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("{\"__type\":\"FooException\"}")
  )
  req <- unmarshal_error(req)
  out <- req$error
  expect_equal(out$code, "FooException")
  expect_equal(out$message, "")
  expect_equal(out$status_code, 400)
  expect_equal(out$error_response$`__type`, "FooException")
})
