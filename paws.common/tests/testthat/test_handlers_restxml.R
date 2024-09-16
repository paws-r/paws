#-------------------------------------------------------------------------------

# Build tests

svc <- Client(
  client_info = ClientInfo(
    endpoint = "https://test"
  )
)
svc$handlers$build <- HandlerList(restxml_build)

#-------------------------------------------------------------------------------

# REST tests

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


#-------------------------------------------------------------------------------

# XML tests

test_that("Basic XML Case1", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(Description, Name) {
    args <- list(Description = Description, Name = Name)
    interface <- Structure(
      Description = Scalar(type = "string"),
      Name = Scalar(type = "string"),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }
  input <- op_input_test(
    Description = "bar",
    Name = "foo"
  )

  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><Description xmlns="https://foo/">bar</Description><Name xmlns="https://foo/">foo</Name></OperationRequest>')
})

test_that("Other Scalar Case1", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(First, Second, Third, Fourth) {
    args <- list(First = First, Second = Second, Third = Third, Fourth = Fourth)
    interface <- Structure(
      First = Scalar(type = "boolean"),
      Fourth = Scalar(type = "integer"),
      Second = Scalar(type = "boolean"),
      Third = Scalar(type = "float"),
      .tags = list(
        locationName = "OperationRequest",
        xmlURI = "https://foo/"
      )
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    First = TRUE,
    Fourth = 3,
    Second = FALSE,
    Third = 1.2
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><First xmlns="https://foo/">true</First><Fourth xmlns="https://foo/">3</Fourth><Second xmlns="https://foo/">false</Second><Third xmlns="https://foo/">1.2</Third></OperationRequest>')
})

test_that("Nested Structure Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(Description, SubStructure) {
    args <- list(Description = Description, SubStructure = SubStructure)
    interface <- Structure(
      Description = Scalar(type = "string"),
      SubStructure = Structure(
        Bar = Scalar(type = "string"),
        Foo = Scalar(type = "string")
      ),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    Description = "baz",
    SubStructure = list(
      Bar = "b",
      Foo = "a"
    )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><Description xmlns="https://foo/">baz</Description><SubStructure xmlns="https://foo/"><Bar xmlns="https://foo/">b</Bar><Foo xmlns="https://foo/">a</Foo></SubStructure></OperationRequest>')
})

test_that("NonFlattened List Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(ListParam) {
    args <- list(ListParam = ListParam)
    interface <- Structure(
      ListParam = List(
        Scalar(type = "string")
      ),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    ListParam = list(
      "one",
      "two",
      "three"
    )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><ListParam xmlns="https://foo/"><member xmlns="https://foo/">one</member><member xmlns="https://foo/">two</member><member xmlns="https://foo/">three</member></ListParam></OperationRequest>')
})

test_that("NonFlattened List With LocationName Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(ListParam) {
    args <- list(ListParam = ListParam)
    interface <- Structure(
      ListParam = List(
        Scalar(type = "string"),
        .tags = list(
          locationName = "AlternateName",
          locationNameList = "NotMember"
        )
      ),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    ListParam = list(
      "one",
      "two",
      "three"
    )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><AlternateName xmlns="https://foo/"><NotMember xmlns="https://foo/">one</NotMember><NotMember xmlns="https://foo/">two</NotMember><NotMember xmlns="https://foo/">three</NotMember></AlternateName></OperationRequest>')
})

test_that("Flattened List Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(ListParam) {
    args <- list(ListParam = ListParam)
    interface <- Structure(
      ListParam = List(
        Scalar(type = "string"),
        .tags = list(flattened = "true")
      ),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    ListParam = list(
      "one",
      "two",
      "three"
    )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><ListParam xmlns="https://foo/">one</ListParam><ListParam xmlns="https://foo/">two</ListParam><ListParam xmlns="https://foo/">three</ListParam></OperationRequest>')
})

test_that("Flattened List with LocationName Case1", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(ListParam) {
    args <- list(ListParam = ListParam)
    interface <- Structure(
      ListParam = List(
        Scalar(type = "string"),
        .tags = list(flattened = "true", locationName = "item")
      ),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    ListParam = list(
      "one",
      "two",
      "three"
    )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><item xmlns="https://foo/">one</item><item xmlns="https://foo/">two</item><item xmlns="https://foo/">three</item></OperationRequest>')
})

test_that("List of Structures Case1", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(ListParam) {
    args <- list(ListParam = ListParam)
    interface <- Structure(
      ListParam = List(
        Structure(
          Element = Scalar(
            type = "string",
            .tags = list(locationName = "value")
          )
        ),
        .tags = list(flattened = "true", locationName = "item")
      ),
      .tags = list(
        locationName = "OperationRequest",
        xmlURI = "https://foo/"
      )
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    ListParam = list(
      list(Element = "one"),
      list(Element = "two"),
      list(Element = "three")
    )
  )

  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><item xmlns="https://foo/"><value xmlns="https://foo/">one</value></item><item xmlns="https://foo/"><value xmlns="https://foo/">two</value></item><item xmlns="https://foo/"><value xmlns="https://foo/">three</value></item></OperationRequest>')
})

test_that("Blob Case1", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(StructureParam) {
    args <- list(StructureParam = StructureParam)
    interface <- Structure(
      StructureParam = Structure(
        B = Scalar(type = "blob", .tags = list(locationName = "b"))
      ),
      .tags = list(
        locationName = "OperationRequest",
        xmlURI = "https://foo/"
      )
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    StructureParam = list(B = list(charToRaw("foo")))
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><StructureParam xmlns="https://foo/"><b xmlns="https://foo/">Zm9v</b></StructureParam></OperationRequest>')
})

test_that("skip empty argument", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(Description, Name = NULL) {
    args <- list(Description = Description, Name = Name)
    interface <- Structure(
      Description = Scalar(type = "string"),
      Name = Scalar(type = "string"),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }
  input <- op_input_test(
    Description = "bar"
  )

  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><Description xmlns="https://foo/">bar</Description></OperationRequest>')
})

test_that("newline in XML", {
  op_test <- Operation(name = "OperationName")
  op_input_test <- function(Description) {
    args <- list(Description = Description)
    interface <- Structure(
      Description = Scalar(type = "string"),
      .tags = list(locationName = "OperationRequest", xmlURI = "https://foo/")
    )
    return(populate(args, interface))
  }
  input <- op_input_test(
    Description = "foo\nbar"
  )

  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, '<OperationRequest xmlns="https://foo/"><Description xmlns="https://foo/">foo&#xA;bar</Description></OperationRequest>')
})


test_that("parameters with no provided arguments are dropped", {
  op_test <- Operation(name = "OperationRequest")
  op_input_test <- function(Nested) {
    args <- list(Nested = Nested)
    interface <- Structure(
      Nested = Structure(
        Foo = Structure(
          Bar = Scalar(type = "string")
        ),
        Baz = List(
          Structure(Qux = Scalar(type = "string"))
        )
      ),
      .tags = list(locationName = "OperationRequest")
    )
    return(populate(args, interface))
  }

  input <- op_input_test(
    Nested = list(
      Foo = list(
        Bar = "abc123"
      )
    )
  )
  req <- new_request(svc, op_test, input, NULL)
  req <- build(req)
  r <- req$body
  expect_equal(r, "<OperationRequest><Nested><Foo><Bar>abc123</Bar></Foo></Nested></OperationRequest>")
})

#-------------------------------------------------------------------------------

# Unmarshal tests

op <- Operation(name = "OperationName")
svc <- Client()
svc$handlers$unmarshal_meta <- HandlerList(restxml_unmarshal_meta)
svc$handlers$unmarshal <- HandlerList(restxml_unmarshal)
svc$handlers$unmarshal_error <- HandlerList(restxml_unmarshal_error)

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
  expect_false(out$FalseBool)
  expect_equal(out$Float, 1.2)
  expect_equal(out$Long, 200L)
  expect_equal(out$Num, 123L)
  expect_equal(out$Str, "myname")
  expect_true(out$TrueBool)
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

test_that("unmarshal timestamp in header", {
  op_output <- Structure(
    Timestamp = Scalar(type = "timestamp", .tags = list(location = "header"))
  )
  req <- new_request(svc, op, NULL, op_output)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse></OperationNameResponse>")
  )
  req$http_response$header[["Timestamp"]] <- "Wed, 02 Oct 2002 13:00:00 GMT"
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expected <- as.POSIXct("2002-10-02 13:00:00 GMT", tz = "GMT")
  expect_equal(as.integer(out$Timestamp), as.integer(expected))
})

op_output11 <- Structure(
  Body = Scalar(type = "string"),
  Header = Scalar(type = "string", .tags = list(location = "header"))
)

test_that("unmarshal elements in header and body", {
  req <- new_request(svc, op, NULL, op_output11)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Body>foo</Body><RequestId>request-id</RequestId></OperationNameResponse>")
  )
  req$http_response$header[["Header"]] <- "bar"
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Body, "foo", ignore_attr = TRUE)
  expect_equal(out$Header, "bar", ignore_attr = TRUE)
})

op_output12 <- Structure(
  OperationNameResult = list(
    Body = Scalar(type = "string"),
    Header = Scalar(type = "string")
  )
)

test_that("unmarshal result elements at root of xml", {
  req <- new_request(svc, op, NULL, op_output12)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResult><Body>foo</Body><Header>bar</Header></OperationNameResult>")
  )
  req <- unmarshal_meta(req)
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$OperationNameResult$Body, "foo", ignore_attr = TRUE)
  expect_equal(out$OperationNameResult$Header, "bar", ignore_attr = TRUE)
})

op_output13 <- Structure(
  Timestamp = Scalar(type = "timestamp")
)

test_that("unmarshal error", {
  req <- new_request(svc, op, NULL, op_output13)
  req$http_response <- HttpResponse(
    status_code = 400,
    body = charToRaw("<Response><Error><Code>Foo</Code><Message>Bar</Message><RequestID>Baz</RequestID></Error></Response>")
  )
  req <- unmarshal_error(req)
  err <- req$error
  expect_equal(err$message, "Bar")
  expect_equal(err$code, "Foo")
  expect_equal(err$status_code, 400)
  expect_equal(err$error_response$RequestID, "Baz")
})

op_output14 <- Structure(
  Contents = List(
    Structure(
      Size = Scalar(type = "integer"),
      Owner = list(
        DisplayName = Scalar(type = "string"),
        ID = Scalar(type = "string")
      )
    ),
    .tags = list(flattened = TRUE)
  )
)

test_that("unmarshal default flattened list", {
  req <- new_request(svc, op, NULL, op_output14)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Contents><Size>12345</Size></Contents></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Contents[[1]]$Size, 12345)
  expect_equal(out$Contents[[1]]$Owner$DisplayName, character())
  expect_equal(out$Contents[[1]]$Owner$ID, character())
})

test_that("unmarshal default flattened list", {
  req <- new_request(svc, op, NULL, op_output14)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Contents><Size>12345</Size></Contents><Contents><Size>6789</Size></Contents></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Contents[[1]]$Size, 12345)
  expect_equal(out$Contents[[1]]$Owner$DisplayName, character())
  expect_equal(out$Contents[[1]]$Owner$ID, character())
  expect_equal(out$Contents[[2]]$Size, 6789)
  expect_equal(out$Contents[[2]]$Owner$DisplayName, character())
  expect_equal(out$Contents[[2]]$Owner$ID, character())
})

test_that("unmarshal OperationNameResult not in interface but in xml", {
  req <- new_request(svc, op, NULL, op_output14)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResult><Contents><Size>12345</Size></Contents><Contents><Size>6789</Size></Contents></OperationNameResult>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Contents[[1]]$Size, 12345)
  expect_equal(out$Contents[[1]]$Owner$DisplayName, character())
  expect_equal(out$Contents[[1]]$Owner$ID, character())
  expect_equal(out$Contents[[2]]$Size, 6789)
  expect_equal(out$Contents[[2]]$Owner$DisplayName, character())
  expect_equal(out$Contents[[2]]$Owner$ID, character())
})

op_output15 <- Structure(
  Version = List(
    Structure(
      Size = Scalar(type = "integer"),
      Owner = list(
        DisplayName = Scalar(type = "string"),
        ID = Scalar(type = "string")
      )
    ),
    .tags = list(flattened = TRUE)
  )
)

test_that("unmarshal nested structure", {
  req <- new_request(svc, op, NULL, op_output15)
  req$http_response <- HttpResponse(
    status_code = 200,
    body = charToRaw("<OperationNameResponse><Version><Size>9</Size><Owner><ID>bar</ID><DisplayName>foo</DisplayName></Owner></Version><Version><Size>10</Size><Owner><ID>zoo</ID><DisplayName>cho</DisplayName></Owner></Version></OperationNameResponse>")
  )
  req <- unmarshal(req)
  out <- req$data
  expect_equal(out$Version[[1]]$Size, 9)
  expect_equal(out$Version[[1]]$Owner$DisplayName, "foo")
  expect_equal(out$Version[[1]]$Owner$ID, "bar")
  expect_equal(out$Version[[2]]$Size, 10)
  expect_equal(out$Version[[2]]$Owner$DisplayName, "cho")
  expect_equal(out$Version[[2]]$Owner$ID, "zoo")
})
