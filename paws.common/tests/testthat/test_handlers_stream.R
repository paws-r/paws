test_that("StreamHandler", {
  op <- Operation(name = "SelectObjectContent")
  svc <- Client()
  svc$client_info$service_name <- "s3"
  svc$handlers$unmarshal <- HandlerList(restxml_unmarshal)
  op_output <- Structure(
    Payload = Structure(
      Records = Structure(
        Payload = Scalar(.tags = list(eventpayload = TRUE, type = "blob"))
      ),
      Stats = Structure(
        Details = Structure(
          BytesScanned = Scalar(.tags = list(type = "long")),
          BytesProcessed = Scalar(.tags = list(type = "long")),
          BytesReturned = Scalar(.tags = list(type = "long")),
          .tags = list(eventpayload = TRUE)
        )
      ),
      Progress = Structure(
        Details = Structure(
          BytesScanned = Scalar(.tags = list(type = "long")),
          BytesProcessed = Scalar(.tags = list(type = "long")),
          BytesReturned = Scalar(.tags = list(type = "long")),
          .tags = list(eventpayload = TRUE)
        )
      ),
      Cont = Scalar(.tags = list(event = TRUE)),
      End = Scalar(.tags = list(event = TRUE))
    ),
    .tags = list(payload = "Payload")
  )

  req <- new_request(svc, op, NULL, op_output)
  req$operation$stream_api <- TRUE
  req$http_response <- HttpResponse(status_code = 200, body = list())
  req <- unmarshal(req)
  expect_named(req$data, "Payload")
  expect_s3_class(req$data$Payload, "PawsStreamHandler")
  expect_equal(
    capture.output(req$data$Payload),
    c(
      "<PawsStreamHandler>",
      "Please check return object for: s3_select_object_content",
      "https://www.paws-r-sdk.com/docs/s3_select_object_content/"
    )
  )
})

test_that("check xml paws_stream_parser", {
  body <- hex_to_raw(
    "
    0000006b0000005590c13c4e0d3a6d6573736167652d747970650700056576656e740b3a6576
    656e742d747970650700075265636f7264730d3a636f6e74656e742d74797065070018617070
    6c69636174696f6e2f6f637465742d73747265616d310a320a330a6017c34c000000cd000000
    439b72e3290d3a6d6573736167652d747970650700056576656e740b3a6576656e742d747970
    6507000553746174730d3a636f6e74656e742d74797065070008746578742f786d6c3c537461
    747320786d6c6e733d22223e3c42797465735363616e6e65643e31303c2f4279746573536361
    6e6e65643e3c427974657350726f6365737365643e31303c2f427974657350726f6365737365
    643e3c427974657352657475726e65643e363c2f427974657352657475726e65643e3c2f5374
    6174733e40c694330000003800000028c1c684d40d3a6d6573736167652d7479706507000565
    76656e740b3a6576656e742d74797065070003456e64cf97d392
  "
  )

  interface <- structure(
    list(
      Records = structure(
        list(
          Payload = structure(logical(0), tags = list(eventpayload = TRUE, type = "blob"))
        ),
        tags = list(type = "structure", event = TRUE)
      ),
      Stats = structure(
        list(
          Details = structure(
            list(
              BytesScanned = structure(
                logical(0),
                tags = list(type = "long", box = TRUE)
              ),
              BytesProcessed = structure(
                logical(0),
                tags = list(type = "long", box = TRUE)
              ),
              BytesReturned = structure(
                logical(0),
                tags = list(type = "long", box = TRUE)
              )
            ),
            tags = list(eventpayload = TRUE, type = "structure")
          )
        ),
        tags = list(type = "structure", event = TRUE)
      ),
      Progress = structure(
        list(
          Details = structure(
            list(
              BytesScanned = structure(
                logical(0),
                tags = list(type = "long", box = TRUE)
              ),
              BytesProcessed = structure(
                logical(0),
                tags = list(type = "long", box = TRUE)
              ),
              BytesReturned = structure(
                logical(0),
                tags = list(type = "long", box = TRUE)
              )
            ),
            tags = list(eventpayload = TRUE, type = "structure")
          )
        ),
        tags = list(type = "structure", event = TRUE)
      ),
      Cont = structure(list(), tags = list(type = "structure", event = TRUE)),
      End = structure(list(), tags = list(type = "structure", event = TRUE))
    ),
    tags = list(type = "structure", eventstream = TRUE)
  )

  # mock con object
  conn <- list(
    body = rawConnection(body),
    paws_metadata = list(unmarshal = xml_parse_stream, interface = interface),
    cache = list2env(list(push_back = raw()))
  )

  mock_check_push_back <- mock2(FALSE, FALSE, FALSE, TRUE)
  mockery::stub(paws_stream_parser, "check_push_back", mock_check_push_back)

  actual <- list()
  while (!is.null(chunk <- paws_stream_parser(conn))) {
    actual[[length(actual) + 1]] <- chunk
  }

  expect_equal(rawToChar(actual[[1]]$Records$Payload), "1\n2\n3\n")
  expect_equal(
    actual[[2]]$Stats,
    list(Details = list(BytesScanned = 10, BytesProcessed = 10, BytesReturned = 6))
  )
})

test_that("check json paws_stream_parser", {
  body <- hex_to_raw(
    "
    000000aa00000052dad068860b3a6576656e742d7479706507000c6d65737361676553746172
    740d3a636f6e74656e742d747970650700106170706c69636174696f6e2f6a736f6e0d3a6d65
    73736167652d747970650700056576656e747b2270223a226162636465666768696a6b6c6d6e
    6f707172737475767778797a4142434445464748494a4b4c4d4e4f50515253222c22726f6c65
    223a22617373697374616e74227d72033e7b0000015d000000579bf2c3e10b3a6576656e742d
    74797065070011636f6e74656e74426c6f636b44656c74610d3a636f6e74656e742d74797065
    0700106170706c69636174696f6e2f6a736f6e0d3a6d6573736167652d747970650700056576
    656e747b22636f6e74656e74426c6f636b496e646578223a302c2264656c7461223a7b227465
    7874223a224920616d20416d617a6f6e20546974616e2c2061206c61726765206c616e677561
    6765206d6f64656c206275696c74206279204157532e2049207761732064657369676e656420
    746f2061737369737420796f752077697468207461736b73206f7220616e7377657220616e79
    207175657374696f6e7320796f75206d617920686176652e20486f77206d617920492068656c
    7020796f753f227d2c2270223a226162636465666768696a6b6c6d6e6f707172737475767778
    797a4142434445464748494a4b4c4d4e4f5051227d08310d02000000b70000005645cdffac0b
    3a6576656e742d74797065070010636f6e74656e74426c6f636b53746f700d3a636f6e74656e
    742d747970650700106170706c69636174696f6e2f6a736f6e0d3a6d6573736167652d747970
    650700056576656e747b22636f6e74656e74426c6f636b496e646578223a302c2270223a2261
    62636465666768696a6b6c6d6e6f707172737475767778797a4142434445464748494a4b4c4d
    4e4f50515253545556575859227d4cb1d491000000b4000000519c0910df0b3a6576656e742d
    7479706507000b6d65737361676553746f700d3a636f6e74656e742d74797065070010617070
    6c69636174696f6e2f6a736f6e0d3a6d6573736167652d747970650700056576656e747b2270
    223a226162636465666768696a6b6c6d6e6f707172737475767778797a414243444546474849
    4a4b4c4d4e4f50515253545556575859222c2273746f70526561736f6e223a22656e645f7475
    726e227dbe580ac7000000fe0000004e03425dc20b3a6576656e742d747970650700086d6574
    61646174610d3a636f6e74656e742d747970650700106170706c69636174696f6e2f6a736f6e
    0d3a6d6573736167652d747970650700056576656e747b226d657472696373223a7b226c6174
    656e63794d73223a313432307d2c2270223a22616263222c227573616765223a7b2263616368
    6552656164496e707574546f6b656e436f756e74223a302c2263616368655772697465496e70
    7574546f6b656e436f756e74223a302c22696e707574546f6b656e73223a382c226f75747075
    74546f6b656e73223a33392c22746f74616c546f6b656e73223a34377d7dffaa2cb4
    "
  )

  interface <- structure(list(
    contentBlockDelta = structure(
      list(
        delta = structure(
          list(
            text = structure(logical(0), tags = list(type = "string")),
            toolUse = structure(
              list(input = structure(logical(0), tags = list(type = "string"))),
              tags = list(type = "structure")
            )
          ),
          tags = list(type = "structure", union = TRUE)
        ),
        contentBlockIndex = structure(
          logical(0),
          tags = list(type = "integer", box = TRUE)
        )
      ),
      tags = list(type = "structure", event = TRUE)
    ),
    messageStop = structure(
      list(
        stopReason = structure(logical(0), tags = list(type = "string")),
        additionalModelResponseFields = structure(
          list(),
          tags = list(type = "structure", document = TRUE)
        )
      ),
      tags = list(type = "structure", event = TRUE)
    )
  ))

  # mock con object
  conn <- list(
    body = rawConnection(body),
    paws_metadata = list(unmarshal = json_parse_stream, interface = interface),
    cache = list2env(list(push_back = raw()))
  )

  mock_check_push_back <- mock2(F, F, F, F, F, T)
  mockery::stub(paws_stream_parser, "check_push_back", mock_check_push_back)

  actual <- list()
  while (!is.null(chunk <- paws_stream_parser(conn))) {
    actual[[length(actual) + 1]] <- chunk
  }

  expect_equal(actual[[1]]$messageStart$role, "assistant")
  expect_equal(
    actual[[2]]$contentBlockDelta$delta$text,
    "I am Amazon Titan, a large language model built by AWS. I was designed to assist you with tasks or answer any questions you may have. How may I help you?"
  )
  expect_equal(actual[[4]]$messageStop$stopReason, "end_turn")
})

test_that("check stream_raw", {
  mock_isIncomplete <- mock2(FALSE, TRUE)
  mockery::stub(stream_raw, "con_is_complete", mock_isIncomplete)

  bytes <- as.raw(as.integer(runif(100) * 100))
  con <- rawConnection(bytes)

  actual <- stream_raw(con)

  expect_equal(actual, bytes)
})

test_that("check validate_checksum failure", {
  data <- as.raw(c(0x1c, 0x48, 0x35, 0x5a))
  expect_error(validate_checksum(data, "05321e05"), "Checksum mismatch")
})
