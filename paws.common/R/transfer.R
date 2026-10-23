#' @include parallel.R
NULL

# S3 limits: parts must be at least 5 MiB (except the last) and there can be at
# most 10,000 of them. A single read can't exceed R's integer limit.
MIN_PART_SIZE <- 5 * 1024^2
MAX_PARTS <- 10000
MAX_READ_SIZE <- 2^31 - 1

# Split `size` bytes into parts of (at least) `chunksize` bytes, raising the part
# size when needed to respect the S3 limits.
plan_parts <- function(size, chunksize) {
  chunksize <- max(chunksize, MIN_PART_SIZE, ceiling(size / MAX_PARTS))
  if (chunksize > MAX_READ_SIZE) {
    stop("file is too large to upload in at most 10,000 parts", call. = FALSE)
  }
  start <- seq(0, size - 1, by = chunksize)
  return(list(start = start, length = pmin(chunksize, size - start)))
}

#' Upload a file to S3, in parallel parts when it is large
#'
#' Uploads `Filename` with a single `put_object` when it is no larger than
#' `multipart_threshold`. Otherwise it performs a multipart upload and sends up
#' to `max_concurrency` parts at the same time. A failed multipart upload is
#' aborted so no orphaned parts are left behind.
#'
#' This is the engine behind the S3 client's `upload_file` method; most users
#' should call that instead.
#'
#' @param svc An S3 client, e.g. from `paws.storage::s3()`. Its operations are
#'   used to make every request, so its configuration (credentials, region,
#'   endpoint, retries) applies.
#' @param Filename Path of the file to upload.
#' @param Bucket,Key Destination of the object.
#' @param ... Further arguments passed to `create_multipart_upload` (or
#'   `put_object` for small files), e.g. `ContentType` or `Metadata`.
#' @param ChecksumAlgorithm,SSECustomerAlgorithm,SSECustomerKey,SSECustomerKeyMD5,RequestPayer,ExpectedBucketOwner
#'   Arguments applied to every request of the upload.
#' @param IfMatch,IfNoneMatch Conditional write. Sent with `put_object`, or with
#'   `complete_multipart_upload` for a multipart upload (the point at which S3
#'   decides whether the object is written).
#' @param multipart_threshold Files up to this many bytes use a single
#'   `put_object`.
#' @param chunksize Size in bytes of each part. Raised if needed to stay within
#'   S3's limits of 5 MiB per part and 10,000 parts.
#' @param max_concurrency Number of parts sent at once. `1` sends parts one at a
#'   time without using parallel requests. Memory use is roughly
#'   `max_concurrency * chunksize` plus overhead.
#' @param progress If `TRUE`, show a progress bar.
#'
#' @return The response of `complete_multipart_upload` or `put_object`,
#'   invisibly.
#'
#' @keywords internal
#' @export
multipart_upload_file <- function(
  svc,
  Filename,
  Bucket,
  Key,
  ...,
  ChecksumAlgorithm = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL,
  RequestPayer = NULL,
  ExpectedBucketOwner = NULL,
  IfMatch = NULL,
  IfNoneMatch = NULL,
  multipart_threshold = 8 * 1024^2,
  chunksize = 8 * 1024^2,
  max_concurrency = 10,
  progress = FALSE
) {
  if (!is.character(Filename) || length(Filename) != 1 || !file.exists(Filename)) {
    stopf("`Filename` must be an existing file: %s", paste(Filename, collapse = ", "))
  }
  if (
    !is.numeric(max_concurrency) || length(max_concurrency) != 1 || max_concurrency < 1
  ) {
    stop("`max_concurrency` must be a whole number >= 1", call. = FALSE)
  }
  max_concurrency <- as.integer(max_concurrency)
  size <- file.size(Filename)

  if (size <= multipart_threshold) {
    body <- readBin(Filename, "raw", size)
    response <- svc$put_object(
      Body = body,
      Bucket = Bucket,
      Key = Key,
      ChecksumAlgorithm = ChecksumAlgorithm,
      SSECustomerAlgorithm = SSECustomerAlgorithm,
      SSECustomerKey = SSECustomerKey,
      SSECustomerKeyMD5 = SSECustomerKeyMD5,
      RequestPayer = RequestPayer,
      ExpectedBucketOwner = ExpectedBucketOwner,
      IfMatch = IfMatch,
      IfNoneMatch = IfNoneMatch,
      ...
    )
    return(invisible(response))
  }

  plan <- plan_parts(size, chunksize)
  n <- length(plan$start)

  upload <- svc$create_multipart_upload(
    Bucket = Bucket,
    Key = Key,
    ChecksumAlgorithm = ChecksumAlgorithm,
    SSECustomerAlgorithm = SSECustomerAlgorithm,
    SSECustomerKey = SSECustomerKey,
    SSECustomerKeyMD5 = SSECustomerKeyMD5,
    RequestPayer = RequestPayer,
    ExpectedBucketOwner = ExpectedBucketOwner,
    ...
  )
  upload_id <- upload$UploadId

  completed <- FALSE
  on.exit(
    if (!completed) {
      # Errors and interrupts both land here: don't leave orphaned parts that
      # S3 keeps billing for. Never mask the original error with a failed abort.
      try(
        svc$abort_multipart_upload(
          Bucket = Bucket,
          Key = Key,
          UploadId = upload_id,
          RequestPayer = RequestPayer,
          ExpectedBucketOwner = ExpectedBucketOwner
        ),
        silent = TRUE
      )
    },
    add = TRUE
  )

  con <- file(Filename, "rb")
  on.exit(close(con), add = TRUE)
  read_part <- function(i) {
    seek(con, plan$start[[i]])
    readBin(con, "raw", plan$length[[i]])
  }

  bar <- NULL
  if (isTRUE(progress)) {
    bar <- utils::txtProgressBar(min = 0, max = size, style = 3)
    on.exit(close(bar), add = TRUE)
  }

  # The same call serves both paths: `client` is `svc` to send a part, or
  # `prep` to get its signed request for a parallel batch.
  upload_part <- function(client, i) {
    client$upload_part(
      Body = read_part(i),
      Bucket = Bucket,
      Key = Key,
      PartNumber = i,
      UploadId = upload_id,
      ChecksumAlgorithm = ChecksumAlgorithm,
      SSECustomerAlgorithm = SSECustomerAlgorithm,
      SSECustomerKey = SSECustomerKey,
      SSECustomerKeyMD5 = SSECustomerKeyMD5,
      RequestPayer = RequestPayer,
      ExpectedBucketOwner = ExpectedBucketOwner
    )
  }
  prep <- request_only(svc)

  parts <- vector("list", n)
  sent <- 0
  for (idx in split(seq_len(n), ceiling(seq_len(n) / max_concurrency))) {
    if (max_concurrency == 1) {
      outputs <- lapply(idx, function(i) upload_part(svc, i))
    } else {
      requests <- lapply(idx, function(i) prepared(upload_part(prep, i)))
      outputs <- perform_requests(requests, max_active = max_concurrency)
      failed <- which(vapply(outputs, inherits, logical(1), "error"))
      if (length(failed) > 0) {
        stop(outputs[[failed[[1]]]])
      }
    }
    for (k in seq_along(idx)) {
      parts[[idx[[k]]]] <- upload_part_summary(outputs[[k]], idx[[k]], ChecksumAlgorithm)
    }
    sent <- sent + sum(plan$length[idx])
    if (!is.null(bar)) {
      utils::setTxtProgressBar(bar, sent)
    }
  }

  response <- svc$complete_multipart_upload(
    Bucket = Bucket,
    Key = Key,
    UploadId = upload_id,
    MultipartUpload = list(Parts = parts),
    RequestPayer = RequestPayer,
    ExpectedBucketOwner = ExpectedBucketOwner,
    IfMatch = IfMatch,
    IfNoneMatch = IfNoneMatch,
    SSECustomerAlgorithm = SSECustomerAlgorithm,
    SSECustomerKey = SSECustomerKey,
    SSECustomerKeyMD5 = SSECustomerKeyMD5
  )
  completed <- TRUE
  return(invisible(response))
}

# What `complete_multipart_upload` needs to know about an uploaded part: its
# ETag and number, plus its checksum when the upload declared an algorithm.
upload_part_summary <- function(output, part_number, checksum_algorithm) {
  part <- list(ETag = output$ETag, PartNumber = part_number)
  if (!is.null(checksum_algorithm)) {
    field <- paste0("Checksum", toupper(checksum_algorithm))
    part[[field]] <- output[[field]]
  }
  return(part)
}

#' Download an object from S3 to a file, in parallel ranges when it is large
#'
#' Requests the first `chunksize` bytes of the object. That response also gives
#' the object's total size, so small objects need only that one request. Larger
#' objects have their remaining ranges fetched, up to `max_concurrency` at a
#' time. Every range is conditional on the object's ETag, so an object that
#' changes mid-download is an error rather than a corrupt file.
#'
#' The object is written to a temporary file next to `Filename` and moved into
#' place on success, so a failed or interrupted download never leaves a partial
#' file at `Filename`.
#'
#' This is the engine behind the S3 client's `download_file` method; most users
#' should call that instead.
#'
#' @param svc An S3 client, e.g. from `paws.storage::s3()`.
#' @param Bucket,Key Source object.
#' @param Filename Path to write the object to.
#' @param VersionId,SSECustomerAlgorithm,SSECustomerKey,SSECustomerKeyMD5,RequestPayer,ExpectedBucketOwner
#'   Arguments applied to every request of the download.
#' @param chunksize Size in bytes of each range.
#' @param max_concurrency Number of ranges fetched at once. `1` fetches them one
#'   at a time without using parallel requests. Memory use is roughly
#'   `max_concurrency * chunksize` plus overhead.
#' @param progress If `TRUE`, show a progress bar.
#'
#' @return `Filename`, invisibly.
#'
#' @keywords internal
#' @export
multipart_download_file <- function(
  svc,
  Bucket,
  Key,
  Filename,
  VersionId = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL,
  RequestPayer = NULL,
  ExpectedBucketOwner = NULL,
  chunksize = 8 * 1024^2,
  max_concurrency = 10,
  progress = FALSE
) {
  if (
    !is.numeric(max_concurrency) || length(max_concurrency) != 1 || max_concurrency < 1
  ) {
    stop("`max_concurrency` must be a whole number >= 1", call. = FALSE)
  }
  max_concurrency <- as.integer(max_concurrency)
  chunksize <- max(chunksize, 1)
  if (chunksize > MAX_READ_SIZE) {
    stop("`chunksize` is too large", call. = FALSE)
  }

  first <- tryCatch(
    svc$get_object(
      Bucket = Bucket,
      Key = Key,
      Range = byte_range(0, chunksize - 1),
      VersionId = VersionId,
      SSECustomerAlgorithm = SSECustomerAlgorithm,
      SSECustomerKey = SSECustomerKey,
      SSECustomerKeyMD5 = SSECustomerKeyMD5,
      RequestPayer = RequestPayer,
      ExpectedBucketOwner = ExpectedBucketOwner
    ),
    # a range can't be taken from an empty object
    http_416 = function(e) {
      svc$get_object(
        Bucket = Bucket,
        Key = Key,
        VersionId = VersionId,
        SSECustomerAlgorithm = SSECustomerAlgorithm,
        SSECustomerKey = SSECustomerKey,
        SSECustomerKeyMD5 = SSECustomerKeyMD5,
        RequestPayer = RequestPayer,
        ExpectedBucketOwner = ExpectedBucketOwner
      )
    }
  )
  first_body <- first$Body
  # Without a Content-Range the whole object came back (e.g. an S3-compatible
  # service that ignores Range).
  total <- content_range_total(first$ContentRange) %||% length(first_body)
  etag <- first$ETag

  tmp <- tempfile(basename(Filename), tmpdir = dirname(Filename), fileext = ".tmp")
  completed <- FALSE
  con <- file(tmp, "wb")
  bar <- NULL
  # One idempotent cleanup for every exit (error, interrupt or success): close
  # what is open, and never leave a partial temp file behind.
  on.exit(
    {
      try(close(con), silent = TRUE)
      if (!is.null(bar)) {
        try(close(bar), silent = TRUE)
      }
      if (!completed) {
        unlink(tmp)
      }
    },
    add = TRUE
  )
  writeBin(first_body, con)

  if (isTRUE(progress) && total > 0) {
    bar <- utils::txtProgressBar(min = 0, max = total, style = 3)
    utils::setTxtProgressBar(bar, length(first_body))
  }

  received <- length(first_body)
  if (received < total) {
    starts <- seq(received, total - 1, by = chunksize)
    ends <- pmin(starts + chunksize, total) - 1
    n <- length(starts)
    get_range <- function(client, i) {
      client$get_object(
        Bucket = Bucket,
        Key = Key,
        Range = byte_range(starts[[i]], ends[[i]]),
        IfMatch = etag,
        VersionId = VersionId,
        SSECustomerAlgorithm = SSECustomerAlgorithm,
        SSECustomerKey = SSECustomerKey,
        SSECustomerKeyMD5 = SSECustomerKeyMD5,
        RequestPayer = RequestPayer,
        ExpectedBucketOwner = ExpectedBucketOwner
      )
    }

    prep <- request_only(svc)

    for (idx in split(seq_len(n), ceiling(seq_len(n) / max_concurrency))) {
      if (max_concurrency == 1) {
        outputs <- lapply(idx, function(i) get_range(svc, i))
      } else {
        requests <- lapply(idx, function(i) prepared(get_range(prep, i)))
        outputs <- perform_requests(requests, max_active = max_concurrency)
        failed <- which(vapply(outputs, inherits, logical(1), "error"))
        if (length(failed) > 0) {
          stop(outputs[[failed[[1]]]])
        }
      }
      for (k in seq_along(idx)) {
        body <- outputs[[k]]$Body
        expected <- ends[[idx[[k]]]] - starts[[idx[[k]]]] + 1
        if (length(body) != expected) {
          stopf(
            "expected %.0f bytes for range %s but received %d",
            expected,
            byte_range(starts[[idx[[k]]]], ends[[idx[[k]]]]),
            length(body)
          )
        }
        writeBin(body, con)
        received <- received + length(body)
      }
      if (!is.null(bar)) {
        utils::setTxtProgressBar(bar, received)
      }
    }
  }

  close(con)
  if (!isTRUE(file.rename(tmp, Filename))) {
    ok <- file.copy(tmp, Filename, overwrite = TRUE)
    unlink(tmp)
    if (!ok) {
      stopf("could not write to %s", Filename)
    }
  }
  completed <- TRUE
  return(invisible(Filename))
}

byte_range <- function(start, end) {
  return(sprintf("bytes=%.0f-%.0f", start, end))
}

# Total object size from a `Content-Range` such as "bytes 0-8388607/268435456",
# or NULL when it is missing or the size is unknown ("*").
content_range_total <- function(content_range) {
  if (is.null(content_range) || length(content_range) != 1 || !nzchar(content_range)) {
    return(NULL)
  }
  total <- sub("^.*/", "", content_range)
  if (!grepl("^[0-9]+$", total)) {
    return(NULL)
  }
  return(as.numeric(total))
}
