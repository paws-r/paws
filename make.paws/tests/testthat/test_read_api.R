write_json <- function(x, file) jsonlite::write_json(x, file, auto_unbox = TRUE)

test_that("read_api", {
  path <- tempdir()
  api_path <- file.path(path, "botocore", "data")
  dir.create(api_path, recursive = TRUE)

  # create api directory
  api_dir <- file.path(api_path, "foo")
  dir.create(api_dir, recursive = TRUE)

  # create different version directory
  fs::dir_create(api_dir, "2018-11-01")
  fs::dir_create(api_dir, "2017-11-01")

  write_json(list(foo = "examples"), file.path(api_dir, "2018-11-01", "examples-1.json"))

  write_json(
    list(
      foo = "normal",
      name = "foo",
      metadata = list(endpointPrefix = "baz"),
      shapes = list(
        fooOutput = list(members = list(Payload = list(shape = "fooStream"))),
        fooStream = list(eventstream = "TRUE")
      )
    ),
    file.path(api_dir, "2018-11-01", "service-2.json")
  )
  write_json(
    list(foo = "paginators"),
    file.path(api_dir, "2018-11-01", "paginators-1.json")
  )

  write_json(list(foo = "wrong1"), file.path(api_dir, "2017-11-01", "examples-1.json"))
  write_json(list(foo = "wrong3"), file.path(api_dir, "2017-11-01", "service-2.json"))
  write_json(list(foo = "wrong4"), file.path(api_dir, "2017-11-01", "paginators-1.json"))

  write_json(
    list(
      partitions = list(
        list(
          defaults = list(hostname = "{service}.{region}.{dnsSuffix}"),
          dnsSuffix = "amazonaws.com",
          regionRegex = "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$",
          services = list(
            baz = list(
              partitionEndpoint = "aws-global",
              endpoints = list(
                "aws-global" = list(
                  hostname = "baz.us-east-1.amazonaws.com",
                  credentialScope = list(region = "us-east-1")
                )
              )
            )
          )
        )
      )
    ),
    file.path(api_path, "endpoints.json")
  )

  api <- make.paws:::read_api("foo", path)

  expect_equal(api$name, "foo")
  expect_equal(api$operations$foo$eventstream, "TRUE")
  expect_equal(
    api$region_config[["aws-global"]],
    list(
      endpoint = "baz.us-east-1.amazonaws.com",
      global = TRUE,
      signing_region = "us-east-1"
    )
  )
  expect_equal(
    api$region_config[["^(us|eu|ap|sa|ca|me|af|il|mx)\\\\-\\\\w+\\\\-\\\\d+$"]],
    list(endpoint = "baz.{region}.amazonaws.com", global = FALSE)
  )
  expect_error(read_api("bar", path))
})

test_that("merge_examples", {
  api <- list(operations = list(operation1 = list(), operation2 = list()))
  examples <- list(
    operation1 = list(list(description = "foo")),
    operation2 = list(list(description = "bar"))
  )
  ret <- merge_examples(api, examples)
  expect_equal(ret$operations$operation1$examples[[1]]$description, "foo")
  expect_equal(ret$operations$operation2$examples[[1]]$description, "bar")
})

test_that("merge_paginators", {
  api <- list(operations = list(DescribeDestinations = list(), GetLogEvents = list()))
  paginator <- list("DescribeDestinations" = list("input_token" = "nextToken"))
  ret <- merge_paginators(api, "logs", paginator)
  expect_equal(ret$operations$DescribeDestinations$paginators$input_token, "nextToken")
  expect_equal(ret$operations$DescribeDestinations$paginators$input_token, "nextToken")
})

test_that("merge_region_config", {
  region_config <- list(
    partitions = list(
      list(
        defaults = list(hostname = "{service}.{region}.{dnsSuffix}"),
        dnsSuffix = "amazon.aws.com",
        regionRegex = "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$",
        services = list(
          iam = list(
            isRegionalized = FALSE,
            partitionEndpoint = "aws-global",
            endpoints = list(
              "aws-global" = list(
                hostname = "iam.amazonaws.com",
                credentialScope = list(region = "us-east-1")
              )
            )
          )
        )
      )
    )
  )
  api <- list(metadata = list(endpointPrefix = "iam"))
  actual <- merge_region_config(api, region_config)
  expect_equal(
    actual,
    list(
      metadata = list(endpointPrefix = "iam"),
      region_config = list(
        "aws-global" = list(
          endpoint = "iam.amazonaws.com",
          global = TRUE,
          signing_region = "us-east-1"
        ),
        "^(us|eu|ap|sa|ca|me|af|il|mx)\\\\-\\\\w+\\\\-\\\\d+$" = list(
          endpoint = "iam.amazonaws.com",
          global = FALSE,
          signing_region = "us-east-1"
        )
      )
    )
  )
})
