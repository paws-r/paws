test_that("set_paws_vendor", {
  on.exit(vendor_cache$vendor <- "boto")
  local_mocked_bindings(
    packageVersion = \(pkg) numeric_version("0.7.7"),
    get0 = \(...) "paws.storage",
    .package = "paws.common"
  )
  set_paws_vendor()
  expect_equal(vendor_cache$vendor, "js")
})

test_that("set_paws_vendor parent pkg null", {
  on.exit(vendor_cache$vendor <- "boto")
  local_mocked_bindings(get0 = \(...) NULL, .package = "paws.common")
  set_paws_vendor()
  expect_equal(vendor_cache$vendor, "boto")
})

test_that("set_paws_vendor parent pkg not paws category", {
  on.exit(vendor_cache$vendor <- "boto")
  local_mocked_bindings(get0 = \(...) "testthat", .package = "paws.common")
  set_paws_vendor()
  expect_equal(vendor_cache$vendor, "boto")
})

test_that("resolver_endpoint boto", {
  on.exit(vendor_cache$vendor <- "boto")
  s3_endpoints_boto <- list(
    "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
    "us-east-1" = list(endpoint = "s3.amazonaws.com", global = TRUE),
    "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.amazonaws.com",
      global = FALSE
    ),
    "^cn\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.amazonaws.com.cn",
      global = FALSE
    ),
    "^us\\-gov\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.amazonaws.com",
      global = FALSE
    ),
    "^us\\-iso\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.c2s.ic.gov",
      global = FALSE
    ),
    "^us\\-isob\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.sc2s.sgov.gov",
      global = FALSE
    ),
    "^eu\\-isoe\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.cloud.adc-e.uk",
      global = FALSE
    ),
    "^us\\-isof\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.csp.hci.ic.gov",
      global = FALSE
    )
  )
  actual <- resolver_endpoint("s3", "us-east-1", s3_endpoints_boto)
  expect_equal(
    actual,
    list(endpoint = "https://s3.amazonaws.com", signing_region = "us-east-1")
  )

  actual <- resolver_endpoint("s3", "us-isof-east-1", s3_endpoints_boto)
  expect_equal(
    actual,
    list(
      endpoint = "https://s3.us-isof-east-1.csp.hci.ic.gov",
      signing_region = "us-isof-east-1"
    )
  )
})

test_that("resolver_endpoint js", {
  on.exit(vendor_cache$vendor <- "boto")
  s3_endpoints_js <- list(
    "us-gov-west-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "us-west-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "us-west-2" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "eu-west-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "ap-southeast-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "ap-southeast-2" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "ap-northeast-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "sa-east-1" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "us-east-1" = list(endpoint = "s3.amazonaws.com", global = FALSE),
    "*" = list(endpoint = "s3.{region}.amazonaws.com", global = FALSE),
    "cn-*" = list(endpoint = "s3.{region}.amazonaws.com.cn", global = FALSE),
    "us-iso-*" = list(endpoint = "s3.{region}.c2s.ic.gov", global = FALSE),
    "us-isob-*" = list(endpoint = "s3.{region}.sc2s.sgov.gov", global = FALSE)
  )

  vendor_cache$vendor <- "js"
  actual <- resolver_endpoint("s3", "us-east-1", s3_endpoints_js)
  expect_equal(
    actual,
    list(endpoint = "https://s3.amazonaws.com", signing_region = "us-east-1")
  )

  actual <- resolver_endpoint("s3", "us-isob-east-1", s3_endpoints_js)
  expect_equal(
    actual,
    list(
      endpoint = "https://s3.us-isob-east-1.sc2s.sgov.gov",
      signing_region = "us-isob-east-1"
    )
  )
})
