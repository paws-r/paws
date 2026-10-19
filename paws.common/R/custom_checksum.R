#' @include request.R
#' @include client.R
#' @include util.R
NULL

################################################################################
# Flexible checksum support, driven by an operation's `httpChecksum` trait.
# https://github.com/boto/botocore/blob/develop/botocore/httpchecksum.py

DEFAULT_CHECKSUM_ALGORITHM <- "CRC32"

digest_checksum <- function(algo) {
  function(body) digest::digest(body, algo = algo, serialize = FALSE, raw = TRUE)
}

awscrt_checksum <- function(algo) {
  function(body) {
    get0(algo, envir = getNamespace("awscrt"), inherits = FALSE)(body, raw = TRUE)
  }
}

checksum_algorithm_spec <- NULL

set_checksum_algorithm_spec <- function() {
  if (requireNamespace("awscrt", quietly = TRUE)) {
    aws_checksum <- function() {
      list(fn = awscrt_checksum("crc64nvme"), header_suffix = "crc64nvme")
    }
  } else {
    aws_checksum <- function() {
      stop("Please install `awscrt` for checksum `CRC64NVME`", call. = FALSE)
    }
  }

  function(algorithm) {
    switch(
      toupper(algorithm),
      CRC32 = list(fn = digest_checksum("crc32"), header_suffix = "crc32"),
      CRC32C = list(fn = digest_checksum("crc32c"), header_suffix = "crc32c"),
      SHA1 = list(fn = digest_checksum("sha1"), header_suffix = "sha1"),
      SHA256 = list(fn = digest_checksum("sha256"), header_suffix = "sha256"),
      SHA512 = list(fn = digest_checksum("sha512"), header_suffix = "sha512"),
      MD5 = list(fn = digest_checksum("md5"), header_suffix = "md5"),
      XXHASH64 = list(fn = digest_checksum("xxhash64"), header_suffix = "xxhash64"),
      XXHASH3 = list(fn = digest_checksum("xxh3_64"), header_suffix = "xxhash3"),
      XXHASH128 = list(fn = digest_checksum("xxh3_128"), header_suffix = "xxhash128"),
      CRC64NVME = aws_checksum(),
      stopf(
        "Unsupported checksum algorithm: %s. paws.common currently supports: %s.",
        algorithm,
        "CRC32, CRC32C, SHA1, SHA256, SHA512, MD5, XXHASH64, XXHASH3, XXHASH128, CRC64NVME"
      )
    )
  }
}

checksum_header_name <- function(algorithm) {
  sprintf("x-amz-checksum-%s", checksum_algorithm_spec(algorithm)$header_suffix)
}

base64_checksum <- function(body, algorithm) {
  if (length(body) == 0) {
    body <- raw(0)
  }
  hash <- checksum_algorithm_spec(algorithm)$fn(body)
  return(base64enc::base64encode(hash))
}

# Whether the caller already supplied a precomputed checksum directly (e.g.
# `ChecksumSHA256`), in which case resolution should be skipped entirely.
has_checksum_header <- function(request) {
  headers <- names(request$http_request$header)
  if (length(headers) == 0) {
    return(FALSE)
  }
  return(any(grepl("^x-amz-checksum-", headers, ignore.case = TRUE)))
}

################################################################################

# Build-stage handler: decide which checksum algorithm (if any) applies, and
# record it in the request context for apply_checksum_header to act on.
resolve_checksum_algorithm <- function(request) {
  http_checksum <- request$operation$http_checksum
  if (is.null(http_checksum) || has_checksum_header(request)) {
    return(request)
  }
  # s3_generate_presigned_url() calls the signer directly, bypassing the
  # sign HandlerList, so apply_checksum_header() never runs for it - resolving
  # an algorithm here would just make content_md5() wrongly skip Content-MD5.
  if (is_presigned(request)) {
    return(request)
  }

  algorithm_member <- http_checksum$request_algorithm_member
  user_algorithm <- NULL
  if (!is.null(algorithm_member)) {
    user_algorithm <- request$params[[algorithm_member]]
  }

  if (!is_empty(user_algorithm)) {
    algorithm <- toupper(user_algorithm)
    checksum_algorithm_spec(algorithm) # errors on unsupported algorithms
  } else if (
    isTRUE(http_checksum$request_checksum_required) ||
      (!is.null(algorithm_member) &&
        isTRUE(request$config$request_checksum_calculation == "when_supported"))
  ) {
    algorithm <- DEFAULT_CHECKSUM_ALGORITHM
  } else {
    return(request)
  }

  request$context$checksum$request_algorithm <- algorithm
  return(request)
}

# Sign-stage handler: must run before the signer, so the checksum header
# ends up in SigV4's SignedHeaders. Computes the resolved x-amz-checksum-*
# header, and the algorithm-name header (e.g. x-amz-sdk-checksum-algorithm)
# if the caller didn't set ChecksumAlgorithm themselves.
apply_checksum_header <- function(request) {
  algorithm <- request$context$checksum$request_algorithm
  if (is.null(algorithm)) {
    return(request)
  }

  header_name <- checksum_header_name(algorithm)
  if (is.null(request$http_request$header[[header_name]])) {
    request$http_request$header[[header_name]] <- base64_checksum(request$body, algorithm)
  }

  algorithm_header <- request$operation$http_checksum$request_algorithm_header
  if (
    !is.null(algorithm_header) && is.null(request$http_request$header[[algorithm_header]])
  ) {
    request$http_request$header[[algorithm_header]] <- algorithm
  }

  return(request)
}
