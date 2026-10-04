# Error Handling

- [Catching errors](#catching-errors)
- [Inspecting the AWS error code](#inspecting-the-aws-error-code)
- [Catching by HTTP status](#catching-by-http-status)

---

When a request fails, Paws doesn't return an error value — it raises a
classed R condition via `stop()`, meant to be caught with `tryCatch()`.
Transient and throttling errors are retried automatically first; see
[retries.md](retries.md). Only errors that are not retryable (or that
exhausted their retries) reach your code.

## Catching errors

Every error Paws raises has class `paws_error` (and `error`/`condition`, as
for any R error), with a `message`, `status_code`, and `error_response`
field.

```r
library(paws)

svc <- s3(region = "us-west-2")

tryCatch(
    svc$get_object(Bucket = "my-bucket", Key = "does-not-exist.txt"),
    paws_error = function(e) {
        message("Request failed: ", e$message)
        message("HTTP status: ", e$status_code)
    }
)
```

## Inspecting the AWS error code

`error_response` is the error AWS actually returned, as a named list. Most
services expose the error code as `error_response$Code`; some JSON-based
services (e.g. DynamoDB) expose it as `error_response$__type` instead.

```r
tryCatch(
    svc$get_object(Bucket = "my-bucket", Key = "does-not-exist.txt"),
    paws_error = function(e) {
        code <- e$error_response$Code
        if (is.null(code)) code <- e$error_response$`__type`
        if (identical(code, "NoSuchKey")) {
            message("Object doesn't exist, treating as empty.")
        } else {
            stop(e)
        }
    }
)
```

## Catching by HTTP status

Paws also tags the condition with classes for its HTTP status code and
status class, e.g. a 404 response is also classed `http_404` and
`http_error`, so you can catch by status instead of by AWS error code:

```r
tryCatch(
    svc$get_object(Bucket = "my-bucket", Key = "does-not-exist.txt"),
    http_404 = function(e) message("Not found"),
    http_error = function(e) message("Some other HTTP error: ", e$status_code)
)
```
