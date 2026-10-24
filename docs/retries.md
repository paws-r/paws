# Retries

- [Default behavior](#default-behavior)
- [Configuring the number of retries](#configuring-the-number-of-retries)
- [Retry modes](#retry-modes)
- [What gets retried](#what-gets-retried)
- [Backoff](#backoff)
- [Retry quota](#retry-quota)

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

`max_attempts` counts the first try as well, so `max_attempts = 4` is the same
as `max_retries = 3`. It takes precedence if both are given. When neither is set
in the client config, Paws uses the `AWS_MAX_ATTEMPTS` environment variable, then
the `max_attempts` key of your profile in the AWS config file.

```r
svc <- s3(config(max_attempts = 5))
```

## Retry modes

Set `retry_mode` in the service config, with the `AWS_RETRY_MODE` environment
variable, or with `retry_mode` in your profile in the AWS config file (in that
order of precedence).

* `"standard"` (default): failed requests are retried with exponential backoff
  as described below.
* `"adaptive"`: everything in standard mode, plus a client side rate limiter.
  Once the service throttles a request, the client slows its own sending rate
  down (and speeds it back up as requests succeed) instead of sending requests
  that are likely to be rejected. Until the first throttling response, adaptive
  mode adds no delay.

```r
svc <- s3(config(retry_mode = "adaptive", max_attempts = 5))
```

Other AWS SDKs and the CLI also accept `"legacy"`. Paws has no separate legacy mode,
so `retry_mode = "legacy"` (or `AWS_RETRY_MODE=legacy`) is accepted and treated as
`"standard"`, rather than stopping your code from running.

Adaptive mode follows [botocore's adaptive mode](https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html)
and, as there, the rate limit belongs to the client object. Use one client per
throttled resource (for example one S3 client for each heavily used bucket),
otherwise a throttled resource slows down requests to healthy ones.
Rate limiting is also per R session. It is not shared between processes.

Parallel S3 transfers (`upload_file()` / `download_file()`) take part too: each
request waits for the rate limiter, and every response updates it.

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

## Retry quota

Each client has a retry quota of 500 tokens. Every retry takes 5 tokens from
it, and a request that succeeds gives back what its last retry took (or 1 token
if it needed no retry). When the quota can't cover a retry, the request fails
with its original error instead of being retried. This stops a client that is
hitting sustained failures from retrying forever; it recovers as requests succeed.
