#' @include request.R
#' @include client.R
#' @include util.R
NULL

################################################################################
# Flexible checksum support, driven by an operation's `httpChecksum` trait.
# https://github.com/boto/botocore/blob/develop/botocore/httpchecksum.py

# Maps AWS's `ChecksumAlgorithm` values to `digest`'s `algo` name and the
# x-amz-checksum-<suffix> header. CRC64NVME is absent: AWS SDKs only support
# it via the CRT, which `digest` has no equivalent of.
.CHECKSUM_ALGORITHMS <- list(
  CRC32 = list(digest_algo = "crc32", header_suffix = "crc32"),
  CRC32C = list(digest_algo = "crc32c", header_suffix = "crc32c"),
  SHA1 = list(digest_algo = "sha1", header_suffix = "sha1"),
  SHA256 = list(digest_algo = "sha256", header_suffix = "sha256"),
  SHA512 = list(digest_algo = "sha512", header_suffix = "sha512"),
  MD5 = list(digest_algo = "md5", header_suffix = "md5"),
  XXHASH64 = list(digest_algo = "xxhash64", header_suffix = "xxhash64"),
  XXHASH3 = list(digest_algo = "xxh3_64", header_suffix = "xxhash3"),
  XXHASH128 = list(digest_algo = "xxh3_128", header_suffix = "xxhash128")
)

DEFAULT_CHECKSUM_ALGORITHM <- "CRC32"

checksum_algorithm_spec <- function(algorithm) {
  spec <- .CHECKSUM_ALGORITHMS[[toupper(algorithm)]]
  if (is.null(spec)) {
    stopf(
      "Unsupported checksum algorithm: %s. paws.common currently supports: %s.",
      algorithm,
      paste(names(.CHECKSUM_ALGORITHMS), collapse = ", ")
    )
  }
  return(spec)
}

checksum_header_name <- function(algorithm) {
  sprintf("x-amz-checksum-%s", checksum_algorithm_spec(algorithm)$header_suffix)
}

checksum_digest <- function(body, algorithm) {
  if (length(body) == 0) {
    body <- raw(0)
  }
  hash <- digest::digest(
    body,
    algo = checksum_algorithm_spec(algorithm)$digest_algo,
    serialize = FALSE,
    raw = TRUE
  )
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
        identical(request$config$request_checksum_calculation, "when_supported"))
  ) {
    # Don't default a checksum onto presigned URLs.
    if (is_presigned(request)) {
      return(request)
    }
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
    request$http_request$header[[header_name]] <- checksum_digest(request$body, algorithm)
  }

  algorithm_header <- request$operation$http_checksum$request_algorithm_header
  if (
    !is.null(algorithm_header) && is.null(request$http_request$header[[algorithm_header]])
  ) {
    request$http_request$header[[algorithm_header]] <- algorithm
  }

  return(request)
}
