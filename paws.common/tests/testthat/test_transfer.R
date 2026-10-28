test_that("plan_parts splits a file and respects S3 limits", {
  MiB <- 1024^2
  p <- plan_parts(20 * MiB, 8 * MiB)
  expect_equal(p$start, c(0, 8, 16) * MiB)
  expect_equal(p$length, c(8, 8, 4) * MiB)

  # exactly divisible: no empty trailing part
  p <- plan_parts(16 * MiB, 8 * MiB)
  expect_equal(p$length, c(8, 8) * MiB)

  # chunksize is raised to the 5 MiB minimum
  p <- plan_parts(12 * MiB, 1 * MiB)
  expect_equal(p$length, c(5, 5, 2) * MiB)

  # ... and so that there are no more than 10,000 parts
  size <- 5 * MiB * 20000
  p <- plan_parts(size, 5 * MiB)
  expect_lte(length(p$start), 10000)
  expect_equal(sum(p$length), size)
})

test_that("plan_parts errors when parts would exceed a single read", {
  expect_error(plan_parts(2^31 * 10001, 8 * 1024^2), "too large")
})

# A fake S3 client whose operations record their calls.
fake_s3 <- function(fail_part = NA) {
  calls <- new.env()
  calls$log <- list()
  calls$parts <- list()
  record <- function(op, ...) calls$log[[length(calls$log) + 1]] <- list(op = op, ...)
  svc <- list(
    put_object = function(Body, Bucket, Key, ...) {
      record("put_object", size = length(Body), cond = list(...)$IfNoneMatch)
      list(ETag = "single")
    },
    create_multipart_upload = function(Bucket, Key, ...) {
      record("create", extra = list(...)$ContentType)
      list(UploadId = "uid")
    },
    upload_part = function(Body, Bucket, Key, PartNumber, UploadId, ...) {
      record("upload_part", part = PartNumber)
      if (!is.na(fail_part) && PartNumber == fail_part) {
        stop("part failed")
      }
      calls$parts[[PartNumber]] <- Body
      list(ETag = sprintf("etag-%d", PartNumber))
    },
    complete_multipart_upload = function(Bucket, Key, UploadId, MultipartUpload, ...) {
      record("complete", parts = MultipartUpload$Parts, cond = list(...)$IfNoneMatch)
      list(ETag = "final")
    },
    abort_multipart_upload = function(Bucket, Key, UploadId, ...) {
      record("abort")
      list()
    }
  )
  list(svc = svc, calls = calls)
}

ops_of <- function(calls) vapply(calls$log, function(x) x$op, "")

# What a Ctrl-C does: signal an interrupt, and abort to top level if unhandled.
raise_interrupt <- function() {
  signalCondition(structure(class = c("interrupt", "condition"), list()))
  invokeRestart("abort")
}

test_file_of_size <- function(bytes) {
  path <- tempfile()
  writeBin(as.raw(seq_len(bytes) %% 251), path)
  path
}

test_that("small files use a single put_object", {
  f <- test_file_of_size(1000)
  on.exit(unlink(f))
  fake <- fake_s3()
  res <- multipart_upload_file(fake$svc, f, "b", "k")
  expect_equal(ops_of(fake$calls), "put_object")
  expect_equal(fake$calls$log[[1]]$size, 1000)
  expect_equal(res$ETag, "single")
})

test_that("empty files are uploaded with put_object", {
  f <- tempfile()
  file.create(f)
  on.exit(unlink(f))
  fake <- fake_s3()
  multipart_upload_file(fake$svc, f, "b", "k")
  expect_equal(fake$calls$log[[1]]$size, 0)
})

test_that("serial multipart upload sends ordered parts and completes", {
  MiB <- 1024^2
  f <- test_file_of_size(12 * MiB)
  on.exit(unlink(f))
  fake <- fake_s3()
  multipart_upload_file(
    fake$svc,
    f,
    "b",
    "k",
    ContentType = "text/plain",
    multipart_threshold = 5 * MiB,
    chunksize = 5 * MiB,
    max_concurrency = 1
  )
  expect_equal(ops_of(fake$calls), c("create", rep("upload_part", 3), "complete"))
  expect_equal(fake$calls$log[[1]]$extra, "text/plain")
  parts <- fake$calls$log[[5]]$parts
  expect_equal(vapply(parts, `[[`, 0, "PartNumber"), 1:3)
  expect_equal(vapply(parts, `[[`, "", "ETag"), sprintf("etag-%d", 1:3))
  # reassembling the parts gives back the file
  expect_identical(do.call(c, fake$calls$parts), readBin(f, "raw", 12 * MiB))
})

test_that("a failed part aborts the multipart upload and rethrows", {
  MiB <- 1024^2
  f <- test_file_of_size(12 * MiB)
  on.exit(unlink(f))
  fake <- fake_s3(fail_part = 2)
  expect_error(
    multipart_upload_file(
      fake$svc,
      f,
      "b",
      "k",
      multipart_threshold = 5 * MiB,
      chunksize = 5 * MiB,
      max_concurrency = 1
    ),
    "part failed"
  )
  ops <- ops_of(fake$calls)
  expect_equal(ops[length(ops)], "abort")
  expect_false("complete" %in% ops)
})

test_that("checksums of parts are passed on when an algorithm is declared", {
  part <- upload_part_summary(list(ETag = "e", ChecksumCRC32 = "c"), 3, "crc32")
  expect_equal(part, list(ETag = "e", PartNumber = 3, ChecksumCRC32 = "c"))
  part <- upload_part_summary(list(ETag = "e", ChecksumCRC32 = "c"), 3, NULL)
  expect_equal(part, list(ETag = "e", PartNumber = 3))
})

test_that("invalid arguments are rejected before any request", {
  fake <- fake_s3()
  expect_error(
    multipart_upload_file(fake$svc, "/no/such/file", "b", "k"),
    "existing file"
  )
  f <- test_file_of_size(10)
  on.exit(unlink(f))
  expect_error(
    multipart_upload_file(fake$svc, f, "b", "k", max_concurrency = 0),
    "max_concurrency"
  )
  expect_length(fake$calls$log, 0)
})

test_that("content_range_total parses the object size", {
  expect_equal(content_range_total("bytes 0-8388607/268435456"), 268435456)
  expect_equal(content_range_total("bytes 0-9/10"), 10)
  expect_null(content_range_total("bytes 0-9/*"))
  expect_null(content_range_total(""))
  expect_null(content_range_total(NULL))
})

test_that("byte_range formats large offsets without scientific notation", {
  expect_equal(byte_range(0, 99), "bytes=0-99")
  expect_equal(byte_range(5e9, 5e9 + 99), "bytes=5000000000-5000000099")
})

# A fake S3 client serving `object` through ranged get_object calls.
fake_s3_download <- function(object, honour_range = TRUE, change_etag_after = Inf) {
  calls <- new.env()
  calls$ranges <- character()
  svc <- list(get_object = function(Bucket, Key, Range = NULL, IfMatch = NULL, ...) {
    calls$ranges <- c(calls$ranges, Range %||% "<none>")
    if (length(calls$ranges) > change_etag_after && !is.null(IfMatch)) {
      stop(aws_error(Error("PreconditionFailed", "changed", 412L)))
    }
    if (is.null(Range) || !honour_range) {
      return(list(Body = object, ETag = "\"e\""))
    }
    if (length(object) == 0) {
      stop(aws_error(Error("InvalidRange", "empty", 416L)))
    }
    m <- regmatches(Range, regexec("bytes=([0-9]+)-([0-9]+)", Range))[[1]]
    start <- as.numeric(m[[2]])
    end <- min(as.numeric(m[[3]]), length(object) - 1)
    list(
      Body = object[(start + 1):(end + 1)],
      ETag = "\"e\"",
      ContentRange = sprintf("bytes %.0f-%.0f/%d", start, end, length(object))
    )
  })
  list(svc = svc, calls = calls)
}

test_that("a small object is fetched with one request", {
  object <- as.raw(seq_len(1000) %% 251)
  fake <- fake_s3_download(object)
  dest <- tempfile()
  on.exit(unlink(dest))
  res <- multipart_download_file(fake$svc, "b", "k", dest, chunksize = 8 * 1024^2)
  expect_equal(res, dest)
  expect_identical(readBin(dest, "raw", 2000), object)
  expect_length(fake$calls$ranges, 1)
})

test_that("an empty object is downloaded via the 416 fallback", {
  fake <- fake_s3_download(raw(0))
  dest <- tempfile()
  on.exit(unlink(dest))
  multipart_download_file(fake$svc, "b", "k", dest)
  expect_equal(file.size(dest), 0)
  expect_equal(fake$calls$ranges, c("bytes=0-8388607", "<none>"))
})

test_that("a large object is fetched in ordered ranges and reassembled", {
  object <- as.raw(seq_len(2500) %% 251)
  fake <- fake_s3_download(object)
  dest <- tempfile()
  on.exit(unlink(dest))
  multipart_download_file(fake$svc, "b", "k", dest, chunksize = 1000, max_concurrency = 1)
  expect_identical(readBin(dest, "raw", 5000), object)
  expect_equal(fake$calls$ranges, c("bytes=0-999", "bytes=1000-1999", "bytes=2000-2499"))
  expect_length(list.files(dirname(dest), pattern = "\\.tmp$"), 0)
})

test_that("a service that ignores Range still yields the whole object", {
  object <- as.raw(seq_len(3000) %% 251)
  fake <- fake_s3_download(object, honour_range = FALSE)
  dest <- tempfile()
  on.exit(unlink(dest))
  multipart_download_file(fake$svc, "b", "k", dest, chunksize = 1000)
  expect_identical(readBin(dest, "raw", 5000), object)
  expect_length(fake$calls$ranges, 1)
})

test_that("a failed range leaves no partial file and keeps an existing one", {
  object <- as.raw(seq_len(2500) %% 251)
  fake <- fake_s3_download(object, change_etag_after = 1)
  dest <- tempfile()
  writeBin(as.raw(1:3), dest)
  on.exit(unlink(dest))
  expect_error(
    multipart_download_file(
      fake$svc,
      "b",
      "k",
      dest,
      chunksize = 1000,
      max_concurrency = 1
    ),
    "changed"
  )
  expect_identical(readBin(dest, "raw", 10), as.raw(1:3))
  expect_length(
    list.files(dirname(dest), pattern = paste0("^", basename(dest), ".*\\.tmp$")),
    0
  )
})

test_that("conditional writes go to put_object, or to the completing request", {
  MiB <- 1024^2
  small <- test_file_of_size(100)
  large <- test_file_of_size(12 * MiB)
  on.exit(unlink(c(small, large)))

  fake <- fake_s3()
  multipart_upload_file(fake$svc, small, "b", "k", IfNoneMatch = "*")
  expect_equal(fake$calls$log[[1]]$cond, "*")

  fake <- fake_s3()
  multipart_upload_file(
    fake$svc,
    large,
    "b",
    "k",
    IfNoneMatch = "*",
    multipart_threshold = 5 * MiB,
    chunksize = 5 * MiB,
    max_concurrency = 1
  )
  ops <- ops_of(fake$calls)
  expect_null(fake$calls$log[[1]]$cond) # create_multipart_upload isn't conditional
  expect_equal(fake$calls$log[[which(ops == "complete")]]$cond, "*")
})

test_that("an interrupt during a parallel batch aborts the multipart upload", {
  MiB <- 1024^2
  f <- test_file_of_size(12 * MiB)
  on.exit(unlink(f))
  fake <- fake_s3()
  mockery::stub(multipart_upload_file, "prepared", function(x) x)
  mockery::stub(multipart_upload_file, "perform_requests", function(...) {
    raise_interrupt()
  })
  res <- tryCatch(
    multipart_upload_file(
      fake$svc,
      f,
      "b",
      "k",
      multipart_threshold = 5 * MiB,
      chunksize = 5 * MiB,
      max_concurrency = 2
    ),
    interrupt = function(e) "interrupted"
  )
  expect_equal(res, "interrupted")
  ops <- ops_of(fake$calls)
  expect_equal(ops[length(ops)], "abort")
  expect_false("complete" %in% ops)
})

test_that("an interrupt during a parallel download leaves no partial file", {
  object <- as.raw(seq_len(2500) %% 251)
  fake <- fake_s3_download(object)
  dest <- tempfile()
  on.exit(unlink(dest))
  mockery::stub(multipart_download_file, "prepared", function(x) x)
  mockery::stub(multipart_download_file, "perform_requests", function(...) {
    raise_interrupt()
  })
  res <- tryCatch(
    multipart_download_file(
      fake$svc,
      "b",
      "k",
      dest,
      chunksize = 1000,
      max_concurrency = 2
    ),
    interrupt = function(e) "interrupted"
  )
  expect_equal(res, "interrupted")
  expect_false(file.exists(dest))
  expect_length(
    list.files(dirname(dest), pattern = paste0("^", basename(dest), ".*\\.tmp$")),
    0
  )
})
