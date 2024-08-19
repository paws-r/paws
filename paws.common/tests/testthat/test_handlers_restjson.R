#-------------------------------------------------------------------------------

# Build tests

svc <- Client(
  client_info = ClientInfo(
    endpoint = "https://test"
  )
)
svc$handlers$build <- HandlerList(restjson_build)
UUID_V4_PATTERN <- "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"

test_that("no parameters", {
  op1 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobs"
  )
  req <- new_request(svc, op1, NULL, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobs")
})

test_that("URI parameter with no location name", {
  op2 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input2 <- function(PipelineId) {
    args <- list(PipelineId = PipelineId)
    interface <- Structure(
      PipelineId = Scalar(type = "string", .tags = list(location = "uri"))
    )
    return(populate(args, interface))
  }
  input <- op_input2(
    PipelineId = "foo"
  )
  req <- new_request(svc, op2, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/foo")
})

test_that("URI parameter with location name", {
  op3 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input3 <- function(Foo) {
    args <- list(Foo = Foo)
    interface <- Structure(
      Foo = Scalar(type = "string", .tags = list(location = "uri", locationName = "PipelineId"))
    )
    return(populate(args, interface))
  }
  input <- op_input3(
    Foo = "bar"
  )
  req <- new_request(svc, op3, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/bar")
})

test_that("query string list of strings", {
  op4 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/path"
  )
  op_input4 <- function(Items) {
    args <- list(Items = Items)
    interface <- Structure(
      Items = List(Scalar(type = "string"), .tags = list(location = "querystring", locationName = "item"))
    )
    return(populate(args, interface))
  }
  input <- op_input4(
    Items = list("value1", "value2")
  )
  req <- new_request(svc, op4, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path?item=value1&item=value2")
})

test_that("query string map of strings", {
  op5 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input5 <- function(PipelineId, QueryDoc) {
    args <- list(PipelineId = PipelineId, QueryDoc = QueryDoc)
    interface <- Structure(
      PipelineId = Scalar(type = "string", .tags = list(location = "uri")),
      QueryDoc = Map(Scalar(type = "string"), .tags = list(location = "querystring"))
    )
    return(populate(args, interface))
  }
  input <- op_input5(
    PipelineId = "foo",
    QueryDoc = list(
      bar = "baz",
      fizz = "buzz"
    )
  )
  req <- new_request(svc, op5, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/foo?bar=baz&fizz=buzz")
})

test_that("query string map of lists of strings", {
  op6 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input6 <- function(PipelineId, QueryDoc) {
    args <- list(PipelineId = PipelineId, QueryDoc = QueryDoc)
    interface <- Structure(
      PipelineId = Scalar(type = "string", .tags = list(location = "uri")),
      QueryDoc = Map(List(Scalar(type = "string")), .tags = list(location = "querystring"))
    )
    return(populate(args, interface))
  }
  input <- op_input6(
    PipelineId = "id",
    QueryDoc = list(
      fizz = c("buzz", "pop"),
      foo = c("bar", "baz")
    )
  )
  req <- new_request(svc, op6, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/id?fizz=buzz&fizz=pop&foo=bar&foo=baz")
})

test_that("query string with bool (true)", {
  op7 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/path"
  )
  op_input7 <- function(BoolQuery) {
    args <- list(BoolQuery = BoolQuery)
    interface <- Structure(
      BoolQuery = Scalar(type = "boolean", .tags = list(location = "querystring", locationName = "bool-query"))
    )
    return(populate(args, interface))
  }
  input <- op_input7(
    BoolQuery = TRUE
  )
  req <- new_request(svc, op7, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path?bool-query=true")
})

test_that("query string with bool (false)", {
  op8 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/path"
  )
  op_input8 <- function(BoolQuery) {
    args <- list(BoolQuery = BoolQuery)
    interface <- Structure(
      BoolQuery = Scalar(type = "boolean", .tags = list(location = "querystring", locationName = "bool-query"))
    )
    return(populate(args, interface))
  }
  input <- op_input8(
    BoolQuery = FALSE
  )
  req <- new_request(svc, op8, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path?bool-query=false")
})

test_that("URI and query string parameters", {
  op9 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input9 <- function(Ascending, PageToken, PipelineId) {
    args <- list(Ascending = Ascending, PageToken = PageToken, PipelineId = PipelineId)
    interface <- Structure(
      Ascending = Scalar(type = "string", .tags = list(location = "querystring", locationName = "Ascending")),
      PageToken = Scalar(type = "string", .tags = list(location = "querystring", locationName = "PageToken")),
      PipelineId = Scalar(type = "string", .tags = list(location = "uri", locationName = "PipelineId"))
    )
    return(populate(args, interface))
  }
  input <- op_input9(
    Ascending = "true",
    PageToken = "bar",
    PipelineId = "foo"
  )
  req <- new_request(svc, op9, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/foo?Ascending=true&PageToken=bar")
})

test_that("URI, query string, and JSON body", {
  op10 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input10 <- function(Ascending, Config, PageToken, PipelineId) {
    args <- list(Ascending = Ascending, Config = Config, PageToken = PageToken, PipelineId = PipelineId)
    interface <- Structure(
      Ascending = Scalar(type = "string", .tags = list(location = "querystring", locationName = "Ascending")),
      Config = Structure(
        A = Scalar(type = "string"),
        B = Scalar(type = "string")
      ),
      PageToken = Scalar(type = "string", .tags = list(location = "querystring", locationName = "PageToken")),
      PipelineId = Scalar(type = "string", .tags = list(location = "uri", locationName = "PipelineId"))
    )
    return(populate(args, interface))
  }
  input <- op_input10(
    Ascending = "true",
    Config = list(
      A = "one",
      B = "two"
    ),
    PageToken = "bar",
    PipelineId = "foo"
  )
  req <- new_request(svc, op10, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/foo?Ascending=true&PageToken=bar")
  expect_equal(r$body, '{"Config":{"A":"one","B":"two"}}')
})

test_that("URI, query string, JSON body, and header", {
  op11 <- Operation(
    name = "OperationName",
    http_method = "GET",
    http_path = "/2014-01-01/jobsByPipeline/{PipelineId}"
  )
  op_input11 <- function(Ascending, Checksum, Config, PageToken, PipelineId) {
    args <- list(Ascending = Ascending, Checksum = Checksum, Config = Config, PageToken = PageToken, PipelineId = PipelineId)
    interface <- Structure(
      Ascending = Scalar(type = "string", .tags = list(location = "querystring", locationName = "Ascending")),
      Checksum = Scalar(type = "string", .tags = list(location = "header", locationName = "x-amz-checksum")),
      Config = Structure(
        A = Scalar(type = "string"),
        B = Scalar(type = "string")
      ),
      PageToken = Scalar(type = "string", .tags = list(location = "querystring", locationName = "PageToken")),
      PipelineId = Scalar(type = "string", .tags = list(location = "uri", locationName = "PipelineId"))
    )
    return(populate(args, interface))
  }
  input <- op_input11(
    Ascending = "true",
    Checksum = "12345",
    Config = list(
      A = "one",
      B = "two"
    ),
    PageToken = "bar",
    PipelineId = "foo"
  )
  req <- new_request(svc, op11, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/jobsByPipeline/foo?Ascending=true&PageToken=bar")
  expect_equal(r$body, '{"Config":{"A":"one","B":"two"}}')
  expect_equal(r$header[["x-amz-checksum"]], "12345")
})

test_that("streaming payload", {
  op12 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/2014-01-01/vaults/{vaultName}/archives"
  )
  op_input12 <- function(Body, Checksum, VaultName) {
    args <- list(Body = Body, Checksum = Checksum, VaultName = VaultName)
    interface <- Structure(
      Body = Scalar(type = "blob", .tags = list(locationName = "body")),
      Checksum = Scalar(type = "string", .tags = list(location = "header", locationName = "x-amz-sha256-tree-hash")),
      VaultName = Scalar(type = "string", .tags = list(location = "uri", locationName = "vaultName", required = TRUE)),
      .tags = list(payload = "Body")
    )
    return(populate(args, interface))
  }
  input <- op_input12(
    Body = charToRaw("contents"),
    Checksum = "foo",
    VaultName = "name"
  )
  req <- new_request(svc, op12, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/vaults/name/archives")
  expect_equal(rawToChar(r$body), "contents")
  expect_equal(r$header[["x-amz-sha256-tree-hash"]], "foo")
})

test_that("serialize blobs in body", {
  op13 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/2014-01-01/{Foo}"
  )
  op_input13 <- function(Bar, Foo) {
    args <- list(Bar = Bar, Foo = Foo)
    interface <- Structure(
      Bar = Scalar(type = "blob"),
      Foo = Scalar(type = "string", .tags = list(location = "uri", locationName = "Foo", required = TRUE))
    )
    return(populate(args, interface))
  }
  input <- op_input13(
    Bar = charToRaw("Blob param"),
    Foo = "foo_name"
  )
  req <- new_request(svc, op13, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/2014-01-01/foo_name")
  expect_equal(r$body, '{"Bar":"QmxvYiBwYXJhbQ=="}')
})

op14 <- Operation(
  name = "OperationName",
  http_method = "POST",
  http_path = "/"
)
op_input14 <- function(Foo = NULL) {
  args <- list(Foo = Foo)
  interface <- Structure(
    Foo = Scalar(type = "blob", .tags = list(locationName = "foo")),
    .tags = list(payload = "Foo")
  )
  return(populate(args, interface))
}

test_that("blob payload", {
  input <- op_input14(
    Foo = charToRaw("bar")
  )
  req <- new_request(svc, op14, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/")
  expect_equal(rawToChar(r$body), "bar")
})

test_that("empty blob payload", {
  input <- op_input14()
  req <- new_request(svc, op14, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/")
  expect_null(r$body)
})

op15 <- Operation(
  name = "OperationName",
  http_method = "POST",
  http_path = "/"
)
op_input15 <- function(Foo = NULL) {
  args <- list(Foo = Foo)
  interface <- Structure(
    Foo = Structure(
      Baz = Scalar(type = "string", .tags = list(locationName = "baz")),
      .tags = list(locationName = "foo")
    ),
    .tags = list(payload = "Foo")
  )
  return(populate(args, interface))
}

test_that("structure payload", {
  input <- op_input15(
    Foo = list(
      Baz = "bar"
    )
  )
  req <- new_request(svc, op15, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/")
  expect_equal(r$body, '{"baz":"bar"}')
})

test_that("empty structure payload", {
  input <- op_input15()
  req <- new_request(svc, op15, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/")
  expect_null(r$body)
})

test_that("omit null query string parameters", {
  op16 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/path"
  )
  op_input16 <- function(Foo = NULL) {
    args <- list(Foo = Foo)
    interface <- Structure(
      Foo = Scalar(type = "string", .tags = list(location = "querystring", locationName = "param-name"))
    )
    return(populate(args, interface))
  }
  input <- op_input16()
  req <- new_request(svc, op16, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_null(r$body)
})

test_that("serialize empty string query string parameters", {
  op17 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/path?abc=mno"
  )
  op_input17 <- function(Foo = NULL) {
    args <- list(Foo = Foo)
    interface <- Structure(
      Foo = Scalar(type = "string", .tags = list(location = "querystring", locationName = "param-name"))
    )
    return(populate(args, interface))
  }
  input <- op_input17(
    Foo = ""
  )
  req <- new_request(svc, op17, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path?abc=mno&param-name=")
  expect_null(r$body)
})

# TODO: RecursiveStructs.

test_that("timestamp value", {
  op18 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/path"
  )
  op_input18 <- function(TimeArg) {
    args <- list(TimeArg = TimeArg)
    interface <- Structure(
      TimeArg = Scalar(type = "timestamp")
    )
    return(populate(args, interface))
  }
  input <- op_input18(
    TimeArg = unix_time(1422172800)
  )
  req <- new_request(svc, op18, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_equal(r$body, '{"TimeArg":1422172800}')
})

test_that("timestamp value in header", {
  op19 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/path"
  )
  op_input19 <- function(TimeArgInHeader) {
    args <- list(TimeArgInHeader = TimeArgInHeader)
    interface <- Structure(
      TimeArgInHeader = Scalar(type = "timestamp", .tags = list(location = "header", locationName = "x-amz-timearg"))
    )
    return(populate(args, interface))
  }
  input <- op_input19(
    TimeArgInHeader = unix_time(1422172800)
  )
  req <- new_request(svc, op19, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_equal(r$header[["x-amz-timearg"]], "Sun, 25 Jan 2015 08:00:00 GMT")
})

test_that("timestamp value in JSON body", {
  op20 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/path"
  )
  op_input20 <- function(TimeArg) {
    args <- list(TimeArg = TimeArg)
    interface <- Structure(
      TimeArg = Scalar(type = "timestamp", .tags = list(locationName = "timestamp_location"))
    )
    return(populate(args, interface))
  }
  input <- op_input20(
    TimeArg = unix_time(1422172800)
  )
  req <- new_request(svc, op20, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_equal(r$body, '{"timestamp_location":1422172800}')
})

test_that("string payload", {
  op21 <- Operation(
    name = "OperationName",
    http_method = "POST",
    http_path = "/path"
  )
  op_input21 <- function(Foo) {
    args <- list(Foo = Foo)
    interface <- Structure(
      Foo = Scalar(type = "string", .tags = list(locationName = "foo")),
      .tags = list(payload = "Foo")
    )
    return(populate(args, interface))
  }
  input <- op_input21(
    Foo = "bar"
  )
  req <- new_request(svc, op21, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_equal(r$body, "bar")
})

op22 <- Operation(
  name = "OperationName",
  http_method = "POST",
  http_path = "/path"
)
op_input22 <- function(Token = NULL) {
  args <- list(Token = Token)
  interface <- Structure(
    Token = Scalar(type = "string", .tags = list(idempotencyToken = TRUE))
  )
  return(populate(args, interface))
}

test_that("idempotency token", {
  input <- op_input22(
    Token = "abc123"
  )
  req <- new_request(svc, op22, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_equal(r$body, '{"Token":"abc123"}')
})

test_that("auto-fill idempotency token", {
  input <- op_input22()
  req <- new_request(svc, op22, input, NULL)
  req <- build(req)
  r <- req$http_request
  expect_equal(build_url(r$url), "https://test/path")
  expect_true(grepl(sprintf('\\{"Token":"%s"\\}', UUID_V4_PATTERN), r$body))
})

# TODO: JSON value traits.

# TODO: Enums.

#-------------------------------------------------------------------------------

# Unmarshal tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal_meta <- HandlerList(restjson_unmarshal_meta)
svc$handlers$unmarshal <- HandlerList(restjson_unmarshal)

test_that("unmarshal scalar members", {
  op_output1 <- Structure(
    Char = Scalar(type = "character"),
    Double = Scalar(type = "double"),
    FalseBool = Scalar(type = "boolean"),
    Float = Scalar(type = "float"),
    ImaHeader = Scalar(type = "string", .tags = list(location = "header")),
    ImaHeaderLocation = Scalar(type = "string", .tags = list(location = "header", locationName = "X-Foo")),
    Long = Scalar(type = "long"),
    Num = Scalar(type = "integer"),
    StatusCode = Scalar(type = "integer", .tags = list(location = "statusCode")),
    Str = Scalar(type = "string"),
    TrueBool = Scalar(type = "boolean")
  )
  req <- new_request(svc, op, NULL, op_output1)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"Str\": \"myname\", \"Num\": 123, \"FalseBool\": false, \"TrueBool\": true, \"Float\": 1.2, \"Double\": 1.3, \"Long\": 200, \"Char\": \"a\"}")
  )
  req$http_response$header[["ImaHeader"]] <- "test"
  req$http_response$header[["X-Foo"]] <- "abc"
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Char, "a", ignore_attr = TRUE)
  expect_equal(out$Double, 1.3, ignore_attr = TRUE)
  expect_equal(out$FalseBool, FALSE, ignore_attr = TRUE)
  expect_equal(out$Float, 1.2, ignore_attr = TRUE)
  expect_equal(out$ImaHeader, "test", ignore_attr = TRUE)
  expect_equal(out$ImaHeaderLocation, "abc", ignore_attr = TRUE)
  expect_equal(out$Long, 200L, ignore_attr = TRUE)
  expect_equal(out$Num, 123L, ignore_attr = TRUE)
  expect_equal(out$Status, 200L, ignore_attr = TRUE)
  expect_equal(out$Str, "myname", ignore_attr = TRUE)
  expect_equal(out$TrueBool, TRUE, ignore_attr = TRUE)
})

test_that("unmarshal blob member", {
  op_output2 <- Structure(
    BlobMember = Scalar(type = "blob"),
    StructMember = Structure(
      Foo = Scalar(type = "blob", .tags = list(locationName = "foo"))
    )
  )
  req <- new_request(svc, op, NULL, op_output2)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"BlobMember\": \"aGkh\", \"StructMember\": {\"foo\": \"dGhlcmUh\"}}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(rawToChar(out$BlobMember), "hi!")
  expect_equal(rawToChar(out$StructMember$Foo), "there!")
})

test_that("unmarshal timestamp member", {
  op_output3 <- Structure(
    TimeMember = Scalar(type = "timestamp", .tags = list(timestampFormat = "unix")),
    StructMember = Structure(
      Foo = Scalar(type = "timestamp", .tags = list(locationName = "foo", timestampFormat = "unix"))
    )
  )
  req <- new_request(svc, op, NULL, op_output3)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"TimeMember\": 1398796238, \"StructMember\": {\"foo\": 1398796238}}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$TimeMember, unix_time(1.398796238e+09), ignore_attr = TRUE)
  expect_equal(out$StructMember$Foo, unix_time(1.398796238e+09), ignore_attr = TRUE)
})

test_that("unmarshal list", {
  op_output4 <- Structure(
    ListMember = List(Scalar(type = "string"))
  )
  req <- new_request(svc, op, NULL, op_output4)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"ListMember\": [\"a\", \"b\"]}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[1], "a", ignore_attr = TRUE)
  expect_equal(out$ListMember[2], "b", ignore_attr = TRUE)
})

test_that("unmarshal list with structure member", {
  op_output5 <- Structure(
    ListMember = List(
      Structure(
        Foo = Scalar(type = "string")
      )
    )
  )
  req <- new_request(svc, op, NULL, op_output5)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"ListMember\": [{\"Foo\": \"a\"}, {\"Foo\": \"b\"}]}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$ListMember[[1]]$Foo, "a", ignore_attr = TRUE)
  expect_equal(out$ListMember[[2]]$Foo, "b", ignore_attr = TRUE)
})

test_that("unmarshal map", {
  op_output6 <- Structure(
    MapMember = Map(
      List(Scalar(type = "integer"))
    )
  )
  req <- new_request(svc, op, NULL, op_output6)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"MapMember\": {\"a\": [1, 2], \"b\": [3, 4]}}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$MapMember[["a"]][1], 1, ignore_attr = TRUE)
  expect_equal(out$MapMember[["a"]][2], 2, ignore_attr = TRUE)
  expect_equal(out$MapMember[["b"]][1], 3, ignore_attr = TRUE)
  expect_equal(out$MapMember[["b"]][2], 4, ignore_attr = TRUE)
})

test_that("unmarshal map with timestamps", {
  op_output7 <- Structure(
    MapMember = Map(
      Scalar(type = "timestamp")
    )
  )
  req <- new_request(svc, op, NULL, op_output7)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"MapMember\": {\"a\": 1398796238, \"b\": 1398796238}}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$MapMember[["a"]], unix_time(1.398796238e+09), ignore_attr = TRUE)
  expect_equal(out$MapMember[["b"]], unix_time(1.398796238e+09), ignore_attr = TRUE)
})

test_that("unmarshal ignores extra data", {
  op_output8 <- Structure(
    StrType = Scalar(type = "string")
  )
  req <- new_request(svc, op, NULL, op_output8)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"foo\": \"bar\"}")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(names(out), c("StrType"), ignore_attr = TRUE)
  expect_equal(out$StrType, character(0), ignore_attr = TRUE)
})

test_that("unmarshal header map", {
  op_output9 <- Structure(
    AllHeaders = Map(Scalar(type = "string"), .tags = list(location = "headers")),
    PrefixedHeaders = Map(Scalar(type = "string"), .tags = list(location = "headers", locationName = "X-"))
  )
  req <- new_request(svc, op, NULL, op_output9)
  req$http_response <- HttpResponse(
    status_code = 200
  )
  req$http_response$header[["Content-Length"]] <- "10"
  req$http_response$header[["X-Bam"]] <- "boo"
  req$http_response$header[["X-Foo"]] <- "bar"
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$AllHeaders[["Content-Length"]], "10", ignore_attr = TRUE)
  expect_equal(out$AllHeaders[["X-Bam"]], "boo", ignore_attr = TRUE)
  expect_equal(out$AllHeaders[["X-Foo"]], "bar", ignore_attr = TRUE)
  expect_equal(out$PrefixedHeaders[["Bam"]], "boo", ignore_attr = TRUE)
  expect_equal(out$PrefixedHeaders[["Foo"]], "bar", ignore_attr = TRUE)
})

test_that("JSON payload", {
  op_output10 <- Structure(
    Data = Structure(
      Foo = Scalar(type = "string")
    ),
    Header = Scalar(type = "string", .tags = list(location = "header", locationName = "X-Foo")),
    .tags = list(payload = "Data")
  )
  req <- new_request(svc, op, NULL, op_output10)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"Foo\": \"abc\"}")
  )
  req$http_response$header[["X-Foo"]] <- "baz"
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Data$Foo, "abc", ignore_attr = TRUE)
  expect_equal(out$Header, "baz", ignore_attr = TRUE)
})

# TODO: Streaming payload.
# TODO: JSON value traits.
# TODO: Enums.

test_that("unmarshal blob payload", {
  op_output14 <- Structure(
    Data = Scalar(type = "blob"),
    Header = Scalar(type = "string", .tags = list(location = "header", locationName = "X-Foo")),
    .tags = list(payload = "Data")
  )
  req <- new_request(svc, op, NULL, op_output14)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("{\"Foo\": \"abc\"}")
  )
  req$http_response$header[["X-Foo"]] <- "baz"
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(rawToChar(out$Data), "{\"Foo\": \"abc\"}", ignore_attr = TRUE)
  expect_equal(out$Header, "baz", ignore_attr = TRUE)
})

#-------------------------------------------------------------------------------

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal_error <- HandlerList(restjson_unmarshal_error)

test_that("unmarshal error without header and with error code in response", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("{\"message\":\"foo\",\"code\":\"bar\",\"__type\":\"ClientException\"}")
  )
  req <- unmarshal_error(req)
  err <- req$error
  expect_equal(err$message, "foo")
  expect_equal(err$code, "bar")
  expect_equal(err$status_code, 400)
})

test_that("unmarshal error with no header/code but with type", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("{\"message\":\"foo\",\"__type\":\"ClientException\"}")
  )
  req <- unmarshal_error(req)
  err <- req$error
  expect_equal(err$message, "foo")
  expect_equal(err$code, "ClientException")
  expect_equal(err$status_code, 400)
})

test_that("unmarshal error with header", {
  req <- new_request(svc, op, NULL, NULL)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("{\"message\":\"foo\",\"__type\":\"ClientException\"}"),
    header = list(`X-Amzn-Errortype` = "baz")
  )
  req <- unmarshal_error(req)
  err <- req$error
  expect_equal(err$message, "foo")
  expect_equal(err$code, "baz")
  expect_equal(err$status_code, 400)
  expect_equal(err$error_response$message, "foo")
})
