# Retries

- [Default behavior](#default-behavior)
- [Configuring the number of retries](#configuring-the-number-of-retries)
- [What gets retried](#what-gets-retried)
- [Backoff](#backoff)

---

Every Paws service client retries failed requests automatically — this isn't
opt-in, and there's no separate retry package or handler to attach; it's
built into the shared request pipeline in `paws.common` that every
`paws.<category>` service uses (see [architecture.md](architecture.md)).

## Default behavior

By default, a request is retried up to 3 times (4 attempts total) before
Paws gives up and raises the error to your R code.

```r
library(paws)

svc <- s3(region = "us-west-2")

# If this fails with a retryable error, Paws retries up to 3 times
# with backoff before raising an error to you.
svc$get_object(Bucket = "my-bucket", Key = "file.txt")
```

## Configuring the number of retries

Set `max_retries` in the service config to change how many retries are
attempted. Setting it to `0` disables retries entirely — the first error is
raised immediately.

```r
svc <- s3(config(max_retries = 10))

# Fail fast: raise the first error without retrying.
svc <- s3(config(max_retries = 0))
```

## What gets retried

A failed request is retried if either:

* The error code returned by AWS is a known transient or throttling error,
  e.g. `Throttling`, `ThrottlingException`, `ProvisionedThroughputExceededException`,
  `RequestTimeout`, `SlowDown`, `RequestLimitExceeded`, or similar.
* The HTTP response status code is `500`, `502`, `503`, or `504`.

Any other error (e.g. `AccessDenied`, `NoSuchKey`, a `4xx` validation error)
is raised immediately without being retried.

## Backoff

Between retries, Paws waits with an exponential backoff: on retry attempt
`i`, it sleeps a random amount of time between `0` and `2^i` seconds, capped
at a maximum of 20 seconds, before trying again.
