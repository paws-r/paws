context("REST-XML")

#-------------------------------------------------------------------------------

# Build tests

svc <- Client(
  client_info = ClientInfo(
    endpoint = "https://test"
  )
)
svc$handlers$build <- HandlerList(restxml_build)

#-------------------------------------------------------------------------------

# Rest tests

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
      PipelineId = Scalar(type = "string", .attrs = list(location = "uri"))
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
      Foo = Scalar(type = "string", .attrs = list(location = "uri", locationName = "PipelineId"))
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
      Items = List(Scalar(type = "string"), .attrs = list(location = "querystring", locationName = "item"))
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
      PipelineId = Scalar(type = "string", .attrs = list(location = "uri")),
      QueryDoc = Map(Scalar(type = "string"), .attrs = list(location = "querystring"))
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
      PipelineId = Scalar(type = "string", .attrs = list(location = "uri")),
      QueryDoc = Map(List(Scalar(type = "string")), .attrs = list(location = "querystring"))
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
      BoolQuery = Scalar(type = "boolean", .attrs = list(location = "querystring", locationName = "bool-query"))
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
      BoolQuery = Scalar(type = "boolean", .attrs = list(location = "querystring", locationName = "bool-query"))
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
      Ascending = Scalar(type = "string", .attrs = list(location = "querystring", locationName = "Ascending")),
      PageToken = Scalar(type = "string", .attrs = list(location = "querystring", locationName = "PageToken")),
      PipelineId = Scalar(type = "string", .attrs = list(location = "uri", locationName = "PipelineId"))
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


#-------------------------------------------------------------------------------

# XML tests

test_that("Basic XML Case1", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(OperationRequest) {
    args <- list(OperationRequest = OperationRequest)
    interface <- structure(list(
      OperationRequest = structure(list(
        Description = structure(logical(0), type = "string"),
        Name = structure(logical(0), type = "string")
      ), type = "structure", locationName = "OperationRequest")
    ), type = "structure")
    return(populate(args, interface))
  }

  input <- op_input_test(
      OperationRequest = list(
      Description = "bar",
      Name = "foo")
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, xml_list_to_character(list(
    OperationRequest = list(Description = list("bar"),
                         Name = list("foo")))))
})

test_that("Other Scalar Case1", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(OperationRequest) {
    args <- list(OperationRequest = OperationRequest)
    interface <- structure(list(
      OperationRequest = structure(list(
        First = structure(logical(0), type = "boolean"),
        Fourth = structure(logical(0), type = "integer"),
        Second = structure(logical(0), type = "boolean"),
        Third = structure(logical(0), type = "float")
      ), type = "structure", locationName = "OperationRequest")
    ), type = "structure")
    return(populate(args, interface))
  }

  input <- op_input_test(
      OperationRequest = list(
      First = TRUE,
      Fourth = 3,
      Second = FALSE,
      Third = 1.2
      )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, xml_list_to_character(list(
    OperationRequest = list(First = list(TRUE),
                            Fourth = list(3),
                            Second = list(FALSE),
                            Third = list(1.2)))))
})

test_that("Nested Structure Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(OperationRequest) {
    args <- list(OperationRequest = OperationRequest)
    interface <- structure(list(
      OperationRequest = structure(list(
            Description = structure(logical(0), type = "string"),
            Substructure = structure(list(
              Bar = structure(logical(0), type = "string"),
              Foo = structure(logical(0), type = "string")
            ), type = "structure")
      ), type = "structure", locationName = "OperationRequest")
      ), type = "structure")
    return(populate(args, interface))
  }

  input <- op_input_test(
      OperationRequest = list(
        Description = "Baz",
        Substructure = list(
          Bar = "b",
          Foo = "a"
        )
      )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, xml_list_to_character(list(
    OperationRequest = list(
      Description = list("Baz"),
      Substructure = list(
        Bar = list("b"),
        Foo = list("a")
      )
    )
  )))
})

test_that("NonFlattened List Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(OperationRequest) {
    args <- list(OperationRequest = OperationRequest)
    interface <- structure(list(
      OperationRequest = structure(list(
          ListParam = structure(list(
            structure(logical(0), type = "string")),
            type = "list")
      ), type = "structure", locationName = "OperationRequest")
      ), type = "structure")
    return(populate(args, interface))
  }

  input <- op_input_test(
      OperationRequest = list(
        ListParam = list(
          "one",
          "two",
          "three"
        )
      )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  #<OperationRequest xmlns="https://foo/"><ListParam xmlns="https://foo/"><member xmlns="https://foo/">one</member><member xmlns="https://foo/">two</member><member xmlns="https://foo/">three</member></ListParam></OperationRequest>
  expect_equal(r, xml_list_to_character(list(
    OperationRequest = list(
      ListParam = list(
        member = list("one"),
        member = list("two"),
        member = list("three")
      )
    )
  )))
})

test_that("NonFlattened List With LocationName Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(OperationRequest) {
    args <- list(OperationRequest = OperationRequest)
    interface <- structure(list(
      OperationRequest = structure(list(
          ListParam = structure(list(
            structure(logical(0), type = "string")),
            type = "list", locationName = "AlternateName",
            locationNameList = "NotMember")
      ), type = "structure", locationName = "OperationRequest")
      ), type = "structure")
    return(populate(args, interface))
  }

  input <- op_input_test(
      OperationRequest = list(
        ListParam = list(
          "one",
          "two",
          "three"
        )
      )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, xml_list_to_character(list(
    OperationRequest = list(
      AlternateName = list(
        NotMember = list("one"),
        NotMember = list("two"),
        NotMember = list("three")
      )
    )
  )))
})

test_that("Flattened List Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(OperationRequest) {
    args <- list(OperationRequest = OperationRequest)
    interface <- structure(list(
      OperationRequest = structure(list(
          ListParam = structure(list(
            structure(logical(0), type = "string")),
            type = "list", flattened = "true")
      ), type = "structure", locationName = "OperationRequest")
      ), type = "structure")
    return(populate(args, interface))
  }

  input <- op_input_test(
      OperationRequest = list(
        ListParam = list(
          "one",
          "two",
          "three"
        )
      )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, xml_list_to_character(list(
    OperationRequest = list(
      ListParam = list("one"),
      ListParam = list("two"),
      ListParam = list("three")
    )
  )))
})
#-------------------------------------------------------------------------------

# Unmarshal tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal <- HandlerList(restxml_unmarshal)

op_output1 <- Structure(
  Char = Scalar(type = "character"),
  Double = Scalar(type = "double"),
  FalseBool = Scalar(type = "boolean"),
  Float = Scalar(type = "float"),
  Long = Scalar(type = "long"),
  Num = Scalar(type = "integer", .attrs = list(locationName = "FooNum")),
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
  expect_equal(out$Blob, "value")
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
  ListMember = List(Scalar(type = "string"), .attrs = list(flattened = TRUE))
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
  Map = Map(Structure(Foo = Scalar(.attrs = list(locationName = "foo"))))
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
  Map = Map(Scalar(), .attrs = list(flattened = TRUE))
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
  Map = Map(Scalar(), .attrs = list(locationNameKey = "foo", locationNameValue = "bar", flattened = TRUE))
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
  FooEnum = Scalar(type = "string", .attrs = list(enum = "OutputService10TestShapeEC2EnumType")),
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
